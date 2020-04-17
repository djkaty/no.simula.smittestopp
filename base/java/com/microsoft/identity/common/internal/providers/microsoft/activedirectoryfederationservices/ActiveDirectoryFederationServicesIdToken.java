package com.microsoft.identity.common.internal.providers.microsoft.activedirectoryfederationservices;

import com.microsoft.identity.common.internal.providers.oauth2.IDToken;
import java.util.Map;

public class ActiveDirectoryFederationServicesIdToken extends IDToken {
    public ActiveDirectoryFederationServicesIdToken(String str) {
        super(str);
    }

    public Map<String, ?> getTokenClaims() {
        return super.getTokenClaims();
    }
}
