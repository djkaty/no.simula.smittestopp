package com.microsoft.identity.common.internal.providers.microsoft.microsoftsts;

import com.microsoft.identity.common.internal.providers.oauth2.AccessToken;

public class MicrosoftStsAccessToken extends AccessToken {
    public Long mExtExpiresIn;

    public MicrosoftStsAccessToken(MicrosoftStsTokenResponse microsoftStsTokenResponse) {
        super(microsoftStsTokenResponse);
        this.mExtExpiresIn = microsoftStsTokenResponse.getExtExpiresIn();
    }

    public Long getExtExpiresIn() {
        return this.mExtExpiresIn;
    }

    public void setExtExpiresIn(Long l2) {
        this.mExtExpiresIn = l2;
    }
}
