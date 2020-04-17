package com.microsoft.identity.common.internal.providers.microsoft.microsoftsts;

import com.microsoft.identity.common.internal.providers.IdentityProvider;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2StrategyParameters;

public class MicrosoftSts extends IdentityProvider<MicrosoftStsOAuth2Strategy, MicrosoftStsOAuth2Configuration> {
    public MicrosoftStsOAuth2Strategy createOAuth2Strategy(MicrosoftStsOAuth2Configuration microsoftStsOAuth2Configuration) {
        return new MicrosoftStsOAuth2Strategy(microsoftStsOAuth2Configuration, new OAuth2StrategyParameters());
    }
}
