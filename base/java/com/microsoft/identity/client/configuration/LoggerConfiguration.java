package com.microsoft.identity.client.configuration;

import com.microsoft.identity.client.Logger;
import e.c.c.v.c;

public class LoggerConfiguration {
    @c("log_level")
    public Logger.LogLevel mLogLevel;
    @c("logcat_enabled")
    public boolean mLogcatEnabled;
    @c("pii_enabled")
    public boolean mPiiEnabled;

    public static final class SerializedNames {
        public static final String LOGCAT_ENABLED = "logcat_enabled";
        public static final String LOG_LEVEL = "log_level";
        public static final String PII_ENABLED = "pii_enabled";
    }

    public Logger.LogLevel getLogLevel() {
        return this.mLogLevel;
    }

    public boolean isLogcatEnabled() {
        return this.mLogcatEnabled;
    }

    public boolean isPiiEnabled() {
        return this.mPiiEnabled;
    }
}
