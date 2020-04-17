.class public Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;
.super Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters$RequestType;
    }
.end annotation


# instance fields
.field public mCallerAppVersion:Ljava/lang/String;

.field public mCallerPackageName:Ljava/lang/String;

.field public mCallerUId:I

.field public mRequestType:Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters$RequestType;

.field public mShouldResolveInterrupt:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;-><init>()V

    .line 2
    sget-object v0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters$RequestType;->REGULAR:Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters$RequestType;

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;->mRequestType:Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters$RequestType;

    return-void
.end method


# virtual methods
.method public getCallerAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;->mCallerAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;->mCallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerUId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;->mCallerUId:I

    return v0
.end method

.method public getRequestType()Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters$RequestType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;->mRequestType:Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters$RequestType;

    return-object v0
.end method

.method public getShouldResolveInterrupt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;->mShouldResolveInterrupt:Z

    return v0
.end method

.method public isRequestFromBroker()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;->mRequestType:Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters$RequestType;

    sget-object v1, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters$RequestType;->BROKER_RT_REQUEST:Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters$RequestType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters$RequestType;->RESOLVE_INTERRUPT:Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters$RequestType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setCallerAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;->mCallerAppVersion:Ljava/lang/String;

    return-void
.end method

.method public setCallerPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;->mCallerPackageName:Ljava/lang/String;

    return-void
.end method

.method public setCallerUId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;->mCallerUId:I

    return-void
.end method

.method public setRequestType(Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters$RequestType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;->mRequestType:Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters$RequestType;

    return-void
.end method

.method public setShouldResolveInterrupt(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;->mShouldResolveInterrupt:Z

    return-void
.end method

.method public validate()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->validate()V

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v0

    const-string v1, "acquireToken"

    if-eqz v0, :cond_7

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getScopes()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getScopes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;->isRequestFromBroker()Z

    move-result v0

    if-nez v0, :cond_4

    .line 6
    iget v0, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;->mCallerUId:I

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;->mCallerPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getTokenCache()Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    move-result-object v0

    instance-of v0, v0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;

    if-eqz v0, :cond_1

    .line 9
    sget-object v0, Lcom/microsoft/identity/common/internal/request/SdkType;->MSAL:Lcom/microsoft/identity/common/internal/request/SdkType;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getSdkType()Lcom/microsoft/identity/common/internal/request/SdkType;

    move-result-object v2

    if-ne v0, v2, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getRedirectUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;->getCallerPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/microsoft/identity/common/internal/broker/BrokerValidator;->isValidBrokerRedirect(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/exception/ArgumentException;

    const-string v2, "mRedirectUri"

    const-string v3, "The redirect URI doesn\'t match the uri generated with caller package name and signature"

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/identity/common/exception/ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_1
    new-instance v0, Lcom/microsoft/identity/common/exception/ArgumentException;

    const-string v2, "AcquireTokenSilentOperationParameters"

    const-string v3, "OAuth2Cache not an instance of BrokerOAuth2TokenCache"

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/identity/common/exception/ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_2
    new-instance v0, Lcom/microsoft/identity/common/exception/ArgumentException;

    const-string v2, "mCallerPackageName"

    const-string v3, "Caller package name is not set"

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/identity/common/exception/ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_3
    new-instance v0, Lcom/microsoft/identity/common/exception/ArgumentException;

    const-string v2, "mCallerUId"

    const-string v3, "Caller Uid is not set"

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/identity/common/exception/ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    return-void

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
.end method
