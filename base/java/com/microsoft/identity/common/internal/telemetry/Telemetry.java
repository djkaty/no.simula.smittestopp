package com.microsoft.identity.common.internal.telemetry;

import android.content.Context;
import android.content.pm.PackageManager;
import com.microsoft.identity.common.internal.logging.DiagnosticContext;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.telemetry.adapter.TelemetryAggregationAdapter;
import com.microsoft.identity.common.internal.telemetry.adapter.TelemetryDefaultAdapter;
import com.microsoft.identity.common.internal.telemetry.events.BaseEvent;
import com.microsoft.identity.common.internal.telemetry.observers.ITelemetryAggregatedObserver;
import com.microsoft.identity.common.internal.telemetry.observers.ITelemetryDefaultObserver;
import com.microsoft.identity.common.internal.telemetry.observers.ITelemetryObserver;
import com.microsoft.identity.common.internal.telemetry.rules.TelemetryPiiOiiRules;
import com.microsoft.identity.common.internal.util.StringUtil;
import e.a.a.a.a;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CopyOnWriteArrayList;

public class Telemetry {
    public static final String TAG = "Telemetry";
    public static Queue<ITelemetryObserver> mObservers;
    public static volatile Telemetry sTelemetryInstance;
    public TelemetryConfiguration mDefaultConfiguration;
    public boolean mIsDebugging;
    public final boolean mIsTelemetryEnabled;
    public TelemetryContext mTelemetryContext;
    public Queue<Map<String, String>> mTelemetryRawDataMap;

    public static class Builder {
        public Context mContext;
        public TelemetryConfiguration mDefaultConfiguration;
        public Boolean mIsDebugging;
        public TelemetryContext mTelemetryContext;

        public Telemetry build() {
            return Telemetry.prepareInstance(this);
        }

        public Builder defaultConfiguration(TelemetryConfiguration telemetryConfiguration) {
            this.mDefaultConfiguration = telemetryConfiguration;
            return this;
        }

