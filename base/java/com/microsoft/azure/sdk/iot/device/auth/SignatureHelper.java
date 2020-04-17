package com.microsoft.azure.sdk.iot.device.auth;

import com.microsoft.azure.sdk.iot.deps.util.Base64;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public final class SignatureHelper {
    public static final String RAW_SIGNATURE_FORMAT = "%s\n%s";
    public static final Charset SIGNATURE_CHARSET = StandardCharsets.UTF_8;

    public static byte[] buildRawSignature(String str, long j2) {
        return String.format(RAW_SIGNATURE_FORMAT, new Object[]{str, Long.valueOf(j2)}).getBytes(SIGNATURE_CHARSET);
    }

    public static byte[] decodeDeviceKeyBase64(String str) {
        return Base64.decodeBase64Local(str.getBytes());
    }

    public static byte[] encodeSignatureBase64(byte[] bArr) {
        return Base64.encodeBase64Local(bArr);
    }

    public static String encodeSignatureUtf8(byte[] bArr) {
        return new String(bArr, SIGNATURE_CHARSET);
    }

    public static String encodeSignatureWebSafe(String str) {
        try {
            return URLEncoder.encode(str, SIGNATURE_CHARSET.name());
        } catch (UnsupportedEncodingException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public static byte[] encryptSignatureHmacSha256(byte[] bArr, byte[] bArr2) {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "HmacSHA256");
        try {
            Mac instance = Mac.getInstance("HmacSHA256");
            instance.init(secretKeySpec);
            return instance.doFinal(bArr);
        } catch (InvalidKeyException | NoSuchAlgorithmException unused) {
            return null;
        }
    }
}
