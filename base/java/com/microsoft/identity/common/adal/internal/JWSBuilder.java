package com.microsoft.identity.common.adal.internal;

import android.util.Base64;
import com.google.gson.Gson;
import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.exception.ErrorStrings;
import com.microsoft.identity.common.internal.logging.Logger;
import e.a.a.a.a;
import e.c.c.v.c;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;

public class JWSBuilder {
    public static final String JWS_ALGORITHM = "SHA256withRSA";
    public static final String JWS_HEADER_ALG = "RS256";
    public static final long SECONDS_MS = 1000;
    public static final String TAG = "JWSBuilder";

    public final class Claims {
        @c("aud")
        public String mAudience;
        @c("iat")
        public long mIssueAt;
        @c("nonce")
        public String mNonce;

        public Claims() {
        }
    }

    public final class JwsHeader {
        @c("alg")
        public String mAlgorithm;
        @c("x5c")
        public String[] mCert;
        @c("typ")
        public String mType;

        public JwsHeader() {
        }
    }

    public static String sign(RSAPrivateKey rSAPrivateKey, byte[] bArr) {
        try {
            Signature instance = Signature.getInstance(JWS_ALGORITHM);
            instance.initSign(rSAPrivateKey);
            instance.update(bArr);
            return StringExtensions.encodeBase64URLSafeString(instance.sign());
        } catch (InvalidKeyException e2) {
            StringBuilder a = a.a("Invalid private RSA key: ");
            a.append(e2.getMessage());
            throw new ClientException(ErrorStrings.KEY_CHAIN_PRIVATE_KEY_EXCEPTION, a.toString(), e2);
        } catch (SignatureException e3) {
            StringBuilder a2 = a.a("RSA signature exception: ");
            a2.append(e3.getMessage());
            throw new ClientException(ErrorStrings.SIGNATURE_EXCEPTION, a2.toString(), e3);
        } catch (UnsupportedEncodingException e4) {
            throw new ClientException("unsupported_encoding", "Unsupported encoding", e4);
        } catch (NoSuchAlgorithmException e5) {
            StringBuilder a3 = a.a("Unsupported RSA algorithm: ");
            a3.append(e5.getMessage());
            throw new ClientException("no_such_algorithm", a3.toString(), e5);
        }
    }

    public String generateSignedJWT(String str, String str2, RSAPrivateKey rSAPrivateKey, RSAPublicKey rSAPublicKey, X509Certificate x509Certificate) {
        if (StringExtensions.isNullOrBlank(str)) {
            throw new IllegalArgumentException("nonce");
        } else if (StringExtensions.isNullOrBlank(str2)) {
            throw new IllegalArgumentException("audience");
        } else if (rSAPrivateKey == null) {
            throw new IllegalArgumentException("privateKey");
        } else if (rSAPublicKey != null) {
            Gson gson = new Gson();
            Claims claims = new Claims();
            String unused = claims.mNonce = str;
            String unused2 = claims.mAudience = str2;
            long unused3 = claims.mIssueAt = System.currentTimeMillis() / 1000;
            JwsHeader jwsHeader = new JwsHeader();
            String unused4 = jwsHeader.mAlgorithm = JWS_HEADER_ALG;
            String unused5 = jwsHeader.mType = "JWT";
            try {
                String[] unused6 = jwsHeader.mCert = new String[1];
                jwsHeader.mCert[0] = new String(Base64.encode(x509Certificate.getEncoded(), 2), "UTF-8");
                String a = gson.a((Object) jwsHeader);
                String a2 = gson.a((Object) claims);
                Logger.verbose("JWSBuilder:generateSignedJWT", "Generate client certificate challenge response JWS Header. ");
                String str3 = StringExtensions.encodeBase64URLSafeString(a.getBytes("UTF-8")) + CryptoConstants.ALIAS_SEPARATOR + StringExtensions.encodeBase64URLSafeString(a2.getBytes("UTF-8"));
                return a.a(str3, CryptoConstants.ALIAS_SEPARATOR, sign(rSAPrivateKey, str3.getBytes("UTF-8")));
            } catch (UnsupportedEncodingException e2) {
                throw new ClientException("unsupported_encoding", "Unsupported encoding", e2);
            } catch (CertificateEncodingException e3) {
                throw new ClientException(ErrorStrings.CERTIFICATE_ENCODING_ERROR, "Certificate encoding error", e3);
            }
        } else {
            throw new IllegalArgumentException("pubKey");
        }
    }
}
