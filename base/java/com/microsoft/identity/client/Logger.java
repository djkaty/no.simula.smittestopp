package com.microsoft.identity.client;

import com.microsoft.identity.common.internal.logging.ILoggerCallback;
import com.microsoft.identity.common.internal.logging.Logger;

public final class Logger {
    public static final Logger sINSTANCE = new Logger();
    public ILoggerCallback mExternalLogger;

    /* renamed from: com.microsoft.identity.client.Logger$2  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$identity$client$Logger$LogLevel;
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$identity$common$internal$logging$Logger$LogLevel;

        /* JADX WARNING: Can't wrap try/catch for region: R(20:0|1|2|3|(2:5|6)|7|(2:9|10)|11|13|14|15|17|18|19|20|21|22|23|24|26) */
        /* JADX WARNING: Can't wrap try/catch for region: R(21:0|1|2|3|(2:5|6)|7|9|10|11|13|14|15|17|18|19|20|21|22|23|24|26) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:19:0x0031 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:21:0x0037 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:23:0x003d */
        static {
            /*
                com.microsoft.identity.common.internal.logging.Logger$LogLevel[] r0 = com.microsoft.identity.common.internal.logging.Logger.LogLevel.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$identity$common$internal$logging$Logger$LogLevel = r0
                r1 = 0
                r2 = 1
                com.microsoft.identity.common.internal.logging.Logger$LogLevel r3 = com.microsoft.identity.common.internal.logging.Logger.LogLevel.ERROR     // Catch:{ NoSuchFieldError -> 0x000f }
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x000f }
            L_0x000f:
                r0 = 2
                int[] r3 = $SwitchMap$com$microsoft$identity$common$internal$logging$Logger$LogLevel     // Catch:{ NoSuchFieldError -> 0x0016 }
                com.microsoft.identity.common.internal.logging.Logger$LogLevel r4 = com.microsoft.identity.common.internal.logging.Logger.LogLevel.WARN     // Catch:{ NoSuchFieldError -> 0x0016 }
                r3[r2] = r0     // Catch:{ NoSuchFieldError -> 0x0016 }
            L_0x0016:
                r3 = 3
                int[] r4 = $SwitchMap$com$microsoft$identity$common$internal$logging$Logger$LogLevel     // Catch:{ NoSuchFieldError -> 0x001d }
                com.microsoft.identity.common.internal.logging.Logger$LogLevel r5 = com.microsoft.identity.common.internal.logging.Logger.LogLevel.VERBOSE     // Catch:{ NoSuchFieldError -> 0x001d }
                r4[r3] = r3     // Catch:{ NoSuchFieldError -> 0x001d }
            L_0x001d:
                r4 = 4
                int[] r5 = $SwitchMap$com$microsoft$identity$common$internal$logging$Logger$LogLevel     // Catch:{ NoSuchFieldError -> 0x0024 }
                com.microsoft.identity.common.internal.logging.Logger$LogLevel r6 = com.microsoft.identity.common.internal.logging.Logger.LogLevel.INFO     // Catch:{ NoSuchFieldError -> 0x0024 }
                r5[r0] = r4     // Catch:{ NoSuchFieldError -> 0x0024 }
            L_0x0024:
                com.microsoft.identity.client.Logger$LogLevel[] r5 = com.microsoft.identity.client.Logger.LogLevel.values()
                int r5 = r5.length
                int[] r5 = new int[r5]
                $SwitchMap$com$microsoft$identity$client$Logger$LogLevel = r5
                com.microsoft.identity.client.Logger$LogLevel r6 = com.microsoft.identity.client.Logger.LogLevel.ERROR     // Catch:{ NoSuchFieldError -> 0x0031 }
                r5[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0031 }
            L_0x0031:
                int[] r1 = $SwitchMap$com$microsoft$identity$client$Logger$LogLevel     // Catch:{ NoSuchFieldError -> 0x0037 }
                com.microsoft.identity.client.Logger$LogLevel r5 = com.microsoft.identity.client.Logger.LogLevel.WARNING     // Catch:{ NoSuchFieldError -> 0x0037 }
                r1[r2] = r0     // Catch:{ NoSuchFieldError -> 0x0037 }
            L_0x0037:
                int[] r1 = $SwitchMap$com$microsoft$identity$client$Logger$LogLevel     // Catch:{ NoSuchFieldError -> 0x003d }
                com.microsoft.identity.client.Logger$LogLevel r2 = com.microsoft.identity.client.Logger.LogLevel.INFO     // Catch:{ NoSuchFieldError -> 0x003d }
                r1[r0] = r3     // Catch:{ NoSuchFieldError -> 0x003d }
            L_0x003d:
                int[] r0 = $SwitchMap$com$microsoft$identity$client$Logger$LogLevel     // Catch:{ NoSuchFieldError -> 0x0043 }
                com.microsoft.identity.client.Logger$LogLevel r1 = com.microsoft.identity.client.Logger.LogLevel.VERBOSE     // Catch:{ NoSuchFieldError -> 0x0043 }
                r0[r3] = r4     // Catch:{ NoSuchFieldError -> 0x0043 }
            L_0x0043:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.identity.client.Logger.AnonymousClass2.<clinit>():void");
        }
    }

    public enum LogLevel {
        ERROR,
        WARNING,
        INFO,
        VERBOSE
    }

    public static Logger getInstance() {
        return sINSTANCE;
    }

    public void setEnableLogcatLog(boolean z) {
        com.microsoft.identity.common.internal.logging.Logger.setAllowLogcat(z);
    }

    public void setEnablePII(boolean z) {
        com.microsoft.identity.common.internal.logging.Logger.setAllowPii(z);
    }

    public synchronized void setExternalLogger(ILoggerCallback iLoggerCallback) {
        if (iLoggerCallback != null) {
            if (this.mExternalLogger == null) {
                com.microsoft.identity.common.internal.logging.Logger.getInstance().setExternalLogger(new ILoggerCallback() {
                    public void log(String str, Logger.LogLevel logLevel, String str2, boolean z) {
                        int ordinal = logLevel.ordinal();
                        if (ordinal == 0) {
                            Logger.this.mExternalLogger.log(str, LogLevel.ERROR, str2, z);
                        } else if (ordinal == 1) {
                            Logger.this.mExternalLogger.log(str, LogLevel.WARNING, str2, z);
                        } else if (ordinal == 2) {
                            Logger.this.mExternalLogger.log(str, LogLevel.INFO, str2, z);
                        } else if (ordinal == 3) {
                            Logger.this.mExternalLogger.log(str, LogLevel.VERBOSE, str2, z);
                        } else {
                            throw new IllegalArgumentException("Unknown logLevel");
                        }
                    }
                });
                this.mExternalLogger = iLoggerCallback;
                return;
            }
            throw new IllegalStateException("External logger is already set, cannot be set again.");
        }
    }

    public void setLogLevel(LogLevel logLevel) {
        com.microsoft.identity.common.internal.logging.Logger instance = com.microsoft.identity.common.internal.logging.Logger.getInstance();
        int ordinal = logLevel.ordinal();
        if (ordinal == 0) {
            instance.setLogLevel(Logger.LogLevel.ERROR);
        } else if (ordinal == 1) {
            instance.setLogLevel(Logger.LogLevel.WARN);
        } else if (ordinal == 2) {
            instance.setLogLevel(Logger.LogLevel.INFO);
        } else if (ordinal == 3) {
            instance.setLogLevel(Logger.LogLevel.VERBOSE);
        } else {
            throw new IllegalArgumentException("Unknown logLevel");
        }
    }
}
