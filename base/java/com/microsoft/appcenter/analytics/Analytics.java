package com.microsoft.appcenter.analytics;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import com.microsoft.appcenter.AbstractAppCenterService;
import com.microsoft.appcenter.AppCenter;
import com.microsoft.appcenter.Flags;
import com.microsoft.appcenter.analytics.channel.AnalyticsListener;
import com.microsoft.appcenter.analytics.channel.AnalyticsValidator;
import com.microsoft.appcenter.analytics.channel.SessionTracker;
import com.microsoft.appcenter.analytics.ingestion.models.EventLog;
import com.microsoft.appcenter.analytics.ingestion.models.PageLog;
import com.microsoft.appcenter.analytics.ingestion.models.StartSessionLog;
import com.microsoft.appcenter.analytics.ingestion.models.json.EventLogFactory;
import com.microsoft.appcenter.analytics.ingestion.models.json.PageLogFactory;
import com.microsoft.appcenter.analytics.ingestion.models.json.StartSessionLogFactory;
import com.microsoft.appcenter.analytics.ingestion.models.one.CommonSchemaEventLog;
import com.microsoft.appcenter.analytics.ingestion.models.one.json.CommonSchemaEventLogFactory;
import com.microsoft.appcenter.channel.Channel;
import com.microsoft.appcenter.channel.DefaultChannel;
import com.microsoft.appcenter.ingestion.Ingestion;
import com.microsoft.appcenter.ingestion.models.Log;
import com.microsoft.appcenter.ingestion.models.json.LogFactory;
import com.microsoft.appcenter.ingestion.models.properties.StringTypedProperty;
import com.microsoft.appcenter.ingestion.models.properties.TypedProperty;
import com.microsoft.appcenter.utils.AppCenterLog;
import com.microsoft.appcenter.utils.async.AppCenterFuture;
import com.microsoft.appcenter.utils.async.DefaultAppCenterFuture;
import com.microsoft.appcenter.utils.context.UserIdContext;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

public class Analytics extends AbstractAppCenterService {
    public static final String ACTIVITY_SUFFIX = "Activity";
    public static final String ANALYTICS_CRITICAL_GROUP = "group_analytics_critical";
    public static final String ANALYTICS_GROUP = "group_analytics";
    public static final String LOG_TAG = "AppCenterAnalytics";
    public static final int MAXIMUM_TRANSMISSION_INTERVAL_IN_SECONDS = 86400;
    public static final int MINIMUM_TRANSMISSION_INTERVAL_IN_SECONDS = 3;
    public static final String SERVICE_NAME = "Analytics";
    @SuppressLint({"StaticFieldLeak"})
    public static Analytics sInstance;
    public AnalyticsListener mAnalyticsListener;
    public Channel.Listener mAnalyticsTransmissionTargetListener;
    public AnalyticsValidator mAnalyticsValidator;
    public boolean mAutoPageTrackingEnabled = false;
    public Context mContext;
    public WeakReference<Activity> mCurrentActivity;
    public AnalyticsTransmissionTarget mDefaultTransmissionTarget;
    public final Map<String, LogFactory> mFactories;
    public SessionTracker mSessionTracker;
    public boolean mStartedFromApp;
    public long mTransmissionInterval;
    public final Map<String, AnalyticsTransmissionTarget> mTransmissionTargets;

    public Analytics() {
        HashMap hashMap = new HashMap();
        this.mFactories = hashMap;
        hashMap.put(StartSessionLog.TYPE, new StartSessionLogFactory());
        this.mFactories.put("page", new PageLogFactory());
        this.mFactories.put(EventLog.TYPE, new EventLogFactory());
        this.mFactories.put(CommonSchemaEventLog.TYPE, new CommonSchemaEventLogFactory());
        this.mTransmissionTargets = new HashMap();
        this.mTransmissionInterval = TimeUnit.SECONDS.toMillis(3);
    }

