package com.microsoft.appcenter.channel;

import android.content.Context;
import android.os.Handler;
import com.microsoft.appcenter.CancellationException;
import com.microsoft.appcenter.channel.Channel;
import com.microsoft.appcenter.http.HttpClient;
import com.microsoft.appcenter.http.HttpResponse;
import com.microsoft.appcenter.http.HttpUtils;
import com.microsoft.appcenter.http.ServiceCallback;
import com.microsoft.appcenter.ingestion.AppCenterIngestion;
import com.microsoft.appcenter.ingestion.Ingestion;
import com.microsoft.appcenter.ingestion.models.Device;
import com.microsoft.appcenter.ingestion.models.Log;
import com.microsoft.appcenter.ingestion.models.LogContainer;
import com.microsoft.appcenter.ingestion.models.json.LogSerializer;
import com.microsoft.appcenter.ingestion.models.one.PartAUtils;
import com.microsoft.appcenter.persistence.DatabasePersistence;
import com.microsoft.appcenter.persistence.Persistence;
import com.microsoft.appcenter.utils.AppCenterLog;
import com.microsoft.appcenter.utils.HandlerUtils;
import com.microsoft.appcenter.utils.IdHelper;
import com.microsoft.appcenter.utils.storage.SharedPreferencesManager;
import e.a.a.a.a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

public class DefaultChannel implements Channel {
    public static final int CLEAR_BATCH_SIZE = 100;
    public static final long MINIMUM_TRANSMISSION_INTERVAL = 3000;
    public static final String START_TIMER_PREFIX = "startTimerPrefix.";
    public final Handler mAppCenterHandler;
    public String mAppSecret;
    public final Context mContext;
    public int mCurrentState;
    public Device mDevice;
    public boolean mDiscardLogs;
    public boolean mEnabled;
    public final Map<String, GroupState> mGroupStates;
    public final Ingestion mIngestion;
    public final Set<Ingestion> mIngestions;
    public final UUID mInstallId;
    public final Collection<Channel.Listener> mListeners;
    public final Persistence mPersistence;

    public class GroupState {
        public final long mBatchTimeInterval;
        public final Ingestion mIngestion;
        public final Channel.GroupListener mListener;
        public final int mMaxLogsPerBatch;
        public final int mMaxParallelBatches;
        public final String mName;
        public boolean mPaused;
        public final Collection<String> mPausedTargetKeys = new HashSet();
        public int mPendingLogCount;
        public final Runnable mRunnable = new Runnable() {
            public void run() {
                GroupState groupState = GroupState.this;
                groupState.mScheduled = false;
                DefaultChannel.this.triggerIngestion(groupState);
            }
        };
        public boolean mScheduled;
        public final Map<String, List<Log>> mSendingBatches = new HashMap();

        public GroupState(String str, int i2, long j2, int i3, Ingestion ingestion, Channel.GroupListener groupListener) {
            this.mName = str;
            this.mMaxLogsPerBatch = i2;
            this.mBatchTimeInterval = j2;
            this.mMaxParallelBatches = i3;
            this.mIngestion = ingestion;
            this.mListener = groupListener;
        }
    }

    public DefaultChannel(Context context, String str, LogSerializer logSerializer, HttpClient httpClient, Handler handler) {
        this(context, str, buildDefaultPersistence(context, logSerializer), (Ingestion) new AppCenterIngestion(httpClient, logSerializer), handler);
    }

    public static Persistence buildDefaultPersistence(Context context, LogSerializer logSerializer) {
        DatabasePersistence databasePersistence = new DatabasePersistence(context);
        databasePersistence.setLogSerializer(logSerializer);
        return databasePersistence;
    }

    /* access modifiers changed from: private */
    public void checkPendingLogsAfterPost(GroupState groupState, int i2) {
        if (checkStateDidNotChange(groupState, i2)) {
            checkPendingLogs(groupState);
        }
    }

    private synchronized boolean checkStateDidNotChange(GroupState groupState, int i2) {
        return i2 == this.mCurrentState && groupState == this.mGroupStates.get(groupState.mName);
    }

