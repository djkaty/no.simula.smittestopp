package com.microsoft.identity.common.internal.providers.microsoft;

import com.microsoft.identity.common.internal.providers.oauth2.TokenRequest;
import e.c.c.v.a;
import e.c.c.v.c;
import java.util.UUID;

public class MicrosoftTokenRequest extends TokenRequest {
    public static final String CLAIMS = "claims";
    public static final String CLIENT_APP_NAME = "x-app-name";
    public static final String CLIENT_APP_VERSION = "x-app-ver";
    public static final String CLIENT_INFO = "client_info";
    public static final String CODE_VERIFIER = "code_verifier";
    public static final String CORRELATION_ID = "client-request-id";
    public static final String ID_TOKEN_VERSION = "itver";
    public static final String INSTANCE_AWARE = "instance_aware";
    public static final String MAM_VERSION = "mamver";
    public transient String mBrokerVersion;
    @a
    @c("claims")
    public String mClaims;
    @a
    @c("x-app-name")
    public String mClientAppName;
    @a
    @c("x-app-ver")
    public String mClientAppVersion;
    @a
    @c("client_info")
    public String mClientInfoEnabled = "1";
    @c("code_verifier")
    public String mCodeVerifier;
    @a
    @c("client-request-id")
    public UUID mCorrelationId;
    @a
    @c("itver")
    public String mIdTokenVersion;
    @a
    @c("instance_aware")
    public String mInstanceAware;
    @a
    @c("mamver")
    public String mMamVersion;
    public String mTokenScope;

    public String getBrokerVersion() {
        return this.mBrokerVersion;
    }

    public String getClaims() {
        return this.mClaims;
    }

    public String getClientAppName() {
        return this.mClientAppName;
    }

    public String getClientAppVersion() {
        return this.mClientAppVersion;
    }

    public String getClientInfoEnabled() {
        return this.mClientInfoEnabled;
    }

    public String getCodeVerifier() {
        return this.mCodeVerifier;
    }

    public UUID getCorrelationId() {
        return this.mCorrelationId;
    }

    public String getIdTokenVersion() {
        return this.mIdTokenVersion;
    }

    public String getInstanceAware() {
        return this.mInstanceAware;
    }

    public String getMamVersion() {
        return this.mMamVersion;
    }

    public String getTokenScope() {
        return this.mTokenScope;
    }

    public void setBrokerVersion(String str) {
        this.mBrokerVersion = str;
    }

    public void setClaims(String str) {
        this.mClaims = str;
    }

    public void setClientAppName(String str) {
        this.mClientAppName = str;
    }

    public void setClientAppVersion(String str) {
        this.mClientAppVersion = str;
    }

    public void setCodeVerifier(String str) {
        this.mCodeVerifier = str;
    }

    public void setCorrelationId(UUID uuid) {
        this.mCorrelationId = uuid;
    }

    public void setIdTokenVersion(String str) {
        this.mIdTokenVersion = str;
    }

    public void setInstanceAware(String str) {
        this.mInstanceAware = str;
    }

    public void setMamversion(String str) {
        this.mMamVersion = str;
    }

    public void setTokenScope(String str) {
        this.mTokenScope = str;
    }
}
