package com.microsoft.azure.sdk.iot.device.edge;

import com.microsoft.azure.sdk.iot.device.hsm.HttpsHsmClient;

public class HttpsHsmTrustBundleProvider implements TrustBundleProvider {
    public String getTrustBundleCerts(String str, String str2) {
        return new HttpsHsmClient(str).getTrustBundle(str2).getCertificates();
    }
}
