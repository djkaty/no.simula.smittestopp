package com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory;

import e.c.c.v.c;

public class AzureActiveDirectorySlice {
    public static final String DC_PARAMETER = "dc";
    public static final String SLICE_PARAMETER = "slice";
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

    public void setDataCenter(String str) {
        this.mDataCenter = str;
    }

    public void setSlice(String str) {
        this.mSlice = str;
    }
}
