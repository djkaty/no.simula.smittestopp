package com.microsoft.azure.sdk.iot.device.auth;

import com.microsoft.azure.sdk.iot.deps.auth.IotHubSSLContext;
import com.microsoft.azure.sdk.iot.deps.util.Base64;
import com.microsoft.azure.sdk.iot.provisioning.security.SecurityProvider;
import com.microsoft.azure.sdk.iot.provisioning.security.SecurityProviderTpm;
import com.microsoft.azure.sdk.iot.provisioning.security.exceptions.SecurityProviderException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import javax.net.ssl.SSLContext;

public class IotHubSasTokenHardwareAuthenticationProvider extends IotHubSasTokenAuthenticationProvider {
    public static final String SASTOKEN_FORMAT = "SharedAccessSignature sr=%s&sig=%s&se=%s";
    public static final String TOKEN_SCOPE_FORMAT = "%s/devices/%s";
    public SecurityProviderTpm securityProvider;

    public IotHubSasTokenHardwareAuthenticationProvider(String str, String str2, String str3, String str4, SecurityProvider securityProvider2) {
        super(str, str2, str3, str4);
        try {
            if (securityProvider2 instanceof SecurityProviderTpm) {
                this.securityProvider = (SecurityProviderTpm) securityProvider2;
                this.sasToken = new IotHubSasToken(str, str3, (String) null, generateSasTokenSignatureFromSecurityProvider(this.tokenValidSecs), str4, 0);
                this.iotHubSSLContext = new IotHubSSLContext(securityProvider2.getSSLContext());
                this.sslContextNeedsUpdate = false;
                return;
            }
            throw new IllegalArgumentException("The provided security provided must be an instance of SecurityProviderTpm");
        } catch (SecurityProviderException e2) {
            throw new IOException(e2);
        }
    }

    private String generateSasTokenSignatureFromSecurityProvider(long j2) {
        try {
            String encode = URLEncoder.encode(String.format(TOKEN_SCOPE_FORMAT, new Object[]{this.hostname, this.deviceId}), IotHubSasTokenAuthenticationProvider.ENCODING_FORMAT_NAME);
            if (encode == null || encode.isEmpty()) {
                throw new IOException("Could not construct token scope");
            }
            Long valueOf = Long.valueOf((System.currentTimeMillis() / 1000) + j2);
            SecurityProviderTpm securityProviderTpm = this.securityProvider;
            byte[] signWithIdentity = securityProviderTpm.signWithIdentity(encode.concat("\n" + String.valueOf(valueOf)).getBytes());
            if (signWithIdentity == null || signWithIdentity.length == 0) {
                throw new IOException("Security provider could not sign data successfully");
            }
            return String.format(SASTOKEN_FORMAT, new Object[]{encode, URLEncoder.encode(new String(Base64.encodeBase64Local(signWithIdentity)), IotHubSasTokenAuthenticationProvider.ENCODING_FORMAT_NAME), valueOf});
        } catch (SecurityProviderException | UnsupportedEncodingException e2) {
            throw new IOException(e2);
        }
    }

    public boolean canRefreshToken() {
        return true;
    }

    public String getRenewedSasToken(boolean z, boolean z2) {
        if (shouldRefreshToken(z) || z2) {
            this.sasToken = new IotHubSasToken(this.hostname, this.deviceId, (String) null, generateSasTokenSignatureFromSecurityProvider(this.tokenValidSecs), this.moduleId, 0);
        }
        return this.sasToken.toString();
    }

    public SSLContext getSSLContext() {
        return this.iotHubSSLContext.getSSLContext();
    }

    public boolean isRenewalNecessary() {
        return false;
    }

    public void setIotHubTrustedCert(String str) {
        throw new UnsupportedOperationException("Cannot change the trusted certificate when using security provider for authentication.");
    }

    public void setPathToIotHubTrustedCert(String str) {
        throw new UnsupportedOperationException("Cannot change the trusted certificate when using security provider for authentication.");
    }
}
