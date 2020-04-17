package com.microsoft.appcenter.channel;

import com.microsoft.appcenter.ingestion.Ingestion;
import com.microsoft.appcenter.ingestion.models.Log;

public interface Channel {

    public interface GroupListener {
        void onBeforeSending(Log log);

        void onFailure(Log log, Exception exc);

        void onSuccess(Log log);
    }

    public interface Listener {
        void onClear(String str);

        void onGloballyEnabled(boolean z);

        void onGroupAdded(String str, GroupListener groupListener, long j2);

        void onGroupRemoved(String str);

        void onPaused(String str, String str2);

        void onPreparedLog(Log log, String str, int i2);

        void onPreparingLog(Log log, String str);

        void onResumed(String str, String str2);

        boolean shouldFilter(Log log);
    }

    void addGroup(String str, int i2, long j2, int i3, Ingestion ingestion, GroupListener groupListener);

    void addListener(Listener listener);

    void clear(String str);

    void enqueue(Log log, String str, int i2);

    void invalidateDeviceCache();

    boolean isEnabled();

    void pauseGroup(String str, String str2);

    void removeGroup(String str);

    void removeListener(Listener listener);

    void resumeGroup(String str, String str2);

    void setAppSecret(String str);

    void setEnabled(boolean z);

    void setLogUrl(String str);

    boolean setMaxStorageSize(long j2);

    void shutdown();
}
