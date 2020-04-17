package com.microsoft.identity.common.internal.providers.oauth2;

import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationErrorResponse;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationResponse;

public abstract class AuthorizationResult<GenericAuthorizationResponse extends AuthorizationResponse, GenericAuthorizationErrorResponse extends AuthorizationErrorResponse> implements IResult {
    public GenericAuthorizationErrorResponse mAuthorizationErrorResponse;
    public GenericAuthorizationResponse mAuthorizationResponse;
    public AuthorizationStatus mAuthorizationStatus;
    public boolean mSuccess = false;

    public AuthorizationResult(GenericAuthorizationResponse genericauthorizationresponse, GenericAuthorizationErrorResponse genericauthorizationerrorresponse) {
        this.mAuthorizationResponse = genericauthorizationresponse;
        this.mAuthorizationErrorResponse = genericauthorizationerrorresponse;
        if (genericauthorizationresponse != null) {
            this.mSuccess = true;
        }
    }

    public GenericAuthorizationErrorResponse getAuthorizationErrorResponse() {
        return this.mAuthorizationErrorResponse;
    }

    public GenericAuthorizationResponse getAuthorizationResponse() {
        return this.mAuthorizationResponse;
    }

    public AuthorizationStatus getAuthorizationStatus() {
        return this.mAuthorizationStatus;
    }

    public IErrorResponse getErrorResponse() {
        return this.mAuthorizationErrorResponse;
    }

    public boolean getSuccess() {
        return this.mSuccess;
    }

    public ISuccessResponse getSuccessResponse() {
        return this.mAuthorizationResponse;
    }

    public void setAuthorizationErrorResponse(GenericAuthorizationErrorResponse genericauthorizationerrorresponse) {
        this.mAuthorizationErrorResponse = genericauthorizationerrorresponse;
    }

    public void setAuthorizationResponse(GenericAuthorizationResponse genericauthorizationresponse) {
        this.mAuthorizationResponse = genericauthorizationresponse;
    }

    public void setAuthorizationStatus(AuthorizationStatus authorizationStatus) {
        this.mAuthorizationStatus = authorizationStatus;
    }

    public AuthorizationResult(AuthorizationStatus authorizationStatus) {
        this.mAuthorizationStatus = authorizationStatus;
    }

    public AuthorizationResult() {
    }
}
