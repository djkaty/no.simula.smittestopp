package com.microsoft.identity.common.internal.providers.microsoft.microsoftsts;

import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAuthorizationResult;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationStatus;

public class MicrosoftStsAuthorizationResult extends MicrosoftAuthorizationResult<MicrosoftStsAuthorizationResponse, MicrosoftStsAuthorizationErrorResponse> {
    public MicrosoftStsAuthorizationResult(AuthorizationStatus authorizationStatus, MicrosoftStsAuthorizationResponse microsoftStsAuthorizationResponse) {
        super(authorizationStatus, microsoftStsAuthorizationResponse);
    }

    public MicrosoftStsAuthorizationResult(AuthorizationStatus authorizationStatus, MicrosoftStsAuthorizationErrorResponse microsoftStsAuthorizationErrorResponse) {
        super(authorizationStatus, microsoftStsAuthorizationErrorResponse);
    }
}
