package com.microsoft.azure.sdk.iot.device.auth;

import javax.net.ssl.SSLContext;

public class IotHubSasTokenSoftwareAuthenticationProvider extends IotHubSasTokenAuthenticationProvider {
    public String deviceKey;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public IotHubSasTokenSoftwareAuthenticationProvider(String str, String str2, String str3, String str4, String str5, String str6, int i2, int i3) {
        super(str, str2, str3, str4, (long) i2, i3);
        this.deviceKey = str5;
        this.sslContextNeedsUpdate = true;
        this.sasToken = new IotHubSasToken(str, str3, str5, str6, str4, getExpiryTimeInSeconds());
    }

    public boolean canRefreshToken() {
        return this.deviceKey != null;
    }

    public String getRenewedSasToken(boolean z, boolean z2) {
        String str;
        if ((shouldRefreshToken(z) || z2) && (str = this.deviceKey) != null) {
            this.sasToken = new IotHubSasToken(this.hostname, this.deviceId, str, (String) null, this.moduleId, getExpiryTimeInSeconds());
        }
        return this.sasToken.toString();
    }

    public boolean isRenewalNecessary() {
        return super.isRenewalNecessary() && this.deviceKey == null;
    }

    public void setTokenValidSecs(long j2) {
        super.setTokenValidSecs(j2);
        String str = this.deviceKey;
        if (str != null) {
            this.sasToken = new IotHubSasToken(this.hostname, this.deviceId, str, (String) null, this.moduleId, getExpiryTimeInSeconds());
        }
    }

    public IotHubSasTokenSoftwareAuthenticationProvider(String str, String str2, String str3, String str4, String str5, String str6) {
        super(str, str2, str3, str4);
        this.deviceKey = str5;
        this.sslContextNeedsUpdate = true;
        this.sasToken = new IotHubSasToken(str, str3, str5, str6, str4, getExpiryTimeInSeconds());
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public IotHubSasTokenSoftwareAuthenticationProvider(String str, String str2, String str3, String str4, String str5, String str6, SSLContext sSLContext) {
        super(str, str2, str3, str4, sSLContext);
        this.deviceKey = str5;
        this.sasToken = new IotHubSasToken(str, str3, str5, str6, str4, getExpiryTimeInSeconds());
    }
}
