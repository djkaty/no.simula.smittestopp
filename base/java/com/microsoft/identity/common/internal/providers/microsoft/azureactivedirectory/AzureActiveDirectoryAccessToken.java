package com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory;

import com.microsoft.identity.common.internal.providers.oauth2.AccessToken;
import java.util.Date;

public class AzureActiveDirectoryAccessToken extends AccessToken {
    public Date mExpiresOn;
    public Date mExtendedExpiresOn;

    public AzureActiveDirectoryAccessToken(AzureActiveDirectoryTokenResponse azureActiveDirectoryTokenResponse) {
        super(azureActiveDirectoryTokenResponse);
        this.mExpiresOn = azureActiveDirectoryTokenResponse.getExpiresOn();
        this.mExtendedExpiresOn = azureActiveDirectoryTokenResponse.getExtExpiresOn();
    }

    public Date getExpiresOn() {
        return this.mExpiresOn;
    }

    public Date getExtendedExpiresOn() {
        return this.mExtendedExpiresOn;
    }
}
