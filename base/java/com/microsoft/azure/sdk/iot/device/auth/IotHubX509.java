package com.microsoft.azure.sdk.iot.device.auth;

import java.nio.file.Files;
import java.nio.file.Paths;

public class IotHubX509 {
    public String pathToPrivateKey;
    public String pathToPublicKeyCertificate;
    public String privateKey;
    public String publicKeyCertificate;

    public IotHubX509(String str, boolean z, String str2, boolean z2) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Public key certificate cannot be null or empty");
        } else if (str2 == null || str2.isEmpty()) {
            throw new IllegalArgumentException("Private key certificate cannot be null or empty");
        } else {
            if (z) {
                this.pathToPublicKeyCertificate = str;
            } else {
                this.publicKeyCertificate = str;
            }
            if (z2) {
                this.pathToPrivateKey = str2;
            } else {
                this.privateKey = str2;
            }
        }
    }

    private String readFromFile(String str) {
        return new String(Files.readAllBytes(Paths.get(str, new String[0])));
    }

    public String getPrivateKey() {
        String str;
        if (this.privateKey == null && (str = this.pathToPrivateKey) != null) {
            this.privateKey = readFromFile(str);
        }
        return this.privateKey;
    }

    public String getPublicKeyCertificate() {
        String str;
        if (this.publicKeyCertificate == null && (str = this.pathToPublicKeyCertificate) != null) {
            this.publicKeyCertificate = readFromFile(str);
        }
        return this.publicKeyCertificate;
    }
}
