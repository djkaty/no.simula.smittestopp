package com.microsoft.identity.common.internal.ui.browser;

import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.util.Base64;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashSet;
import java.util.Set;

public class Browser {
    public static final String DIGEST_SHA_512 = "SHA-512";
    public static final int PRIME_HASH_FACTOR = 92821;
    public final Boolean mIsCustomTabsServiceSupported;
    public final String mPackageName;
    public final Set<String> mSignatureHashes;
    public final String mVersion;

    public Browser(PackageInfo packageInfo) {
        this(packageInfo.packageName, generateSignatureHashes(packageInfo.signatures), packageInfo.versionName, false);
    }

    public static Set<String> generateSignatureHashes(Signature[] signatureArr) {
        HashSet hashSet = new HashSet();
        int length = signatureArr.length;
        int i2 = 0;
        while (i2 < length) {
            try {
                hashSet.add(Base64.encodeToString(MessageDigest.getInstance(DIGEST_SHA_512).digest(signatureArr[i2].toByteArray()), 10));
                i2++;
            } catch (NoSuchAlgorithmException unused) {
                throw new IllegalStateException("Platform does not supportSHA-512 hashing");
            }
        }
        return hashSet;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof Browser)) {
            return false;
        }
        Browser browser = (Browser) obj;
        if (!this.mPackageName.equals(browser.getPackageName()) || !this.mVersion.equals(browser.getVersion()) || !this.mSignatureHashes.equals(browser.getSignatureHashes())) {
            return false;
        }
        return true;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public Set<String> getSignatureHashes() {
        return this.mSignatureHashes;
    }

    public String getVersion() {
        return this.mVersion;
    }

    public int hashCode() {
        int hashCode = ((this.mVersion.hashCode() + (this.mPackageName.hashCode() * PRIME_HASH_FACTOR)) * PRIME_HASH_FACTOR) + (this.mIsCustomTabsServiceSupported.booleanValue() ? 1 : 0);
        for (String hashCode2 : this.mSignatureHashes) {
            hashCode = (hashCode * PRIME_HASH_FACTOR) + hashCode2.hashCode();
        }
        return hashCode;
    }

    public boolean isCustomTabsServiceSupported() {
        return this.mIsCustomTabsServiceSupported.booleanValue();
    }

    public Browser(PackageInfo packageInfo, Boolean bool) {
        this(packageInfo.packageName, generateSignatureHashes(packageInfo.signatures), packageInfo.versionName, bool.booleanValue());
    }

    public Browser(String str, Set<String> set, String str2, boolean z) {
        this.mPackageName = str;
        this.mSignatureHashes = set;
        this.mVersion = str2;
        this.mIsCustomTabsServiceSupported = Boolean.valueOf(z);
    }
}
