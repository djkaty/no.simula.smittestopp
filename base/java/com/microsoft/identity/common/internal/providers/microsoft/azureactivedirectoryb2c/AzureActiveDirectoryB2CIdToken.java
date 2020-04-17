package com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectoryb2c;

import com.microsoft.identity.common.internal.providers.oauth2.IDToken;
import java.util.Map;

public class AzureActiveDirectoryB2CIdToken extends IDToken {
    public AzureActiveDirectoryB2CIdToken(String str) {
        super(str);
    }

    public Map<String, ?> getTokenClaims() {
        return super.getTokenClaims();
    }
}
