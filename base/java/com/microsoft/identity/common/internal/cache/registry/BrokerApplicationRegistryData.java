package com.microsoft.identity.common.internal.cache.registry;

import com.microsoft.identity.common.internal.cache.AbstractApplicationMetadata;
import e.c.c.v.c;

public class BrokerApplicationRegistryData extends AbstractApplicationMetadata {
    @c("wpj_account_access_allowed")
    public boolean mWpjAccountAccessAllowed;

    public static final class SerializedNames extends AbstractApplicationMetadata.SerializedNames {
        public static final String ALLOW_WPJ_ACCESS = "wpj_account_access_allowed";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || BrokerApplicationRegistryData.class != obj.getClass() || !super.equals(obj) || this.mWpjAccountAccessAllowed != ((BrokerApplicationRegistryData) obj).mWpjAccountAccessAllowed) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return (super.hashCode() * 31) + (this.mWpjAccountAccessAllowed ? 1 : 0);
    }

    public boolean isWpjAccountAccessAllowed() {
        return this.mWpjAccountAccessAllowed;
    }

    public void setWpjAccountAccessAllowed(boolean z) {
        this.mWpjAccountAccessAllowed = z;
    }
}
