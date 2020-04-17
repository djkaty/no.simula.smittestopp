package com.microsoft.identity.common.internal.providers.microsoft.microsoftsts;

import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftRefreshToken;

public class MicrosoftStsRefreshToken extends MicrosoftRefreshToken {
    public MicrosoftStsRefreshToken(MicrosoftStsTokenResponse microsoftStsTokenResponse) {
        super(microsoftStsTokenResponse);
    }
}
