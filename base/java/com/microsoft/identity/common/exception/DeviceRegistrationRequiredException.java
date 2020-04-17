package com.microsoft.identity.common.exception;

public final class DeviceRegistrationRequiredException extends BaseException {
    public static final String sName = DeviceRegistrationRequiredException.class.getName();
    public String mUsername;

    public DeviceRegistrationRequiredException(String str, String str2, String str3) {
        super(str, str2);
        this.mUsername = str3;
    }

    public String getExceptionName() {
        return sName;
    }

    public String getUsername() {
        return this.mUsername;
    }

    public void setUsername(String str) {
        this.mUsername = str;
    }
}
