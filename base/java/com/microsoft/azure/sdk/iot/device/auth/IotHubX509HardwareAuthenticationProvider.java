package com.microsoft.azure.sdk.iot.device.auth;

import com.microsoft.azure.sdk.iot.deps.auth.IotHubSSLContext;
import com.microsoft.azure.sdk.iot.provisioning.security.SecurityProvider;
import com.microsoft.azure.sdk.iot.provisioning.security.SecurityProviderX509;
import com.microsoft.azure.sdk.iot.provisioning.security.exceptions.SecurityProviderException;
import java.io.IOException;
import javax.net.ssl.SSLContext;

public class IotHubX509HardwareAuthenticationProvider extends IotHubAuthenticationProvider {
    public SecurityProviderX509 securityProviderX509;

    public IotHubX509HardwareAuthenticationProvider(String str, String str2, String str3, String str4, SecurityProvider securityProvider) {
        super(str, str2, str3, str4);
        if (securityProvider instanceof SecurityProviderX509) {
            this.securityProviderX509 = (SecurityProviderX509) securityProvider;
            return;
        }
        throw new IllegalArgumentException("The provided security provider must be of type SecurityProviderX509");
    }

    public SSLContext getSSLContext() {
        if (this.iotHubSSLContext == null) {
            try {
                this.iotHubSSLContext = new IotHubSSLContext(this.securityProviderX509.getSSLContext());
            } catch (SecurityProviderException e2) {
                throw new IOException(e2);
            }
        }
        return this.iotHubSSLContext.getSSLContext();
    }

    public void setIotHubTrustedCert(String str) {
        throw new UnsupportedOperationException("Cannot change the trusted certificate when using security provider for authentication.");
    }

    public void setPathToIotHubTrustedCert(String str) {
        throw new UnsupportedOperationException("Cannot change the trusted certificate when using security provider for authentication.");
    }
}
