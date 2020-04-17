.class public abstract Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenWithRefreshAuthenticationProvider;
.super Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;
.source "SourceFile"


# static fields
.field public static final log:Lk/f/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenWithRefreshAuthenticationProvider;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenWithRefreshAuthenticationProvider;->log:Lk/f/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 15

    move/from16 v0, p6

    int-to-long v5, v0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v7, p7

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->getExpiryTimeInSeconds()J

    move-result-wide v13

    const/4 v10, 0x0

    move-object v7, v0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p4

    invoke-direct/range {v7 .. v14}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object v1, p0

    iput-object v0, v1, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->sasToken:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;

    return-void
.end method

.method public static buildAudience(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const-string p0, "%s/devices/%s/modules/%s"

    .line 2
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "UTF-8"

    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No argument can be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getRenewedSasToken(ZZ)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->shouldRefreshToken(Z)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 2
    :cond_0
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenWithRefreshAuthenticationProvider;->log:Lk/f/b;

    const-string p2, "Renewing the internal sas token"

    invoke-interface {p1, p2}, Lk/f/b;->b(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenWithRefreshAuthenticationProvider;->refreshSasToken()V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->sasToken:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isRenewalNecessary()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract refreshSasToken()V
.end method
