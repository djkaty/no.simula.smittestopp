package com.microsoft.identity.common.internal.cache;

import com.microsoft.identity.common.adal.internal.ADALUserInfo;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectoryAccessToken;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectoryAccount;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectoryAuthorizationRequest;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectoryOAuth2Strategy;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectoryRefreshToken;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectoryTokenResponse;
import com.microsoft.identity.common.internal.util.DateUtilities;
import java.util.Date;

public class ADALTokenCacheItem implements ITokenCacheItem {
    public String mAccessToken;
    public String mAuthority;
    public String mClientId;
    public Date mExpiresOn;
    public Date mExtendedExpiresOn;
    public String mFamilyClientId;
    public boolean mIsMultiResourceRefreshToken;
    public String mRawIdToken;
    public String mRefreshtoken;
    public String mResource;
    public String mSpeRing;
    public String mTenantId;
    public ADALUserInfo mUserInfo;

    public ADALTokenCacheItem() {
    }

    public static ADALTokenCacheItem getAsFRTTokenCacheItem(ADALTokenCacheItem aDALTokenCacheItem) {
        ADALTokenCacheItem aDALTokenCacheItem2 = new ADALTokenCacheItem(aDALTokenCacheItem);
        aDALTokenCacheItem2.setResource((String) null);
        aDALTokenCacheItem2.setAccessToken((String) null);
        aDALTokenCacheItem2.setClientId((String) null);
        return aDALTokenCacheItem2;
    }

    public static ADALTokenCacheItem getAsMRRTTokenCacheItem(ADALTokenCacheItem aDALTokenCacheItem) {
        ADALTokenCacheItem aDALTokenCacheItem2 = new ADALTokenCacheItem(aDALTokenCacheItem);
        aDALTokenCacheItem2.setResource((String) null);
        aDALTokenCacheItem2.setAccessToken((String) null);
        return aDALTokenCacheItem2;
    }

    public String getAccessToken() {
        return this.mAccessToken;
    }

    public String getAuthority() {
        return this.mAuthority;
    }

    public String getClientId() {
        return this.mClientId;
    }

    public Date getExpiresOn() {
        return DateUtilities.createCopy(this.mExpiresOn);
    }

    public final Date getExtendedExpiresOn() {
        return DateUtilities.createCopy(this.mExtendedExpiresOn);
    }

    public final String getFamilyClientId() {
        return this.mFamilyClientId;
    }

    public boolean getIsMultiResourceRefreshToken() {
        return this.mIsMultiResourceRefreshToken;
    }

    public String getRawIdToken() {
        return this.mRawIdToken;
    }

    public String getRefreshToken() {
        return this.mRefreshtoken;
    }

    public String getResource() {
        return this.mResource;
    }

    public String getSpeRing() {
        return this.mSpeRing;
    }

    public String getTenantId() {
        return this.mTenantId;
    }

    public ADALUserInfo getUserInfo() {
        return this.mUserInfo;
    }

    public void setAccessToken(String str) {
        this.mAccessToken = str;
    }

    public void setAuthority(String str) {
        this.mAuthority = str;
    }

    public void setClientId(String str) {
        this.mClientId = str;
    }

    public void setExpiresOn(Date date) {
        this.mExpiresOn = DateUtilities.createCopy(date);
    }

    public final void setExtendedExpiresOn(Date date) {
        this.mExtendedExpiresOn = DateUtilities.createCopy(date);
    }

    public final void setFamilyClientId(String str) {
        this.mFamilyClientId = str;
    }

    public void setIsMultiResourceRefreshToken(boolean z) {
        this.mIsMultiResourceRefreshToken = z;
    }

    public void setRawIdToken(String str) {
        this.mRawIdToken = str;
    }

    public void setRefreshToken(String str) {
        this.mRefreshtoken = str;
    }

    public void setResource(String str) {
        this.mResource = str;
    }

    public void setSpeRing(String str) {
        this.mSpeRing = str;
    }

    public void setTenantId(String str) {
        this.mTenantId = str;
    }

    public void setUserInfo(ADALUserInfo aDALUserInfo) {
        this.mUserInfo = aDALUserInfo;
    }

    public ADALTokenCacheItem(ADALTokenCacheItem aDALTokenCacheItem) {
        this.mAuthority = aDALTokenCacheItem.getAuthority();
        this.mResource = aDALTokenCacheItem.getResource();
        this.mClientId = aDALTokenCacheItem.getClientId();
        this.mAccessToken = aDALTokenCacheItem.getAccessToken();
        this.mRefreshtoken = aDALTokenCacheItem.getRefreshToken();
        this.mRawIdToken = aDALTokenCacheItem.getRawIdToken();
        this.mUserInfo = aDALTokenCacheItem.getUserInfo();
        this.mExpiresOn = aDALTokenCacheItem.getExpiresOn();
        this.mIsMultiResourceRefreshToken = aDALTokenCacheItem.getIsMultiResourceRefreshToken();
        this.mTenantId = aDALTokenCacheItem.getTenantId();
        this.mFamilyClientId = aDALTokenCacheItem.getFamilyClientId();
        this.mExtendedExpiresOn = aDALTokenCacheItem.getExtendedExpiresOn();
        this.mSpeRing = aDALTokenCacheItem.getSpeRing();
    }

    public ADALTokenCacheItem(AzureActiveDirectoryOAuth2Strategy azureActiveDirectoryOAuth2Strategy, AzureActiveDirectoryAuthorizationRequest azureActiveDirectoryAuthorizationRequest, AzureActiveDirectoryTokenResponse azureActiveDirectoryTokenResponse) {
        String issuerCacheIdentifier = azureActiveDirectoryOAuth2Strategy.getIssuerCacheIdentifier(azureActiveDirectoryAuthorizationRequest);
        AzureActiveDirectoryAccount createAccount = azureActiveDirectoryOAuth2Strategy.createAccount(azureActiveDirectoryTokenResponse);
        createAccount.setEnvironment(issuerCacheIdentifier);
        AzureActiveDirectoryAccessToken accessTokenFromResponse = azureActiveDirectoryOAuth2Strategy.getAccessTokenFromResponse(azureActiveDirectoryTokenResponse);
        AzureActiveDirectoryRefreshToken refreshTokenFromResponse = azureActiveDirectoryOAuth2Strategy.getRefreshTokenFromResponse(azureActiveDirectoryTokenResponse);
        this.mAuthority = issuerCacheIdentifier;
        this.mResource = azureActiveDirectoryAuthorizationRequest.getScope();
        this.mClientId = azureActiveDirectoryAuthorizationRequest.getClientId();
        this.mAccessToken = accessTokenFromResponse.getAccessToken();
        this.mRefreshtoken = refreshTokenFromResponse.getRefreshToken();
        this.mRawIdToken = azureActiveDirectoryTokenResponse.getIdToken();
        this.mUserInfo = new ADALUserInfo(createAccount);
        this.mTenantId = createAccount.getRealm();
        this.mExpiresOn = accessTokenFromResponse.getExpiresOn();
        this.mExtendedExpiresOn = accessTokenFromResponse.getExtendedExpiresOn();
        this.mIsMultiResourceRefreshToken = true;
        this.mFamilyClientId = refreshTokenFromResponse.getFamilyId();
        this.mSpeRing = azureActiveDirectoryTokenResponse.getSpeRing();
    }
}
