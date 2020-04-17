package com.microsoft.identity.common.exception;

import com.microsoft.identity.common.adal.internal.util.StringExtensions;

public class BaseException extends Exception {
    public static final String sName = BaseException.class.getName();
    public String mCliTelemErrorCode;
    public String mCliTelemSubErrorCode;
    public String mCorrelationId;
    public String mErrorCode;
    public String mRefreshTokenAge;
    public String mSpeRing;

    public BaseException() {
    }

    public String getCliTelemErrorCode() {
        return this.mCliTelemErrorCode;
    }

    public String getCliTelemSubErrorCode() {
        return this.mCliTelemSubErrorCode;
    }

    public String getCorrelationId() {
        return this.mCorrelationId;
    }

    public String getErrorCode() {
        return this.mErrorCode;
    }

    public String getExceptionName() {
        return sName;
    }

    public String getMessage() {
        if (!StringExtensions.isNullOrBlank(super.getMessage())) {
            return super.getMessage();
        }
        return null;
    }

    public String getRefreshTokenAge() {
        return this.mRefreshTokenAge;
    }

    public String getSpeRing() {
        return this.mSpeRing;
    }

    public void setCliTelemErrorCode(String str) {
        this.mCliTelemErrorCode = str;
    }

    public void setCliTelemSubErrorCode(String str) {
        this.mCliTelemSubErrorCode = str;
    }

    public void setCorrelationId(String str) {
        this.mCorrelationId = str;
    }

    public void setRefreshTokenAge(String str) {
        this.mRefreshTokenAge = str;
    }

    public void setSpeRing(String str) {
        this.mSpeRing = str;
    }

    public BaseException(String str) {
        this.mErrorCode = str;
    }

    public BaseException(String str, String str2) {
        super(str2);
        this.mErrorCode = str;
    }

    public BaseException(String str, String str2, Throwable th) {
        super(str2, th);
        this.mErrorCode = str;
    }
}
