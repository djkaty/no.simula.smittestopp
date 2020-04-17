package com.microsoft.identity.common.adal.internal.util;

import java.io.PrintWriter;
import java.io.StringWriter;

public final class ExceptionExtensions {
    public static String getExceptionMessage(Exception exc) {
        if (exc == null) {
            return null;
        }
        String message = exc.getMessage();
        if (message != null) {
            return message;
        }
        StringWriter stringWriter = new StringWriter();
        exc.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }
}
