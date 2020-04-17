package com.microsoft.identity.common.internal.dto;

import e.c.c.v.c;

public class AccountRecord extends AccountCredentialBase implements IAccountRecord {
    @c("alternative_account_id")
    public String mAlternativeAccountId;
    @c("authority_type")
    public String mAuthorityType;
    @c("avatar_url")
    public String mAvatarUrl;
    @c("client_info")
    public String mClientInfo;
    @c("environment")
    public String mEnvironment;
    @c("family_name")
    public String mFamilyName;
    @c("first_name")
    public String mFirstName;
    @c("home_account_id")
    public String mHomeAccountId;
    @c("local_account_id")
    public String mLocalAccountId;
    @c("middle_name")
    public String mMiddleName;
    @c("name")
    public String mName;
    @c("realm")
    public String mRealm;
    @c("username")
    public String mUsername;

    public static class SerializedNames {
        public static final String ALTERNATIVE_ACCOUNT_ID = "alternative_account_id";
        public static final String AUTHORITY_TYPE = "authority_type";
        public static final String AVATAR_URL = "avatar_url";
        public static final String CLIENT_INFO = "client_info";
        public static final String ENVIRONMENT = "environment";
        public static final String FAMILY_NAME = "family_name";
        public static final String FIRST_NAME = "first_name";
        public static final String HOME_ACCOUNT_ID = "home_account_id";
        public static final String LOCAL_ACCOUNT_ID = "local_account_id";
        public static final String MIDDLE_NAME = "middle_name";
        public static final String NAME = "name";
        public static final String REALM = "realm";
        public static final String USERNAME = "username";
    }

    public AccountRecord() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || AccountRecord.class != obj.getClass()) {
            return false;
        }
        AccountRecord accountRecord = (AccountRecord) obj;
        String str = this.mHomeAccountId;
        if (str == null ? accountRecord.mHomeAccountId != null : !str.equals(accountRecord.mHomeAccountId)) {
            return false;
        }
        String str2 = this.mEnvironment;
        if (str2 == null ? accountRecord.mEnvironment != null : !str2.equals(accountRecord.mEnvironment)) {
            return false;
        }
        String str3 = this.mRealm;
        if (str3 == null ? accountRecord.mRealm != null : !str3.equals(accountRecord.mRealm)) {
            return false;
        }
        String str4 = this.mLocalAccountId;
        if (str4 == null ? accountRecord.mLocalAccountId != null : !str4.equals(accountRecord.mLocalAccountId)) {
            return false;
        }
        String str5 = this.mUsername;
        if (str5 == null ? accountRecord.mUsername != null : !str5.equals(accountRecord.mUsername)) {
            return false;
        }
        String str6 = this.mAuthorityType;
        if (str6 == null ? accountRecord.mAuthorityType != null : !str6.equals(accountRecord.mAuthorityType)) {
            return false;
        }
        String str7 = this.mAlternativeAccountId;
        if (str7 == null ? accountRecord.mAlternativeAccountId != null : !str7.equals(accountRecord.mAlternativeAccountId)) {
            return false;
        }
        String str8 = this.mFirstName;
        if (str8 == null ? accountRecord.mFirstName != null : !str8.equals(accountRecord.mFirstName)) {
            return false;
        }
        String str9 = this.mFamilyName;
        if (str9 == null ? accountRecord.mFamilyName != null : !str9.equals(accountRecord.mFamilyName)) {
            return false;
        }
        String str10 = this.mAvatarUrl;
        String str11 = accountRecord.mAvatarUrl;
        if (str10 != null) {
            return str10.equals(str11);
        }
        if (str11 == null) {
            return true;
        }
        return false;
    }

    public String getAlternativeAccountId() {
        return this.mAlternativeAccountId;
    }

    public String getAuthorityType() {
        return this.mAuthorityType;
    }

    public String getAvatarUrl() {
        return this.mAvatarUrl;
    }

    public String getClientInfo() {
        return this.mClientInfo;
    }

    public String getEnvironment() {
        return this.mEnvironment;
    }

    public String getFamilyName() {
        return this.mFamilyName;
    }

    public String getFirstName() {
        return this.mFirstName;
    }

    public String getHomeAccountId() {
        return this.mHomeAccountId;
    }

    public String getLocalAccountId() {
        return this.mLocalAccountId;
    }

    public String getMiddleName() {
        return this.mMiddleName;
    }

    public String getName() {
        return this.mName;
    }

    public String getRealm() {
        return this.mRealm;
    }

    public String getUsername() {
        return this.mUsername;
    }

    public int hashCode() {
        String str = this.mHomeAccountId;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.mEnvironment;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.mRealm;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.mLocalAccountId;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.mUsername;
        int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.mAuthorityType;
        int hashCode6 = (hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.mAlternativeAccountId;
        int hashCode7 = (hashCode6 + (str7 != null ? str7.hashCode() : 0)) * 31;
        String str8 = this.mFirstName;
        int hashCode8 = (hashCode7 + (str8 != null ? str8.hashCode() : 0)) * 31;
        String str9 = this.mFamilyName;
        int hashCode9 = (hashCode8 + (str9 != null ? str9.hashCode() : 0)) * 31;
        String str10 = this.mAvatarUrl;
        if (str10 != null) {
            i2 = str10.hashCode();
        }
        return hashCode9 + i2;
    }

    public void setAlternativeAccountId(String str) {
        this.mAlternativeAccountId = str;
    }

    public void setAuthorityType(String str) {
        this.mAuthorityType = str;
    }

    public void setAvatarUrl(String str) {
        this.mAvatarUrl = str;
    }

    public void setClientInfo(String str) {
        this.mClientInfo = str;
    }

    public void setEnvironment(String str) {
        this.mEnvironment = str;
    }

    public void setFamilyName(String str) {
        this.mFamilyName = str;
    }

    public void setFirstName(String str) {
        this.mFirstName = str;
    }

    public void setHomeAccountId(String str) {
        this.mHomeAccountId = str;
    }

    public void setLocalAccountId(String str) {
        this.mLocalAccountId = str;
    }

    public void setMiddleName(String str) {
        this.mMiddleName = str;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public void setRealm(String str) {
        this.mRealm = str;
    }

    public void setUsername(String str) {
        this.mUsername = str;
    }

    public AccountRecord(IAccountRecord iAccountRecord) {
        setHomeAccountId(iAccountRecord.getHomeAccountId());
        setEnvironment(iAccountRecord.getEnvironment());
        setRealm(iAccountRecord.getRealm());
        setLocalAccountId(iAccountRecord.getLocalAccountId());
        setUsername(iAccountRecord.getUsername());
        setAuthorityType(iAccountRecord.getAuthorityType());
        setClientInfo(iAccountRecord.getClientInfo());
        setAlternativeAccountId(iAccountRecord.getAlternativeAccountId());
        setFirstName(iAccountRecord.getFirstName());
        setFamilyName(iAccountRecord.getFamilyName());
        setMiddleName(iAccountRecord.getMiddleName());
        setName(iAccountRecord.getName());
        setAvatarUrl(iAccountRecord.getAvatarUrl());
    }
}
