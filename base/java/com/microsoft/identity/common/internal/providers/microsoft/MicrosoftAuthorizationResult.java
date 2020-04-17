package com.microsoft.identity.common.internal.providers.microsoft;

import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAuthorizationErrorResponse;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAuthorizationResponse;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationResult;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationStatus;

public abstract class MicrosoftAuthorizationResult<GenericMicrosoftAuthorizationResponse extends MicrosoftAuthorizationResponse, GenericMicrosoftAuthorizationErrorResponse extends MicrosoftAuthorizationErrorResponse> extends AuthorizationResult<GenericMicrosoftAuthorizationResponse, GenericMicrosoftAuthorizationErrorResponse> {
    public static final String REQUEST_STATE_PARAMETER = "request_state_parameter";

    public MicrosoftAuthorizationResult(AuthorizationStatus authorizationStatus, GenericMicrosoftAuthorizationResponse genericmicrosoftauthorizationresponse) {
        super(genericmicrosoftauthorizationresponse, null);
        setAuthorizationStatus(authorizationStatus);
        setAuthorizationResponse(genericmicrosoftauthorizationresponse);
    }

    public MicrosoftAuthorizationResult(AuthorizationStatus authorizationStatus, GenericMicrosoftAuthorizationErrorResponse genericmicrosoftauthorizationerrorresponse) {
        super(null, genericmicrosoftauthorizationerrorresponse);
        setAuthorizationStatus(authorizationStatus);
        setAuthorizationErrorResponse(genericmicrosoftauthorizationerrorresponse);
    }
}
