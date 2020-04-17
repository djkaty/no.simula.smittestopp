package com.microsoft.azure.sdk.iot.deps.util;

public class CustomLogger {
    public static final int CALLING_METHOD_NAME_DEPTH = 2;

    public void LogDebug(String str, Throwable th, Object... objArr) {
    }

    public void LogDebug(String str, Object... objArr) {
    }

    public void LogError(String str, Object... objArr) {
    }

    public void LogError(Throwable th) {
    }

    public void LogFatal(String str, Object... objArr) {
    }

    public void LogInfo(String str, Object... objArr) {
    }

    public void LogTrace(String str, Object... objArr) {
    }

    public void LogWarn(String str, Object... objArr) {
    }

    public String getMethodName() {
        return Thread.currentThread().getStackTrace()[2].getMethodName();
    }
}