    public static List<TypedProperty> convertProperties(EventProperties eventProperties) {
        if (eventProperties == null) {
            return null;
        }
        return new ArrayList(eventProperties.getProperties().values());
    }

    private AnalyticsTransmissionTarget createAnalyticsTransmissionTarget(String str) {
        final AnalyticsTransmissionTarget analyticsTransmissionTarget = new AnalyticsTransmissionTarget(str, (AnalyticsTransmissionTarget) null);
        AppCenterLog.debug(LOG_TAG, "Created transmission target with token " + str);
        postCommandEvenIfDisabled(new Runnable() {
            public void run() {
                analyticsTransmissionTarget.initInBackground(Analytics.this.mContext, Analytics.this.mChannel);
            }
        });
        return analyticsTransmissionTarget;
    }

    public static String generatePageName(Class<?> cls) {
        String simpleName = cls.getSimpleName();
        return (!simpleName.endsWith(ACTIVITY_SUFFIX) || simpleName.length() <= 8) ? simpleName : simpleName.substring(0, simpleName.length() - 8);
    }

    public static synchronized Analytics getInstance() {
        Analytics analytics;
        synchronized (Analytics.class) {
            if (sInstance == null) {
                sInstance = new Analytics();
            }
            analytics = sInstance;
        }
        return analytics;
    }

    private synchronized AnalyticsTransmissionTarget getInstanceTransmissionTarget(String str) {
        if (str != null) {
            if (!str.isEmpty()) {
                if (!AppCenter.isConfigured()) {
                    AppCenterLog.error(LOG_TAG, "Cannot create transmission target, AppCenter is not configured or started.");
                    return null;
                }
                AnalyticsTransmissionTarget analyticsTransmissionTarget = this.mTransmissionTargets.get(str);
                if (analyticsTransmissionTarget != null) {
                    AppCenterLog.debug(LOG_TAG, "Returning transmission target found with token " + str);
                    return analyticsTransmissionTarget;
                }
                AnalyticsTransmissionTarget createAnalyticsTransmissionTarget = createAnalyticsTransmissionTarget(str);
                this.mTransmissionTargets.put(str, createAnalyticsTransmissionTarget);
                return createAnalyticsTransmissionTarget;
            }
        }
        AppCenterLog.error(LOG_TAG, "Transmission target token may not be null or empty.");
        return null;
    }

    public static AnalyticsTransmissionTarget getTransmissionTarget(String str) {
        return getInstance().getInstanceTransmissionTarget(str);
    }

    public static boolean isAutoPageTrackingEnabled() {
        return getInstance().isInstanceAutoPageTrackingEnabled();
    }

    public static AppCenterFuture<Boolean> isEnabled() {
        return getInstance().isInstanceEnabledAsync();
    }

    private boolean isInstanceAutoPageTrackingEnabled() {
        return this.mAutoPageTrackingEnabled;
    }

    public static void pause() {
        getInstance().pauseInstanceAsync();
    }

    private synchronized void pauseInstanceAsync() {
        post(new Runnable() {
            public void run() {
                Analytics.this.mChannel.pauseGroup(Analytics.ANALYTICS_GROUP, (String) null);
                Analytics.this.mChannel.pauseGroup(Analytics.ANALYTICS_CRITICAL_GROUP, (String) null);
            }
        });
    }

    /* access modifiers changed from: private */
    public void processOnResume(Activity activity) {
        SessionTracker sessionTracker = this.mSessionTracker;
        if (sessionTracker != null) {
            sessionTracker.onActivityResumed();
            if (this.mAutoPageTrackingEnabled) {
                queuePage(generatePageName(activity.getClass()), (Map<String, String>) null);
            }
        }
    }

    /* access modifiers changed from: private */
    public void queuePage(String str, Map<String, String> map) {
        PageLog pageLog = new PageLog();
        pageLog.setName(str);
        pageLog.setProperties(map);
        this.mChannel.enqueue(pageLog, ANALYTICS_GROUP, 1);
    }

