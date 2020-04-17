package com.microsoft.identity.common.internal.providers.oauth2;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import e.c.c.v.a;
import e.c.c.v.c;

public class TokenErrorResponse implements IErrorResponse {
    @a
    @c("error")
    public String mError;
    @a
    @c("error_description")
    public String mErrorDescription;
    @a
    @c("error_uri")
    public String mErrorUri;
    public String mResponseBody;
    @a
    public String mResponseHeadersJson;
    @a
    public int mStatusCode;
    @a
    @c("suberror")
    public String mSubError;

    public String getError() {
        return this.mError;
    }

    public String getErrorDescription() {
        return this.mErrorDescription;
    }

    public String getErrorUri() {
        return this.mErrorUri;
    }

    public String getResponseBody() {
        return this.mResponseBody;
    }

    public String getResponseHeadersJson() {
        return this.mResponseHeadersJson;
    }

    public int getStatusCode() {
        return this.mStatusCode;
    }

    public String getSubError() {
        return this.mSubError;
    }

    public void setError(String str) {
        this.mError = str;
    }

    public void setErrorDescription(String str) {
        this.mErrorDescription = str;
    }

    public void setErrorUri(String str) {
        this.mErrorUri = str;
    }

    public void setResponseBody(String str) {
        this.mResponseBody = str;
    }

    public void setResponseHeadersJson(String str) {
        this.mResponseHeadersJson = str;
    }

    public void setStatusCode(int i2) {
        this.mStatusCode = i2;
    }

    public void setSubError(String str) {
        this.mSubError = str;
    }

    public String toString() {
        StringBuilder a = e.a.a.a.a.a("TokenErrorResponse{mStatusCode=");
        a.append(this.mStatusCode);
        a.append(", mResponseBody='");
        e.a.a.a.a.a(a, this.mResponseBody, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", mResponseHeadersJson=");
        a.append(this.mResponseHeadersJson);
        a.append(", mError='");
        e.a.a.a.a.a(a, this.mError, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", mSubError='");
        e.a.a.a.a.a(a, this.mSubError, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", mErrorDescription='");
        e.a.a.a.a.a(a, this.mErrorDescription, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", mErrorUri='");
        a.append(this.mErrorUri);
        a.append(WWWAuthenticateHeader.SINGLE_QUOTE);
        a.append('}');
        return a.toString();
    }
}
