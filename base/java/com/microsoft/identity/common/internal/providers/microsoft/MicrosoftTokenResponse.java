package com.microsoft.identity.common.internal.providers.microsoft;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import com.microsoft.identity.common.internal.providers.oauth2.TokenResponse;
import e.c.c.v.a;
import e.c.c.v.c;
import java.util.Date;

public class MicrosoftTokenResponse extends TokenResponse {
    public static final String CLIENT_INFO = "client_info";
    public static final String EXT_EXPIRES_IN = "ext_expires_in";
    public static final String FAMILY_ID = "foci";
    public String mAuthority;
    public String mCliTelemErrorCode;
    public String mCliTelemSubErrorCode;
    public transient String mClientId;
    @c("client_info")
    public String mClientInfo;
    @a
    @c("cloud_instance_host_name")
    public String mCloudInstanceHostName;
    public Date mExtExpiresOn;
    @a
    @c("ext_expires_in")
    public Long mExtendedExpiresIn;
    @a
    @c("foci")
    public String mFamilyId;
    @a
    public String mRefreshTokenAge;
    @a
    public String mSpeRing;

    public final String getAuthority() {
        return this.mAuthority;
    }

    public String getCliTelemErrorCode() {
        return this.mCliTelemErrorCode;
    }

    public String getCliTelemSubErrorCode() {
        return this.mCliTelemSubErrorCode;
    }

    public String getClientId() {
        return this.mClientId;
    }

    public String getClientInfo() {
        return this.mClientInfo;
    }

    public String getCloudInstanceHostName() {
        return this.mCloudInstanceHostName;
    }

    public Long getExtExpiresIn() {
        return this.mExtendedExpiresIn;
    }

    public Date getExtExpiresOn() {
        return this.mExtExpiresOn;
    }

    public String getFamilyId() {
        return this.mFamilyId;
    }

    public String getRefreshTokenAge() {
        return this.mRefreshTokenAge;
    }

    public String getSpeRing() {
        return this.mSpeRing;
    }

    public void setAuthority(String str) {
        this.mAuthority = str;
    }

    public void setCliTelemErrorCode(String str) {
        this.mCliTelemErrorCode = str;
    }

    public void setCliTelemSubErrorCode(String str) {
        this.mCliTelemSubErrorCode = str;
    }

    public void setClientId(String str) {
        this.mClientId = str;
    }

    public void setClientInfo(String str) {
        this.mClientInfo = str;
    }

    public void setCloudInstanceHostName(String str) {
        this.mCloudInstanceHostName = str;
    }

    public void setExtExpiresIn(Long l2) {
        this.mExtendedExpiresIn = l2;
    }

    public void setExtExpiresOn(Date date) {
        this.mExtExpiresOn = date;
    }

    public void setFamilyId(String str) {
        this.mFamilyId = str;
    }

    public void setRefreshTokenAge(String str) {
        this.mRefreshTokenAge = str;
    }

    public void setSpeRing(String str) {
        this.mSpeRing = str;
    }

    public String toString() {
        StringBuilder a = e.a.a.a.a.a("MicrosoftTokenResponse{mExtExpiresOn=");
        a.append(this.mExtExpiresOn);
        a.append(", mClientInfo='");
        e.a.a.a.a.a(a, this.mClientInfo, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", mClientId='");
        e.a.a.a.a.a(a, this.mClientId, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", mExtendedExpiresIn=");
        a.append(this.mExtendedExpiresIn);
        a.append(", mFamilyId='");
        e.a.a.a.a.a(a, this.mFamilyId, (char) WWWAuthenticateHeader.SINGLE_QUOTE, "} ");
        a.append(super.toString());
        return a.toString();
    }
}
