package com.microsoft.identity.common.internal.providers.oauth2;

import com.microsoft.appcenter.analytics.AuthenticationProvider;

public class AccessToken {
    public static final int SECONDS_MS = 1000;
    public long mExpiresIn;
    public String mRawAccessToken;
    public final long mTokenExpiredBuffer = AuthenticationProvider.REFRESH_THRESHOLD;
    public long mTokenReceivedTime;
    public String mTokenType;

    public AccessToken(TokenResponse tokenResponse) {
        this.mExpiresIn = tokenResponse.getExpiresIn().longValue();
        this.mTokenReceivedTime = tokenResponse.getResponseReceivedTime();
        this.mTokenType = tokenResponse.getTokenType();
        this.mRawAccessToken = tokenResponse.getAccessToken();
    }

    public String getAccessToken() {
        return this.mRawAccessToken;
    }

    public long getExpiresIn() {
        return this.mExpiresIn;
    }

    public String getRawAccessToken() {
        return this.mRawAccessToken;
    }

    public long getTokenExpiredBuffer() {
        return AuthenticationProvider.REFRESH_THRESHOLD;
    }

    public long getTokenReceivedTime() {
        return this.mTokenReceivedTime;
    }

    public String getTokenType() {
        return this.mTokenType;
    }

    public boolean isExpired() {
        return (this.mExpiresIn * 1000) + this.mTokenReceivedTime > System.currentTimeMillis() + AuthenticationProvider.REFRESH_THRESHOLD;
    }

    public void setExpiresIn(long j2) {
        this.mExpiresIn = j2;
    }

    public void setRawAccessToken(String str) {
        this.mRawAccessToken = str;
    }

    public void setTokenReceivedTime(long j2) {
        this.mTokenReceivedTime = j2;
    }

    public void setTokenType(String str) {
        this.mTokenType = str;
    }
}
