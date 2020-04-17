package com.microsoft.identity.common.internal.providers.oauth2;

import android.util.Base64;
import e.c.c.v.c;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

public final class PkceChallenge implements Serializable {
    public static final String CHALLENGE_SHA256 = "S256";
    public static final int CODE_VERIFIER_BYTE_SIZE = 32;
    public static final String DIGEST_ALGORITHM = "SHA-256";
    public static final int ENCODE_MASK = 11;
    public static final String ISO_8859_1 = "ISO_8859_1";
    public static final long serialVersionUID = 8549806628675994235L;
    @c("code_challenge")
    public final String mCodeChallenge;
    @c("code_challenge_method")
    public final String mCodeChallengeMethod = CHALLENGE_SHA256;
    public final transient String mCodeVerifier;

    public PkceChallenge(String str, String str2) {
        this.mCodeVerifier = str;
        this.mCodeChallenge = str2;
    }

    public static String generateCodeVerifier() {
        byte[] bArr = new byte[32];
        new SecureRandom().nextBytes(bArr);
        return Base64.encodeToString(bArr, 11);
    }

    public static String generateCodeVerifierChallenge(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-256");
            instance.update(str.getBytes(ISO_8859_1));
            return Base64.encodeToString(instance.digest(), 11);
        } catch (NoSuchAlgorithmException e2) {
            throw new IllegalStateException("Failed to generate the code verifier challenge", e2);
        } catch (UnsupportedEncodingException e3) {
            throw new IllegalStateException("Every implementation of the Java platform is required to support ISO-8859-1.Consult the release documentation for your implementation.", e3);
        }
    }

    public static PkceChallenge newPkceChallenge() {
        String generateCodeVerifier = generateCodeVerifier();
        return new PkceChallenge(generateCodeVerifier, generateCodeVerifierChallenge(generateCodeVerifier));
    }

    public String getCodeChallenge() {
        return this.mCodeChallenge;
    }

    public String getCodeChallengeMethod() {
        return CHALLENGE_SHA256;
    }

    public String getCodeVerifier() {
        return this.mCodeVerifier;
    }
}
