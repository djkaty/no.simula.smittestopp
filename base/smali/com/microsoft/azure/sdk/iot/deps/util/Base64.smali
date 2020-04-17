.class public final Lcom/microsoft/azure/sdk/iot/deps/util/Base64;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BASE64D16_CONVERSION_TABLE:[I

.field public static final BASE64D8_CONVERSION_TABLE:I = 0x77675141

.field public static final BASE64_END_LOWERCASE:I = 0x34

.field public static final BASE64_END_NUMBER:I = 0x3e

.field public static final BASE64_END_UPPERCASE:I = 0x1a

.field public static final BASE64_GROUP_SIZE:I = 0x4

.field public static final BASE64_PAD:B = 0x3dt

.field public static final BASE64_PLUS:I = 0x3e

.field public static final BASE64_SLASH:I = 0x3f

.field public static final BYTE_END_LOWERCASE:B = 0x7at

.field public static final BYTE_END_NUMBER:B = 0x39t

.field public static final BYTE_END_UPPERCASE:B = 0x5at

.field public static final BYTE_GROUP_SIZE:I = 0x3

.field public static final BYTE_PLUS:B = 0x2bt

.field public static final BYTE_SLASH:B = 0x2ft

.field public static final BYTE_START_LOWERCASE:B = 0x61t

.field public static final BYTE_START_NUMBER:B = 0x30t

.field public static final BYTE_START_UPPERCASE:B = 0x41t

.field public static final HALF_NIBBLE:I = 0x2

.field public static final ISOLATE_BASE64:I = 0x3f

.field public static final ISOLATE_BYTE:I = 0xff

.field public static final ISOLATE_LSB_BASE64:I = 0xf

.field public static final ISOLATE_MSB_BASE64:I = 0x3

.field public static final ONE_AND_HALF_NIBBLE:I = 0x6

.field public static final ONE_BYTE:I = 0x8

.field public static final ONE_NIBBLE:I = 0x4

.field public static final THREE_BYTES:I = 0x18

.field public static final TWO_BYTES:I = 0x10


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->BASE64D16_CONVERSION_TABLE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4d494541    # 2.1104744E8f
        0x63595551
        0x736f6b67
        0x38343077
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64EstimatedLength([B)I
    .locals 3

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    .line 3
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p0, v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_2

    .line 4
    array-length v1, p0

    add-int/lit8 v1, v1, -0x2

    aget-byte p0, p0, v1

    if-ne p0, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    :cond_2
    return v0
.end method

.method public static base64ToByte(B)B
    .locals 2

    const/16 v0, 0x1a

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x41

    :goto_0
    int-to-byte p0, p0

    return p0

    :cond_0
    const/16 v1, 0x34

    if-ge p0, v1, :cond_1

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x61

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e

    if-ge p0, v0, :cond_2

    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x30

    goto :goto_0

    :cond_2
    if-ne p0, v0, :cond_3

    const/16 p0, 0x2b

    return p0

    :cond_3
    const/16 p0, 0x2f

    return p0
.end method

.method public static base64d16ToByte(B)B
    .locals 2

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->BASE64D16_CONVERSION_TABLE:[I

    shr-int/lit8 v1, p0, 0x2

    aget v0, v0, v1

    and-int/lit8 p0, p0, 0x3

    invoke-static {v0, p0}, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->extractBase64FromInteger(II)B

    move-result p0

    return p0
.end method

.method public static base64d8ToByte(B)B
    .locals 1

    const v0, 0x77675141

    .line 1
    invoke-static {v0, p0}, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->extractBase64FromInteger(II)B

    move-result p0

    return p0
.end method

.method public static byteToBase64(B)B
    .locals 2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    :goto_0
    int-to-byte p0, p0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_1

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1a

    goto :goto_0

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v1, 0x39

    if-gt p0, v1, :cond_2

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x34

    goto :goto_0

    :cond_2
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_3

    const/16 p0, 0x3e

    return p0

    :cond_3
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_4

    const/16 p0, 0x3f

    return p0

    .line 1
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "provided byte value out of base64 range"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeBase64Local([B)[B
    .locals 11

    if-eqz p0, :cond_5

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [B

    return-object p0

    .line 2
    :cond_0
    array-length v0, p0

    const/4 v2, 0x4

    rem-int/2addr v0, v2

    if-nez v0, :cond_4

    .line 3
    invoke-static {p0}, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->numberOfValidBase64BytesWithoutPad([B)I

    move-result v0

    .line 4
    invoke-static {p0}, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->base64EstimatedLength([B)I

    move-result v3

    new-array v3, v3, [B

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-lt v0, v2, :cond_1

    add-int/lit8 v6, v1, 0x1

    .line 5
    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->byteToBase64(B)B

    move-result v1

    add-int/lit8 v7, v6, 0x1

    .line 6
    aget-byte v6, p0, v6

    invoke-static {v6}, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->byteToBase64(B)B

    move-result v6

    add-int/lit8 v8, v7, 0x1

    .line 7
    aget-byte v7, p0, v7

    invoke-static {v7}, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->byteToBase64(B)B

    move-result v7

    add-int/lit8 v9, v8, 0x1

    .line 8
    aget-byte v8, p0, v8

    invoke-static {v8}, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->byteToBase64(B)B

    move-result v8

    add-int/lit8 v10, v4, 0x1

    shl-int/2addr v1, v5

    shr-int/lit8 v5, v6, 0x4

    or-int/2addr v1, v5

    int-to-byte v1, v1

    .line 9
    aput-byte v1, v3, v4

    add-int/lit8 v1, v10, 0x1

    shl-int/lit8 v4, v6, 0x4

    shr-int/lit8 v5, v7, 0x2

    or-int/2addr v4, v5

    int-to-byte v4, v4

    .line 10
    aput-byte v4, v3, v10

    add-int/lit8 v4, v1, 0x1

    shl-int/lit8 v5, v7, 0x6

    or-int/2addr v5, v8

    int-to-byte v5, v5

    .line 11
    aput-byte v5, v3, v1

    add-int/lit8 v0, v0, -0x4

    move v1, v9

    goto :goto_0

    :cond_1
    const/4 v6, 0x3

    if-ne v0, v6, :cond_2

    add-int/lit8 v6, v1, 0x1

    .line 12
    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->byteToBase64(B)B

    move-result v1

    add-int/lit8 v7, v6, 0x1

    .line 13
    aget-byte v6, p0, v6

    invoke-static {v6}, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->byteToBase64(B)B

    move-result v6

    .line 14
    aget-byte v8, p0, v7

    invoke-static {v8}, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->byteToBase64(B)B

    move-result v8

    add-int/lit8 v9, v4, 0x1

    shl-int/2addr v1, v5

    shr-int/lit8 v10, v6, 0x4

    or-int/2addr v1, v10

    int-to-byte v1, v1

    .line 15
    aput-byte v1, v3, v4

    shl-int/lit8 v1, v6, 0x4

    shr-int/lit8 v4, v8, 0x2

    or-int/2addr v1, v4

    int-to-byte v1, v1

    .line 16
    aput-byte v1, v3, v9

    move v1, v7

    move v4, v9

    :cond_2
    if-ne v0, v5, :cond_3

    add-int/lit8 v0, v1, 0x1

    .line 17
    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->byteToBase64(B)B

    move-result v1

    .line 18
    aget-byte p0, p0, v0

    invoke-static {p0}, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->byteToBase64(B)B

    move-result p0

    shl-int/lit8 v0, v1, 0x2

    shr-int/2addr p0, v2

    or-int/2addr p0, v0

    int-to-byte p0, p0

    .line 19
    aput-byte p0, v3, v4

    :cond_3
    return-object v3

    .line 20
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid base64Values length"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null or empty base64Values"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encodeBase64Internal([B)[B
    .locals 11

    .line 1
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x3

    div-int/2addr v0, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    .line 2
    new-array v0, v0, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    :goto_0
    array-length v5, p0

    sub-int/2addr v5, v3

    const/4 v6, 0x2

    if-lt v5, v2, :cond_0

    add-int/lit8 v5, v4, 0x1

    .line 4
    aget-byte v7, p0, v3

    shr-int/2addr v7, v6

    and-int/lit8 v7, v7, 0x3f

    int-to-byte v7, v7

    invoke-static {v7}, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->base64ToByte(B)B

    move-result v7

    aput-byte v7, v0, v4

    add-int/lit8 v4, v5, 0x1

    .line 5
    aget-byte v7, p0, v3

    shl-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x3f

    add-int/lit8 v8, v3, 0x1

    aget-byte v9, p0, v8

    shr-int/lit8 v9, v9, 0x4

    and-int/lit8 v9, v9, 0xf

    or-int/2addr v7, v9

    int-to-byte v7, v7

    invoke-static {v7}, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->base64ToByte(B)B

    move-result v7

    aput-byte v7, v0, v5

    add-int/lit8 v5, v4, 0x1

    .line 6
    aget-byte v7, p0, v8

    shl-int/lit8 v6, v7, 0x2

    and-int/lit8 v6, v6, 0x3f

    add-int/lit8 v7, v3, 0x2

    aget-byte v8, p0, v7

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v2

    or-int/2addr v6, v8

    int-to-byte v6, v6

    invoke-static {v6}, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->base64ToByte(B)B

    move-result v6

    aput-byte v6, v0, v4

    add-int/lit8 v4, v5, 0x1

    .line 7
    aget-byte v6, p0, v7

    and-int/lit8 v6, v6, 0x3f

    int-to-byte v6, v6

    invoke-static {v6}, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->base64ToByte(B)B

    move-result v6

    aput-byte v6, v0, v5

    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    .line 8
    :cond_0
    array-length v5, p0

    sub-int/2addr v5, v3

    const/16 v7, 0x3d

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, v4, 0x1

    .line 9
    aget-byte v8, p0, v3

    shr-int/2addr v8, v6

    and-int/lit8 v8, v8, 0x3f

    int-to-byte v8, v8

    invoke-static {v8}, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->base64ToByte(B)B

    move-result v8

    aput-byte v8, v0, v4

    add-int/lit8 v4, v5, 0x1

    .line 10
    aget-byte v8, p0, v3

    shl-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0x3f

    add-int/lit8 v9, v3, 0x1

    aget-byte v10, p0, v9

    shr-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0xf

    or-int/2addr v8, v10

    int-to-byte v8, v8

    invoke-static {v8}, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->base64ToByte(B)B

    move-result v8

    aput-byte v8, v0, v5

    add-int/lit8 v5, v4, 0x1

    .line 11
    aget-byte v8, p0, v9

    and-int/lit8 v8, v8, 0xf

    int-to-byte v8, v8

    invoke-static {v8}, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->base64d16ToByte(B)B

    move-result v8

    aput-byte v8, v0, v4

    .line 12
    aput-byte v7, v0, v5

    move v4, v5

    .line 13
    :cond_1
    array-length v5, p0

    sub-int/2addr v5, v3

    if-ne v5, v1, :cond_2

    add-int/lit8 v1, v4, 0x1

    .line 14
    aget-byte v5, p0, v3

    shr-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x3f

    int-to-byte v5, v5

    invoke-static {v5}, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->base64ToByte(B)B

    move-result v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x1

    .line 15
    aget-byte p0, p0, v3

    and-int/2addr p0, v2

    int-to-byte p0, p0

    invoke-static {p0}, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->base64d8ToByte(B)B

    move-result p0

    aput-byte p0, v0, v1

    add-int/lit8 p0, v4, 0x1

    .line 16
    aput-byte v7, v0, v4

    .line 17
    aput-byte v7, v0, p0

    :cond_2
    return-object v0
.end method

.method public static encodeBase64Local([B)[B
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->encodeBase64Internal([B)[B

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null or empty dataValues"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encodeBase64StringLocal([B)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    .line 2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/String;-><init>()V

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->encodeBase64Internal([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null or empty dataValues"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extractBase64FromInteger(II)B
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    shr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static numberOfValidBase64BytesWithoutPad([B)I
    .locals 3

    .line 1
    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    .line 2
    aget-byte v1, p0, v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 3
    aget-byte p0, p0, v1

    if-ne p0, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    return v0
.end method
