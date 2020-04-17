package com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftTokenResponse;
import e.a.a.a.a;
import java.util.Date;

public class AzureActiveDirectoryTokenResponse extends MicrosoftTokenResponse {
    public Date mExpiresOn;
    public String mNotBefore;
    public String mResource;
    public String mSpeRing;

    public Date getExpiresOn() {
        return this.mExpiresOn;
    }

    public String getNotBefore() {
        return this.mNotBefore;
    }

    public String getResource() {
        return this.mResource;
    }

    public String getSpeRing() {
        return this.mSpeRing;
    }

    public void setExpiresOn(Date date) {
        this.mExpiresOn = date;
    }

    public void setNotBefore(String str) {
        this.mNotBefore = str;
    }

    public void setResource(String str) {
        this.mResource = str;
    }

    public void setSpeRing(String str) {
        this.mSpeRing = str;
    }

    public String toString() {
        StringBuilder a = a.a("AzureActiveDirectoryTokenResponse{mExpiresOn=");
        a.append(this.mExpiresOn);
        a.append(", mResource='");
        a.a(a, this.mResource, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", mNotBefore='");
        a.a(a, this.mNotBefore, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", mSpeRing='");
        a.a(a, this.mSpeRing, (char) WWWAuthenticateHeader.SINGLE_QUOTE, "} ");
        a.append(super.toString());
        return a.toString();
    }
}
