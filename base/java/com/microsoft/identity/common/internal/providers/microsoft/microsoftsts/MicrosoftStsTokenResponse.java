package com.microsoft.identity.common.internal.providers.microsoft.microsoftsts;

import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftTokenResponse;
import e.c.c.v.c;

public class MicrosoftStsTokenResponse extends MicrosoftTokenResponse {
    @c("not_before")
    public String mExpiresNotBefore;

    public String getExpiresNotBefore() {
        return this.mExpiresNotBefore;
    }

    public void setExpiresNotBefore(String str) {
        this.mExpiresNotBefore = str;
    }
}
