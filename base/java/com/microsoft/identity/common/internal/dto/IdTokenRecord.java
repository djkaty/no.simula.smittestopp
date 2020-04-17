package com.microsoft.identity.common.internal.dto;

import com.microsoft.identity.common.internal.dto.Credential;
import e.c.c.v.c;

public class IdTokenRecord extends Credential {
    @c("authority")
    public String mAuthority;
    @c("realm")
    public String mRealm;

    public static class SerializedNames extends Credential.SerializedNames {
        public static final String AUTHORITY = "authority";
        public static final String REALM = "realm";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || IdTokenRecord.class != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        IdTokenRecord idTokenRecord = (IdTokenRecord) obj;
        String str = this.mRealm;
        if (str == null ? idTokenRecord.mRealm != null : !str.equals(idTokenRecord.mRealm)) {
            return false;
        }
        String str2 = this.mAuthority;
        String str3 = idTokenRecord.mAuthority;
        if (str2 != null) {
            return str2.equals(str3);
        }
        if (str3 == null) {
            return true;
        }
        return false;
    }

    public String getAuthority() {
        return this.mAuthority;
    }

    public String getRealm() {
        return this.mRealm;
    }

    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        String str = this.mRealm;
        int i2 = 0;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.mAuthority;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode2 + i2;
    }

    public boolean isExpired() {
        return false;
    }

    public void setAuthority(String str) {
        this.mAuthority = str;
    }

    public void setRealm(String str) {
        this.mRealm = str;
    }
}
