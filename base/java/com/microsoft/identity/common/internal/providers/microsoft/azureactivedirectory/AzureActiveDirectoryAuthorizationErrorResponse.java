package com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory;

import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAuthorizationErrorResponse;

public class AzureActiveDirectoryAuthorizationErrorResponse extends MicrosoftAuthorizationErrorResponse {
    public String mErrorCodes;

    public AzureActiveDirectoryAuthorizationErrorResponse(String str, String str2) {
        super(str, str2);
    }

    public String getErrorCodes() {
        return this.mErrorCodes;
    }

    public void setErrorCodes(String str) {
        this.mErrorCodes = str;
    }
}
