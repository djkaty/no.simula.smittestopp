package com.microsoft.identity.common.internal.dto;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import com.microsoft.identity.common.internal.dto.Credential;
import e.a.a.a.a;
import e.c.c.v.c;

public class RefreshTokenRecord extends Credential {
    @c("family_id")
    public String mFamilyId;
    @c("target")
    public String mTarget;

    public static class SerializedNames extends Credential.SerializedNames {
        public static final String FAMILY_ID = "family_id";
        public static final String TARGET = "target";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || RefreshTokenRecord.class != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        RefreshTokenRecord refreshTokenRecord = (RefreshTokenRecord) obj;
        String str = this.mFamilyId;
        if (str == null ? refreshTokenRecord.mFamilyId != null : !str.equals(refreshTokenRecord.mFamilyId)) {
            return false;
        }
        String str2 = this.mTarget;
        String str3 = refreshTokenRecord.mTarget;
        if (str2 != null) {
            return str2.equals(str3);
        }
        if (str3 == null) {
            return true;
        }
        return false;
    }

    public String getFamilyId() {
        return this.mFamilyId;
    }

    public String getTarget() {
        return this.mTarget;
    }

    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        String str = this.mFamilyId;
        int i2 = 0;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.mTarget;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode2 + i2;
    }

    public boolean isExpired() {
        return false;
    }

    public void setFamilyId(String str) {
        this.mFamilyId = str;
    }

    public void setTarget(String str) {
        this.mTarget = str;
    }

    public String toString() {
        StringBuilder a = a.a("RefreshToken{mFamilyId='");
        a.a(a, this.mFamilyId, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", mTarget='");
        a.a(a, this.mTarget, (char) WWWAuthenticateHeader.SINGLE_QUOTE, "} ");
        a.append(super.toString());
        return a.toString();
    }
}
