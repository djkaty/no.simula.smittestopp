package com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory;

import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAuthorizationResult;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationStatus;

public class AzureActiveDirectoryAuthorizationResult extends MicrosoftAuthorizationResult<AzureActiveDirectoryAuthorizationResponse, AzureActiveDirectoryAuthorizationErrorResponse> {
    public AzureActiveDirectoryAuthorizationResult(AuthorizationStatus authorizationStatus, AzureActiveDirectoryAuthorizationResponse azureActiveDirectoryAuthorizationResponse) {
        super(authorizationStatus, azureActiveDirectoryAuthorizationResponse);
    }

    public AzureActiveDirectoryAuthorizationResult(AuthorizationStatus authorizationStatus, AzureActiveDirectoryAuthorizationErrorResponse azureActiveDirectoryAuthorizationErrorResponse) {
        super(authorizationStatus, azureActiveDirectoryAuthorizationErrorResponse);
    }
}
