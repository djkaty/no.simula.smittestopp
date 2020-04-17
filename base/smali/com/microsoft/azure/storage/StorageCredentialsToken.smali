.class public final Lcom/microsoft/azure/storage/StorageCredentialsToken;
.super Lcom/microsoft/azure/storage/StorageCredentials;
.source "SourceFile"


# instance fields
.field public volatile accountName:Ljava/lang/String;

.field public volatile token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/StorageCredentials;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/storage/StorageCredentialsToken;->accountName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/microsoft/azure/storage/StorageCredentialsToken;->token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/StorageCredentialsToken;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/StorageCredentialsToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method public isHttpsOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "AccountToken"

    aput-object v2, v0, v1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/microsoft/azure/storage/StorageCredentialsToken;->token:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "[token hidden]"

    :goto_0
    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s=%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public transformUri(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;
    .locals 0

    return-object p1
.end method

.method public transformUri(Ljava/net/URI;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/URI;
    .locals 0

    return-object p1
.end method

.method public declared-synchronized updateToken(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/microsoft/azure/storage/StorageCredentialsToken;->token:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
