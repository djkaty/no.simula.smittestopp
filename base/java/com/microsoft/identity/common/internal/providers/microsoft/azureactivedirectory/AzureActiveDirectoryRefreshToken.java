package com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory;

import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftRefreshToken;

public class AzureActiveDirectoryRefreshToken extends MicrosoftRefreshToken {
    public AzureActiveDirectoryRefreshToken(AzureActiveDirectoryTokenResponse azureActiveDirectoryTokenResponse) {
        super(azureActiveDirectoryTokenResponse);
    }
}
