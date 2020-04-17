package com.microsoft.identity.client;

import com.microsoft.identity.client.TokenParameters;

public class AcquireTokenSilentParameters extends TokenParameters {
    public SilentAuthenticationCallback mCallback;
    public boolean mForceRefresh;

    public static class Builder extends TokenParameters.Builder<Builder> {
        public SilentAuthenticationCallback mCallback;
        public boolean mForceRefresh;

        public Builder forceRefresh(boolean z) {
            this.mForceRefresh = z;
            return self();
        }

        public Builder self() {
            return this;
        }

        public Builder withCallback(SilentAuthenticationCallback silentAuthenticationCallback) {
            this.mCallback = silentAuthenticationCallback;
            return this;
        }

        public AcquireTokenSilentParameters build() {
            return new AcquireTokenSilentParameters(this);
        }
    }

    public AcquireTokenSilentParameters(Builder builder) {
        super(builder);
        this.mForceRefresh = builder.mForceRefresh;
        this.mCallback = builder.mCallback;
    }

    public SilentAuthenticationCallback getCallback() {
        return this.mCallback;
    }

    public boolean getForceRefresh() {
        return this.mForceRefresh;
    }

    public void setCallback(SilentAuthenticationCallback silentAuthenticationCallback) {
        this.mCallback = silentAuthenticationCallback;
    }

    public void setForceRefresh(boolean z) {
        this.mForceRefresh = z;
    }
}
