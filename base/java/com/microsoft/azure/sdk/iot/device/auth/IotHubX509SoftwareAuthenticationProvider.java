package com.microsoft.azure.sdk.iot.device.auth;

import com.microsoft.azure.sdk.iot.deps.auth.IotHubSSLContext;
import java.io.IOException;
import java.security.KeyManagementException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import javax.net.ssl.SSLContext;

public class IotHubX509SoftwareAuthenticationProvider extends IotHubAuthenticationProvider {
    public IotHubX509 iotHubX509;

    public IotHubX509SoftwareAuthenticationProvider(String str, String str2, String str3, String str4, String str5, boolean z, String str6, boolean z2) {
        super(str, str2, str3, str4);
        this.iotHubX509 = new IotHubX509(str5, z, str6, z2);
        this.sslContextNeedsUpdate = false;
    }

    private IotHubSSLContext generateSSLContext() {
        if (this.iotHubTrustedCert != null) {
            return new IotHubSSLContext(this.iotHubX509.getPublicKeyCertificate(), this.iotHubX509.getPrivateKey(), this.iotHubTrustedCert, false);
        }
        if (this.pathToIotHubTrustedCert != null) {
            return new IotHubSSLContext(this.iotHubX509.getPublicKeyCertificate(), this.iotHubX509.getPrivateKey(), this.pathToIotHubTrustedCert, true);
        }
        return new IotHubSSLContext(this.iotHubX509.getPublicKeyCertificate(), this.iotHubX509.getPrivateKey());
    }

    public SSLContext getSSLContext() {
        try {
            if (this.iotHubSSLContext == null || this.sslContextNeedsUpdate) {
                this.iotHubSSLContext = generateSSLContext();
                this.sslContextNeedsUpdate = false;
            }
            return this.iotHubSSLContext.getSSLContext();
        } catch (KeyManagementException | KeyStoreException | NoSuchAlgorithmException | UnrecoverableKeyException | CertificateException e2) {
            throw new IOException(e2);
        }
    }

    public IotHubX509SoftwareAuthenticationProvider(String str, String str2, String str3, String str4, SSLContext sSLContext) {
        super(str, str2, str3, str4, sSLContext);
        this.iotHubX509 = null;
    }
}
