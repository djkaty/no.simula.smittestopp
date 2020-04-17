package com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory;

import com.microsoft.identity.common.internal.providers.oauth2.TokenRequest;
import e.c.c.v.c;

public class AzureActiveDirectoryTokenRequest extends TokenRequest {
    @c("resource")
    public String mResourceId;

    public String getResourceId() {
        return this.mResourceId;
    }

    public void setResourceId(String str) {
        this.mResourceId = str;
    }
}
