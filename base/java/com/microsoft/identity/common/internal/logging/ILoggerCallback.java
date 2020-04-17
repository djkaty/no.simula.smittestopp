package com.microsoft.identity.common.internal.logging;

import com.microsoft.identity.common.internal.logging.Logger;

public interface ILoggerCallback {
    void log(String str, Logger.LogLevel logLevel, String str2, boolean z);
}