    public static void resume() {
        getInstance().resumeInstanceAsync();
    }

    private synchronized void resumeInstanceAsync() {
        post(new Runnable() {
            public void run() {
                Analytics.this.mChannel.resumeGroup(Analytics.ANALYTICS_GROUP, (String) null);
                Analytics.this.mChannel.resumeGroup(Analytics.ANALYTICS_CRITICAL_GROUP, (String) null);
            }
        });
    }

    public static void setAutoPageTrackingEnabled(boolean z) {
        getInstance().setInstanceAutoPageTrackingEnabled(z);
    }

    private void setDefaultTransmissionTarget(String str) {
        if (str != null) {
            this.mDefaultTransmissionTarget = createAnalyticsTransmissionTarget(str);
        }
    }

    public static AppCenterFuture<Void> setEnabled(boolean z) {
        return getInstance().setInstanceEnabledAsync(z);
    }

    private synchronized void setInstanceAutoPageTrackingEnabled(boolean z) {
        this.mAutoPageTrackingEnabled = z;
    }

    private synchronized void setInstanceListener(AnalyticsListener analyticsListener) {
        this.mAnalyticsListener = analyticsListener;
    }

    private boolean setInstanceTransmissionInterval(int i2) {
        if (this.mChannel != null) {
            AppCenterLog.error(LOG_TAG, "Transmission interval should be set before the service is started.");
            return false;
        } else if (i2 < 3 || i2 > 86400) {
            AppCenterLog.error(LOG_TAG, String.format(Locale.ENGLISH, "The transmission interval is invalid. The value should be between %d seconds and %d seconds (%d day).", new Object[]{3, Integer.valueOf(MAXIMUM_TRANSMISSION_INTERVAL_IN_SECONDS), Long.valueOf(TimeUnit.SECONDS.toDays(86400))}));
            return false;
        } else {
            this.mTransmissionInterval = TimeUnit.SECONDS.toMillis((long) i2);
            return true;
        }
    }

    public static void setListener(AnalyticsListener analyticsListener) {
        getInstance().setInstanceListener(analyticsListener);
    }

    public static boolean setTransmissionInterval(int i2) {
        return getInstance().setInstanceTransmissionInterval(i2);
    }

    private void startAppLevelFeatures() {
        Activity activity;
        if (this.mStartedFromApp) {
            AnalyticsValidator analyticsValidator = new AnalyticsValidator();
            this.mAnalyticsValidator = analyticsValidator;
            this.mChannel.addListener(analyticsValidator);
            SessionTracker sessionTracker = new SessionTracker(this.mChannel, ANALYTICS_GROUP);
            this.mSessionTracker = sessionTracker;
            this.mChannel.addListener(sessionTracker);
            WeakReference<Activity> weakReference = this.mCurrentActivity;
            if (!(weakReference == null || (activity = (Activity) weakReference.get()) == null)) {
                processOnResume(activity);
            }
            Channel.Listener channelListener = AnalyticsTransmissionTarget.getChannelListener();
            this.mAnalyticsTransmissionTargetListener = channelListener;
            this.mChannel.addListener(channelListener);
        }
    }

    public static void trackEvent(String str) {
        trackEvent(str, (EventProperties) null, (AnalyticsTransmissionTarget) null, 1);
    }

