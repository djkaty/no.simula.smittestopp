package com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectoryb2c;

import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAuthorizationRequest;

public class AzureActiveDirectoryB2CAuthorizationRequest extends MicrosoftAuthorizationRequest<AzureActiveDirectoryB2CAuthorizationRequest> {
    public String mPrompt;

    public static final class Builder extends MicrosoftAuthorizationRequest.Builder<Builder> {
        public String mPrompt;

        public Builder self() {
            return this;
        }

        public AzureActiveDirectoryB2CAuthorizationRequest build() {
            return new AzureActiveDirectoryB2CAuthorizationRequest(this);
        }

        public Builder setPrompt(String str) {
            this.mPrompt = str;
            return this;
        }
    }

    public String getAuthorizationEndpoint() {
        throw new UnsupportedOperationException("Not implemented.");
    }

    public String getPrompt() {
        return this.mPrompt;
    }

    public AzureActiveDirectoryB2CAuthorizationRequest(Builder builder) {
        super(builder);
    }
}
