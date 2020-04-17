package com.microsoft.azure.sdk.iot.device.hsm;

import com.microsoft.azure.sdk.iot.device.auth.IotHubSasToken;
import com.microsoft.azure.sdk.iot.device.auth.IotHubSasTokenWithRefreshAuthenticationProvider;
import com.microsoft.azure.sdk.iot.device.auth.SignatureProvider;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URISyntaxException;

public class IotHubSasTokenHsmAuthenticationProvider extends IotHubSasTokenWithRefreshAuthenticationProvider {
    public String generationId;
    public SignatureProvider signatureProvider;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public IotHubSasTokenHsmAuthenticationProvider(String str, String str2, String str3, String str4, String str5, String str6, SignatureProvider signatureProvider2, int i2, int i3) {
        super(str, str2, str3, str4, str6, i2, i3);
        this.signatureProvider = signatureProvider2;
        this.generationId = str5;
    }

    public static IotHubSasTokenHsmAuthenticationProvider create(SignatureProvider signatureProvider2, String str, String str2, String str3, String str4, String str5, int i2, int i3) {
        if (signatureProvider2 != null) {
            int i4 = i2;
            return new IotHubSasTokenHsmAuthenticationProvider(str3, str4, str, str2, str5, createNewSasToken(str3, str4, str, str2, str5, signatureProvider2, (long) i4).getSasToken(), signatureProvider2, i4, i3);
        }
        throw new IllegalArgumentException("signatureProvider cannot be null");
    }

    public static IotHubSasToken createNewSasToken(String str, String str2, String str3, String str4, String str5, SignatureProvider signatureProvider2, long j2) {
        String str6 = str4;
        String str7 = str;
        String str8 = str3;
        try {
            String buildAudience = IotHubSasTokenWithRefreshAuthenticationProvider.buildAudience(str, str3, str4);
            long currentTimeMillis = (System.currentTimeMillis() / 1000) + j2;
            String str9 = str5;
            SignatureProvider signatureProvider3 = signatureProvider2;
            return new IotHubSasToken((str2 == null || str2.isEmpty()) ? str7 : str2, str3, (String) null, IotHubSasToken.buildSharedAccessToken(buildAudience, signatureProvider2.sign(str4, buildAudience + "\n" + currentTimeMillis, str5), currentTimeMillis), str4, currentTimeMillis);
        } catch (HsmException | UnsupportedEncodingException | URISyntaxException e2) {
            throw new IOException(e2);
        }
    }

    public boolean canRefreshToken() {
        return true;
    }

    public void refreshSasToken() {
        this.sasToken = createNewSasToken(this.hostname, this.gatewayHostname, this.deviceId, this.moduleId, this.generationId, this.signatureProvider, this.tokenValidSecs);
    }
}
