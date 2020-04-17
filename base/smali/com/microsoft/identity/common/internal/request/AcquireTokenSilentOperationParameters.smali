.class public Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;
.super Lcom/microsoft/identity/common/internal/request/OperationParameters;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "AcquireTokenSilentOperationParameters"

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public transient mRefreshToken:Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;-><init>()V

    return-void
.end method

.method private authorityMatchesAccountEnvironment()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;->performCloudDiscovery()V

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mAccount:Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/dto/IAccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->getAzureActiveDirectoryCloudFromHostName(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectoryCloud;->getPreferredNetworkHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":authorityMatchesAccountEnvironment"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to perform cloud discovery"

    invoke-static {v2, v3, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private isAuthorityB2C()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v0

    instance-of v0, v0, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryB2CAuthority;

    return v0
.end method

.method public static performCloudDiscovery()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;->TAG:Ljava/lang/String;

    const-string v2, ":performCloudDiscovery"

    const-string v3, "Performing cloud discovery..."

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->performCloudDiscovery()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getRefreshToken()Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;->mRefreshToken:Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    return-object v0
.end method

.method public setRefreshToken(Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;->mRefreshToken:Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    return-void
.end method

.method public validate()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->validate()V

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mAccount:Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;->TAG:Ljava/lang/String;

    const-string v1, "The account set on silent operation parameters is NULL."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;->isAuthorityB2C()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;->authorityMatchesAccountEnvironment()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lcom/microsoft/identity/common/exception/ArgumentException;

    const-string v1, "acquireTokenSilent"

    const-string v2, "authority"

    const-string v3, "Authority passed to silent parameters does not match with the cloud associated to the account."

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/identity/common/exception/ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method
