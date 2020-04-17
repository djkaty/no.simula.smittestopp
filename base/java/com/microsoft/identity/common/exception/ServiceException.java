package com.microsoft.identity.common.exception;

import com.microsoft.identity.common.adal.internal.util.HashMapExtensions;
import com.microsoft.identity.common.internal.net.HttpResponse;
import java.util.HashMap;
import java.util.List;

public class ServiceException extends BaseException {
    public static final String ACCESS_DENIED = "access_denied";
    public static final int DEFAULT_STATUS_CODE = 0;
    public static final String INVALID_INSTANCE = "invalid_instance";
    public static final String INVALID_REQUEST = "invalid_request";
    public static final String INVALID_SCOPE = "invalid_scope";
    public static final String OPENID_PROVIDER_CONFIGURATION_FAILED_TO_LOAD = "failed_to_load_openid_configuration";
    public static final String REQUEST_TIMEOUT = "request_timeout";
    public static final String SERVICE_NOT_AVAILABLE = "service_not_available";
    public static final String UNAUTHORIZED_CLIENT = "unauthorized_client";
    public static final String UNKNOWN_ERROR = "unknown_error";
    public static final String sName = ServiceException.class.getName();
    public HashMap<String, String> mHttpResponseBody;
    public HashMap<String, List<String>> mHttpResponseHeaders;
    public int mHttpStatusCode;
    public String mOauthSubErrorCode;

    public ServiceException(String str, String str2, Throwable th) {
        super(str, str2, th);
        this.mHttpResponseBody = null;
        this.mHttpResponseHeaders = null;
        this.mHttpStatusCode = 0;
    }

    public String getExceptionName() {
        return sName;
    }

    public HashMap<String, String> getHttpResponseBody() {
        return this.mHttpResponseBody;
    }

    public HashMap<String, List<String>> getHttpResponseHeaders() {
        return this.mHttpResponseHeaders;
    }

    public int getHttpStatusCode() {
        return this.mHttpStatusCode;
    }

    public String getOAuthSubErrorCode() {
        return this.mOauthSubErrorCode;
    }

    public void setHttpResponse(HttpResponse httpResponse) {
        if (httpResponse != null) {
            this.mHttpStatusCode = httpResponse.getStatusCode();
            if (httpResponse.getHeaders() != null) {
                this.mHttpResponseHeaders = new HashMap<>(httpResponse.getHeaders());
            }
            if (httpResponse.getBody() != null) {
                this.mHttpResponseBody = HashMapExtensions.getJsonResponse(httpResponse);
            }
        }
    }

    public void setHttpResponseBody(HashMap<String, String> hashMap) {
        this.mHttpResponseBody = hashMap;
    }

    public void setHttpResponseHeaders(HashMap<String, List<String>> hashMap) {
        this.mHttpResponseHeaders = hashMap;
    }

    public void setOauthSubErrorCode(String str) {
        this.mOauthSubErrorCode = str;
    }

    public ServiceException(String str, String str2, int i2, Throwable th) {
        super(str, str2, th);
        this.mHttpResponseBody = null;
        this.mHttpResponseHeaders = null;
        this.mHttpStatusCode = i2;
    }
}
