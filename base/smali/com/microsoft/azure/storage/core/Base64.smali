.class public final Lcom/microsoft/azure/storage/core/Base64;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BASE_64_CHARS:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

.field public static final DECODE_64:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x80

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/microsoft/azure/storage/core/Base64;->DECODE_64:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x2t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 9

    const-string v0, "The String is not a valid Base64-encoded string."

    if-eqz p0, :cond_6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    const-string v2, "=="

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_0
    const-string v2, "="

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 4
    :cond_1
    :goto_0
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 6
    sget-object v4, Lcom/microsoft/azure/storage/core/Base64;->DECODE_64:[B

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aget-byte v4, v4, v5

    .line 7
    sget-object v5, Lcom/microsoft/azure/storage/core/Base64;->DECODE_64:[B

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aget-byte v5, v5, v6

    .line 8
    sget-object v6, Lcom/microsoft/azure/storage/core/Base64;->DECODE_64:[B

    add-int/lit8 v7, v2, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-byte v7, v7

    aget-byte v6, v6, v7

    .line 9
    sget-object v7, Lcom/microsoft/azure/storage/core/Base64;->DECODE_64:[B

    add-int/lit8 v8, v2, 0x3

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    aget-byte v7, v7, v8

    if-ltz v4, :cond_4

    if-ltz v5, :cond_4

    const/4 v8, -0x1

    if-eq v6, v8, :cond_4

    if-eq v7, v8, :cond_4

    shl-int/lit8 v4, v4, 0x12

    shl-int/lit8 v5, v5, 0xc

    add-int/2addr v4, v5

    and-int/lit16 v5, v6, 0xff

    shl-int/lit8 v5, v5, 0x6

    add-int/2addr v4, v5

    and-int/lit16 v5, v7, 0xff

    add-int/2addr v4, v5

    const/4 v5, -0x2

    if-ne v6, v5, :cond_2

    const v5, 0xfff000

    and-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 10
    aput-byte v4, v1, v3

    :goto_2
    move v3, v5

    goto :goto_3

    :cond_2
    if-ne v7, v5, :cond_3

    const v5, 0xffffc0

    and-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v6, v4, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 11
    aput-byte v6, v1, v3

    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 12
    aput-byte v4, v1, v5

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v6, v4, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 13
    aput-byte v6, v1, v3

    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 14
    aput-byte v6, v1, v5

    add-int/lit8 v5, v3, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 15
    aput-byte v4, v1, v3

    goto :goto_2

    :goto_3
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_1

    .line 16
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-object v1

    .line 17
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeAsByteObjectArray(Ljava/lang/String;)[Ljava/lang/Byte;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    const-string v1, "=="

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_0
    const-string v1, "="

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 4
    :cond_1
    :goto_0
    new-array v0, v0, [Ljava/lang/Byte;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 6
    sget-object v3, Lcom/microsoft/azure/storage/core/Base64;->DECODE_64:[B

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aget-byte v3, v3, v4

    .line 7
    sget-object v4, Lcom/microsoft/azure/storage/core/Base64;->DECODE_64:[B

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aget-byte v4, v4, v5

    .line 8
    sget-object v5, Lcom/microsoft/azure/storage/core/Base64;->DECODE_64:[B

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aget-byte v5, v5, v6

    .line 9
    sget-object v6, Lcom/microsoft/azure/storage/core/Base64;->DECODE_64:[B

    add-int/lit8 v7, v1, 0x3

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-byte v7, v7

    aget-byte v6, v6, v7

    if-ltz v3, :cond_4

    if-ltz v4, :cond_4

    const/4 v7, -0x1

    if-eq v5, v7, :cond_4

    if-eq v6, v7, :cond_4

    shl-int/lit8 v3, v3, 0x12

    shl-int/lit8 v4, v4, 0xc

    add-int/2addr v3, v4

    and-int/lit16 v4, v5, 0xff

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v3, v4

    and-int/lit16 v4, v6, 0xff

    add-int/2addr v3, v4

    const/4 v4, -0x2

    if-ne v5, v4, :cond_2

    const v4, 0xfff000

    and-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 10
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v0, v2

    :goto_2
    move v2, v4

    goto :goto_3

    :cond_2
    if-ne v6, v4, :cond_3

    const v4, 0xffffc0

    and-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 11
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v0, v2

    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 12
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v0, v4

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 13
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v0, v2

    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 14
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/lit8 v4, v2, 0x1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 15
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_2

    :goto_3
    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_1

    .line 16
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The String is not a valid Base64-encoded string."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-object v0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    array-length v4, p0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v2, v4, :cond_3

    .line 4
    array-length v4, p0

    sub-int/2addr v4, v1

    if-ge v2, v4, :cond_0

    .line 5
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    :goto_1
    add-int/2addr v3, v4

    goto :goto_2

    :cond_0
    if-ne v1, v6, :cond_1

    .line 6
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    goto :goto_2

    :cond_1
    if-ne v1, v5, :cond_2

    .line 7
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    goto :goto_1

    :cond_2
    :goto_2
    ushr-int/lit8 v4, v3, 0x12

    and-int/lit8 v4, v4, 0x3f

    int-to-byte v4, v4

    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 8
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v4, v3, 0xc

    and-int/lit8 v4, v4, 0x3f

    int-to-byte v4, v4

    .line 9
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v4, v3, 0x6

    and-int/lit8 v4, v4, 0x3f

    int-to-byte v4, v4

    .line 10
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v3, 0x3f

    int-to-byte v4, v4

    .line 11
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 13
    array-length v2, p0

    rem-int/lit8 v2, v2, 0x3

    if-ne v2, v6, :cond_4

    add-int/lit8 p0, v1, -0x2

    const-string v2, "=="

    .line 14
    invoke-virtual {v0, p0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 15
    :cond_4
    array-length p0, p0

    rem-int/lit8 p0, p0, 0x3

    if-ne p0, v5, :cond_5

    add-int/lit8 p0, v1, -0x1

    const-string v2, "="

    .line 16
    invoke-virtual {v0, p0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_5
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode([Ljava/lang/Byte;)Ljava/lang/String;
    .locals 7

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 20
    :goto_0
    array-length v4, p0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v2, v4, :cond_3

    .line 21
    array-length v4, p0

    sub-int/2addr v4, v1

    if-ge v2, v4, :cond_0

    .line 22
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v4, v2, 0x1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x2

    aget-object v4, p0, v4

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    :goto_1
    add-int/2addr v3, v4

    goto :goto_2

    :cond_0
    if-ne v1, v6, :cond_1

    .line 23
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    goto :goto_2

    :cond_1
    if-ne v1, v5, :cond_2

    .line 24
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v4, v2, 0x1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    goto :goto_1

    :cond_2
    :goto_2
    ushr-int/lit8 v4, v3, 0x12

    and-int/lit8 v4, v4, 0x3f

    int-to-byte v4, v4

    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 25
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v4, v3, 0xc

    and-int/lit8 v4, v4, 0x3f

    int-to-byte v4, v4

    .line 26
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v4, v3, 0x6

    and-int/lit8 v4, v4, 0x3f

    int-to-byte v4, v4

    .line 27
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v3, 0x3f

    int-to-byte v4, v4

    .line 28
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 29
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 30
    array-length v2, p0

    rem-int/lit8 v2, v2, 0x3

    if-ne v2, v6, :cond_4

    add-int/lit8 p0, v1, -0x2

    const-string v2, "=="

    .line 31
    invoke-virtual {v0, p0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 32
    :cond_4
    array-length p0, p0

    rem-int/lit8 p0, p0, 0x3

    if-ne p0, v5, :cond_5

    add-int/lit8 p0, v1, -0x1

    const-string v2, "="

    .line 33
    invoke-virtual {v0, p0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :cond_5
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static validateIsBase64String(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    .line 4
    sget-object v3, Lcom/microsoft/azure/storage/core/Base64;->DECODE_64:[B

    aget-byte v3, v3, v2

    const/4 v4, -0x2

    if-ne v3, v4, :cond_2

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ge v1, v3, :cond_1

    return v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ne v1, v3, :cond_2

    sget-object v3, Lcom/microsoft/azure/storage/core/Base64;->DECODE_64:[B

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aget-byte v3, v3, v5

    if-eq v3, v4, :cond_2

    return v0

    :cond_2
    if-ltz v2, :cond_4

    .line 7
    sget-object v3, Lcom/microsoft/azure/storage/core/Base64;->DECODE_64:[B

    aget-byte v2, v3, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_2
    return v0
.end method
