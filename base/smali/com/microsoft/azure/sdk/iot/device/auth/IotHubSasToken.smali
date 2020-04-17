.class public final Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ExpectedNumberOfFieldParts:I = 0x2

.field public static final ExpectedSASTokenSegments:I = 0x2

.field public static final ExpiryTimeFieldKey:Ljava/lang/String; = "se"

.field public static final FieldKeyValueSeparator:Ljava/lang/String; = "="

.field public static final FieldPairSeparator:Ljava/lang/String; = "&"

.field public static final KeyValuePairKeyIndex:I = 0x0

.field public static final KeyValuePairValueIndex:I = 0x1

.field public static final ResourceURIFieldKey:Ljava/lang/String; = "sr"

.field public static final SASTokenConstantSegmentIndex:I = 0x0

.field public static final SASTokenFieldSegmentIndex:I = 0x1

.field public static final SASTokenSegmentSeparator:Ljava/lang/String; = " "

.field public static final SharedAccessSignature:Ljava/lang/String; = "SharedAccessSignature"

.field public static final SignatureFieldKey:Ljava/lang/String; = "sig"

.field public static final TOKEN_FORMAT:Ljava/lang/String; = "SharedAccessSignature sig=%s&se=%s&sr=%s"


# instance fields
.field public expiryTime:J

.field public sasToken:Ljava/lang/String;

.field public scope:Ljava/lang/String;

.field public signature:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->sasToken:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->signature:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 20
    iput-wide v1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->expiryTime:J

    .line 21
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->scope:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->signature:Ljava/lang/String;

    .line 23
    iput-wide v1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->expiryTime:J

    .line 24
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->scope:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->sasToken:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->sasToken:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->signature:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->expiryTime:J

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->scope:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 6
    invoke-static {p1, p2, p5}, Lcom/microsoft/azure/sdk/iot/device/net/IotHubUri;->getResourceUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->scope:Ljava/lang/String;

    .line 7
    iput-wide p6, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->expiryTime:J

    .line 8
    new-instance p2, Lcom/microsoft/azure/sdk/iot/device/auth/Signature;

    invoke-direct {p2, p1, p6, p7, p3}, Lcom/microsoft/azure/sdk/iot/device/auth/Signature;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lcom/microsoft/azure/sdk/iot/device/auth/Signature;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->signature:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_3

    .line 10
    iput-object p4, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->sasToken:Ljava/lang/String;

    .line 11
    invoke-static {p4}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->getExpiryTimeFromToken(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->expiryTime:J

    .line 12
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->isSasFormat()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->sasToken:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->isExpired(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Your SasToken has expired"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SasToken format is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "deviceKey and sharedAccessToken may not both be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private buildSasToken()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->signature:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->expiryTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->scope:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "SharedAccessSignature sig=%s&se=%s&sr=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildSharedAccessToken(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "SharedAccessSignature"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sr"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 p0, 0x3

    const-string v1, "sig"

    aput-object v1, v0, p0

    const/4 p0, 0x4

    aput-object p1, v0, p0

    const/4 p0, 0x5

    const-string p1, "se"

    aput-object p1, v0, p0

    const/4 p0, 0x6

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, p0

    const-string p0, "%s %s=%s&%s=%s&%s=%d"

    .line 3
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "expiry time must be a non-negative integer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "neither audience nor signature can be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extractFieldValues(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, " "

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SharedAccessSignature"

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4
    array-length v2, p0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    if-eqz v1, :cond_3

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    .line 6
    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v4, "&"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 7
    array-length v4, p0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, p0, v5

    const-string v7, ""

    .line 8
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "="

    .line 9
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 10
    array-length v8, v7

    if-ne v8, v3, :cond_0

    .line 11
    aget-object v6, v7, v0

    aget-object v7, v7, v2

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "SasToken format is invalid: missing a key or value tied to your field: "

    invoke-static {v0, v6}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Malformed signature"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getExpiryTimeFromToken(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->extractFieldValues(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "se"

    .line 2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static isExpired(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->getExpiryTimeFromToken(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSasFormat()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->sasToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "SharedAccessSignature"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->sasToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->extractFieldValues(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "se"

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "sig"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "sr"

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getSasToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->sasToken:Ljava/lang/String;

    return-object v0
.end method

.method public isExpired()Z
    .locals 5

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->expiryTime:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->sasToken:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->isSasFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->sasToken:Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SasToken format is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->signature:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->expiryTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->scope:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasToken;->buildSasToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
