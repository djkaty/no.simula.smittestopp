package com.microsoft.identity.common.internal.dto;

import com.microsoft.identity.common.internal.dto.Credential;
import e.c.c.v.c;
import java.util.Calendar;
import java.util.Date;
import java.util.concurrent.TimeUnit;

public class AccessTokenRecord extends Credential {
    @c("access_token_type")
    public String mAccessTokenType;
    @c("authority")
    public String mAuthority;
    @c("expires_on")
    public String mExpiresOn;
    @c("extended_expires_on")
    public String mExtendedExpiresOn;
    @c("kid")
    public String mKid;
    @c("realm")
    public String mRealm;
    @c("target")
    public String mTarget;

    public static class SerializedNames extends Credential.SerializedNames {
        public static final String ACCESS_TOKEN_TYPE = "access_token_type";
        public static final String AUTHORITY = "authority";
        public static final String EXTENDED_EXPIRES_ON = "extended_expires_on";
        public static final String KID = "kid";
        public static final String REALM = "realm";
        public static final String TARGET = "target";
    }

    private boolean isExpired(String str) {
        return new Date(TimeUnit.SECONDS.toMillis(Long.valueOf(str).longValue())).before(Calendar.getInstance().getTime());
    }

    public String getAccessTokenType() {
        return this.mAccessTokenType;
    }

    public String getAuthority() {
        return this.mAuthority;
    }

    public String getExpiresOn() {
        return this.mExpiresOn;
    }

    public String getExtendedExpiresOn() {
        return this.mExtendedExpiresOn;
    }

    public String getKid() {
        return this.mKid;
    }

    public String getRealm() {
        return this.mRealm;
    }

    public String getTarget() {
        return this.mTarget;
    }

    public void setAccessTokenType(String str) {
        this.mAccessTokenType = str;
    }

    public void setAuthority(String str) {
        this.mAuthority = str;
    }

    public void setExpiresOn(String str) {
        this.mExpiresOn = str;
    }

    public void setExtendedExpiresOn(String str) {
        this.mExtendedExpiresOn = str;
    }

    public void setKid(String str) {
        this.mKid = str;
    }

    public void setRealm(String str) {
        this.mRealm = str;
    }

    public void setTarget(String str) {
        this.mTarget = str;
    }

    public boolean isExpired() {
        return isExpired(getExpiresOn());
    }
}
