.class public Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONNECTION_STRING_CHARSET:Ljava/nio/charset/Charset;

.field public static final DEVICE_ID_ATTRIBUTE:Ljava/lang/String; = "DeviceId="

.field public static final GATEWAY_HOST_NAME_ATTRIBUTE:Ljava/lang/String; = "GatewayHostName="

.field public static final HOSTNAME_ATTRIBUTE:Ljava/lang/String; = "HostName="

.field public static final MODULE_ID_ATTRIBUTE:Ljava/lang/String; = "ModuleId="

.field public static final SHARED_ACCESS_KEY_ATTRIBUTE:Ljava/lang/String; = "SharedAccessKey="

.field public static final SHARED_ACCESS_TOKEN_ATTRIBUTE:Ljava/lang/String; = "SharedAccessSignature="

.field public static final X509_ENABLED_ATTRIBUTE:Ljava/lang/String; = "x509=true"

.field public static final log:Lk/f/b;


# instance fields
.field public deviceId:Ljava/lang/String;

.field public gatewayHostName:Ljava/lang/String;

.field public hostName:Ljava/lang/String;

.field public hubName:Ljava/lang/String;

.field public isUsingX509:Z

.field public moduleId:Ljava/lang/String;

.field public sharedAccessKey:Ljava/lang/String;

.field public sharedAccessToken:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->log:Lk/f/b;

    .line 2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->CONNECTION_STRING_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->hostName:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->hubName:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->deviceId:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->sharedAccessKey:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->sharedAccessToken:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->moduleId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->isUsingX509:Z

    .line 9
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->gatewayHostName:Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, ";"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 12
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_7

    aget-object v3, v0, v1

    .line 13
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HostName="

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x9

    if-eqz v4, :cond_0

    .line 14
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->hostName:Ljava/lang/String;

    goto/16 :goto_1

    .line 15
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v6, "DeviceId="

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 16
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 17
    :try_start_0
    sget-object v4, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->CONNECTION_STRING_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->deviceId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 18
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 19
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v6, "SharedAccessKey="

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/16 v6, 0x10

    if-eqz v4, :cond_2

    .line 20
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->sharedAccessKey:Ljava/lang/String;

    goto :goto_1

    .line 21
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, "SharedAccessSignature="

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x16

    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->sharedAccessToken:Ljava/lang/String;

    .line 23
    invoke-static {v3}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->isExpired(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 24
    :cond_3
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Your SAS Token has expired"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, "ModuleId="

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 26
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->moduleId:Ljava/lang/String;

    goto :goto_1

    .line 27
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GatewayHostName="

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 28
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->gatewayHostName:Ljava/lang/String;

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    const-string v0, "x509=true"

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->isUsingX509:Z

    .line 30
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->hostName:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->deviceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->sharedAccessKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->sharedAccessToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->validateTerms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 31
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->hostName:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->parseHubName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->hubName:Ljava/lang/String;

    return-void

    .line 32
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The connection string cannot be null or empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 33
    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->hostName:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->hubName:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->deviceId:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->sharedAccessKey:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->sharedAccessToken:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->moduleId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->isUsingX509:Z

    .line 42
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->gatewayHostName:Ljava/lang/String;

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 v1, 0x1

    .line 43
    :cond_0
    iput-boolean v1, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->isUsingX509:Z

    .line 44
    invoke-static {p1, p2, p3, p4, v1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->validateTerms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 45
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->hostName:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->parseHubName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->hubName:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->deviceId:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->sharedAccessKey:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->sharedAccessToken:Ljava/lang/String;

    if-eqz p4, :cond_2

    .line 50
    invoke-static {p4}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->isExpired(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Your SAS Token has expired"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_2
    :goto_0
    iput-object p5, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->gatewayHostName:Ljava/lang/String;

    if-eqz p5, :cond_3

    .line 53
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 54
    iput-object p5, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->hostName:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public static parseHubName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "."

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "Provided hostname did not include a valid IoT Hub name as its prefix. An IoT Hub hostname has the following format: [iotHubName].[valid URI chars]"

    .line 3
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static validateTerms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p0, :cond_6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->parseHubName(Ljava/lang/String;)Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Either of device key or Shared Access Signature should be provided, but not both."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez p4, :cond_4

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_2
    if-eqz p3, :cond_3

    .line 7
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Device key and Shared Access Signature both cannot be null unless using x509 authentication."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return-void

    .line 9
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Device ID cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "IoT Hub hostName cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getGatewayHostName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->gatewayHostName:Ljava/lang/String;

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public getHubName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->hubName:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->moduleId:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedAccessKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->sharedAccessKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedAccessToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->sharedAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public isUsingX509()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->isUsingX509:Z

    return v0
.end method

.method public setSharedAccessToken(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;->sharedAccessToken:Ljava/lang/String;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Shared access token cannot be set to null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
