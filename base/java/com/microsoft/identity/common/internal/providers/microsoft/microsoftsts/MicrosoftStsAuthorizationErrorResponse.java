package com.microsoft.identity.common.internal.providers.microsoft.microsoftsts;

import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAuthorizationErrorResponse;

public class MicrosoftStsAuthorizationErrorResponse extends MicrosoftAuthorizationErrorResponse {
    public String mErrorSubcode;

    public MicrosoftStsAuthorizationErrorResponse(String str, String str2) {
        super(str, str2);
    }

    public String getErrorSubcode() {
        return this.mErrorSubcode;
    }

    public void setErrorSubcode(String str) {
        this.mErrorSubcode = str;
    }

    public MicrosoftStsAuthorizationErrorResponse(String str, String str2, String str3) {
        super(str, str3);
        this.mErrorSubcode = str2;
    }
}