    private void deleteLogsOnSuspended(GroupState groupState) {
        ArrayList arrayList = new ArrayList();
        this.mPersistence.getLogs(groupState.mName, Collections.emptyList(), 100, arrayList);
        if (arrayList.size() > 0 && groupState.mListener != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Log log = (Log) it.next();
                groupState.mListener.onBeforeSending(log);
                groupState.mListener.onFailure(log, new CancellationException());
            }
        }
        if (arrayList.size() < 100 || groupState.mListener == null) {
            this.mPersistence.deleteLogs(groupState.mName);
        } else {
            deleteLogsOnSuspended(groupState);
        }
    }

    /* access modifiers changed from: private */
    public synchronized void handleSendingFailure(GroupState groupState, String str, Exception exc) {
        String str2 = groupState.mName;
        List<Log> remove = groupState.mSendingBatches.remove(str);
        if (remove != null) {
            AppCenterLog.error("AppCenter", "Sending logs groupName=" + str2 + " id=" + str + " failed", exc);
            boolean isRecoverableError = HttpUtils.isRecoverableError(exc);
            if (isRecoverableError) {
                groupState.mPendingLogCount += remove.size();
            } else {
                Channel.GroupListener groupListener = groupState.mListener;
                if (groupListener != null) {
                    for (Log onFailure : remove) {
                        groupListener.onFailure(onFailure, exc);
                    }
                }
            }
            suspend(!isRecoverableError, exc);
        }
    }

    /* access modifiers changed from: private */
    public synchronized void handleSendingSuccess(GroupState groupState, String str) {
        List<Log> remove = groupState.mSendingBatches.remove(str);
        if (remove != null) {
            this.mPersistence.deleteLogs(groupState.mName, str);
            Channel.GroupListener groupListener = groupState.mListener;
            if (groupListener != null) {
                for (Log onSuccess : remove) {
                    groupListener.onSuccess(onSuccess);
                }
            }
            checkPendingLogs(groupState);
        }
    }

    private Long resolveCustomTriggerInterval(GroupState groupState) {
        long currentTimeMillis = System.currentTimeMillis();
        StringBuilder a = a.a(START_TIMER_PREFIX);
        a.append(groupState.mName);
        long j2 = SharedPreferencesManager.getLong(a.toString());
        if (groupState.mPendingLogCount > 0) {
            if (j2 != 0 && j2 <= currentTimeMillis) {
                return Long.valueOf(Math.max(groupState.mBatchTimeInterval - (currentTimeMillis - j2), 0));
            }
            StringBuilder a2 = a.a(START_TIMER_PREFIX);
            a2.append(groupState.mName);
            SharedPreferencesManager.putLong(a2.toString(), currentTimeMillis);
            AppCenterLog.debug("AppCenter", "The timer value for " + groupState.mName + " has been saved.");
            return Long.valueOf(groupState.mBatchTimeInterval);
        } else if (j2 + groupState.mBatchTimeInterval >= currentTimeMillis) {
            return null;
        } else {
            StringBuilder a3 = a.a(START_TIMER_PREFIX);
            a3.append(groupState.mName);
            SharedPreferencesManager.remove(a3.toString());
            AppCenterLog.debug("AppCenter", "The timer for " + groupState.mName + " channel finished.");
            return null;
        }
    }

    private Long resolveDefaultTriggerInterval(GroupState groupState) {
        int i2 = groupState.mPendingLogCount;
        if (i2 >= groupState.mMaxLogsPerBatch) {
            return 0L;
        }
        if (i2 > 0) {
            return Long.valueOf(groupState.mBatchTimeInterval);
        }
        return null;
    }

    private Long resolveTriggerInterval(GroupState groupState) {
        if (groupState.mBatchTimeInterval > MINIMUM_TRANSMISSION_INTERVAL) {
            return resolveCustomTriggerInterval(groupState);
        }
        return resolveDefaultTriggerInterval(groupState);
    }

    /* access modifiers changed from: private */
    public synchronized void sendLogs(final GroupState groupState, final int i2, List<Log> list, final String str) {
        if (checkStateDidNotChange(groupState, i2)) {
            LogContainer logContainer = new LogContainer();
            logContainer.setLogs(list);
            groupState.mIngestion.sendAsync(this.mAppSecret, this.mInstallId, logContainer, new ServiceCallback() {
                public void onCallFailed(final Exception exc) {
                    DefaultChannel.this.mAppCenterHandler.post(new Runnable() {
                        public void run() {
                            AnonymousClass2 r0 = AnonymousClass2.this;
                            DefaultChannel.this.handleSendingFailure(groupState, str, exc);
                        }
                    });
                }

                public void onCallSucceeded(HttpResponse httpResponse) {
                    DefaultChannel.this.mAppCenterHandler.post(new Runnable() {
                        public void run() {
                            AnonymousClass2 r0 = AnonymousClass2.this;
                            DefaultChannel.this.handleSendingSuccess(groupState, str);
                        }
                    });
                }
            });
            this.mAppCenterHandler.post(new Runnable() {
                public void run() {
                    DefaultChannel.this.checkPendingLogsAfterPost(groupState, i2);
                }
            });
        }
    }

    private void suspend(boolean z, Exception exc) {
        Channel.GroupListener groupListener;
        this.mEnabled = false;
        this.mDiscardLogs = z;
        this.mCurrentState++;
        for (GroupState next : this.mGroupStates.values()) {
            cancelTimer(next);
            Iterator<Map.Entry<String, List<Log>>> it = next.mSendingBatches.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry next2 = it.next();
                it.remove();
                if (z && (groupListener = next.mListener) != null) {
                    for (Log onFailure : (List) next2.getValue()) {
                        groupListener.onFailure(onFailure, exc);
                    }
                }
            }
        }
        for (Ingestion next3 : this.mIngestions) {
            try {
                next3.close();
            } catch (IOException e2) {
                AppCenterLog.error("AppCenter", "Failed to close ingestion: " + next3, e2);
            }
        }
        if (z) {
            for (GroupState deleteLogsOnSuspended : this.mGroupStates.values()) {
                deleteLogsOnSuspended(deleteLogsOnSuspended);
            }
            return;
        }
        this.mPersistence.clearPendingLogState();
    }

    /* access modifiers changed from: private */
    public synchronized void triggerIngestion(GroupState groupState) {
        if (this.mEnabled) {
            int i2 = groupState.mPendingLogCount;
            int min = Math.min(i2, groupState.mMaxLogsPerBatch);
            AppCenterLog.debug("AppCenter", "triggerIngestion(" + groupState.mName + ") pendingLogCount=" + i2);
            cancelTimer(groupState);
            if (groupState.mSendingBatches.size() == groupState.mMaxParallelBatches) {
                AppCenterLog.debug("AppCenter", "Already sending " + groupState.mMaxParallelBatches + " batches of analytics data to the server.");
                return;
            }
            final ArrayList arrayList = new ArrayList(min);
            final int i3 = this.mCurrentState;
            final String logs = this.mPersistence.getLogs(groupState.mName, groupState.mPausedTargetKeys, min, arrayList);
            groupState.mPendingLogCount -= min;
            if (logs != null) {
                AppCenterLog.debug("AppCenter", "ingestLogs(" + groupState.mName + "," + logs + ") pendingLogCount=" + groupState.mPendingLogCount);
                if (groupState.mListener != null) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        groupState.mListener.onBeforeSending((Log) it.next());
                    }
                }
                groupState.mSendingBatches.put(logs, arrayList);
                final GroupState groupState2 = groupState;
                HandlerUtils.runOnUiThread(new Runnable() {
                    public void run() {
                        DefaultChannel.this.sendLogs(groupState2, i3, arrayList, logs);
                    }
                });
            }
        }
    }

    public synchronized void addGroup(String str, int i2, long j2, int i3, Ingestion ingestion, Channel.GroupListener groupListener) {
        String str2 = str;
        synchronized (this) {
            AppCenterLog.debug("AppCenter", "addGroup(" + str + ")");
            Ingestion ingestion2 = ingestion == null ? this.mIngestion : ingestion;
            this.mIngestions.add(ingestion2);
            GroupState groupState = new GroupState(str, i2, j2, i3, ingestion2, groupListener);
            this.mGroupStates.put(str, groupState);
            groupState.mPendingLogCount = this.mPersistence.countLogs(str);
            if (!(this.mAppSecret == null && this.mIngestion == ingestion2)) {
                checkPendingLogs(groupState);
            }
            for (Channel.Listener onGroupAdded : this.mListeners) {
                onGroupAdded.onGroupAdded(str, groupListener, j2);
            }
        }
    }

    public synchronized void addListener(Channel.Listener listener) {
        this.mListeners.add(listener);
    }

    public void cancelTimer(GroupState groupState) {
        if (groupState.mScheduled) {
            groupState.mScheduled = false;
            this.mAppCenterHandler.removeCallbacks(groupState.mRunnable);
            SharedPreferencesManager.remove(START_TIMER_PREFIX + groupState.mName);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0051, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0053, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void checkPendingLogs(com.microsoft.appcenter.channel.DefaultChannel.GroupState r8) {
        /*
            r7 = this;
            monitor-enter(r7)
            java.lang.String r0 = "AppCenter"
            java.lang.String r1 = "checkPendingLogs(%s) pendingLogCount=%s batchTimeInterval=%s"
            r2 = 3
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ all -> 0x0054 }
            r3 = 0
            java.lang.String r4 = r8.mName     // Catch:{ all -> 0x0054 }
            r2[r3] = r4     // Catch:{ all -> 0x0054 }
            int r3 = r8.mPendingLogCount     // Catch:{ all -> 0x0054 }
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch:{ all -> 0x0054 }
            r4 = 1
            r2[r4] = r3     // Catch:{ all -> 0x0054 }
            r3 = 2
            long r5 = r8.mBatchTimeInterval     // Catch:{ all -> 0x0054 }
            java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch:{ all -> 0x0054 }
            r2[r3] = r5     // Catch:{ all -> 0x0054 }
            java.lang.String r1 = java.lang.String.format(r1, r2)     // Catch:{ all -> 0x0054 }
            com.microsoft.appcenter.utils.AppCenterLog.debug(r0, r1)     // Catch:{ all -> 0x0054 }
            java.lang.Long r0 = r7.resolveTriggerInterval(r8)     // Catch:{ all -> 0x0054 }
            if (r0 == 0) goto L_0x0052
            boolean r1 = r8.mPaused     // Catch:{ all -> 0x0054 }
            if (r1 == 0) goto L_0x0031
            goto L_0x0052
        L_0x0031:
            long r1 = r0.longValue()     // Catch:{ all -> 0x0054 }
            r5 = 0
            int r3 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r3 != 0) goto L_0x003f
            r7.triggerIngestion(r8)     // Catch:{ all -> 0x0054 }
            goto L_0x0050
        L_0x003f:
            boolean r1 = r8.mScheduled     // Catch:{ all -> 0x0054 }
            if (r1 != 0) goto L_0x0050
            r8.mScheduled = r4     // Catch:{ all -> 0x0054 }
            android.os.Handler r1 = r7.mAppCenterHandler     // Catch:{ all -> 0x0054 }
            java.lang.Runnable r8 = r8.mRunnable     // Catch:{ all -> 0x0054 }
            long r2 = r0.longValue()     // Catch:{ all -> 0x0054 }
            r1.postDelayed(r8, r2)     // Catch:{ all -> 0x0054 }
        L_0x0050:
            monitor-exit(r7)
            return
        L_0x0052:
            monitor-exit(r7)
            return
        L_0x0054:
            r8 = move-exception
            monitor-exit(r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.appcenter.channel.DefaultChannel.checkPendingLogs(com.microsoft.appcenter.channel.DefaultChannel$GroupState):void");
    }

    public synchronized void clear(String str) {
        if (this.mGroupStates.containsKey(str)) {
            AppCenterLog.debug("AppCenter", "clear(" + str + ")");
            this.mPersistence.deleteLogs(str);
            for (Channel.Listener onClear : this.mListeners) {
                onClear.onClear(str);
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0042, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:77:0x0187, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void enqueue(com.microsoft.appcenter.ingestion.models.Log r7, java.lang.String r8, int r9) {
        /*
            r6 = this;
            monitor-enter(r6)
            java.util.Map<java.lang.String, com.microsoft.appcenter.channel.DefaultChannel$GroupState> r0 = r6.mGroupStates     // Catch:{ all -> 0x01a0 }
            java.lang.Object r0 = r0.get(r8)     // Catch:{ all -> 0x01a0 }
            com.microsoft.appcenter.channel.DefaultChannel$GroupState r0 = (com.microsoft.appcenter.channel.DefaultChannel.GroupState) r0     // Catch:{ all -> 0x01a0 }
            if (r0 != 0) goto L_0x0023
            java.lang.String r7 = "AppCenter"
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch:{ all -> 0x01a0 }
            r9.<init>()     // Catch:{ all -> 0x01a0 }
            java.lang.String r0 = "Invalid group name:"
            r9.append(r0)     // Catch:{ all -> 0x01a0 }
            r9.append(r8)     // Catch:{ all -> 0x01a0 }
            java.lang.String r8 = r9.toString()     // Catch:{ all -> 0x01a0 }
            com.microsoft.appcenter.utils.AppCenterLog.error(r7, r8)     // Catch:{ all -> 0x01a0 }
            monitor-exit(r6)
            return
        L_0x0023:
            boolean r1 = r6.mDiscardLogs     // Catch:{ all -> 0x01a0 }
            if (r1 == 0) goto L_0x0043
            java.lang.String r8 = "AppCenter"
            java.lang.String r9 = "Channel is disabled, the log is discarded."
            com.microsoft.appcenter.utils.AppCenterLog.warn(r8, r9)     // Catch:{ all -> 0x01a0 }
            com.microsoft.appcenter.channel.Channel$GroupListener r8 = r0.mListener     // Catch:{ all -> 0x01a0 }
            if (r8 == 0) goto L_0x0041
            com.microsoft.appcenter.channel.Channel$GroupListener r8 = r0.mListener     // Catch:{ all -> 0x01a0 }
            r8.onBeforeSending(r7)     // Catch:{ all -> 0x01a0 }
            com.microsoft.appcenter.channel.Channel$GroupListener r8 = r0.mListener     // Catch:{ all -> 0x01a0 }
            com.microsoft.appcenter.CancellationException r9 = new com.microsoft.appcenter.CancellationException     // Catch:{ all -> 0x01a0 }
            r9.<init>()     // Catch:{ all -> 0x01a0 }
            r8.onFailure(r7, r9)     // Catch:{ all -> 0x01a0 }
        L_0x0041:
            monitor-exit(r6)
            return
        L_0x0043:
            java.util.Collection<com.microsoft.appcenter.channel.Channel$Listener> r1 = r6.mListeners     // Catch:{ all -> 0x01a0 }
            java.util.Iterator r1 = r1.iterator()     // Catch:{ all -> 0x01a0 }
        L_0x0049:
            boolean r2 = r1.hasNext()     // Catch:{ all -> 0x01a0 }
            if (r2 == 0) goto L_0x0059
            java.lang.Object r2 = r1.next()     // Catch:{ all -> 0x01a0 }
            com.microsoft.appcenter.channel.Channel$Listener r2 = (com.microsoft.appcenter.channel.Channel.Listener) r2     // Catch:{ all -> 0x01a0 }
            r2.onPreparingLog(r7, r8)     // Catch:{ all -> 0x01a0 }
            goto L_0x0049
        L_0x0059:
            com.microsoft.appcenter.ingestion.models.Device r1 = r7.getDevice()     // Catch:{ all -> 0x01a0 }
            if (r1 != 0) goto L_0x007b
            com.microsoft.appcenter.ingestion.models.Device r1 = r6.mDevice     // Catch:{ all -> 0x01a0 }
            if (r1 != 0) goto L_0x0076
            android.content.Context r1 = r6.mContext     // Catch:{ DeviceInfoException -> 0x006c }
            com.microsoft.appcenter.ingestion.models.Device r1 = com.microsoft.appcenter.utils.DeviceInfoHelper.getDeviceInfo(r1)     // Catch:{ DeviceInfoException -> 0x006c }
            r6.mDevice = r1     // Catch:{ DeviceInfoException -> 0x006c }
            goto L_0x0076
        L_0x006c:
            r7 = move-exception
            java.lang.String r8 = "AppCenter"
            java.lang.String r9 = "Device log cannot be generated"
            com.microsoft.appcenter.utils.AppCenterLog.error(r8, r9, r7)     // Catch:{ all -> 0x01a0 }
            monitor-exit(r6)
            return
        L_0x0076:
            com.microsoft.appcenter.ingestion.models.Device r1 = r6.mDevice     // Catch:{ all -> 0x01a0 }
            r7.setDevice(r1)     // Catch:{ all -> 0x01a0 }
        L_0x007b:
            java.util.Date r1 = r7.getTimestamp()     // Catch:{ all -> 0x01a0 }
            if (r1 != 0) goto L_0x0089
            java.util.Date r1 = new java.util.Date     // Catch:{ all -> 0x01a0 }
            r1.<init>()     // Catch:{ all -> 0x01a0 }
            r7.setTimestamp(r1)     // Catch:{ all -> 0x01a0 }
        L_0x0089:
            java.util.Collection<com.microsoft.appcenter.channel.Channel$Listener> r1 = r6.mListeners     // Catch:{ all -> 0x01a0 }
            java.util.Iterator r1 = r1.iterator()     // Catch:{ all -> 0x01a0 }
        L_0x008f:
            boolean r2 = r1.hasNext()     // Catch:{ all -> 0x01a0 }
            if (r2 == 0) goto L_0x009f
            java.lang.Object r2 = r1.next()     // Catch:{ all -> 0x01a0 }
            com.microsoft.appcenter.channel.Channel$Listener r2 = (com.microsoft.appcenter.channel.Channel.Listener) r2     // Catch:{ all -> 0x01a0 }
            r2.onPreparedLog(r7, r8, r9)     // Catch:{ all -> 0x01a0 }
            goto L_0x008f
        L_0x009f:
            java.util.Collection<com.microsoft.appcenter.channel.Channel$Listener> r1 = r6.mListeners     // Catch:{ all -> 0x01a0 }
            java.util.Iterator r1 = r1.iterator()     // Catch:{ all -> 0x01a0 }
            r2 = 0
        L_0x00a6:
            r3 = 0
        L_0x00a7:
            boolean r4 = r1.hasNext()     // Catch:{ all -> 0x01a0 }
            r5 = 1
            if (r4 == 0) goto L_0x00be
            java.lang.Object r4 = r1.next()     // Catch:{ all -> 0x01a0 }
            com.microsoft.appcenter.channel.Channel$Listener r4 = (com.microsoft.appcenter.channel.Channel.Listener) r4     // Catch:{ all -> 0x01a0 }
            if (r3 != 0) goto L_0x00bc
            boolean r3 = r4.shouldFilter(r7)     // Catch:{ all -> 0x01a0 }
            if (r3 == 0) goto L_0x00a6
        L_0x00bc:
            r3 = 1
            goto L_0x00a7
        L_0x00be:
            if (r3 == 0) goto L_0x00e1
            java.lang.String r8 = "AppCenter"
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch:{ all -> 0x01a0 }
            r9.<init>()     // Catch:{ all -> 0x01a0 }
            java.lang.String r0 = "Log of type '"
            r9.append(r0)     // Catch:{ all -> 0x01a0 }
            java.lang.String r7 = r7.getType()     // Catch:{ all -> 0x01a0 }
            r9.append(r7)     // Catch:{ all -> 0x01a0 }
            java.lang.String r7 = "' was filtered out by listener(s)"
            r9.append(r7)     // Catch:{ all -> 0x01a0 }
            java.lang.String r7 = r9.toString()     // Catch:{ all -> 0x01a0 }
            com.microsoft.appcenter.utils.AppCenterLog.debug(r8, r7)     // Catch:{ all -> 0x01a0 }
            goto L_0x0186
        L_0x00e1:
            java.lang.String r1 = r6.mAppSecret     // Catch:{ all -> 0x01a0 }
            if (r1 != 0) goto L_0x010c
            com.microsoft.appcenter.ingestion.Ingestion r1 = r0.mIngestion     // Catch:{ all -> 0x01a0 }
            com.microsoft.appcenter.ingestion.Ingestion r2 = r6.mIngestion     // Catch:{ all -> 0x01a0 }
            if (r1 != r2) goto L_0x010c
            java.lang.String r8 = "AppCenter"
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch:{ all -> 0x01a0 }
            r9.<init>()     // Catch:{ all -> 0x01a0 }
            java.lang.String r0 = "Log of type '"
            r9.append(r0)     // Catch:{ all -> 0x01a0 }
            java.lang.String r7 = r7.getType()     // Catch:{ all -> 0x01a0 }
            r9.append(r7)     // Catch:{ all -> 0x01a0 }
            java.lang.String r7 = "' was not filtered out by listener(s) but no app secret was provided. Not persisting/sending the log."
            r9.append(r7)     // Catch:{ all -> 0x01a0 }
            java.lang.String r7 = r9.toString()     // Catch:{ all -> 0x01a0 }
            com.microsoft.appcenter.utils.AppCenterLog.debug(r8, r7)     // Catch:{ all -> 0x01a0 }
            monitor-exit(r6)
            return
        L_0x010c:
            com.microsoft.appcenter.persistence.Persistence r1 = r6.mPersistence     // Catch:{ PersistenceException -> 0x0188 }
            r1.putLog(r7, r8, r9)     // Catch:{ PersistenceException -> 0x0188 }
            java.util.Set r7 = r7.getTransmissionTargetTokens()     // Catch:{ all -> 0x01a0 }
            java.util.Iterator r7 = r7.iterator()     // Catch:{ all -> 0x01a0 }
            boolean r8 = r7.hasNext()     // Catch:{ all -> 0x01a0 }
            if (r8 == 0) goto L_0x012a
            java.lang.Object r7 = r7.next()     // Catch:{ all -> 0x01a0 }
            java.lang.String r7 = (java.lang.String) r7     // Catch:{ all -> 0x01a0 }
            java.lang.String r7 = com.microsoft.appcenter.ingestion.models.one.PartAUtils.getTargetKey(r7)     // Catch:{ all -> 0x01a0 }
            goto L_0x012b
        L_0x012a:
            r7 = 0
        L_0x012b:
            java.util.Collection<java.lang.String> r8 = r0.mPausedTargetKeys     // Catch:{ all -> 0x01a0 }
            boolean r8 = r8.contains(r7)     // Catch:{ all -> 0x01a0 }
            if (r8 == 0) goto L_0x0150
            java.lang.String r8 = "AppCenter"
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch:{ all -> 0x01a0 }
            r9.<init>()     // Catch:{ all -> 0x01a0 }
            java.lang.String r0 = "Transmission target ikey="
            r9.append(r0)     // Catch:{ all -> 0x01a0 }
            r9.append(r7)     // Catch:{ all -> 0x01a0 }
            java.lang.String r7 = " is paused."
            r9.append(r7)     // Catch:{ all -> 0x01a0 }
            java.lang.String r7 = r9.toString()     // Catch:{ all -> 0x01a0 }
            com.microsoft.appcenter.utils.AppCenterLog.debug(r8, r7)     // Catch:{ all -> 0x01a0 }
            monitor-exit(r6)
            return
        L_0x0150:
            int r7 = r0.mPendingLogCount     // Catch:{ all -> 0x01a0 }
            int r7 = r7 + r5
            r0.mPendingLogCount = r7     // Catch:{ all -> 0x01a0 }
            java.lang.String r7 = "AppCenter"
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch:{ all -> 0x01a0 }
            r8.<init>()     // Catch:{ all -> 0x01a0 }
            java.lang.String r9 = "enqueue("
            r8.append(r9)     // Catch:{ all -> 0x01a0 }
            java.lang.String r9 = r0.mName     // Catch:{ all -> 0x01a0 }
            r8.append(r9)     // Catch:{ all -> 0x01a0 }
            java.lang.String r9 = ") pendingLogCount="
            r8.append(r9)     // Catch:{ all -> 0x01a0 }
            int r9 = r0.mPendingLogCount     // Catch:{ all -> 0x01a0 }
            r8.append(r9)     // Catch:{ all -> 0x01a0 }
            java.lang.String r8 = r8.toString()     // Catch:{ all -> 0x01a0 }
            com.microsoft.appcenter.utils.AppCenterLog.debug(r7, r8)     // Catch:{ all -> 0x01a0 }
            boolean r7 = r6.mEnabled     // Catch:{ all -> 0x01a0 }
            if (r7 == 0) goto L_0x017f
            r6.checkPendingLogs(r0)     // Catch:{ all -> 0x01a0 }
            goto L_0x0186
        L_0x017f:
            java.lang.String r7 = "AppCenter"
            java.lang.String r8 = "Channel is temporarily disabled, log was saved to disk."
            com.microsoft.appcenter.utils.AppCenterLog.debug(r7, r8)     // Catch:{ all -> 0x01a0 }
        L_0x0186:
            monitor-exit(r6)
            return
        L_0x0188:
            r8 = move-exception
            java.lang.String r9 = "AppCenter"
            java.lang.String r1 = "Error persisting log"
            com.microsoft.appcenter.utils.AppCenterLog.error(r9, r1, r8)     // Catch:{ all -> 0x01a0 }
            com.microsoft.appcenter.channel.Channel$GroupListener r9 = r0.mListener     // Catch:{ all -> 0x01a0 }
            if (r9 == 0) goto L_0x019e
            com.microsoft.appcenter.channel.Channel$GroupListener r9 = r0.mListener     // Catch:{ all -> 0x01a0 }
            r9.onBeforeSending(r7)     // Catch:{ all -> 0x01a0 }
            com.microsoft.appcenter.channel.Channel$GroupListener r9 = r0.mListener     // Catch:{ all -> 0x01a0 }
            r9.onFailure(r7, r8)     // Catch:{ all -> 0x01a0 }
        L_0x019e:
            monitor-exit(r6)
            return
        L_0x01a0:
            r7 = move-exception
            monitor-exit(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.appcenter.channel.DefaultChannel.enqueue(com.microsoft.appcenter.ingestion.models.Log, java.lang.String, int):void");
    }

    public GroupState getGroupState(String str) {
        return this.mGroupStates.get(str);
    }

    public synchronized void invalidateDeviceCache() {
        this.mDevice = null;
    }

    public synchronized boolean isEnabled() {
        return this.mEnabled;
    }

    public synchronized void pauseGroup(String str, String str2) {
        GroupState groupState = this.mGroupStates.get(str);
        if (groupState != null) {
            if (str2 != null) {
                String targetKey = PartAUtils.getTargetKey(str2);
                if (groupState.mPausedTargetKeys.add(targetKey)) {
                    AppCenterLog.debug("AppCenter", "pauseGroup(" + str + ", " + targetKey + ")");
                }
            } else if (!groupState.mPaused) {
                AppCenterLog.debug("AppCenter", "pauseGroup(" + str + ")");
                groupState.mPaused = true;
                cancelTimer(groupState);
            }
            for (Channel.Listener onPaused : this.mListeners) {
                onPaused.onPaused(str, str2);
            }
        }
    }

    public synchronized void removeGroup(String str) {
        AppCenterLog.debug("AppCenter", "removeGroup(" + str + ")");
        GroupState remove = this.mGroupStates.remove(str);
        if (remove != null) {
            cancelTimer(remove);
        }
        for (Channel.Listener onGroupRemoved : this.mListeners) {
            onGroupRemoved.onGroupRemoved(str);
        }
    }

    public synchronized void removeListener(Channel.Listener listener) {
        this.mListeners.remove(listener);
    }

    public synchronized void resumeGroup(String str, String str2) {
        GroupState groupState = this.mGroupStates.get(str);
        if (groupState != null) {
            if (str2 != null) {
                String targetKey = PartAUtils.getTargetKey(str2);
                if (groupState.mPausedTargetKeys.remove(targetKey)) {
                    AppCenterLog.debug("AppCenter", "resumeGroup(" + str + ", " + targetKey + ")");
                    groupState.mPendingLogCount = this.mPersistence.countLogs(str);
                    checkPendingLogs(groupState);
                }
            } else if (groupState.mPaused) {
                AppCenterLog.debug("AppCenter", "resumeGroup(" + str + ")");
                groupState.mPaused = false;
                checkPendingLogs(groupState);
            }
            for (Channel.Listener onResumed : this.mListeners) {
                onResumed.onResumed(str, str2);
            }
        }
    }

    public synchronized void setAppSecret(String str) {
        this.mAppSecret = str;
        if (this.mEnabled) {
            for (GroupState next : this.mGroupStates.values()) {
                if (next.mIngestion == this.mIngestion) {
                    checkPendingLogs(next);
                }
            }
        }
    }

    public synchronized void setEnabled(boolean z) {
        if (this.mEnabled != z) {
            if (z) {
                this.mEnabled = true;
                this.mDiscardLogs = false;
                this.mCurrentState++;
                for (Ingestion reopen : this.mIngestions) {
                    reopen.reopen();
                }
                for (GroupState checkPendingLogs : this.mGroupStates.values()) {
                    checkPendingLogs(checkPendingLogs);
                }
            } else {
                suspend(true, new CancellationException());
            }
            for (Channel.Listener onGloballyEnabled : this.mListeners) {
                onGloballyEnabled.onGloballyEnabled(z);
            }
        }
    }

    public synchronized void setLogUrl(String str) {
        this.mIngestion.setLogUrl(str);
    }

    public synchronized boolean setMaxStorageSize(long j2) {
        return this.mPersistence.setMaxStorageSize(j2);
    }

    public synchronized void shutdown() {
        suspend(false, new CancellationException());
    }

    public DefaultChannel(Context context, String str, Persistence persistence, Ingestion ingestion, Handler handler) {
        this.mContext = context;
        this.mAppSecret = str;
        this.mInstallId = IdHelper.getInstallId();
        this.mGroupStates = new HashMap();
        this.mListeners = new LinkedHashSet();
        this.mPersistence = persistence;
        this.mIngestion = ingestion;
        HashSet hashSet = new HashSet();
        this.mIngestions = hashSet;
        hashSet.add(this.mIngestion);
        this.mAppCenterHandler = handler;
        this.mEnabled = true;
    }
}
