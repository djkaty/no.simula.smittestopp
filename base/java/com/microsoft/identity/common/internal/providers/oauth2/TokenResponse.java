package com.microsoft.identity.common.internal.providers.oauth2;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import e.c.c.v.a;
import e.c.c.v.c;

public class TokenResponse implements ISuccessResponse {
    @c("access_token")
    public String mAccessToken;
    @a
    @c("expires_in")
    public Long mExpiresIn;
    @c("id_token")
    public String mIdToken;
    @c("refresh_token")
    public String mRefreshToken;
    @a
    public long mResponseReceivedTime;
    @a
    @c("scope")
    public String mScope;
    @a
    @c("state")
    public String mState;
    @a
    @c("token_type")
    public String mTokenType;

    public String getAccessToken() {
        return this.mAccessToken;
    }

    public Long getExpiresIn() {
        return this.mExpiresIn;
    }

    public String getIdToken() {
        return this.mIdToken;
    }

    public String getRefreshToken() {
        return this.mRefreshToken;
    }

    public long getResponseReceivedTime() {
        return this.mResponseReceivedTime;
    }

    public String getScope() {
        return this.mScope;
    }

    public String getState() {
        return this.mState;
    }

    public String getTokenType() {
        return this.mTokenType;
    }

    public void setAccessToken(String str) {
        this.mAccessToken = str;
    }

    public void setExpiresIn(Long l2) {
        this.mExpiresIn = l2;
    }

    public void setIdToken(String str) {
        this.mIdToken = str;
    }

    public void setRefreshToken(String str) {
        this.mRefreshToken = str;
    }

    public void setResponseReceivedTime(Long l2) {
        this.mResponseReceivedTime = l2.longValue();
    }

    public void setScope(String str) {
        this.mScope = str;
    }

    public void setState(String str) {
        this.mState = str;
    }

    public void setTokenType(String str) {
        this.mTokenType = str;
    }

    public String toString() {
        StringBuilder a = e.a.a.a.a.a("TokenResponse{mExpiresIn=");
        a.append(this.mExpiresIn);
        a.append(", mAccessToken='");
        e.a.a.a.a.a(a, this.mAccessToken, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", mTokenType='");
        e.a.a.a.a.a(a, this.mTokenType, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", mRefreshToken='");
        e.a.a.a.a.a(a, this.mRefreshToken, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", mScope='");
        e.a.a.a.a.a(a, this.mScope, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", mState='");
        e.a.a.a.a.a(a, this.mState, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", mIdToken='");
        e.a.a.a.a.a(a, this.mIdToken, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", mResponseReceivedTime=");
        a.append(this.mResponseReceivedTime);
        a.append('}');
        return a.toString();
    }
}
