package com.microsoft.identity.common.internal.providers.oauth2;

import e.c.c.v.a;

public class AuthorizationErrorResponse implements IErrorResponse {
    @a
    public String mError;
    @a
    public String mErrorDescription;

    public static class Fields {
        public static final String ERROR = "error";
        public static final String ERROR_DESCRIPTION = "error_description";
    }

    public AuthorizationErrorResponse(String str, String str2) {
        this.mError = str;
        this.mErrorDescription = str2;
    }

    public String getError() {
        return this.mError;
    }

    public String getErrorDescription() {
        return this.mErrorDescription;
    }

    public void setError(String str) {
        this.mError = str;
    }

    public void setErrorDescription(String str) {
        this.mErrorDescription = str;
    }
}
