package com.microsoft.identity.common.internal.telemetry;

import e.c.c.v.c;
import java.io.Serializable;

public class TelemetryConfiguration implements Serializable {
    @c("debug_enabled")
    public boolean mDebugEnabled = false;
    @c("notify_on_failure_only")
    public boolean mNotifyOnFailureOnly = true;
    @c("pii_enabled")
    public boolean mPiiEnabled = false;

    public static final class SerializedNames {
        public static final String DEBUG_ENABLED = "debug_enabled";
        public static final String NOTIFY_ON_FAILTURE_ONLY = "notify_on_failure_only";
        public static final String PII_ENABLED = "pii_enabled";
    }

    public boolean isDebugEnabled() {
        return this.mDebugEnabled;
    }

    public boolean isPiiEnabled() {
        return this.mPiiEnabled;
    }

    public void setDebugEnabled(boolean z) {
        this.mDebugEnabled = z;
    }

    public void setNotifyOnFailureOnly(boolean z) {
        this.mNotifyOnFailureOnly = z;
    }

    public void setPiiEnabled(boolean z) {
        this.mPiiEnabled = z;
    }

    public boolean shouldNotifyOnFailureOnly() {
        return this.mNotifyOnFailureOnly;
    }
}
