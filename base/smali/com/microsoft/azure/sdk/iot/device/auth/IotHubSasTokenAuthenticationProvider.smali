.class public abstract Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;
.super Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;
.source "SourceFile"


# static fields
.field public static final ENCODING_FORMAT_NAME:Ljava/lang/String;

.field public static final MILLISECONDS_PER_SECOND:J = 0x3e8L

.field public static final MINIMUM_EXPIRATION_TIME_OFFSET:J = 0x1L


# instance fields
.field public sasToken:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;

.field public timeBufferPercentage:I

.field public tokenValidSecs:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->ENCODING_FORMAT_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0xe10

    .line 2
    iput-wide p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->tokenValidSecs:J

    const/16 p1, 0x55

    .line 3
    iput p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->timeBufferPercentage:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0xe10

    .line 8
    iput-wide p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->tokenValidSecs:J

    const/16 p1, 0x55

    .line 9
    iput p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->timeBufferPercentage:I

    .line 10
    invoke-virtual {p0, p5, p6}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->setTokenValidSecs(J)V

    const/4 p1, 0x1

    if-lt p7, p1, :cond_0

    const/16 p1, 0x64

    if-gt p7, p1, :cond_0

    .line 11
    iput p7, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->timeBufferPercentage:I

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Time buffer percentage must be a percentage between 1 and 100"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p5}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;)V

    const-wide/16 p1, 0xe10

    .line 5
    iput-wide p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->tokenValidSecs:J

    const/16 p1, 0x55

    .line 6
    iput p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->timeBufferPercentage:I

    return-void
.end method


# virtual methods
.method public abstract canRefreshToken()Z
.end method

.method public getExpiryTimeInSeconds()J
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->tokenValidSecs:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getMillisecondsBeforeProactiveRenewal()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->tokenValidSecs:J

    long-to-int v1, v0

    iget v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->timeBufferPercentage:I

    mul-int v1, v1, v0

    return v1
.end method

.method public abstract getRenewedSasToken(ZZ)Ljava/lang/String;
.end method

.method public getTokenValidSecs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->tokenValidSecs:J

    return-wide v0
.end method

.method public isRenewalNecessary()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->sasToken:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setTokenValidSecs(J)V
    .locals 3

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    iput-wide p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->tokenValidSecs:J

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "tokens must live for more than 1 second"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shouldRefreshToken(Z)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->sasToken:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->isExpired()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->sasToken:Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->getExpiryTimeFromToken(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3
    iget-wide v4, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->tokenValidSecs:J

    sub-long/2addr v2, v4

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->getMillisecondsBeforeProactiveRenewal()I

    move-result p1

    div-int/lit8 p1, p1, 0x64

    int-to-long v4, p1

    add-long/2addr v4, v2

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    cmp-long p1, v4, v2

    if-gez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
