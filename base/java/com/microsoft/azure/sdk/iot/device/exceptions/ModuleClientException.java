package com.microsoft.azure.sdk.iot.device.exceptions;

public class ModuleClientException extends Exception {
    public ModuleClientException() {
    }

    public ModuleClientException(String str) {
        super(str);
    }

    public ModuleClientException(String str, Throwable th) {
        super(str, th);
    }

    public ModuleClientException(Throwable th) {
        super(th);
    }

    public ModuleClientException(String str, Throwable th, boolean z, boolean z2) {
        super(str, th, z, z2);
    }
}
