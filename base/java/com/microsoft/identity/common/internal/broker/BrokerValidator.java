package com.microsoft.identity.common.internal.broker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.text.TextUtils;
import com.microsoft.azure.sdk.iot.provisioning.security.SecurityProvider;
import com.microsoft.identity.common.adal.internal.AuthenticationSettings;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.exception.ErrorStrings;
import com.microsoft.identity.common.internal.logging.Logger;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertPathValidator;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.PKIXParameters;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class BrokerValidator {
    public static final String TAG = "BrokerValidator";
    public final String mCompanyPortalSignature = AuthenticationSettings.INSTANCE.getBrokerSignature();
    public final Context mContext;

    public BrokerValidator(Context context) {
        this.mContext = context;
    }

    public static String getBrokerRedirectUri(Context context, String str) {
        return PackageHelper.getBrokerRedirectUrl(str, new PackageHelper(context.getPackageManager()).getCurrentSignatureForPackage(str));
    }

    private X509Certificate getSelfSignedCert(List<X509Certificate> list) {
        int i2 = 0;
        X509Certificate x509Certificate = null;
        for (X509Certificate next : list) {
            if (next.getSubjectDN().equals(next.getIssuerDN())) {
                i2++;
                x509Certificate = next;
            }
        }
        if (i2 <= 1 && x509Certificate != null) {
            return x509Certificate;
        }
        throw new ClientException(ErrorStrings.BROKER_APP_VERIFICATION_FAILED, "Multiple self signed certs found or no self signed cert existed.");
    }

    public static boolean isValidBrokerRedirect(String str, Context context, String str2) {
        return !TextUtils.isEmpty(str) && str.equalsIgnoreCase(getBrokerRedirectUri(context, str2));
    }

    @SuppressLint({"PackageManagerGetSignatures"})
    private List<X509Certificate> readCertDataForBrokerApp(String str) {
        PackageInfo packageInfo = this.mContext.getPackageManager().getPackageInfo(str, 64);
        if (packageInfo != null) {
            Signature[] signatureArr = packageInfo.signatures;
            if (signatureArr == null || signatureArr.length == 0) {
                throw new ClientException(ErrorStrings.BROKER_APP_VERIFICATION_FAILED, "No signature associated with the broker package.");
            }
            ArrayList arrayList = new ArrayList(packageInfo.signatures.length);
            Signature[] signatureArr2 = packageInfo.signatures;
            int length = signatureArr2.length;
            int i2 = 0;
            while (i2 < length) {
                try {
                    arrayList.add((X509Certificate) CertificateFactory.getInstance("X509").generateCertificate(new ByteArrayInputStream(signatureArr2[i2].toByteArray())));
                    i2++;
                } catch (CertificateException unused) {
                    throw new ClientException(ErrorStrings.BROKER_APP_VERIFICATION_FAILED);
                }
            }
            return arrayList;
        }
        throw new ClientException(ErrorStrings.APP_PACKAGE_NAME_NOT_FOUND, "No broker package existed.");
    }

    private void verifyCertificateChain(List<X509Certificate> list) {
        PKIXParameters pKIXParameters = new PKIXParameters(Collections.singleton(new TrustAnchor(getSelfSignedCert(list), (byte[]) null)));
        pKIXParameters.setRevocationEnabled(false);
        CertPathValidator.getInstance("PKIX").validate(CertificateFactory.getInstance(SecurityProvider.DEFAULT_CERT_INSTANCE).generateCertPath(list), pKIXParameters);
    }

    /* JADX WARNING: Removed duplicated region for block: B:3:0x000f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.lang.String verifySignatureHash(java.util.List<java.security.cert.X509Certificate> r4) {
        /*
            r3 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.util.Iterator r4 = r4.iterator()
        L_0x0009:
            boolean r1 = r4.hasNext()
            if (r1 == 0) goto L_0x0044
            java.lang.Object r1 = r4.next()
            java.security.cert.X509Certificate r1 = (java.security.cert.X509Certificate) r1
            java.lang.String r2 = "SHA"
            java.security.MessageDigest r2 = java.security.MessageDigest.getInstance(r2)
            byte[] r1 = r1.getEncoded()
            r2.update(r1)
            byte[] r1 = r2.digest()
            r2 = 2
            java.lang.String r1 = android.util.Base64.encodeToString(r1, r2)
            r0.append(r1)
            r2 = 44
            r0.append(r2)
            java.lang.String r2 = r3.mCompanyPortalSignature
            boolean r2 = r2.equals(r1)
            if (r2 != 0) goto L_0x0043
            java.lang.String r2 = "ho040S3ffZkmxqtQrSwpTVOn9r0="
            boolean r2 = r2.equals(r1)
            if (r2 == 0) goto L_0x0009
        L_0x0043:
            return r1
        L_0x0044:
            com.microsoft.identity.common.exception.ClientException r4 = new com.microsoft.identity.common.exception.ClientException
            java.lang.String r1 = "SignatureHashes: "
            java.lang.StringBuilder r1 = e.a.a.a.a.a(r1)
            java.lang.String r0 = r0.toString()
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            java.lang.String r1 = "Calling app could not be verified"
            r4.<init>(r1, r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.identity.common.internal.broker.BrokerValidator.verifySignatureHash(java.util.List):java.lang.String");
    }

    public boolean verifySignature(String str) {
        try {
            return verifySignatureAndThrow(str) != null;
        } catch (ClientException e2) {
            Logger.error("BrokerValidator:verifySignature", e2.getErrorCode() + ": " + e2.getMessage(), e2);
            return false;
        }
    }

    public String verifySignatureAndThrow(String str) {
        try {
            List<X509Certificate> readCertDataForBrokerApp = readCertDataForBrokerApp(str);
            String verifySignatureHash = verifySignatureHash(readCertDataForBrokerApp);
            if (readCertDataForBrokerApp.size() > 1) {
                verifyCertificateChain(readCertDataForBrokerApp);
            }
            return verifySignatureHash;
        } catch (PackageManager.NameNotFoundException e2) {
            throw new ClientException(ErrorStrings.APP_PACKAGE_NAME_NOT_FOUND, e2.getMessage(), e2);
        } catch (NoSuchAlgorithmException e3) {
            throw new ClientException("no_such_algorithm", e3.getMessage(), e3);
        } catch (IOException | GeneralSecurityException e4) {
            throw new ClientException(ErrorStrings.BROKER_VERIFICATION_FAILED, e4.getMessage(), e4);
        }
    }
}
