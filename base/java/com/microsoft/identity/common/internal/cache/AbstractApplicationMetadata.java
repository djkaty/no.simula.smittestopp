package com.microsoft.identity.common.internal.cache;

import e.c.c.v.c;

public abstract class AbstractApplicationMetadata {
    @c("client_id")
    public String mClientId;
    @c("environment")
    public String mEnvironment;
    @c("application_uid")
    public int mUid;

    public static class SerializedNames {
        public static final String APPLICATION_UID = "application_uid";
        public static final String CLIENT_ID = "client_id";
        public static final String ENVIRONMENT = "environment";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AbstractApplicationMetadata abstractApplicationMetadata = (AbstractApplicationMetadata) obj;
        if (this.mUid != abstractApplicationMetadata.mUid) {
            return false;
        }
        String str = this.mClientId;
        if (str == null ? abstractApplicationMetadata.mClientId != null : !str.equals(abstractApplicationMetadata.mClientId)) {
            return false;
        }
        String str2 = this.mEnvironment;
        String str3 = abstractApplicationMetadata.mEnvironment;
        if (str2 != null) {
            return str2.equals(str3);
        }
        if (str3 == null) {
            return true;
        }
        return false;
    }

    public String getClientId() {
        return this.mClientId;
    }

    public String getEnvironment() {
        return this.mEnvironment;
    }

    public int getUid() {
        return this.mUid;
    }

    public int hashCode() {
        String str = this.mClientId;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.mEnvironment;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return ((hashCode + i2) * 31) + this.mUid;
    }

    public void setClientId(String str) {
        this.mClientId = str;
    }

    public void setEnvironment(String str) {
        this.mEnvironment = str;
    }

    public void setUid(int i2) {
        this.mUid = i2;
    }
}
