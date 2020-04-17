package com.microsoft.identity.common.internal.dto;

import e.c.c.v.c;

public abstract class Credential extends AccountCredentialBase {
    @c("cached_at")
    public String mCachedAt;
    @c("client_id")
    public String mClientId;
    @c("credential_type")
    public String mCredentialType;
    @c("environment")
    public String mEnvironment;
    @c("home_account_id")
    public String mHomeAccountId;
    @c("secret")
    public String mSecret;

    public static class SerializedNames {
        public static final String CACHED_AT = "cached_at";
        public static final String CLIENT_ID = "client_id";
        public static final String CREDENTIAL_TYPE = "credential_type";
        public static final String ENVIRONMENT = "environment";
        public static final String EXPIRES_ON = "expires_on";
        public static final String HOME_ACCOUNT_ID = "home_account_id";
        public static final String SECRET = "secret";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Credential credential = (Credential) obj;
        String str = this.mClientId;
        if (str == null ? credential.mClientId != null : !str.equals(credential.mClientId)) {
            return false;
        }
        String str2 = this.mCredentialType;
        if (str2 == null ? credential.mCredentialType != null : !str2.equals(credential.mCredentialType)) {
            return false;
        }
        String str3 = this.mEnvironment;
        if (str3 == null ? credential.mEnvironment != null : !str3.equals(credential.mEnvironment)) {
            return false;
        }
        String str4 = this.mSecret;
        if (str4 == null ? credential.mSecret != null : !str4.equals(credential.mSecret)) {
            return false;
        }
        String str5 = this.mHomeAccountId;
        if (str5 == null ? credential.mHomeAccountId != null : !str5.equals(credential.mHomeAccountId)) {
            return false;
        }
        String str6 = this.mCachedAt;
        String str7 = credential.mCachedAt;
        if (str6 != null) {
            return str6.equals(str7);
        }
        if (str7 == null) {
            return true;
        }
        return false;
    }

    public String getCachedAt() {
        return this.mCachedAt;
    }

    public String getClientId() {
        return this.mClientId;
    }

    public String getCredentialType() {
        return this.mCredentialType;
    }

    public String getEnvironment() {
        return this.mEnvironment;
    }

    public String getHomeAccountId() {
        return this.mHomeAccountId;
    }

    public String getSecret() {
        return this.mSecret;
    }

    public int hashCode() {
        String str = this.mClientId;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.mCredentialType;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.mEnvironment;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.mSecret;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.mHomeAccountId;
        int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.mCachedAt;
        if (str6 != null) {
            i2 = str6.hashCode();
        }
        return hashCode5 + i2;
    }

    public abstract boolean isExpired();

    public void setCachedAt(String str) {
        this.mCachedAt = str;
    }

    public void setClientId(String str) {
        this.mClientId = str;
    }

    public void setCredentialType(String str) {
        this.mCredentialType = str;
    }

    public void setEnvironment(String str) {
        this.mEnvironment = str;
    }

    public void setHomeAccountId(String str) {
        this.mHomeAccountId = str;
    }

    public void setSecret(String str) {
        this.mSecret = str;
    }
}
