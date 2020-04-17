package com.microsoft.azure.sdk.iot.device;

import k.f.b;
import k.f.c;

@Deprecated
public class CustomLogger {
    public static final int CALLING_METHOD_NAME_DEPTH = 2;
    public final b logger;

    public CustomLogger(Class<?> cls) {
        this.logger = c.a(cls);
    }

    public void LogDebug(String str, Object... objArr) {
        if (this.logger.d()) {
            this.logger.b(String.format(str, objArr));
        }
    }

    public void LogError(String str, Object... objArr) {
        if (this.logger.f()) {
            this.logger.a(String.format(str, objArr));
        }
    }

    public void LogFatal(String str, Object... objArr) {
        if (this.logger.f()) {
            this.logger.a(String.format(str, objArr));
        }
    }

    public void LogInfo(String str, Object... objArr) {
        if (this.logger.a()) {
            this.logger.c(String.format(str, objArr));
        }
    }

    public void LogTrace(String str, Object... objArr) {
        if (this.logger.e()) {
            this.logger.e(String.format(str, objArr));
        }
    }

    public void LogWarn(String str, Object... objArr) {
        if (this.logger.b()) {
            this.logger.d(String.format(str, objArr));
        }
    }

    public String getMethodName() {
        return Thread.currentThread().getStackTrace()[2].getMethodName();
    }

    public void LogDebug(String str, Throwable th, Object... objArr) {
        if (this.logger.d()) {
            this.logger.d(String.format(str, objArr), th);
        }
    }

    public void LogError(Throwable th) {
        if (this.logger.f()) {
            this.logger.a(th.toString());
        }
    }
}
