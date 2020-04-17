package com.microsoft.identity.common.internal.providers.microsoft;

import com.microsoft.identity.common.internal.providers.keys.CertificateCredential;
import com.microsoft.identity.common.internal.providers.microsoft.microsoftsts.MicrosoftStsIdToken;
import com.microsoft.identity.common.internal.providers.oauth2.ClientAssertion;
import e.e.a.a;
import e.e.a.h;
import e.e.a.l;
import e.e.a.m;
import e.e.a.u.d;
import e.e.a.v.b;
import e.e.a.v.c;
import e.e.b.c;
import e.e.b.e;
import java.net.URI;
import java.security.MessageDigest;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public class MicrosoftClientAssertion extends ClientAssertion {
    public static final String CLIENT_ASSERTION_TYPE = "urn:ietf:params:oauth:client-assertion-type:jwt-bearer";
    public static final int ONE_MINUTE_MILLIS = 60000;
    public static final String THUMBPRINT_ALGORITHM = "SHA-1";

    public MicrosoftClientAssertion(String str, CertificateCredential certificateCredential) {
        if (certificateCredential != null) {
            setClientAssertion(createSignedJwt(certificateCredential.getClientId(), str, certificateCredential).b());
            setClientAssertionType("urn:ietf:params:oauth:client-assertion-type:jwt-bearer");
            return;
        }
        throw new IllegalArgumentException("certificate credential is null");
    }

    private c createSHA1ThumbPrint(X509Certificate x509Certificate) {
        MessageDigest instance = MessageDigest.getInstance(THUMBPRINT_ALGORITHM);
        instance.reset();
        instance.update(x509Certificate.getEncoded());
        return new c(b.a(instance.digest(), false));
    }

    private e createSignedJwt(String str, String str2, CertificateCredential certificateCredential) {
        String str3 = str;
        long currentTimeMillis = System.currentTimeMillis();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (str2 == null) {
            linkedHashMap.put(MicrosoftIdToken.AUDIENCE, (Object) null);
        } else {
            linkedHashMap.put(MicrosoftIdToken.AUDIENCE, Collections.singletonList(str2));
        }
        linkedHashMap.put(MicrosoftIdToken.ISSUER, str3);
        linkedHashMap.put(MicrosoftIdToken.NOT_BEFORE, new Date(currentTimeMillis));
        linkedHashMap.put(MicrosoftStsIdToken.EXPIRATION_TIME, new Date(currentTimeMillis + 60000));
        linkedHashMap.put("sub", str3);
        e.e.b.c cVar = new e.e.b.c(linkedHashMap, (c.a) null);
        try {
            l lVar = l.C;
            if (!lVar.x.equals(a.y.x)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(new e.e.a.v.a(b.a(certificateCredential.getPublicCertificate().getEncoded(), false)));
                try {
                    e eVar = new e(new m(lVar, (h) null, (String) null, (Set<String>) null, (URI) null, (d) null, (URI) null, createSHA1ThumbPrint(certificateCredential.getPublicCertificate()), (e.e.a.v.c) null, arrayList, (String) null, (Map<String, Object>) null, (e.e.a.v.c) null), cVar);
                    eVar.b(new e.e.a.s.a(certificateCredential.getPrivateKey()));
                    return eVar;
                } catch (Exception e2) {
                    e = e2;
                    throw new RuntimeException("exception in createSignedJwt", e);
                }
            } else {
                throw new IllegalArgumentException("The JWS algorithm \"alg\" cannot be \"none\"");
            }
        } catch (Exception e3) {
            e = e3;
            throw new RuntimeException("exception in createSignedJwt", e);
        }
    }
}
