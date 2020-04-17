package com.microsoft.identity.client.internal;

import com.microsoft.identity.client.AcquireTokenParameters;

public class IntuneAcquireTokenParameters extends AcquireTokenParameters {
    public boolean mBrokerBrowserSupportEnabled;

    public boolean isBrokerBrowserSupportEnabled() {
        return this.mBrokerBrowserSupportEnabled;
    }

    public static class Builder extends AcquireTokenParameters.Builder {
        public boolean mBrokerBrowserSupportEnabled;

        public Builder brokerBrowserSupportEnabled(boolean z) {
            this.mBrokerBrowserSupportEnabled = z;
            return this;
        }

        public Builder self() {
            return this;
        }

        public IntuneAcquireTokenParameters build() {
            return new IntuneAcquireTokenParameters(this);
        }
    }

    public IntuneAcquireTokenParameters(Builder builder) {
        super(builder);
        this.mBrokerBrowserSupportEnabled = builder.mBrokerBrowserSupportEnabled;
    }
}
