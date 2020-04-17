package com.microsoft.azure.sdk.iot.device.auth;

import com.microsoft.azure.sdk.iot.deps.auth.IotHubSSLContext;
import java.io.IOException;
import java.security.KeyManagementException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import javax.net.ssl.SSLContext;

public abstract class IotHubAuthenticationProvider {
    public String deviceId;
    public String gatewayHostname;
    public String hostname;
    public IotHubSSLContext iotHubSSLContext;
    public String iotHubTrustedCert;
    public String moduleId;
    public String pathToIotHubTrustedCert;
    public boolean sslContextNeedsUpdate;

    public IotHubAuthenticationProvider(String str, String str2, String str3, String str4) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("hostname cannot be null");
        } else if (str3 == null || str3.isEmpty()) {
            throw new IllegalArgumentException("deviceId cannot be null");
        } else {
            this.hostname = str;
            this.gatewayHostname = str2;
            this.deviceId = str3;
            this.moduleId = str4;
        }
    }

    private IotHubSSLContext generateSSLContext() {
        String str = this.iotHubTrustedCert;
        if (str != null) {
            return new IotHubSSLContext(str, false);
        }
        String str2 = this.pathToIotHubTrustedCert;
        if (str2 != null) {
            return new IotHubSSLContext(str2, true);
        }
        return new IotHubSSLContext();
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public String getGatewayHostname() {
        return this.gatewayHostname;
    }

    public String getHostname() {
        return this.hostname;
    }

    public String getIotHubTrustedCert() {
        return this.iotHubTrustedCert;
    }

    public String getModuleId() {
        return this.moduleId;
    }

    public String getPathToIotHubTrustedCert() {
        return this.pathToIotHubTrustedCert;
    }

    public SSLContext getSSLContext() {
        try {
            if (this.iotHubSSLContext == null || this.sslContextNeedsUpdate) {
                this.iotHubSSLContext = generateSSLContext();
                this.sslContextNeedsUpdate = false;
            }
            return this.iotHubSSLContext.getSSLContext();
        } catch (KeyManagementException | KeyStoreException | NoSuchAlgorithmException | CertificateException e2) {
            throw new IOException(e2);
        }
    }

    public void setIotHubTrustedCert(String str) {
        String str2 = this.iotHubTrustedCert;
        if (str2 == null || !str2.equals(str)) {
            this.sslContextNeedsUpdate = true;
        }
        this.iotHubTrustedCert = str;
    }

    public void setPathToIotHubTrustedCert(String str) {
        String str2 = this.pathToIotHubTrustedCert;
        if (str2 == null || !str2.equals(str)) {
            this.sslContextNeedsUpdate = true;
        }
        this.pathToIotHubTrustedCert = str;
    }

    public IotHubAuthenticationProvider(String str, String str2, String str3, String str4, SSLContext sSLContext) {
        this(str, str2, str3, str4);
        this.sslContextNeedsUpdate = false;
        this.iotHubSSLContext = new IotHubSSLContext(sSLContext);
    }
}
