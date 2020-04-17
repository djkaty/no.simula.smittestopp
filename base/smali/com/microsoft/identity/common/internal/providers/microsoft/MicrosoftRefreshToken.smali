.class public Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;
.super Lcom/microsoft/identity/common/internal/providers/oauth2/RefreshToken;
.source "SourceFile"


# instance fields
.field public mClientId:Ljava/lang/String;

.field public mClientInfo:Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/ClientInfo;

.field public mEnvironment:Ljava/lang/String;

.field public mFamilyId:Ljava/lang/String;

.field public mScope:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;)V
    .locals 2

    .line 7
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/RefreshToken;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)V

    .line 8
    :try_start_0
    new-instance v0, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/ClientInfo;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->getClientInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/ClientInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->mClientInfo:Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/ClientInfo;

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->mFamilyId:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;->getScope()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->mScope:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->getClientId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->mClientId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/microsoft/identity/common/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/ClientInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/RefreshToken;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->mClientInfo:Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/ClientInfo;

    .line 3
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->mScope:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->mClientId:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->mEnvironment:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->mFamilyId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientInfo()Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/ClientInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->mClientInfo:Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/ClientInfo;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->mEnvironment:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->mFamilyId:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeAccountId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->mClientInfo:Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/ClientInfo;

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/cache/SchemaUtil;->getHomeAccountId(Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/ClientInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsFamilyRefreshToken()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->mFamilyId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/RefreshToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->mScope:Ljava/lang/String;

    return-object v0
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->mEnvironment:Ljava/lang/String;

    return-void
.end method
