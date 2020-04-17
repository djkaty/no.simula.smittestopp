package com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory;

import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAuthorizationRequest;
import e.c.c.v.c;

public class AzureActiveDirectoryAuthorizationRequest extends MicrosoftAuthorizationRequest {
    @c("claims")
    public String mClaimsChallenge;
    @c("prompt")
    public String mPrompt;
    @c("resource")
    public String mResource;

    public static class Builder extends MicrosoftAuthorizationRequest.Builder<Builder> {
        public String mClaimsChallenge;
        public String mPrompt;
        public String mResource;

        public Builder self() {
            return this;
        }

        public Builder setClaimsChallenge(String str) {
            this.mClaimsChallenge = str;
            return this;
        }

        public Builder setResource(String str) {
            this.mResource = str;
            return this;
        }

        public AzureActiveDirectoryAuthorizationRequest build() {
            setLibraryName("ADAL.Android");
            setLibraryVersion("1.15.2");
            return new AzureActiveDirectoryAuthorizationRequest(this);
        }

        public Builder setPrompt(String str) {
            this.mPrompt = str;
            return this;
        }
    }

    public static final class Prompt {
        public static final String ADMIN_CONSENT = "admin_consent";
        public static final String ALWAYS = "login";
        public static final String AUTO = "none";
        public static final String CONSENT = "consent";
        public static final String FORCE_PROMPT = "login";
        public static final String REFRESH_SESSION = "refresh_session";
        public static final String SELECT_ACCOUNT = "select_account";
    }

    public AzureActiveDirectoryAuthorizationRequest(Builder builder) {
        super(builder);
        this.mResource = builder.mResource;
        this.mPrompt = builder.mPrompt;
        this.mClaimsChallenge = builder.mClaimsChallenge;
    }

    public String getAuthorizationEndpoint() {
        return null;
    }

    public String getClaimsChallenge() {
        return this.mClaimsChallenge;
    }

    public String getPrompt() {
        return this.mPrompt;
    }

    public String getResource() {
        return this.mResource;
    }
}
