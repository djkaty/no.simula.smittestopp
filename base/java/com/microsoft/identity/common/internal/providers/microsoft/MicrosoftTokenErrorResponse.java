package com.microsoft.identity.common.internal.providers.microsoft;

import com.microsoft.identity.common.internal.providers.oauth2.TokenErrorResponse;
import e.c.c.v.c;
import java.util.List;

public class MicrosoftTokenErrorResponse extends TokenErrorResponse {
    @c("correlation_id")
    public String mCorrelationId;
    @c("error_codes")
    public List<Long> mErrorCodes;
    @c("oAuth_metadata")
    public String mOAuthErrorMetadata;
    @c("timestamp")
    public String mTimeStamp;
    @c("trace_id")
    public String mTraceId;

    public String getCorrelationId() {
        return this.mCorrelationId;
    }

    public List<Long> getErrorCodes() {
        return this.mErrorCodes;
    }

    public String getOAuthErrorMetadata() {
        return this.mOAuthErrorMetadata;
    }

    public String getTimeStamp() {
        return this.mTimeStamp;
    }

    public String getTraceId() {
        return this.mTraceId;
    }

    public void setCorrelationId(String str) {
        this.mCorrelationId = str;
    }

    public void setErrorCodes(List<Long> list) {
        this.mErrorCodes = list;
    }

    public void setOAuthErrorMetadata(String str) {
        this.mOAuthErrorMetadata = str;
    }

    public void setTimeStamp(String str) {
        this.mTimeStamp = str;
    }

    public void setTraceId(String str) {
        this.mTraceId = str;
    }
}