    private synchronized void trackEventAsync(String str, List<TypedProperty> list, AnalyticsTransmissionTarget analyticsTransmissionTarget, int i2) {
        final String userId = UserIdContext.getInstance().getUserId();
        final AnalyticsTransmissionTarget analyticsTransmissionTarget2 = analyticsTransmissionTarget;
        final String str2 = str;
        final List<TypedProperty> list2 = list;
        final int i3 = i2;
        post(new Runnable() {
            public void run() {
                AnalyticsTransmissionTarget analyticsTransmissionTarget = analyticsTransmissionTarget2;
                if (analyticsTransmissionTarget == null) {
                    analyticsTransmissionTarget = Analytics.this.mDefaultTransmissionTarget;
                }
                EventLog eventLog = new EventLog();
                if (analyticsTransmissionTarget != null) {
                    if (analyticsTransmissionTarget.isEnabled()) {
                        eventLog.addTransmissionTarget(analyticsTransmissionTarget.getTransmissionTargetToken());
                        eventLog.setTag(analyticsTransmissionTarget);
                        if (analyticsTransmissionTarget == Analytics.this.mDefaultTransmissionTarget) {
                            eventLog.setUserId(userId);
                        }
                    } else {
                        AppCenterLog.error(Analytics.LOG_TAG, "This transmission target is disabled.");
                        return;
                    }
                } else if (!Analytics.this.mStartedFromApp) {
                    AppCenterLog.error(Analytics.LOG_TAG, "Cannot track event using Analytics.trackEvent if not started from app, please start from the application or use Analytics.getTransmissionTarget.");
                    return;
                }
                eventLog.setId(UUID.randomUUID());
                eventLog.setName(str2);
                eventLog.setTypedProperties(list2);
                int persistenceFlag = Flags.getPersistenceFlag(i3, true);
                Analytics.this.mChannel.enqueue(eventLog, persistenceFlag == 2 ? Analytics.ANALYTICS_CRITICAL_GROUP : Analytics.ANALYTICS_GROUP, persistenceFlag);
            }
        });
    }

    public static void trackPage(String str) {
        trackPage(str, (Map<String, String>) null);
    }

    private synchronized void trackPageAsync(final String str, Map<String, String> map) {
        final HashMap hashMap;
        if (map != null) {
            try {
                hashMap = new HashMap(map);
            } catch (Throwable th) {
                throw th;
            }
        } else {
            hashMap = null;
        }
        post(new Runnable() {
            public void run() {
                if (Analytics.this.mStartedFromApp) {
                    Analytics.this.queuePage(str, hashMap);
                } else {
                    AppCenterLog.error(Analytics.LOG_TAG, "Cannot track page if not started from app.");
                }
            }
        });
    }

    public static synchronized void unsetInstance() {
        synchronized (Analytics.class) {
            sInstance = null;
        }
    }

    public synchronized void applyEnabledState(boolean z) {
        if (z) {
            this.mChannel.addGroup(ANALYTICS_CRITICAL_GROUP, getTriggerCount(), DefaultChannel.MINIMUM_TRANSMISSION_INTERVAL, getTriggerMaxParallelRequests(), (Ingestion) null, getChannelListener());
            startAppLevelFeatures();
        } else {
            this.mChannel.removeGroup(ANALYTICS_CRITICAL_GROUP);
            if (this.mAnalyticsValidator != null) {
                this.mChannel.removeListener(this.mAnalyticsValidator);
                this.mAnalyticsValidator = null;
            }
            if (this.mSessionTracker != null) {
                this.mChannel.removeListener(this.mSessionTracker);
                this.mSessionTracker.clearSessions();
                this.mSessionTracker = null;
            }
            if (this.mAnalyticsTransmissionTargetListener != null) {
                this.mChannel.removeListener(this.mAnalyticsTransmissionTargetListener);
                this.mAnalyticsTransmissionTargetListener = null;
            }
        }
    }

    public Channel.GroupListener getChannelListener() {
        return new Channel.GroupListener() {
            public void onBeforeSending(Log log) {
                if (Analytics.this.mAnalyticsListener != null) {
                    Analytics.this.mAnalyticsListener.onBeforeSending(log);
                }
            }

            public void onFailure(Log log, Exception exc) {
                if (Analytics.this.mAnalyticsListener != null) {
                    Analytics.this.mAnalyticsListener.onSendingFailed(log, exc);
                }
            }

            public void onSuccess(Log log) {
                if (Analytics.this.mAnalyticsListener != null) {
                    Analytics.this.mAnalyticsListener.onSendingSucceeded(log);
                }
            }
        };
    }

