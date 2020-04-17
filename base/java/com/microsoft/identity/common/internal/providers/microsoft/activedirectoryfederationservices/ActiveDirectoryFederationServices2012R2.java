package com.microsoft.identity.common.internal.providers.microsoft.activedirectoryfederationservices;

import com.microsoft.identity.common.internal.providers.IdentityProvider;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2Configuration;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2StrategyParameters;

public class ActiveDirectoryFederationServices2012R2 extends IdentityProvider<ActiveDirectoryFederationServices2012R2OAuth2Strategy, OAuth2Configuration> {
    public ActiveDirectoryFederationServices2012R2OAuth2Strategy createOAuth2Strategy(OAuth2Configuration oAuth2Configuration) {
        return new ActiveDirectoryFederationServices2012R2OAuth2Strategy(oAuth2Configuration, new OAuth2StrategyParameters());
    }
}
