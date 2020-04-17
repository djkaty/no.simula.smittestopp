package com.microsoft.azure.sdk.iot.provisioning.security.exceptions;

public class SecurityProviderException extends Exception {
    public SecurityProviderException(Throwable th) {
        super(th);
    }

    public SecurityProviderException(String str, Throwable th) {
        super(str, th);
    }

    public SecurityProviderException(String str) {
        super(str);
    }
}
