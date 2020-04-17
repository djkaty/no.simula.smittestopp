package com.microsoft.identity.common.adal.internal.cache;

import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import e.a.a.a.a;
import java.io.Serializable;
import java.util.Locale;

public class CacheKey implements Serializable {
    public static final String FRT_ENTRY_PREFIX = "foci-";
    public static final long serialVersionUID = 8067972995583126404L;
    public String mAuthority;
    public String mClientId;
    public String mFamilyClientId;
    public boolean mIsMultipleResourceRefreshToken;
    public String mResource;
    public String mUserId;

    public static String createCacheKey(String str, String str2, String str3, boolean z, String str4, String str5) {
        if (str == null) {
            throw new IllegalArgumentException("authority");
        } else if (str3 == null && str5 == null) {
            throw new IllegalArgumentException("both clientId and familyClientId are null");
        } else {
            CacheKey cacheKey = new CacheKey();
            if (!z) {
                if (str2 != null) {
                    cacheKey.mResource = str2;
                } else {
                    throw new IllegalArgumentException("resource");
                }
            }
            String lowerCase = str.toLowerCase(Locale.US);
            cacheKey.mAuthority = lowerCase;
            if (lowerCase.endsWith("/")) {
                String str6 = cacheKey.mAuthority;
                cacheKey.mAuthority = (String) str6.subSequence(0, str6.length() - 1);
            }
            if (str3 != null) {
                cacheKey.mClientId = str3.toLowerCase(Locale.US);
            }
            if (str5 != null) {
                cacheKey.mFamilyClientId = a.b("foci-", str5).toLowerCase(Locale.US);
            }
            cacheKey.mIsMultipleResourceRefreshToken = z;
            if (!StringExtensions.isNullOrBlank(str4)) {
                cacheKey.mUserId = str4.toLowerCase(Locale.US);
            }
            return cacheKey.toString();
        }
    }

    public static String createCacheKeyForFRT(String str, String str2, String str3) {
        return createCacheKey(str, (String) null, (String) null, true, str3, str2);
    }

    public static String createCacheKeyForMRRT(String str, String str2, String str3) {
        return createCacheKey(str, (String) null, str2, true, str3, (String) null);
    }

    public static String createCacheKeyForRTEntry(String str, String str2, String str3, String str4) {
        return createCacheKey(str, str2, str3, false, str4, (String) null);
    }

    public String getAuthority() {
        return this.mAuthority;
    }

    public String getClientId() {
        return this.mClientId;
    }

    public boolean getIsMultipleResourceRefreshToken() {
        return this.mIsMultipleResourceRefreshToken;
    }

    public String getResource() {
        return this.mResource;
    }

    public String getUserId() {
        return this.mUserId;
    }

    public String toString() {
        String str = "y";
        if (StringExtensions.isNullOrBlank(this.mFamilyClientId)) {
            Locale locale = Locale.US;
            Object[] objArr = new Object[5];
            objArr[0] = this.mAuthority;
            objArr[1] = this.mResource;
            objArr[2] = this.mClientId;
            if (!this.mIsMultipleResourceRefreshToken) {
                str = "n";
            }
            objArr[3] = str;
            objArr[4] = this.mUserId;
            return String.format(locale, "%s$%s$%s$%s$%s", objArr);
        }
        Locale locale2 = Locale.US;
        Object[] objArr2 = new Object[6];
        objArr2[0] = this.mAuthority;
        objArr2[1] = this.mResource;
        objArr2[2] = this.mClientId;
        if (!this.mIsMultipleResourceRefreshToken) {
            str = "n";
        }
        objArr2[3] = str;
        objArr2[4] = this.mUserId;
        objArr2[5] = this.mFamilyClientId;
        return String.format(locale2, "%s$%s$%s$%s$%s$%s", objArr2);
    }
}
