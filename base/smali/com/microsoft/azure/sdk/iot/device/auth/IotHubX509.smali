.class public Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public pathToPrivateKey:Ljava/lang/String;

.field public pathToPublicKeyCertificate:Ljava/lang/String;

.field public privateKey:Ljava/lang/String;

.field public publicKeyCertificate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p3, :cond_2

    .line 3
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_0

    .line 4
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;->pathToPublicKeyCertificate:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;->publicKeyCertificate:Ljava/lang/String;

    :goto_0
    if-eqz p4, :cond_1

    .line 6
    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;->pathToPrivateKey:Ljava/lang/String;

    goto :goto_1

    .line 7
    :cond_1
    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;->privateKey:Ljava/lang/String;

    :goto_1
    return-void

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Private key certificate cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Public key certificate cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public getPrivateKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;->privateKey:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;->pathToPrivateKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;->privateKey:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;->privateKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKeyCertificate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;->publicKeyCertificate:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;->pathToPublicKeyCertificate:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;->publicKeyCertificate:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubX509;->publicKeyCertificate:Ljava/lang/String;

    return-object v0
.end method
