package com.microsoft.identity.common.internal.logging;

import android.os.Build;
import android.util.Log;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import e.a.a.a.a;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class Logger {
    public static final String CUSTOM_LOG_ERROR = "Custom log failed to log message:%s";
    public static final String DATE_FORMAT = "yyyy-MM-dd HH:mm:ss";
    public static final Logger INSTANCE = new Logger();
    public static boolean sAllowLogcat = false;
    public static boolean sAllowPii = false;
    public static ExecutorService sLogExecutor = Executors.newSingleThreadExecutor();
    public ILoggerCallback mExternalLogger;
    public LogLevel mLogLevel = LogLevel.VERBOSE;

    /* renamed from: com.microsoft.identity.common.internal.logging.Logger$2  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$identity$common$internal$logging$Logger$LogLevel;

        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x001d */
        static {
            /*
                com.microsoft.identity.common.internal.logging.Logger$LogLevel[] r0 = com.microsoft.identity.common.internal.logging.Logger.LogLevel.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$identity$common$internal$logging$Logger$LogLevel = r0
                r1 = 1
                com.microsoft.identity.common.internal.logging.Logger$LogLevel r2 = com.microsoft.identity.common.internal.logging.Logger.LogLevel.ERROR     // Catch:{ NoSuchFieldError -> 0x000f }
                r2 = 0
                r0[r2] = r1     // Catch:{ NoSuchFieldError -> 0x000f }
            L_0x000f:
                r0 = 2
                int[] r2 = $SwitchMap$com$microsoft$identity$common$internal$logging$Logger$LogLevel     // Catch:{ NoSuchFieldError -> 0x0016 }
                com.microsoft.identity.common.internal.logging.Logger$LogLevel r3 = com.microsoft.identity.common.internal.logging.Logger.LogLevel.WARN     // Catch:{ NoSuchFieldError -> 0x0016 }
                r2[r1] = r0     // Catch:{ NoSuchFieldError -> 0x0016 }
            L_0x0016:
                r1 = 3
                int[] r2 = $SwitchMap$com$microsoft$identity$common$internal$logging$Logger$LogLevel     // Catch:{ NoSuchFieldError -> 0x001d }
                com.microsoft.identity.common.internal.logging.Logger$LogLevel r3 = com.microsoft.identity.common.internal.logging.Logger.LogLevel.INFO     // Catch:{ NoSuchFieldError -> 0x001d }
                r2[r0] = r1     // Catch:{ NoSuchFieldError -> 0x001d }
            L_0x001d:
                int[] r0 = $SwitchMap$com$microsoft$identity$common$internal$logging$Logger$LogLevel     // Catch:{ NoSuchFieldError -> 0x0024 }
                com.microsoft.identity.common.internal.logging.Logger$LogLevel r2 = com.microsoft.identity.common.internal.logging.Logger.LogLevel.VERBOSE     // Catch:{ NoSuchFieldError -> 0x0024 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0024 }
            L_0x0024:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.identity.common.internal.logging.Logger.AnonymousClass2.<clinit>():void");
        }
    }

    public enum LogLevel {
        ERROR,
        WARN,
        INFO,
        VERBOSE
    }

    public static void error(String str, String str2, Throwable th) {
        getInstance().log(str, LogLevel.ERROR, DiagnosticContext.getRequestContext().toJsonString(), str2, th, false);
    }

    public static void errorPII(String str, String str2, Throwable th) {
        getInstance().log(str, LogLevel.ERROR, DiagnosticContext.getRequestContext().toJsonString(), str2, th, true);
    }

    /* access modifiers changed from: private */
    public String formatMessage(String str, String str2, Throwable th) {
        String str3;
        if (StringExtensions.isNullOrBlank(str2)) {
            str2 = "N/A";
        }
        StringBuilder a = a.a(" [");
        a.append(getUTCDateTimeAsString());
        String str4 = "] ";
        if (!StringExtensions.isNullOrBlank(str)) {
            str4 = a.a(" - ", str, str4);
        }
        a.append(str4);
        a.append(str2);
        a.append(" Android ");
        a.append(Build.VERSION.SDK_INT);
        if (th == null) {
            str3 = "";
        } else {
            str3 = 10 + Log.getStackTraceString(th);
        }
        a.append(str3);
        return a.toString();
    }

    public static boolean getAllowLogcat() {
        return sAllowLogcat;
    }

    public static boolean getAllowPii() {
        return sAllowPii;
    }

    public static Logger getInstance() {
        return INSTANCE;
    }

    public static String getUTCDateTimeAsString() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(DATE_FORMAT, Locale.getDefault());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat.format(new Date());
    }

    public static void info(String str, String str2) {
        getInstance().log(str, LogLevel.INFO, DiagnosticContext.getRequestContext().toJsonString(), str2, (Throwable) null, false);
    }

    public static void infoPII(String str, String str2) {
        getInstance().log(str, LogLevel.INFO, DiagnosticContext.getRequestContext().toJsonString(), str2, (Throwable) null, true);
    }

    private void log(String str, LogLevel logLevel, String str2, String str3, Throwable th, boolean z) {
        final LogLevel logLevel2 = logLevel;
        final boolean z2 = z;
        final String str4 = str2;
        final String str5 = str3;
        final Throwable th2 = th;
        final String str6 = str;
        sLogExecutor.execute(new Runnable() {
            public void run() {
                if (logLevel2.compareTo(Logger.this.mLogLevel) <= 0) {
                    if (Logger.sAllowPii || !z2) {
                        String access$200 = Logger.this.formatMessage(str4, str5, th2);
                        if (Logger.sAllowLogcat) {
                            Logger.this.sendLogcatLogs(str6, logLevel2, access$200);
                        }
                        if (Logger.this.mExternalLogger != null) {
                            try {
                                Logger.this.mExternalLogger.log(str6, logLevel2, access$200, z2);
                            } catch (Exception unused) {
                                if (!z2 || Logger.sAllowPii) {
                                    Log.w(str6, String.format(Logger.CUSTOM_LOG_ERROR, new Object[]{access$200}));
                                }
                            }
                        }
                    }
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void sendLogcatLogs(String str, LogLevel logLevel, String str2) {
        int ordinal = logLevel.ordinal();
        if (ordinal == 0) {
            Log.e(str, str2);
        } else if (ordinal == 1) {
            Log.w(str, str2);
        } else if (ordinal == 2) {
            Log.i(str, str2);
        } else if (ordinal == 3) {
            Log.v(str, str2);
        } else {
            throw new IllegalArgumentException("Unknown log level");
        }
    }

    public static void setAllowLogcat(boolean z) {
        sAllowLogcat = z;
    }

    public static void setAllowPii(boolean z) {
        sAllowPii = z;
    }

    public static void verbose(String str, String str2) {
        getInstance().log(str, LogLevel.VERBOSE, DiagnosticContext.getRequestContext().toJsonString(), str2, (Throwable) null, false);
    }

    public static void verbosePII(String str, String str2) {
        getInstance().log(str, LogLevel.VERBOSE, DiagnosticContext.getRequestContext().toJsonString(), str2, (Throwable) null, true);
    }

    public static void warn(String str, String str2) {
        getInstance().log(str, LogLevel.WARN, DiagnosticContext.getRequestContext().toJsonString(), str2, (Throwable) null, false);
    }

    public static void warnPII(String str, String str2) {
        getInstance().log(str, LogLevel.WARN, DiagnosticContext.getRequestContext().toJsonString(), str2, (Throwable) null, true);
    }

    public void setExternalLogger(ILoggerCallback iLoggerCallback) {
        this.mExternalLogger = iLoggerCallback;
    }

    public void setLogLevel(LogLevel logLevel) {
        this.mLogLevel = logLevel;
    }

    public static void error(String str, String str2, String str3, Throwable th) {
        getInstance().log(str, LogLevel.ERROR, str2, str3, th, false);
    }

    public static void errorPII(String str, String str2, String str3, Throwable th) {
        getInstance().log(str, LogLevel.ERROR, str2, str3, th, true);
    }

    public static void info(String str, String str2, String str3) {
        getInstance().log(str, LogLevel.INFO, str2, str3, (Throwable) null, false);
    }

    public static void infoPII(String str, String str2, String str3) {
        getInstance().log(str, LogLevel.INFO, str2, str3, (Throwable) null, true);
    }

    public static void verbose(String str, String str2, String str3) {
        getInstance().log(str, LogLevel.VERBOSE, str2, str3, (Throwable) null, false);
    }

    public static void verbosePII(String str, String str2, String str3) {
        getInstance().log(str, LogLevel.VERBOSE, str2, str3, (Throwable) null, true);
    }

    public static void warn(String str, String str2, String str3) {
        getInstance().log(str, LogLevel.WARN, str2, str3, (Throwable) null, false);
    }

    public static void warnPII(String str, String str2, String str3) {
        getInstance().log(str, LogLevel.WARN, str2, str3, (Throwable) null, true);
    }
}
