package com.microsoft.identity.common.internal.authorities;

import e.c.c.v.c;

public class AzureActiveDirectorySlice {
    @c("dc")
    public String mDataCenter;
    @c("slice")
    public String mSlice;

    public String getDC() {
        return this.mDataCenter;
    }

    public String getSlice() {
        return this.mSlice;
    }
}
