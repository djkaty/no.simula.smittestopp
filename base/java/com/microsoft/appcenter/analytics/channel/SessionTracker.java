package com.microsoft.appcenter.analytics.channel;

import android.os.SystemClock;
import com.microsoft.appcenter.analytics.Analytics;
import com.microsoft.appcenter.analytics.ingestion.models.StartSessionLog;
import com.microsoft.appcenter.channel.AbstractChannelListener;
import com.microsoft.appcenter.channel.Channel;
import com.microsoft.appcenter.ingestion.models.Log;
import com.microsoft.appcenter.ingestion.models.StartServiceLog;
import com.microsoft.appcenter.utils.AppCenterLog;
import com.microsoft.appcenter.utils.context.SessionContext;
import java.util.Date;
import java.util.UUID;

public class SessionTracker extends AbstractChannelListener {
    public static final long SESSION_TIMEOUT = 20000;
    public final Channel mChannel;
    public final String mGroupName;
    public Long mLastPausedTime;
    public long mLastQueuedLogTime;
    public Long mLastResumedTime;
    public UUID mSid;

    public SessionTracker(Channel channel, String str) {
        this.mChannel = channel;
        this.mGroupName = str;
    }

    private boolean hasSessionTimedOut() {
        if (this.mLastPausedTime == null) {
            return false;
        }
        boolean z = SystemClock.elapsedRealtime() - this.mLastQueuedLogTime >= SESSION_TIMEOUT;
        boolean z2 = this.mLastResumedTime.longValue() - Math.max(this.mLastPausedTime.longValue(), this.mLastQueuedLogTime) >= SESSION_TIMEOUT;
        AppCenterLog.debug(Analytics.LOG_TAG, "noLogSentForLong=" + z + " wasBackgroundForLong=" + z2);
        if (!z || !z2) {
            return false;
        }
        return true;
    }

    private void sendStartSessionIfNeeded() {
        if (this.mSid == null || hasSessionTimedOut()) {
            this.mSid = UUID.randomUUID();
            SessionContext.getInstance().addSession(this.mSid);
            this.mLastQueuedLogTime = SystemClock.elapsedRealtime();
            StartSessionLog startSessionLog = new StartSessionLog();
            startSessionLog.setSid(this.mSid);
            this.mChannel.enqueue(startSessionLog, this.mGroupName, 1);
        }
    }

    public void clearSessions() {
        SessionContext.getInstance().clearSessions();
    }

    public void onActivityPaused() {
        AppCenterLog.debug(Analytics.LOG_TAG, "onActivityPaused");
        this.mLastPausedTime = Long.valueOf(SystemClock.elapsedRealtime());
    }

    public void onActivityResumed() {
        AppCenterLog.debug(Analytics.LOG_TAG, "onActivityResumed");
        this.mLastResumedTime = Long.valueOf(SystemClock.elapsedRealtime());
        sendStartSessionIfNeeded();
    }

    public void onPreparingLog(Log log, String str) {
        if (!(log instanceof StartSessionLog) && !(log instanceof StartServiceLog)) {
            Date timestamp = log.getTimestamp();
            if (timestamp != null) {
                SessionContext.SessionInfo sessionAt = SessionContext.getInstance().getSessionAt(timestamp.getTime());
                if (sessionAt != null) {
                    log.setSid(sessionAt.getSessionId());
                    return;
                }
                return;
            }
            log.setSid(this.mSid);
            this.mLastQueuedLogTime = SystemClock.elapsedRealtime();
        }
    }
}
