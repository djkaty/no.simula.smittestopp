package com.microsoft.identity.common.internal.request;

import android.content.Context;
import com.microsoft.identity.common.internal.authorities.Authority;
import com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme;
import com.microsoft.identity.common.internal.dto.IAccountRecord;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2TokenCache;
import com.microsoft.identity.common.internal.ui.browser.BrowserDescriptor;
import e.c.c.v.a;
import java.util.List;
import java.util.Set;

public class OperationParameters {
    public static final String TAG = "OperationParameters";
    @a
    public String clientId;
    public IAccountRecord mAccount;
    public transient Context mAppContext;
    @a
    public String mApplicationName;
    @a
    public String mApplicationVersion;
    @a
    public AbstractAuthenticationScheme mAuthenticationScheme;
    @a
    public Authority mAuthority;
    public transient List<BrowserDescriptor> mBrowserSafeList;
    @a
    public String mClaimsRequestJson;
    @a
    public String mCorrelationId;
    @a
    public boolean mForceRefresh;
    public transient boolean mIsSharedDevice;
    @a
    public String mRequiredBrokerProtocolVersion;
    @a
    public Set<String> mScopes;
    @a
    public SdkType mSdkType = SdkType.MSAL;
    @a
    public String mSdkVersion;
    public transient OAuth2TokenCache mTokenCache;
    @a
    public String redirectUri;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        OperationParameters operationParameters = (OperationParameters) obj;
        if (this.mForceRefresh != operationParameters.mForceRefresh) {
            return false;
        }
        Set<String> set = this.mScopes;
        if (set == null ? operationParameters.mScopes != null : !set.equals(operationParameters.mScopes)) {
            return false;
        }
        IAccountRecord iAccountRecord = this.mAccount;
        if (iAccountRecord == null ? operationParameters.mAccount != null : !iAccountRecord.equals(operationParameters.mAccount)) {
            return false;
        }
        if (!this.clientId.equals(operationParameters.clientId)) {
            return false;
        }
        String str = this.redirectUri;
        if (str == null ? operationParameters.redirectUri != null : !str.equals(operationParameters.redirectUri)) {
            return false;
        }
        Authority authority = this.mAuthority;
        if (authority == null ? operationParameters.mAuthority != null : !authority.equals(operationParameters.mAuthority)) {
            return false;
        }
        String str2 = this.mClaimsRequestJson;
        if (str2 == null ? operationParameters.mClaimsRequestJson != null : !str2.equals(operationParameters.mClaimsRequestJson)) {
            return false;
        }
        AbstractAuthenticationScheme abstractAuthenticationScheme = this.mAuthenticationScheme;
        AbstractAuthenticationScheme abstractAuthenticationScheme2 = operationParameters.mAuthenticationScheme;
        if (abstractAuthenticationScheme != null) {
            return abstractAuthenticationScheme.equals(abstractAuthenticationScheme2);
        }
        if (abstractAuthenticationScheme2 == null) {
            return true;
        }
        return false;
    }

    public IAccountRecord getAccount() {
        return this.mAccount;
    }

    public Context getAppContext() {
        return this.mAppContext;
    }

    public String getApplicationName() {
        return this.mApplicationName;
    }

    public String getApplicationVersion() {
        return this.mApplicationVersion;
    }

    public AbstractAuthenticationScheme getAuthenticationScheme() {
        return this.mAuthenticationScheme;
    }

    public Authority getAuthority() {
        return this.mAuthority;
    }

    public List<BrowserDescriptor> getBrowserSafeList() {
        return this.mBrowserSafeList;
    }

    public String getClaimsRequestJson() {
        return this.mClaimsRequestJson;
    }

    public String getClientId() {
        return this.clientId;
    }

    public String getCorrelationId() {
        return this.mCorrelationId;
    }

    public boolean getForceRefresh() {
        return this.mForceRefresh;
    }

    public boolean getIsSharedDevice() {
        return this.mIsSharedDevice;
    }

    public String getRedirectUri() {
        return this.redirectUri;
    }

    public String getRequiredBrokerProtocolVersion() {
        return this.mRequiredBrokerProtocolVersion;
    }

    public Set<String> getScopes() {
        return this.mScopes;
    }

    public SdkType getSdkType() {
        return this.mSdkType;
    }

    public String getSdkVersion() {
        return this.mSdkVersion;
    }

    public OAuth2TokenCache getTokenCache() {
        return this.mTokenCache;
    }

    public int hashCode() {
        Set<String> set = this.mScopes;
        int i2 = 0;
        int hashCode = (set != null ? set.hashCode() : 0) * 31;
        IAccountRecord iAccountRecord = this.mAccount;
        int hashCode2 = (this.clientId.hashCode() + ((hashCode + (iAccountRecord != null ? iAccountRecord.hashCode() : 0)) * 31)) * 31;
        String str = this.redirectUri;
        int hashCode3 = (hashCode2 + (str != null ? str.hashCode() : 0)) * 31;
        Authority authority = this.mAuthority;
        int hashCode4 = (hashCode3 + (authority != null ? authority.hashCode() : 0)) * 31;
        String str2 = this.mClaimsRequestJson;
        int hashCode5 = (((hashCode4 + (str2 != null ? str2.hashCode() : 0)) * 31) + (this.mForceRefresh ? 1 : 0)) * 31;
        AbstractAuthenticationScheme abstractAuthenticationScheme = this.mAuthenticationScheme;
        if (abstractAuthenticationScheme != null) {
            i2 = abstractAuthenticationScheme.hashCode();
        }
        return hashCode5 + i2;
    }

    public void setAccount(IAccountRecord iAccountRecord) {
        this.mAccount = iAccountRecord;
    }

    public void setAppContext(Context context) {
        this.mAppContext = context;
    }

    public void setApplicationName(String str) {
        this.mApplicationName = str;
    }

    public void setApplicationVersion(String str) {
        this.mApplicationVersion = str;
    }

    public void setAuthenticationScheme(AbstractAuthenticationScheme abstractAuthenticationScheme) {
        this.mAuthenticationScheme = abstractAuthenticationScheme;
    }

    public void setAuthority(Authority authority) {
        this.mAuthority = authority;
    }

    public void setBrowserSafeList(List<BrowserDescriptor> list) {
        this.mBrowserSafeList = list;
    }

    public void setClaimsRequest(String str) {
        this.mClaimsRequestJson = str;
    }

    public void setClientId(String str) {
        this.clientId = str;
    }

    public void setCorrelationId(String str) {
        this.mCorrelationId = str;
    }

    public void setForceRefresh(boolean z) {
        this.mForceRefresh = z;
    }

    public void setIsSharedDevice(boolean z) {
        this.mIsSharedDevice = z;
    }

    public void setRedirectUri(String str) {
        this.redirectUri = str;
    }

    public void setRequiredBrokerProtocolVersion(String str) {
        this.mRequiredBrokerProtocolVersion = str;
    }

    public void setScopes(Set<String> set) {
        this.mScopes = set;
    }

    public void setSdkType(SdkType sdkType) {
        this.mSdkType = sdkType;
    }

    public void setSdkVersion(String str) {
        this.mSdkVersion = str;
    }

    public void setTokenCache(OAuth2TokenCache oAuth2TokenCache) {
        this.mTokenCache = oAuth2TokenCache;
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x004e  */
    /* JADX WARNING: Removed duplicated region for block: B:26:? A[ORIG_RETURN, RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0031  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void validate() {
        /*
            r5 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = TAG
            java.lang.String r2 = ":validate"
            java.lang.String r3 = "Validating operation params..."
            e.a.a.a.a.b(r0, r1, r2, r3)
            java.util.Set<java.lang.String> r0 = r5.mScopes
            if (r0 == 0) goto L_0x002a
            r1 = 0
            java.lang.String r2 = ""
            java.lang.String[] r1 = new java.lang.String[]{r2, r1}
            java.util.List r1 = java.util.Arrays.asList(r1)
            r0.removeAll(r1)
            java.util.Set<java.lang.String> r0 = r5.mScopes
            int r0 = r0.size()
            if (r0 <= 0) goto L_0x002a
            r0 = 1
            goto L_0x002b
        L_0x002a:
            r0 = 0
        L_0x002b:
            java.lang.String r1 = "acquireToken"
            java.lang.String r2 = "acquireTokenSilent"
            if (r0 != 0) goto L_0x004a
            boolean r0 = r5 instanceof com.microsoft.identity.common.internal.request.AcquireTokenSilentOperationParameters
            java.lang.String r3 = "scope is empty or null"
            java.lang.String r4 = "scopes"
            if (r0 != 0) goto L_0x0044
            boolean r0 = r5 instanceof com.microsoft.identity.common.internal.request.AcquireTokenOperationParameters
            if (r0 != 0) goto L_0x003e
            goto L_0x004a
        L_0x003e:
            com.microsoft.identity.common.exception.ArgumentException r0 = new com.microsoft.identity.common.exception.ArgumentException
            r0.<init>(r1, r4, r3)
            throw r0
        L_0x0044:
            com.microsoft.identity.common.exception.ArgumentException r0 = new com.microsoft.identity.common.exception.ArgumentException
            r0.<init>(r2, r4, r3)
            throw r0
        L_0x004a:
            com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme r0 = r5.mAuthenticationScheme
            if (r0 != 0) goto L_0x0067
            boolean r0 = r5 instanceof com.microsoft.identity.common.internal.request.AcquireTokenSilentOperationParameters
            java.lang.String r3 = "authentication scheme is undefined"
            java.lang.String r4 = "authentication_scheme"
            if (r0 != 0) goto L_0x0061
            boolean r0 = r5 instanceof com.microsoft.identity.common.internal.request.AcquireTokenOperationParameters
            if (r0 != 0) goto L_0x005b
            goto L_0x0067
        L_0x005b:
            com.microsoft.identity.common.exception.ArgumentException r0 = new com.microsoft.identity.common.exception.ArgumentException
            r0.<init>(r1, r4, r3)
            throw r0
        L_0x0061:
            com.microsoft.identity.common.exception.ArgumentException r0 = new com.microsoft.identity.common.exception.ArgumentException
            r0.<init>(r2, r4, r3)
            throw r0
        L_0x0067:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.identity.common.internal.request.OperationParameters.validate():void");
    }
}
