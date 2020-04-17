package com.microsoft.azure.sdk.iot.device.auth;

import com.microsoft.azure.sdk.iot.device.net.IotHubUri;
import e.a.a.a.a;
import java.util.HashMap;
import java.util.Map;

public final class IotHubSasToken {
    public static final int ExpectedNumberOfFieldParts = 2;
    public static final int ExpectedSASTokenSegments = 2;
    public static final String ExpiryTimeFieldKey = "se";
    public static final String FieldKeyValueSeparator = "=";
    public static final String FieldPairSeparator = "&";
    public static final int KeyValuePairKeyIndex = 0;
    public static final int KeyValuePairValueIndex = 1;
    public static final String ResourceURIFieldKey = "sr";
    public static final int SASTokenConstantSegmentIndex = 0;
    public static final int SASTokenFieldSegmentIndex = 1;
    public static final String SASTokenSegmentSeparator = " ";
    public static final String SharedAccessSignature = "SharedAccessSignature";
    public static final String SignatureFieldKey = "sig";
    public static final String TOKEN_FORMAT = "SharedAccessSignature sig=%s&se=%s&sr=%s";
    public long expiryTime;
    public String sasToken;
    public String scope;
    public String signature;

    public IotHubSasToken(String str, String str2, String str3, String str4, String str5, long j2) {
        this.sasToken = null;
        this.signature = null;
        this.expiryTime = 0;
        this.scope = null;
        if (str3 != null) {
            String resourceUri = IotHubUri.getResourceUri(str, str2, str5);
            this.scope = resourceUri;
            this.expiryTime = j2;
            this.signature = new Signature(resourceUri, j2, str3).toString();
        } else if (str4 != null) {
            this.sasToken = str4;
            this.expiryTime = getExpiryTimeFromToken(str4).longValue();
            if (!isSasFormat()) {
                throw new IllegalArgumentException("SasToken format is invalid");
            } else if (isExpired(this.sasToken)) {
                throw new SecurityException("Your SasToken has expired");
            }
        } else {
            throw new IllegalArgumentException("deviceKey and sharedAccessToken may not both be null");
        }
    }

    private String buildSasToken() {
        return String.format(TOKEN_FORMAT, new Object[]{this.signature, Long.valueOf(this.expiryTime), this.scope});
    }

    public static String buildSharedAccessToken(String str, String str2, long j2) {
        if (str == null || str.isEmpty() || str2 == null || str2.isEmpty()) {
            throw new IllegalArgumentException("neither audience nor signature can be null or empty");
        } else if (j2 >= 0) {
            return String.format("%s %s=%s&%s=%s&%s=%d", new Object[]{"SharedAccessSignature", "sr", str, "sig", str2, "se", Long.valueOf(j2)});
        } else {
            throw new IllegalArgumentException("expiry time must be a non-negative integer");
        }
    }

    public static Map<String, String> extractFieldValues(String str) {
        String[] split = str.split(" ");
        boolean equals = split[0].trim().toUpperCase().equals("SharedAccessSignature".toUpperCase());
        if (split.length != 2 || !equals) {
            throw new IllegalArgumentException("Malformed signature");
        }
        HashMap hashMap = new HashMap();
        for (String str2 : split[1].trim().split("&")) {
            if (!str2.equals("")) {
                String[] split2 = str2.split("=");
                if (split2.length == 2) {
                    hashMap.put(split2[0], split2[1]);
                } else {
                    throw new IllegalArgumentException(a.b("SasToken format is invalid: missing a key or value tied to your field: ", str2));
                }
            }
        }
        return hashMap;
    }

    public static Long getExpiryTimeFromToken(String str) {
        return Long.valueOf(Long.parseLong(extractFieldValues(str).get("se")));
    }

    public static boolean isExpired(String str) {
        return Long.valueOf(System.currentTimeMillis() / 1000).longValue() >= getExpiryTimeFromToken(str).longValue();
    }

    private boolean isSasFormat() {
        String str = this.sasToken;
        if (str == null || !str.startsWith("SharedAccessSignature")) {
            return false;
        }
        Map<String, String> extractFieldValues = extractFieldValues(this.sasToken);
        return extractFieldValues.containsKey("se") && extractFieldValues.containsKey("sig") && extractFieldValues.containsKey("sr");
    }

    public String getSasToken() {
        return this.sasToken;
    }

    public String toString() {
        if (this.sasToken != null) {
            if (isSasFormat()) {
                return this.sasToken;
            }
            throw new IllegalArgumentException("SasToken format is invalid");
        } else if (this.signature == null || this.expiryTime == 0 || this.scope == null) {
            return null;
        } else {
            return buildSasToken();
        }
    }

    public boolean isExpired() {
        return System.currentTimeMillis() / 1000 >= this.expiryTime;
    }

    public IotHubSasToken() {
        this.sasToken = null;
        this.signature = null;
        this.expiryTime = 0;
        this.scope = null;
        this.signature = null;
        this.expiryTime = 0;
        this.scope = null;
        this.sasToken = null;
    }
}
