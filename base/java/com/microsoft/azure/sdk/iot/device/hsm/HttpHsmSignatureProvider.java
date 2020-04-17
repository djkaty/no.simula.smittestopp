package com.microsoft.azure.sdk.iot.device.hsm;

import com.microsoft.azure.sdk.iot.device.auth.SignatureProvider;
import com.microsoft.azure.sdk.iot.device.hsm.parser.SignRequest;
import java.net.URLEncoder;
import javax.crypto.Mac;
import k.f.b;
import k.f.c;

public class HttpHsmSignatureProvider implements SignatureProvider {
    public static final String DEFAULT_KEY_ID = "primary";
    public static final String ENCODING_CHARSET = "UTF-8";
    public static final String MAC = "HmacSHA256";
    public static final b log = c.a((Class<?>) HttpHsmSignatureProvider.class);
    public String apiVersion;
    public Mac defaultSignRequestAlgo = Mac.getInstance("HmacSHA256");
    public HttpsHsmClient httpClient;

    public HttpHsmSignatureProvider(String str, String str2) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("provider uri cannot be null or empty");
        } else if (str2 == null || str2.isEmpty()) {
            throw new IllegalArgumentException("apiVersion cannot be null or empty");
        } else {
            log.d("Creating HttpHsmSignatureProvider with providerUri {}", (Object) str);
            this.httpClient = new HttpsHsmClient(str);
            this.apiVersion = str2;
        }
    }

    public String sign(String str, String str2, String str3) {
        if (str2 == null || str2.isEmpty()) {
            throw new IllegalArgumentException("Data cannot be null or empty");
        }
        SignRequest signRequest = new SignRequest();
        signRequest.setAlgo(this.defaultSignRequestAlgo);
        signRequest.setData(str2.getBytes("UTF-8"));
        signRequest.setKeyId(DEFAULT_KEY_ID);
        return URLEncoder.encode(this.httpClient.sign(this.apiVersion, str, signRequest, str3).getDigest(), "UTF-8");
    }
}
