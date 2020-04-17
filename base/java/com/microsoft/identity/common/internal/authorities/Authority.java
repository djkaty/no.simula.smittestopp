package com.microsoft.identity.common.internal.authorities;

import android.net.Uri;
import android.text.TextUtils;
import com.microsoft.identity.common.exception.ClientException;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectory;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2Strategy;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2StrategyParameters;
import e.a.a.a.a;
import e.c.c.v.c;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class Authority {
    public static final String ADFS_PATH_SEGMENT = "adfs";
    public static final String B2C = "B2C";
    public static final String B2C_PATH_SEGMENT = "tfp";
    public static final String TAG = "Authority";
    public static List<Authority> knownAuthorities = new ArrayList();
    public static Object sLock = new Object();
    @c("type")
    public String mAuthorityTypeString;
    @c("authority_url")
    public String mAuthorityUrl;
    @c("default")
    public boolean mIsDefault = false;
    public boolean mKnownToDeveloper = false;
    public boolean mKnownToMicrosoft = false;

    public static class KnownAuthorityResult {
        public ClientException mClientException;
        public boolean mKnown;

        public KnownAuthorityResult(boolean z, ClientException clientException) {
            this.mKnown = z;
            this.mClientException = clientException;
        }

        public ClientException getClientException() {
            return this.mClientException;
        }

        public boolean getKnown() {
            return this.mKnown;
        }
    }

    public static void addKnownAuthorities(List<Authority> list) {
        synchronized (sLock) {
            knownAuthorities.addAll(list);
        }
    }

    public static boolean authorityIsKnownFromConfiguration(String str) {
        return getEquivalentConfiguredAuthority(str) != null;
    }

    public static Authority createAadAuthority(Uri uri, List<String> list) {
        return new AzureActiveDirectoryAuthority(AzureActiveDirectoryAudience.getAzureActiveDirectoryAudience(uri.getScheme() + "://" + uri.getHost(), list.get(0)));
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0060, code lost:
        if (r3.equals("adfs") == false) goto L_0x006d;
     */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0072  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00ab  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.microsoft.identity.common.internal.authorities.Authority getAuthorityFromAuthorityUrl(java.lang.String r8) {
        /*
            java.net.URL r0 = new java.net.URL     // Catch:{ MalformedURLException -> 0x00c7 }
            r0.<init>(r8)     // Catch:{ MalformedURLException -> 0x00c7 }
            java.lang.String r0 = r0.toString()
            android.net.Uri r0 = android.net.Uri.parse(r0)
            java.util.List r1 = r0.getPathSegments()
            int r2 = r1.size()
            if (r2 != 0) goto L_0x001d
            com.microsoft.identity.common.internal.authorities.UnknownAuthority r8 = new com.microsoft.identity.common.internal.authorities.UnknownAuthority
            r8.<init>()
            return r8
        L_0x001d:
            boolean r2 = authorityIsKnownFromConfiguration(r8)
            if (r2 == 0) goto L_0x003e
            com.microsoft.identity.common.internal.authorities.Authority r2 = getEquivalentConfiguredAuthority(r8)
            java.lang.String r2 = r2.mAuthorityTypeString
            java.lang.String r3 = "B2C"
            boolean r2 = r3.equalsIgnoreCase(r2)
            if (r2 == 0) goto L_0x0038
            com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryB2CAuthority r0 = new com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryB2CAuthority
            r0.<init>(r8)
            goto L_0x00c6
        L_0x0038:
            com.microsoft.identity.common.internal.authorities.Authority r0 = createAadAuthority(r0, r1)
            goto L_0x00c6
        L_0x003e:
            r2 = 0
            java.lang.Object r3 = r1.get(r2)
            java.lang.String r3 = (java.lang.String) r3
            java.lang.String r3 = r3.toLowerCase()
            r4 = -1
            int r5 = r3.hashCode()
            r6 = 114750(0x1c03e, float:1.60799E-40)
            r7 = 1
            if (r5 == r6) goto L_0x0063
            r6 = 2989104(0x2d9c30, float:4.188627E-39)
            if (r5 == r6) goto L_0x005a
            goto L_0x006d
        L_0x005a:
            java.lang.String r5 = "adfs"
            boolean r3 = r3.equals(r5)
            if (r3 == 0) goto L_0x006d
            goto L_0x006e
        L_0x0063:
            java.lang.String r2 = "tfp"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L_0x006d
            r2 = 1
            goto L_0x006e
        L_0x006d:
            r2 = -1
        L_0x006e:
            java.lang.String r3 = ":getAuthorityFromAuthorityUrl"
            if (r2 == 0) goto L_0x00ab
            if (r2 == r7) goto L_0x008f
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r2 = TAG
            r8.append(r2)
            r8.append(r3)
            java.lang.String r8 = r8.toString()
            java.lang.String r2 = "Authority type default: AAD"
            com.microsoft.identity.common.internal.logging.Logger.verbose(r8, r2)
            com.microsoft.identity.common.internal.authorities.Authority r0 = createAadAuthority(r0, r1)
            goto L_0x00c6
        L_0x008f:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = TAG
            r0.append(r1)
            r0.append(r3)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "Authority type is B2C"
            com.microsoft.identity.common.internal.logging.Logger.verbose(r0, r1)
            com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryB2CAuthority r0 = new com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryB2CAuthority
            r0.<init>(r8)
            goto L_0x00c6
        L_0x00ab:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = TAG
            r0.append(r1)
            r0.append(r3)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "Authority type is ADFS"
            com.microsoft.identity.common.internal.logging.Logger.verbose(r0, r1)
            com.microsoft.identity.common.internal.authorities.ActiveDirectoryFederationServicesAuthority r0 = new com.microsoft.identity.common.internal.authorities.ActiveDirectoryFederationServicesAuthority
            r0.<init>(r8)
        L_0x00c6:
            return r0
        L_0x00c7:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "Invalid authority URL"
            r8.<init>(r0)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.identity.common.internal.authorities.Authority.getAuthorityFromAuthorityUrl(java.lang.String):com.microsoft.identity.common.internal.authorities.Authority");
    }

    public static Authority getEquivalentConfiguredAuthority(String str) {
        try {
            String authority = new URL(str).getAuthority();
            for (Authority next : knownAuthorities) {
                if (!TextUtils.isEmpty(next.mAuthorityUrl) && authority.equalsIgnoreCase(new URL(next.mAuthorityUrl).getAuthority())) {
                    return next;
                }
            }
            return null;
        } catch (MalformedURLException e2) {
            Logger.errorPII(TAG, "Error parsing authority", e2);
            return null;
        }
    }

    public static KnownAuthorityResult getKnownAuthorityResult(Authority authority) {
        ClientException clientException;
        a.b(new StringBuilder(), TAG, ":getKnownAuthorityResult", "Getting known authority result...");
        try {
            Logger.verbose(TAG + ":getKnownAuthorityResult", "Performing cloud discovery");
            performCloudDiscovery();
            clientException = null;
        } catch (IOException e2) {
            clientException = new ClientException("io_error", "Unable to perform cloud discovery", e2);
        }
        boolean z = false;
        if (clientException == null) {
            if (!isKnownAuthority(authority)) {
                clientException = new ClientException("unknown_authority", "Provided authority is not known.  MSAL will only make requests to known authorities");
            } else {
                z = true;
            }
        }
        return new KnownAuthorityResult(z, clientException);
    }

    public static boolean isKnownAuthority(Authority authority) {
        boolean z;
        boolean z2 = false;
        if (authority == null) {
            a.c(new StringBuilder(), TAG, ":isKnownAuthority", "Authority is null");
            return false;
        }
        if (!authority.getKnownToDeveloper()) {
            Iterator<Authority> it = knownAuthorities.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                Authority next = it.next();
                if (next.mAuthorityUrl != null && authority.getAuthorityURL() != null && authority.getAuthorityURL().getAuthority() != null && next.mAuthorityUrl.toLowerCase().contains(authority.getAuthorityURL().getAuthority().toLowerCase())) {
                    break;
                }
            }
        }
        z = true;
        boolean hasCloudHost = AzureActiveDirectory.hasCloudHost(authority.getAuthorityURL());
        if (z || hasCloudHost) {
            z2 = true;
        }
        String a = a.a(new StringBuilder(), TAG, ":isKnownAuthority");
        Logger.verbose(a, "Authority is known to developer? [" + z + "]");
        String a2 = a.a(new StringBuilder(), TAG, ":isKnownAuthority");
        Logger.verbose(a2, "Authority is known to Microsoft? [" + hasCloudHost + "]");
        return z2;
    }

    public static void performCloudDiscovery() {
        a.b(new StringBuilder(), TAG, ":performCloudDiscovery", "Performing cloud discovery...");
        synchronized (sLock) {
            if (!AzureActiveDirectory.isInitialized()) {
                AzureActiveDirectory.performCloudDiscovery();
            }
        }
    }

    public abstract OAuth2Strategy createOAuth2Strategy(OAuth2StrategyParameters oAuth2StrategyParameters);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Authority)) {
            return false;
        }
        Authority authority = (Authority) obj;
        if (!this.mAuthorityTypeString.equals(authority.mAuthorityTypeString)) {
            return false;
        }
        return getAuthorityURL().equals(authority.getAuthorityURL());
    }

    public String getAuthorityTypeString() {
        return this.mAuthorityTypeString;
    }

    public abstract URL getAuthorityURL();

    public abstract Uri getAuthorityUri();

    public boolean getDefault() {
        return this.mIsDefault;
    }

    public boolean getKnownToDeveloper() {
        return this.mKnownToDeveloper;
    }

    public boolean getKnownToMicrosoft() {
        return this.mKnownToMicrosoft;
    }

    public int hashCode() {
        return getAuthorityURL().hashCode() + (this.mAuthorityTypeString.hashCode() * 31);
    }

    public void setDefault(Boolean bool) {
        this.mIsDefault = bool.booleanValue();
    }
}
