package com.microsoft.identity.common.internal.providers.oauth2;

public abstract class ClientAssertion {
    public static final String DEFAULT_CLIENT_ASSERTION_TYPE = "urn:ietf:params:oauth:client-assertion-type:jwt-bearer";
    public String mClientAssertion;
    public String mClientAssertionType = "urn:ietf:params:oauth:client-assertion-type:jwt-bearer";

    public String getClientAssertion() {
        return this.mClientAssertion;
    }

    public String getClientAssertionType() {
        return this.mClientAssertionType;
    }

    public void setClientAssertion(String str) {
        this.mClientAssertion = str;
    }

    public void setClientAssertionType(String str) {
        this.mClientAssertionType = str;
    }
}
