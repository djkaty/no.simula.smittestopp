package com.microsoft.azure.sdk.iot.device.auth;

public interface SignatureProvider {
    String sign(String str, String str2, String str3);
}
