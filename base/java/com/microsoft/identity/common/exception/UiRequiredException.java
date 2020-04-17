package com.microsoft.identity.common.exception;

public final class UiRequiredException extends ServiceException {
    public static final String sName = UiRequiredException.class.getName();

    public UiRequiredException(String str, String str2) {
        super(str, str2, (Throwable) null);
    }

    public String getExceptionName() {
        return sName;
    }

    public UiRequiredException(String str, String str2, Throwable th) {
        super(str, str2, th);
    }
}
