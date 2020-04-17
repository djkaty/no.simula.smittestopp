package com.microsoft.identity.common.adal.internal;

import java.security.cert.X509Certificate;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.util.List;

public interface IDeviceCertificate {
    X509Certificate getCertificate();

    RSAPrivateKey getRSAPrivateKey();

    RSAPublicKey getRSAPublicKey();

    String getThumbPrint();

    boolean isValidIssuer(List<String> list);
}
