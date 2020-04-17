package com.microsoft.identity.client.exception;

public class MsalServiceException extends MsalException {
    public static final String ACCESS_DENIED = "access_denied";
    public static final int DEFAULT_STATUS_CODE = 0;
    public static final String INVALID_INSTANCE = "invalid_instance";
    public static final String INVALID_REQUEST = "invalid_request";
    public static final String INVALID_SCOPE = "invalid_scope";
    public static final String REQUEST_TIMEOUT = "request_timeout";
    public static final String SERVICE_NOT_AVAILABLE = "service_not_available";
    public static final String UNAUTHORIZED_CLIENT = "unauthorized_client";
    public static final String UNKNOWN_ERROR = "unknown_error";
    public final int mHttpStatusCode;

    public MsalServiceException(String str, String str2, Throwable th) {
        super(str, str2, th);
        this.mHttpStatusCode = 0;
    }

    public int getHttpStatusCode() {
        return this.mHttpStatusCode;
    }

    public MsalServiceException(String str, String str2, int i2, Throwable th) {
        super(str, str2, th);
        this.mHttpStatusCode = i2;
    }
}
