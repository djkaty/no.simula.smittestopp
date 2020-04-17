package com.microsoft.identity.common.internal.cache;

import com.microsoft.identity.common.internal.cache.AbstractApplicationMetadata;
import e.c.c.v.c;

public class BrokerApplicationMetadata extends AbstractApplicationMetadata {
    @c("family_id")
    public String mFoci;

    public static final class SerializedNames extends AbstractApplicationMetadata.SerializedNames {
        public static final String FAMILY_ID = "family_id";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || BrokerApplicationMetadata.class != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        String str = this.mFoci;
        String str2 = ((BrokerApplicationMetadata) obj).mFoci;
        if (str != null) {
            return str.equals(str2);
        }
        if (str2 == null) {
            return true;
        }
        return false;
    }

    public String getFoci() {
        return this.mFoci;
    }

    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        String str = this.mFoci;
        return hashCode + (str != null ? str.hashCode() : 0);
    }

    public void setFoci(String str) {
        this.mFoci = str;
    }
}
