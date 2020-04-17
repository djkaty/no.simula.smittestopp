.class public Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/cache/ITokenCacheItem;


# instance fields
.field public mAccessToken:Ljava/lang/String;

.field public mAuthority:Ljava/lang/String;

.field public mClientId:Ljava/lang/String;

.field public mExpiresOn:Ljava/util/Date;

.field public mExtendedExpiresOn:Ljava/util/Date;

.field public mFamilyClientId:Ljava/lang/String;

.field public mIsMultiResourceRefreshToken:Z

.field public mRawIdToken:Ljava/lang/String;

.field public mRefreshtoken:Ljava/lang/String;

.field public mResource:Ljava/lang/String;

.field public mSpeRing:Ljava/lang/String;

.field public mTenantId:Ljava/lang/String;

.field public mUserInfo:Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mAuthority:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->getResource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mResource:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->getClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mClientId:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mAccessToken:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mRefreshtoken:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->getRawIdToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mRawIdToken:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->getUserInfo()Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mUserInfo:Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->getExpiresOn()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mExpiresOn:Ljava/util/Date;

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->getIsMultiResourceRefreshToken()Z

    move-result v0

    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mIsMultiResourceRefreshToken:Z

    .line 12
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->getTenantId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mTenantId:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->getFamilyClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mFamilyClientId:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->getExtendedExpiresOn()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mExtendedExpiresOn:Ljava/util/Date;

    .line 15
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->getSpeRing()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mSpeRing:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryOAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryTokenResponse;)V
    .locals 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1, p2}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryOAuth2Strategy;->getIssuerCacheIdentifier(Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationRequest;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {p1, p3}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryOAuth2Strategy;->createAccount(Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryTokenResponse;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAccount;

    move-result-object v1

    .line 19
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAccount;->setEnvironment(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1, p3}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryOAuth2Strategy;->getAccessTokenFromResponse(Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryTokenResponse;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAccessToken;

    move-result-object v2

    .line 21
    invoke-virtual {p1, p3}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryOAuth2Strategy;->getRefreshTokenFromResponse(Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryTokenResponse;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryRefreshToken;

    move-result-object p1

    .line 22
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mAuthority:Ljava/lang/String;

    .line 23
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;->getScope()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mResource:Ljava/lang/String;

    .line 24
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;->getClientId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mClientId:Ljava/lang/String;

    .line 25
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/providers/oauth2/AccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mAccessToken:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/RefreshToken;->getRefreshToken()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mRefreshtoken:Ljava/lang/String;

    .line 27
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;->getIdToken()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mRawIdToken:Ljava/lang/String;

    .line 28
    new-instance p2, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;

    invoke-direct {p2, v1}, Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;-><init>(Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAccount;)V

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mUserInfo:Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;

    .line 29
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAccount;->getRealm()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mTenantId:Ljava/lang/String;

    .line 30
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAccessToken;->getExpiresOn()Ljava/util/Date;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mExpiresOn:Ljava/util/Date;

    .line 31
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAccessToken;->getExtendedExpiresOn()Ljava/util/Date;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mExtendedExpiresOn:Ljava/util/Date;

    const/4 p2, 0x1

    .line 32
    iput-boolean p2, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mIsMultiResourceRefreshToken:Z

    .line 33
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/dto/IRefreshTokenRecord;->getFamilyId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mFamilyClientId:Ljava/lang/String;

    .line 34
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryTokenResponse;->getSpeRing()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mSpeRing:Ljava/lang/String;

    return-void
.end method

.method public static getAsFRTTokenCacheItem(Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;)Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;-><init>(Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->setResource(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->setAccessToken(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->setClientId(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAsMRRTTokenCacheItem(Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;)Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;-><init>(Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->setResource(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->setAccessToken(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresOn()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mExpiresOn:Ljava/util/Date;

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/util/DateUtilities;->createCopy(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public final getExtendedExpiresOn()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mExtendedExpiresOn:Ljava/util/Date;

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/util/DateUtilities;->createCopy(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public final getFamilyClientId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mFamilyClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMultiResourceRefreshToken()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mIsMultiResourceRefreshToken:Z

    return v0
.end method

.method public getRawIdToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mRawIdToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mRefreshtoken:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mResource:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeRing()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mSpeRing:Ljava/lang/String;

    return-object v0
.end method

.method public getTenantId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mTenantId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mUserInfo:Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mAccessToken:Ljava/lang/String;

    return-void
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mAuthority:Ljava/lang/String;

    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mClientId:Ljava/lang/String;

    return-void
.end method

.method public setExpiresOn(Ljava/util/Date;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/util/DateUtilities;->createCopy(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mExpiresOn:Ljava/util/Date;

    return-void
.end method

.method public final setExtendedExpiresOn(Ljava/util/Date;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/util/DateUtilities;->createCopy(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mExtendedExpiresOn:Ljava/util/Date;

    return-void
.end method

.method public final setFamilyClientId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mFamilyClientId:Ljava/lang/String;

    return-void
.end method

.method public setIsMultiResourceRefreshToken(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mIsMultiResourceRefreshToken:Z

    return-void
.end method

.method public setRawIdToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mRawIdToken:Ljava/lang/String;

    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mRefreshtoken:Ljava/lang/String;

    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mResource:Ljava/lang/String;

    return-void
.end method

.method public setSpeRing(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mSpeRing:Ljava/lang/String;

    return-void
.end method

.method public setTenantId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mTenantId:Ljava/lang/String;

    return-void
.end method

.method public setUserInfo(Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->mUserInfo:Lcom/microsoft/identity/common/adal/internal/ADALUserInfo;

    return-void
.end method
