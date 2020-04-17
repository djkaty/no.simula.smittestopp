package com.microsoft.azure.storage.core;

import com.microsoft.azure.storage.OperationContext;
import k.f.b;
import k.f.c;

public class Logger {
    public static void debug(OperationContext operationContext, String str) {
        b bVar;
        if (shouldLog(operationContext)) {
            if (operationContext == null) {
                bVar = c.a(OperationContext.defaultLoggerName);
            } else {
                bVar = operationContext.getLogger();
            }
            if (bVar.d()) {
                bVar.b(formatLogEntry(operationContext, str));
            }
        }
    }

    public static void error(OperationContext operationContext, String str) {
        b bVar;
        if (shouldLog(operationContext)) {
            if (operationContext == null) {
                bVar = c.a(OperationContext.defaultLoggerName);
            } else {
                bVar = operationContext.getLogger();
            }
            if (bVar.f()) {
                bVar.a(formatLogEntry(operationContext, str));
            }
        }
    }

    public static String formatLogEntry(OperationContext operationContext, String str) {
        Object[] objArr = new Object[2];
        objArr[0] = operationContext == null ? "*" : operationContext.getClientRequestID();
        objArr[1] = str.replace(10, '.');
        return String.format("{%s}: {%s}", objArr);
    }

    public static void info(OperationContext operationContext, String str) {
        b bVar;
        if (shouldLog(operationContext)) {
            if (operationContext == null) {
                bVar = c.a(OperationContext.defaultLoggerName);
            } else {
                bVar = operationContext.getLogger();
            }
            if (bVar.a()) {
                bVar.c(formatLogEntry(operationContext, str));
            }
        }
    }

    public static boolean shouldLog(OperationContext operationContext) {
        if (operationContext != null) {
            return operationContext.isLoggingEnabled();
        }
        return OperationContext.isLoggingEnabledByDefault();
    }

    public static void trace(OperationContext operationContext, String str) {
        b bVar;
        if (shouldLog(operationContext)) {
            if (operationContext == null) {
                bVar = c.a(OperationContext.defaultLoggerName);
            } else {
                bVar = operationContext.getLogger();
            }
            if (bVar.e()) {
                bVar.e(formatLogEntry(operationContext, str));
            }
        }
    }

    public static void warn(OperationContext operationContext, String str) {
        b bVar;
        if (shouldLog(operationContext)) {
            if (operationContext == null) {
                bVar = c.a(OperationContext.defaultLoggerName);
            } else {
                bVar = operationContext.getLogger();
            }
            if (bVar.b()) {
                bVar.d(formatLogEntry(operationContext, str));
            }
        }
    }

    public static String formatLogEntry(OperationContext operationContext, String str, Object... objArr) {
        Object[] objArr2 = new Object[2];
        objArr2[0] = operationContext == null ? "*" : operationContext.getClientRequestID();
        objArr2[1] = String.format(str, objArr).replace(10, '.');
        return String.format("{%s}: {%s}", objArr2);
    }

    public static void debug(OperationContext operationContext, String str, Object... objArr) {
        b bVar;
        if (shouldLog(operationContext)) {
            if (operationContext == null) {
                bVar = c.a(OperationContext.defaultLoggerName);
            } else {
                bVar = operationContext.getLogger();
            }
            if (bVar.d()) {
                bVar.b(formatLogEntry(operationContext, str, objArr));
            }
        }
    }

    public static void error(OperationContext operationContext, String str, Object... objArr) {
        b bVar;
        if (shouldLog(operationContext)) {
            if (operationContext == null) {
                bVar = c.a(OperationContext.defaultLoggerName);
            } else {
                bVar = operationContext.getLogger();
            }
            if (bVar.f()) {
                bVar.a(formatLogEntry(operationContext, str, objArr));
            }
        }
    }

    public static void info(OperationContext operationContext, String str, Object... objArr) {
        b bVar;
        if (shouldLog(operationContext)) {
            if (operationContext == null) {
                bVar = c.a(OperationContext.defaultLoggerName);
            } else {
                bVar = operationContext.getLogger();
            }
            if (bVar.a()) {
                bVar.c(formatLogEntry(operationContext, str, objArr));
            }
        }
    }

    public static void trace(OperationContext operationContext, String str, Object... objArr) {
        b bVar;
        if (shouldLog(operationContext)) {
            if (operationContext == null) {
                bVar = c.a(OperationContext.defaultLoggerName);
            } else {
                bVar = operationContext.getLogger();
            }
            if (bVar.e()) {
                bVar.e(formatLogEntry(operationContext, str, objArr));
            }
        }
    }

    public static void warn(OperationContext operationContext, String str, Object... objArr) {
        b bVar;
        if (shouldLog(operationContext)) {
            if (operationContext == null) {
                bVar = c.a(OperationContext.defaultLoggerName);
            } else {
                bVar = operationContext.getLogger();
            }
            if (bVar.b()) {
                bVar.d(formatLogEntry(operationContext, str, objArr));
            }
        }
    }

