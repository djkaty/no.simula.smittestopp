package com.microsoft.identity.common.internal.providers.microsoft.activedirectoryfederationservices;

import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAuthorizationRequest;

public class ActiveDirectoryFederationServicesAuthorizationRequest extends MicrosoftAuthorizationRequest<ActiveDirectoryFederationServicesAuthorizationRequest> {

    public static final class Builder extends MicrosoftAuthorizationRequest.Builder<Builder> {
        public Builder self() {
            return this;
        }

        public ActiveDirectoryFederationServicesAuthorizationRequest build() {
            return new ActiveDirectoryFederationServicesAuthorizationRequest(this);
        }
    }

    public String getAuthorizationEndpoint() {
        throw new UnsupportedOperationException("Not implemented.");
    }

    public ActiveDirectoryFederationServicesAuthorizationRequest(Builder builder) {
        super(builder);
    }
}
