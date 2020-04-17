package com.microsoft.identity.client.exception;

import com.microsoft.identity.client.internal.MsalUtils;
import com.microsoft.identity.common.exception.BaseException;

public class MsalException extends BaseException {
    public MsalException() {
    }

    public String getErrorCode() {
        return super.getErrorCode();
    }

    public String getMessage() {
        return !MsalUtils.isEmpty(super.getMessage()) ? super.getMessage() : "";
    }

    public MsalException(String str) {
        super(str);
    }

    public MsalException(String str, String str2) {
        super(str, str2);
    }

    public MsalException(String str, String str2, Throwable th) {
        super(str, str2, th);
    }
}