    public static String formatLogEntry(OperationContext operationContext, String str, Object obj) {
        Object[] objArr = new Object[2];
        objArr[0] = operationContext == null ? "*" : operationContext.getClientRequestID();
        objArr[1] = String.format(str, new Object[]{obj}).replace(10, '.');
        return String.format("{%s}: {%s}", objArr);
    }

    public static String formatLogEntry(OperationContext operationContext, String str, Object obj, Object obj2) {
        Object[] objArr = new Object[2];
        objArr[0] = operationContext == null ? "*" : operationContext.getClientRequestID();
        objArr[1] = String.format(str, new Object[]{obj, obj2}).replace(10, '.');
        return String.format("{%s}: {%s}", objArr);
    }

    public static void debug(OperationContext operationContext, String str, Object obj) {
        b bVar;
        if (shouldLog(operationContext)) {
            if (operationContext == null) {
                bVar = c.a(OperationContext.defaultLoggerName);
            } else {
                bVar = operationContext.getLogger();
            }
            if (bVar.d()) {
                bVar.b(formatLogEntry(operationContext, str, obj));
            }
        }
    }

    public static void error(OperationContext operationContext, String str, Object obj) {
        b bVar;
        if (shouldLog(operationContext)) {
            if (operationContext == null) {
                bVar = c.a(OperationContext.defaultLoggerName);
            } else {
                bVar = operationContext.getLogger();
            }
            if (bVar.f()) {
                bVar.a(formatLogEntry(operationContext, str, obj));
            }
        }
    }

    public static void info(OperationContext operationContext, String str, Object obj) {
        b bVar;
        if (shouldLog(operationContext)) {
            if (operationContext == null) {
                bVar = c.a(OperationContext.defaultLoggerName);
            } else {
                bVar = operationContext.getLogger();
            }
            if (bVar.a()) {
                bVar.c(formatLogEntry(operationContext, str, obj));
            }
        }
    }

    public static void trace(OperationContext operationContext, String str, Object obj) {
        b bVar;
        if (shouldLog(operationContext)) {
            if (operationContext == null) {
                bVar = c.a(OperationContext.defaultLoggerName);
            } else {
                bVar = operationContext.getLogger();
            }
            if (bVar.e()) {
                bVar.e(formatLogEntry(operationContext, str, obj));
            }
        }
    }

    public static void warn(OperationContext operationContext, String str, Object obj) {
        b bVar;
        if (shouldLog(operationContext)) {
            if (operationContext == null) {
                bVar = c.a(OperationContext.defaultLoggerName);
            } else {
                bVar = operationContext.getLogger();
            }
            if (bVar.b()) {
                bVar.d(formatLogEntry(operationContext, str, obj));
            }
        }
    }

    public static void debug(OperationContext operationContext, String str, Object obj, Object obj2) {
        b bVar;
        if (shouldLog(operationContext)) {
            if (operationContext == null) {
                bVar = c.a(OperationContext.defaultLoggerName);
            } else {
                bVar = operationContext.getLogger();
            }
            if (bVar.d()) {
                bVar.b(formatLogEntry(operationContext, str, obj, obj2));
            }
        }
    }

    public static void error(OperationContext operationContext, String str, Object obj, Object obj2) {
        b bVar;
        if (shouldLog(operationContext)) {
            if (operationContext == null) {
                bVar = c.a(OperationContext.defaultLoggerName);
            } else {
                bVar = operationContext.getLogger();
            }
            if (bVar.f()) {
                bVar.a(formatLogEntry(operationContext, str, obj, obj2));
            }
        }
    }

    public static void info(OperationContext operationContext, String str, Object obj, Object obj2) {
        b bVar;
        if (shouldLog(operationContext)) {
            if (operationContext == null) {
                bVar = c.a(OperationContext.defaultLoggerName);
            } else {
                bVar = operationContext.getLogger();
            }
            if (bVar.a()) {
                bVar.c(formatLogEntry(operationContext, str, obj, obj2));
            }
        }
    }

    public static void trace(OperationContext operationContext, String str, Object obj, Object obj2) {
        b bVar;
        if (shouldLog(operationContext)) {
            if (operationContext == null) {
                bVar = c.a(OperationContext.defaultLoggerName);
            } else {
                bVar = operationContext.getLogger();
            }
            if (bVar.e()) {
                bVar.e(formatLogEntry(operationContext, str, obj, obj2));
            }
        }
    }

    public static void warn(OperationContext operationContext, String str, Object obj, Object obj2) {
        b bVar;
        if (shouldLog(operationContext)) {
            if (operationContext == null) {
                bVar = c.a(OperationContext.defaultLoggerName);
            } else {
                bVar = operationContext.getLogger();
            }
            if (bVar.b()) {
                bVar.d(formatLogEntry(operationContext, str, obj, obj2));
            }
        }
    }
}