    public WeakReference<Activity> getCurrentActivity() {
        return this.mCurrentActivity;
    }

    public String getEnabledPreferenceKeyPrefix() {
        return getEnabledPreferenceKey() + "/";
    }

    public String getGroupName() {
        return ANALYTICS_GROUP;
    }

    public Map<String, LogFactory> getLogFactories() {
        return this.mFactories;
    }

    public String getLoggerTag() {
        return LOG_TAG;
    }

    public String getServiceName() {
        return SERVICE_NAME;
    }

    public long getTriggerInterval() {
        return this.mTransmissionInterval;
    }

    public boolean isAppSecretRequired() {
        return false;
    }

    public synchronized void onActivityPaused(Activity activity) {
        final AnonymousClass4 r2 = new Runnable() {
            public void run() {
                WeakReference unused = Analytics.this.mCurrentActivity = null;
            }
        };
        post(new Runnable() {
            public void run() {
                r2.run();
                if (Analytics.this.mSessionTracker != null) {
                    Analytics.this.mSessionTracker.onActivityPaused();
                }
            }
        }, r2, r2);
    }

    public synchronized void onActivityResumed(final Activity activity) {
        final AnonymousClass2 r0 = new Runnable() {
            public void run() {
                WeakReference unused = Analytics.this.mCurrentActivity = new WeakReference(activity);
            }
        };
        post(new Runnable() {
            public void run() {
                r0.run();
                Analytics.this.processOnResume(activity);
            }
        }, r0, r0);
    }

    public void onConfigurationUpdated(String str, String str2) {
        this.mStartedFromApp = true;
        startAppLevelFeatures();
        setDefaultTransmissionTarget(str2);
    }

    public synchronized void onStarted(Context context, Channel channel, String str, String str2, boolean z) {
        this.mContext = context;
        this.mStartedFromApp = z;
        super.onStarted(context, channel, str, str2, z);
        setDefaultTransmissionTarget(str2);
    }

    public synchronized void post(Runnable runnable) {
        super.post(runnable);
    }

    public <T> void postCommand(Runnable runnable, DefaultAppCenterFuture<T> defaultAppCenterFuture, T t) {
        postAsyncGetter(runnable, defaultAppCenterFuture, t);
    }

    public void postCommandEvenIfDisabled(Runnable runnable) {
        post(runnable, runnable, runnable);
    }

    public static List<TypedProperty> convertProperties(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry next : map.entrySet()) {
            StringTypedProperty stringTypedProperty = new StringTypedProperty();
            stringTypedProperty.setName((String) next.getKey());
            stringTypedProperty.setValue((String) next.getValue());
            arrayList.add(stringTypedProperty);
        }
        return arrayList;
    }

    public static void trackEvent(String str, Map<String, String> map) {
        getInstance().trackEventAsync(str, convertProperties(map), (AnalyticsTransmissionTarget) null, 1);
    }

    public static void trackPage(String str, Map<String, String> map) {
        getInstance().trackPageAsync(str, map);
    }

    public static void trackEvent(String str, Map<String, String> map, int i2) {
        getInstance().trackEventAsync(str, convertProperties(map), (AnalyticsTransmissionTarget) null, i2);
    }

    public static void trackEvent(String str, EventProperties eventProperties) {
        trackEvent(str, eventProperties, 1);
    }

    public static void trackEvent(String str, EventProperties eventProperties, int i2) {
        trackEvent(str, eventProperties, (AnalyticsTransmissionTarget) null, i2);
    }

    public static void trackEvent(String str, EventProperties eventProperties, AnalyticsTransmissionTarget analyticsTransmissionTarget, int i2) {
        getInstance().trackEventAsync(str, convertProperties(eventProperties), analyticsTransmissionTarget, i2);
    }
}
