package com.microsoft.azure.sdk.iot.device.auth;

import java.net.URLEncoder;
import k.f.b;
import k.f.c;

public abstract class IotHubSasTokenWithRefreshAuthenticationProvider extends IotHubSasTokenAuthenticationProvider {
    public static final b log = c.a((Class<?>) IotHubSasTokenWithRefreshAuthenticationProvider.class);

    public IotHubSasTokenWithRefreshAuthenticationProvider(String str, String str2, String str3, String str4, String str5, int i2, int i3) {
        super(str, str2, str3, str4, (long) i2, i3);
        this.sasToken = new IotHubSasToken(str, str3, (String) null, str5, str4, getExpiryTimeInSeconds());
    }

    public static String buildAudience(String str, String str2, String str3) {
        if (str == null || str2 == null || str3 == null || str.isEmpty() || str2.isEmpty() || str3.isEmpty()) {
            throw new IllegalArgumentException("No argument can be null or empty");
        }
        return URLEncoder.encode(String.format("%s/devices/%s/modules/%s", new Object[]{str, str2, str3}), "UTF-8");
    }

    public String getRenewedSasToken(boolean z, boolean z2) {
        if (shouldRefreshToken(z) || z2) {
            log.b("Renewing the internal sas token");
            refreshSasToken();
        }
        return this.sasToken.toString();
    }

    public boolean isRenewalNecessary() {
        return false;
    }

    public abstract void refreshSasToken();
}
