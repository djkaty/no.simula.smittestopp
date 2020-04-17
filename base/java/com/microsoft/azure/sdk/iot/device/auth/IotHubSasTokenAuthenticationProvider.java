package com.microsoft.azure.sdk.iot.device.auth;

import java.nio.charset.StandardCharsets;
import javax.net.ssl.SSLContext;

public abstract class IotHubSasTokenAuthenticationProvider extends IotHubAuthenticationProvider {
    public static final String ENCODING_FORMAT_NAME = StandardCharsets.UTF_8.displayName();
    public static final long MILLISECONDS_PER_SECOND = 1000;
    public static final long MINIMUM_EXPIRATION_TIME_OFFSET = 1;
    public IotHubSasToken sasToken;
    public int timeBufferPercentage = 85;
    public long tokenValidSecs = 3600;

    public IotHubSasTokenAuthenticationProvider(String str, String str2, String str3, String str4) {
        super(str, str2, str3, str4);
    }

    public abstract boolean canRefreshToken();

    public long getExpiryTimeInSeconds() {
        return (System.currentTimeMillis() / 1000) + this.tokenValidSecs + 1;
    }

    public int getMillisecondsBeforeProactiveRenewal() {
        return ((int) this.tokenValidSecs) * this.timeBufferPercentage;
    }

    public abstract String getRenewedSasToken(boolean z, boolean z2);

    public long getTokenValidSecs() {
        return this.tokenValidSecs;
    }

    public boolean isRenewalNecessary() {
        IotHubSasToken iotHubSasToken = this.sasToken;
        return iotHubSasToken != null && iotHubSasToken.isExpired();
    }

    public void setTokenValidSecs(long j2) {
        if (j2 >= 1) {
            this.tokenValidSecs = j2;
            return;
        }
        throw new IllegalArgumentException("tokens must live for more than 1 second");
    }

    public boolean shouldRefreshToken(boolean z) {
        if (this.sasToken.isExpired()) {
            return true;
        }
        if (!z) {
            return false;
        }
        if (((long) (getMillisecondsBeforeProactiveRenewal() / 100)) + (IotHubSasToken.getExpiryTimeFromToken(this.sasToken.toString()).longValue() - this.tokenValidSecs) < System.currentTimeMillis() / 1000) {
            return true;
        }
        return false;
    }

    public IotHubSasTokenAuthenticationProvider(String str, String str2, String str3, String str4, SSLContext sSLContext) {
        super(str, str2, str3, str4, sSLContext);
    }

    public IotHubSasTokenAuthenticationProvider(String str, String str2, String str3, String str4, long j2, int i2) {
        super(str, str2, str3, str4);
        setTokenValidSecs(j2);
        if (i2 < 1 || i2 > 100) {
            throw new IllegalArgumentException("Time buffer percentage must be a percentage between 1 and 100");
        }
        this.timeBufferPercentage = i2;
    }
}
