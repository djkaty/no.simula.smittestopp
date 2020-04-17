package com.microsoft.identity.common.exception;

public final class UserCancelException extends BaseException {
    public static final String sName = UserCancelException.class.getName();

    public UserCancelException() {
    }

    public String getExceptionName() {
        return sName;
    }

    public UserCancelException(String str, String str2) {
        super(str, str2);
    }
}