        public Builder withContext(Context context) {
            if (context != null) {
                Context applicationContext = context.getApplicationContext();
                this.mContext = applicationContext;
                if (applicationContext != null) {
                    this.mTelemetryContext = TelemetryContext.create(applicationContext);
                    try {
                        this.mIsDebugging = Boolean.valueOf((context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).flags & 2) != 0);
                    } catch (PackageManager.NameNotFoundException unused) {
                        Logger.warn(Telemetry.TAG, "The application is not found from PackageManager.");
                        this.mIsDebugging = false;
                    }
                    return this;
                }
                throw new IllegalArgumentException("Application context must not be null.");
            }
            throw new IllegalArgumentException("Context must not be null.");
        }
    }

    public Telemetry(Builder builder) {
        if (builder == null || builder.mTelemetryContext == null || builder.mDefaultConfiguration == null) {
            Logger.warn(TAG, "Telemetry is disabled because the Telemetry context or configuration is null");
            this.mIsTelemetryEnabled = false;
            return;
        }
        this.mIsTelemetryEnabled = true;
        this.mDefaultConfiguration = builder.mDefaultConfiguration;
        this.mTelemetryContext = builder.mTelemetryContext;
        this.mIsDebugging = builder.mIsDebugging.booleanValue();
        this.mTelemetryRawDataMap = new ConcurrentLinkedQueue();
    }

    private Map<String, String> applyPiiOiiRule(Map<String, String> map) {
        if (this.mDefaultConfiguration.isPiiEnabled()) {
            Logger.warn(TAG, "Telemetry PII/OII is enabled by the developer.");
            return map;
        }
        HashMap hashMap = new HashMap();
        for (Map.Entry next : map.entrySet()) {
            if (!TelemetryPiiOiiRules.getInstance().isPiiOrOii((String) next.getKey())) {
                hashMap.put(next.getKey(), next.getValue());
            }
        }
        return hashMap;
    }

    public static void emit(BaseEvent baseEvent) {
        if (getInstance().mIsTelemetryEnabled) {
            getInstance().getRequestMap().add(baseEvent.getProperties());
        }
    }

    public static synchronized Telemetry getInstance() {
        Telemetry telemetry;
        synchronized (Telemetry.class) {
            if (sTelemetryInstance == null) {
                new Builder().build();
            }
            telemetry = sTelemetryInstance;
        }
        return telemetry;
    }

    private Queue<Map<String, String>> getRequestMap() {
        return this.mTelemetryRawDataMap;
    }

    public static synchronized Telemetry prepareInstance(Builder builder) {
        Telemetry telemetry;
        synchronized (Telemetry.class) {
            sTelemetryInstance = new Telemetry(builder);
            telemetry = sTelemetryInstance;
        }
        return telemetry;
    }

    public void addObserver(ITelemetryObserver iTelemetryObserver) {
        if (iTelemetryObserver != null) {
            if (mObservers == null) {
                mObservers = new ConcurrentLinkedQueue();
            }
            mObservers.add(iTelemetryObserver);
            return;
        }
        throw new IllegalArgumentException("Telemetry Observer instance cannot be null");
    }

    public void flush() {
        if (getInstance().mIsTelemetryEnabled) {
            flush((String) DiagnosticContext.getRequestContext().get("correlation_id"));
        }
    }

    public List<ITelemetryObserver> getObservers() {
        CopyOnWriteArrayList copyOnWriteArrayList;
        if (mObservers != null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList(mObservers);
        } else {
            copyOnWriteArrayList = new CopyOnWriteArrayList();
        }
        return Collections.unmodifiableList(copyOnWriteArrayList);
    }

    public void removeAllObservers() {
        Queue<ITelemetryObserver> queue = mObservers;
        if (queue != null) {
            queue.clear();
        }
    }

    public void removeObserver(Class<?> cls) {
        Queue<ITelemetryObserver> queue;
        if (cls == null || (queue = mObservers) == null) {
            Logger.warn(TAG, "Unable to remove the observe. Either the observer is null or the observer list is empty.");
            return;
        }
        Iterator it = queue.iterator();
        while (it.hasNext()) {
            if (((ITelemetryObserver) it.next()).getClass() == cls) {
                String str = TAG;
                StringBuilder a = a.a("The [");
                a.append(cls.getSimpleName());
                a.append("] observer is removed.");
                Logger.verbose(str, a.toString());
                it.remove();
            }
        }
    }

    public void flush(String str) {
        if (this.mIsTelemetryEnabled) {
            if (mObservers == null) {
                Logger.warn(TAG, "No telemetry observer set.");
            } else if (StringUtil.isEmpty(str)) {
                Logger.warn(TAG, "No correlation id set.");
            } else if (this.mDefaultConfiguration.isDebugEnabled() || !this.mIsDebugging) {
                CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                Iterator it = this.mTelemetryRawDataMap.iterator();
                while (it.hasNext()) {
                    Map map = (Map) it.next();
                    if (str.equalsIgnoreCase((String) map.get("Microsoft.MSAL.correlation_id"))) {
                        copyOnWriteArrayList.add(applyPiiOiiRule(map));
                        it.remove();
                    }
                }
                copyOnWriteArrayList.add(applyPiiOiiRule(this.mTelemetryContext.getProperties()));
                for (ITelemetryObserver iTelemetryObserver : mObservers) {
                    if (iTelemetryObserver instanceof ITelemetryAggregatedObserver) {
                        new TelemetryAggregationAdapter((ITelemetryAggregatedObserver) iTelemetryObserver).process((List<Map<String, String>>) copyOnWriteArrayList);
                    } else if (iTelemetryObserver instanceof ITelemetryDefaultObserver) {
                        new TelemetryDefaultAdapter((ITelemetryDefaultObserver) iTelemetryObserver).process((List<Map<String, String>>) copyOnWriteArrayList);
                    } else {
                        String str2 = TAG;
                        StringBuilder a = a.a("Unknown observer type: ");
                        a.append(iTelemetryObserver.getClass());
                        Logger.warn(str2, a.toString());
                    }
                }
            }
        }
    }

    public void removeObserver(ITelemetryObserver iTelemetryObserver) {
        Queue<ITelemetryObserver> queue;
        if (iTelemetryObserver == null || (queue = mObservers) == null) {
            Logger.warn(TAG, "Unable to remove the observer. Either the observer is null or the observer list is empty.");
        } else {
            queue.remove(iTelemetryObserver);
        }
    }
}
