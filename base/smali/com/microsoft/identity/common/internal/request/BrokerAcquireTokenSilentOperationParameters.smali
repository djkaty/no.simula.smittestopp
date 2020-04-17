.class public Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;
.super Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;
.source "SourceFile"


# instance fields
.field public mAccountManagerAccount:Landroid/accounts/Account;

.field public mBrokerVersion:Ljava/lang/String;

.field public mCallerAppVersion:Ljava/lang/String;

.field public mCallerPackageName:Ljava/lang/String;

.field public mCallerUId:I

.field public mExtraQueryStringParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mHomeAccountId:Ljava/lang/String;

.field public mLocalAccountId:Ljava/lang/String;

.field public mLoginHint:Ljava/lang/String;

.field public mSleepTimeBeforePrtAcquisition:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAppContext(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getTokenCache()Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setTokenCache(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;)V

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getScopes()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setScopes(Ljava/util/Set;)V

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setClientId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getRedirectUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setRedirectUri(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAuthority(Lcom/microsoft/identity/common/internal/authorities/Authority;)V

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getClaimsRequestJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setClaimsRequest(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;->getCallerAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->setCallerAppVersion(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;->getCallerPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->setCallerPackageName(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;->getCallerUId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->setCallerUId(I)V

    .line 13
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getCorrelationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setCorrelationId(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getLoginHint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->setLoginHint(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getSdkType()Lcom/microsoft/identity/common/internal/request/SdkType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setSdkType(Lcom/microsoft/identity/common/internal/request/SdkType;)V

    .line 16
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getExtraQueryStringParameters()Ljava/util/List;

    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->setExtraQueryStringParameters(Ljava/util/List;)V

    .line 18
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthenticationScheme()Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthenticationScheme()Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/microsoft/identity/common/internal/authscheme/BearerAuthenticationSchemeInternal;

    invoke-direct {p1}, Lcom/microsoft/identity/common/internal/authscheme/BearerAuthenticationSchemeInternal;-><init>()V

    .line 20
    :goto_0
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAuthenticationScheme(Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)V

    return-void
.end method


# virtual methods
.method public getAccountManagerAccount()Landroid/accounts/Account;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->mAccountManagerAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getBrokerVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->mBrokerVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->mCallerAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->mCallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerUId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->mCallerUId:I

    return v0
.end method

.method public getExtraQueryStringParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->mExtraQueryStringParameters:Ljava/util/List;

    return-object v0
.end method

.method public getHomeAccountId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->mHomeAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalAccountId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->mLocalAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginHint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->mLoginHint:Ljava/lang/String;

    return-object v0
.end method

.method public getSleepTimeBeforePrtAcquisition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->mSleepTimeBeforePrtAcquisition:I

    return v0
.end method

.method public setAccountManagerAccount(Landroid/accounts/Account;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->mAccountManagerAccount:Landroid/accounts/Account;

    return-void
.end method

.method public setBrokerVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->mBrokerVersion:Ljava/lang/String;

    return-void
.end method

.method public setCallerAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->mCallerAppVersion:Ljava/lang/String;

    return-void
.end method

.method public setCallerPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->mCallerPackageName:Ljava/lang/String;

    return-void
.end method

.method public setCallerUId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->mCallerUId:I

    return-void
.end method

.method public setExtraQueryStringParameters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->mExtraQueryStringParameters:Ljava/util/List;

    return-void
.end method

.method public setHomeAccountId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->mHomeAccountId:Ljava/lang/String;

    return-void
.end method

.method public setLocalAccountId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->mLocalAccountId:Ljava/lang/String;

    return-void
.end method

.method public setLoginHint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->mLoginHint:Ljava/lang/String;

    return-void
.end method

.method public setSleepTimeBeforePrtAcquisition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->mSleepTimeBeforePrtAcquisition:I

    return-void
.end method

.method public validate()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->mCallerUId:I

    const-string v1, "acquireTokenSilent"

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->mCallerPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "Caller package name is not set"

    const-string v3, "mCallerPackageName"

    if-nez v0, :cond_8

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getScopes()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getScopes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 6
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->mCallerPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    sget-object v0, Lcom/microsoft/identity/common/internal/request/SdkType;->MSAL:Lcom/microsoft/identity/common/internal/request/SdkType;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getSdkType()Lcom/microsoft/identity/common/internal/request/SdkType;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getRedirectUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->getCallerPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/microsoft/identity/common/internal/broker/BrokerValidator;->isValidBrokerRedirect(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/exception/ArgumentException;

    const-string v2, "mRedirectUri"

    const-string v3, "The redirect URI doesn\'t match the uri generated with caller package name and signature"

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/identity/common/exception/ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getTokenCache()Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    move-result-object v0

    instance-of v0, v0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->mAccountManagerAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_2

    return-void

    .line 12
    :cond_2
    new-instance v0, Lcom/microsoft/identity/common/exception/ArgumentException;

    const-string v2, "Android Account manager Account is null"

    invoke-direct {v0, v1, v3, v2}, Lcom/microsoft/identity/common/exception/ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_3
    new-instance v0, Lcom/microsoft/identity/common/exception/ArgumentException;

    const-string v2, "AcquireTokenSilentOperationParameters"

    const-string v3, "OAuth2Cache not an instance of BrokerOAuth2TokenCache"

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/identity/common/exception/ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_4
    new-instance v0, Lcom/microsoft/identity/common/exception/ArgumentException;

    invoke-direct {v0, v1, v3, v2}, Lcom/microsoft/identity/common/exception/ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_5
    new-instance v0, Lcom/microsoft/identity/common/exception/ArgumentException;

    const-string v2, "mClientId"

    const-string v3, "Client Id is not set"

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/identity/common/exception/ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_6
    new-instance v0, Lcom/microsoft/identity/common/exception/ArgumentException;

    const-string v2, "mScopes"

    const-string v3, "Scope or resource is not set"

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/identity/common/exception/ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_7
    new-instance v0, Lcom/microsoft/identity/common/exception/ArgumentException;

    const-string v2, "mAuthority"

    const-string v3, "Authority Url is not set"

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/identity/common/exception/ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_8
    new-instance v0, Lcom/microsoft/identity/common/exception/ArgumentException;

    invoke-direct {v0, v1, v3, v2}, Lcom/microsoft/identity/common/exception/ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_9
    new-instance v0, Lcom/microsoft/identity/common/exception/ArgumentException;

    const-string v2, "mCallerUId"

    const-string v3, "Caller Uid is not set"

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/identity/common/exception/ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
