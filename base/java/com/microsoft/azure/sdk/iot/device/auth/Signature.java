package com.microsoft.azure.sdk.iot.device.auth;

public final class Signature {
    public final String sig;

    public Signature(String str, long j2, String str2) {
        this.sig = SignatureHelper.encodeSignatureWebSafe(SignatureHelper.encodeSignatureUtf8(SignatureHelper.encodeSignatureBase64(SignatureHelper.encryptSignatureHmacSha256(SignatureHelper.buildRawSignature(str, j2), SignatureHelper.decodeDeviceKeyBase64(str2)))));
    }

    public String toString() {
        return this.sig;
    }
}
