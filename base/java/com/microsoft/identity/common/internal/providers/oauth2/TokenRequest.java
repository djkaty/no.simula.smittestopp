package com.microsoft.identity.common.internal.providers.oauth2;

import e.c.c.v.a;
import e.c.c.v.c;

public class TokenRequest {
    @c("client_assertion")
    public String mClientAssertion;
    @a
    @c("client_assertion_type")
    public String mClientAssertionType;
    @a
    @c("client_id")
    public String mClientId;
    @c("client_secret")
    public String mClientSecret;
    @c("code")
    public String mCode;
    @a
    @c("grant_type")
    public String mGrantType;
    @a
    @c("redirect_uri")
    public String mRedirectUri;
    @c("refresh_token")
    public String mRefreshToken;
    @c("req_cnf")
    public String mRequestConfirmation;
    @a
    @c("scope")
    public String mScope;
    @a
    @c("token_type")
    public String mTokenType;

    public static class GrantTypes {
        public static final String AUTHORIZATION_CODE = "authorization_code";
        public static final String PASSWORD = "password";
        public static final String REFRESH_TOKEN = "refresh_token";
    }

    public static class TokenType {
        public static final String POP = "pop";
    }

    public String getClientAssertion() {
        return this.mClientAssertion;
    }

    public String getClientAssertionType() {
        return this.mClientAssertionType;
    }

    public String getClientId() {
        return this.mClientId;
    }

    public String getClientSecret() {
        return this.mClientSecret;
    }

    public String getCode() {
        return this.mCode;
    }

    public String getGrantType() {
        return this.mGrantType;
    }

    public String getRedirectUri() {
        return this.mRedirectUri;
    }

    public String getRefreshToken() {
        return this.mRefreshToken;
    }

    public String getRequestConfirmation() {
        return this.mRequestConfirmation;
    }

    public String getScope() {
        return this.mScope;
    }

    public String getTokenType() {
        return this.mTokenType;
    }

    public void setClientAssertion(String str) {
        this.mClientAssertion = str;
    }

    public void setClientAssertionType(String str) {
        this.mClientAssertionType = str;
    }

    public void setClientId(String str) {
        this.mClientId = str;
    }

    public void setClientSecret(String str) {
        this.mClientSecret = str;
    }

    public void setCode(String str) {
        this.mCode = str;
    }

    public void setGrantType(String str) {
        this.mGrantType = str;
    }

    public void setRedirectUri(String str) {
        this.mRedirectUri = str;
    }

    public void setRefreshToken(String str) {
        this.mRefreshToken = str;
    }

    public void setRequestConfirmation(String str) {
        this.mRequestConfirmation = str;
    }

    public void setScope(String str) {
        this.mScope = str;
    }

    public void setTokenType(String str) {
        this.mTokenType = str;
    }
}
