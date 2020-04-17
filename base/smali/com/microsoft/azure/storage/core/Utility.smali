.class public final Lcom/microsoft/azure/storage/core/Utility;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GMT_ZONE:Ljava/util/TimeZone;

.field public static final ISO8601_PATTERN:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

.field public static final ISO8601_PATTERN_NO_SECONDS:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm\'Z\'"

.field public static final JAVA_ISO8601_PATTERN:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

.field public static final LOCALE_US:Ljava/util/Locale;

.field public static final MAX_PRECISION_DATESTRING_LENGTH:I

.field public static final MAX_PRECISION_PATTERN:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

.field public static RFC1123_GMT_DATE_TIME_FORMATTER:Ljava/lang/ThreadLocal; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final RFC1123_PATTERN:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss z"

.field public static final UTC_ZONE:Ljava/util/TimeZone;

.field public static final jsonFactory:Le/b/a/a/d;

.field public static final pathStylePorts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final saxParserThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/xml/parsers/SAXParser;",
            ">;"
        }
    .end annotation
.end field

.field public static final xmlOutputFactory:Ljavax/xml/stream/XMLOutputFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/Utility$1;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/Utility$1;-><init>()V

    sput-object v0, Lcom/microsoft/azure/storage/core/Utility;->RFC1123_GMT_DATE_TIME_FORMATTER:Ljava/lang/ThreadLocal;

    const-string v0, "GMT"

    .line 2
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/storage/core/Utility;->GMT_ZONE:Ljava/util/TimeZone;

    const-string v0, "UTC"

    .line 3
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/storage/core/Utility;->UTC_ZONE:Ljava/util/TimeZone;

    .line 4
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x2710

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x2711

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x2712

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x2713

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x2714

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x2774

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0x2775

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0x2776

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x2777

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0x2778

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v1, 0x2af8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0x2af9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/16 v1, 0x2afa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/16 v1, 0x2afb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/16 v1, 0x2afc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const/16 v1, 0x2b5c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const/16 v1, 0x2b5d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const/16 v1, 0x2b5e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const/16 v1, 0x2b5f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const/16 v1, 0x2b60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/storage/core/Utility;->pathStylePorts:Ljava/util/List;

    .line 8
    new-instance v0, Le/b/a/a/d;

    invoke-direct {v0}, Le/b/a/a/d;-><init>()V

    sput-object v0, Lcom/microsoft/azure/storage/core/Utility;->jsonFactory:Le/b/a/a/d;

    .line 9
    new-instance v0, Lcom/microsoft/azure/storage/core/Utility$2;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/Utility$2;-><init>()V

    sput-object v0, Lcom/microsoft/azure/storage/core/Utility;->saxParserThreadLocal:Ljava/lang/ThreadLocal;

    .line 10
    invoke-static {}, Ljavax/xml/stream/XMLOutputFactory;->newInstance()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/storage/core/Utility;->xmlOutputFactory:Ljavax/xml/stream/XMLOutputFactory;

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    const-string v1, "\'"

    const-string v2, ""

    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/microsoft/azure/storage/core/Utility;->MAX_PRECISION_DATESTRING_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static analyzeStream(Ljava/io/InputStream;JJZZ)Lcom/microsoft/azure/storage/core/StreamMd5AndLength;
    .locals 17

    move-object/from16 v0, p0

    const-wide v1, 0x7fffffffffffffffL

    const-wide/16 v3, 0x0

    cmp-long v5, p3, v3

    if-gez v5, :cond_0

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v5, p3

    :goto_0
    const/high16 v7, 0x10000000

    if-eqz p5, :cond_2

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2
    invoke-virtual {v0, v7}, Ljava/io/InputStream;->mark(I)V

    goto :goto_1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream must be markable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    if-eqz p6, :cond_3

    :try_start_0
    const-string v9, "MD5"

    .line 4
    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->generateNewUnexpectedStorageException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object v0

    throw v0

    :cond_3
    const/4 v9, 0x0

    :goto_2
    cmp-long v10, p1, v3

    if-gez v10, :cond_4

    goto :goto_3

    :cond_4
    move-wide/from16 v1, p1

    .line 6
    :goto_3
    new-instance v10, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    invoke-direct {v10}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;-><init>()V

    const/16 v11, 0x2000

    new-array v12, v11, [B

    int-to-long v13, v11

    .line 7
    invoke-virtual {v10}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getLength()J

    move-result-wide v15

    sub-long v3, v1, v15

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v12, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    :goto_4
    const-wide/16 v7, -0x1

    if-lez v4, :cond_7

    const/4 v4, -0x1

    if-eq v11, v4, :cond_7

    if-eqz p6, :cond_5

    .line 9
    invoke-virtual {v9, v12, v3, v11}, Ljava/security/MessageDigest;->update([BII)V

    .line 10
    :cond_5
    invoke-virtual {v10}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getLength()J

    move-result-wide v15

    int-to-long v3, v11

    add-long/2addr v3, v15

    invoke-virtual {v10, v3, v4}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->setLength(J)V

    .line 11
    invoke-virtual {v10}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getLength()J

    move-result-wide v3

    cmp-long v11, v3, v5

    if-lez v11, :cond_6

    .line 12
    invoke-virtual {v10, v7, v8}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->setLength(J)V

    const/4 v3, 0x0

    .line 13
    invoke-virtual {v10, v3}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->setMd5(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v10}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getLength()J

    move-result-wide v7

    sub-long v7, v1, v7

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v4, v7

    const/4 v11, 0x0

    .line 15
    invoke-virtual {v0, v12, v11, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    move v11, v7

    const/4 v3, 0x0

    goto :goto_4

    .line 16
    :cond_7
    :goto_5
    invoke-virtual {v10}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getLength()J

    move-result-wide v3

    cmp-long v5, v3, v7

    if-eqz v5, :cond_8

    if-eqz p6, :cond_8

    .line 17
    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/azure/storage/core/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->setMd5(Ljava/lang/String;)V

    .line 18
    :cond_8
    invoke-virtual {v10}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getLength()J

    move-result-wide v3

    cmp-long v5, v3, v7

    if-eqz v5, :cond_9

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_9

    .line 19
    invoke-virtual {v10}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getLength()J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-virtual {v10, v1, v2}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->setLength(J)V

    :cond_9
    if-eqz p5, :cond_a

    .line 20
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V

    const/high16 v1, 0x10000000

    .line 21
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    :cond_a
    return-object v10
.end method

.method public static assertContinuationType(Lcom/microsoft/azure/storage/ResultContinuation;Lcom/microsoft/azure/storage/ResultContinuationType;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ResultContinuation;->getContinuationType()Lcom/microsoft/azure/storage/ResultContinuationType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/storage/ResultContinuationType;->NONE:Lcom/microsoft/azure/storage/ResultContinuationType;

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ResultContinuation;->getContinuationType()Lcom/microsoft/azure/storage/ResultContinuationType;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ResultContinuation;->getContinuationType()Lcom/microsoft/azure/storage/ResultContinuationType;

    move-result-object p0

    aput-object p0, v1, p1

    const-string p0, "The continuation type passed in is unexpected. Please verify that the correct continuation type is passed in. Expected {%s}, found {%s}."

    .line 5
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static assertGreaterThanOrEqual(Ljava/lang/String;JJ)V
    .locals 1

    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    const/4 p0, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, p0

    const-string p0, "The value of the parameter \'%s\' should be greater than or equal to %s."

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static assertInBounds(Ljava/lang/String;JJJ)V
    .locals 1

    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    cmp-long v0, p1, p5

    if-gtz v0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    const/4 p0, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, p0

    const/4 p0, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, p0

    const-string p0, "The value of the parameter \'%s\' should be between %s and %s."

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "The argument must not be null. Argument name: %s."

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "The argument must not be null or an empty string. Argument name: %s."

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static binaryAppend([B[B)[B
    .locals 3

    .line 1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static checkNullaryCtor(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "Class type must contain contain a nullary constructor."

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createXMLStreamWriter(Ljava/io/StringWriter;)Ljavax/xml/stream/XMLStreamWriter;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/core/Utility;->xmlOutputFactory:Ljavax/xml/stream/XMLOutputFactory;

    invoke-virtual {v0, p0}, Ljavax/xml/stream/XMLOutputFactory;->createXMLStreamWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object p0

    return-object p0
.end method

.method public static determinePathStyleFromUri(Ljava/net/URI;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v2, "/"

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 5
    :cond_1
    sget-object v0, Lcom/microsoft/azure/storage/core/Utility;->pathStylePorts:Ljava/util/List;

    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->isHostDnsName(Ljava/net/URI;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public static encryptStreamIfUnderThreshold(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;Ljavax/crypto/Cipher;JJ)J
    .locals 9

    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    cmp-long v4, p5, v2

    if-gez v4, :cond_0

    move-wide p5, v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-eqz v4, :cond_5

    const/high16 v4, 0x10000000

    .line 2
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->mark(I)V

    cmp-long v5, p3, v2

    if-gez v5, :cond_1

    move-wide p3, v0

    .line 3
    :cond_1
    new-instance v0, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v0, p1, p2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 4
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p2

    int-to-long v1, p2

    const/16 p2, 0x2000

    new-array v3, p2, [B

    int-to-long v5, p2

    sub-long v1, p3, v1

    .line 5
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p2, v1

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v3, v1, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    :goto_0
    if-lez p2, :cond_3

    const/4 p2, -0x1

    if-eq v2, p2, :cond_3

    .line 7
    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    .line 8
    invoke-virtual {v0}, Ljavax/crypto/CipherOutputStream;->flush()V

    .line 9
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p2

    int-to-long v7, p2

    cmp-long p2, v7, p5

    if-lez p2, :cond_2

    goto :goto_1

    :cond_2
    sub-long v7, p3, v7

    .line 10
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int p2, v7

    .line 11
    invoke-virtual {p0, v3, v1, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_0

    .line 12
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 13
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->mark(I)V

    .line 14
    invoke-virtual {v0}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 15
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    int-to-long p0, p0

    cmp-long p2, p0, p5

    if-lez p2, :cond_4

    const-wide/16 p0, -0x1

    :cond_4
    return-wide p0

    .line 16
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Input stream must be markable."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static formatETag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\""

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "\"%s\""

    .line 2
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateNewUnexpectedStorageException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;
    .locals 7

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/StorageException;

    sget-object v0, Lcom/microsoft/azure/storage/StorageErrorCode;->NONE:Lcom/microsoft/azure/storage/StorageErrorCode;

    const-string v1, "NONE"

    const-string v2, "Unexpected internal storage client error."

    const/16 v3, 0x132

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    .line 2
    invoke-virtual {v6, p0}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v6
.end method

.method public static getGMTTime()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->getGMTTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGMTTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/microsoft/azure/storage/core/Utility;->RFC1123_GMT_DATE_TIME_FORMATTER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getJavaISO8601Time(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2
    sget-object v1, Lcom/microsoft/azure/storage/core/Utility;->UTC_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getJsonGenerator(Ljava/io/OutputStream;)Le/b/a/a/f;
    .locals 4

    .line 7
    sget-object v0, Lcom/microsoft/azure/storage/core/Utility;->jsonFactory:Le/b/a/a/d;

    if-eqz v0, :cond_4

    .line 8
    sget-object v1, Le/b/a/a/c;->UTF8:Le/b/a/a/c;

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, p0, v2}, Le/b/a/a/d;->a(Ljava/lang/Object;Z)Le/b/a/a/p/b;

    move-result-object v2

    .line 10
    iput-object v1, v2, Le/b/a/a/p/b;->b:Le/b/a/a/c;

    .line 11
    sget-object v3, Le/b/a/a/c;->UTF8:Le/b/a/a/c;

    if-ne v1, v3, :cond_0

    .line 12
    new-instance v1, Le/b/a/a/q/g;

    iget v3, v0, Le/b/a/a/d;->C:I

    invoke-direct {v1, v2, v3, p0}, Le/b/a/a/q/g;-><init>(Le/b/a/a/p/b;ILjava/io/OutputStream;)V

    .line 13
    iget-object p0, v0, Le/b/a/a/d;->D:Le/b/a/a/n;

    .line 14
    sget-object v0, Le/b/a/a/d;->H:Le/b/a/a/n;

    if-eq p0, v0, :cond_3

    .line 15
    iput-object p0, v1, Le/b/a/a/q/c;->D:Le/b/a/a/n;

    goto :goto_1

    :cond_0
    if-ne v1, v3, :cond_1

    .line 16
    new-instance v1, Le/b/a/a/p/i;

    invoke-direct {v1, v2, p0}, Le/b/a/a/p/i;-><init>(Le/b/a/a/p/b;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 17
    :cond_1
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Le/b/a/a/c;->getJavaName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, p0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object v1, v3

    .line 18
    :goto_0
    new-instance p0, Le/b/a/a/q/i;

    iget v3, v0, Le/b/a/a/d;->C:I

    invoke-direct {p0, v2, v3, v1}, Le/b/a/a/q/i;-><init>(Le/b/a/a/p/b;ILjava/io/Writer;)V

    .line 19
    iget-object v0, v0, Le/b/a/a/d;->D:Le/b/a/a/n;

    .line 20
    sget-object v1, Le/b/a/a/d;->H:Le/b/a/a/n;

    if-eq v0, v1, :cond_2

    .line 21
    iput-object v0, p0, Le/b/a/a/q/c;->D:Le/b/a/a/n;

    :cond_2
    move-object v1, p0

    :cond_3
    :goto_1
    return-object v1

    :cond_4
    const/4 p0, 0x0

    .line 22
    throw p0
.end method

.method public static getJsonGenerator(Ljava/io/StringWriter;)Le/b/a/a/f;
    .locals 4

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/core/Utility;->jsonFactory:Le/b/a/a/d;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p0, v1}, Le/b/a/a/d;->a(Ljava/lang/Object;Z)Le/b/a/a/p/b;

    move-result-object v1

    .line 3
    new-instance v2, Le/b/a/a/q/i;

    iget v3, v0, Le/b/a/a/d;->C:I

    invoke-direct {v2, v1, v3, p0}, Le/b/a/a/q/i;-><init>(Le/b/a/a/p/b;ILjava/io/Writer;)V

    .line 4
    iget-object p0, v0, Le/b/a/a/d;->D:Le/b/a/a/n;

    .line 5
    sget-object v0, Le/b/a/a/d;->H:Le/b/a/a/n;

    if-eq p0, v0, :cond_0

    .line 6
    iput-object p0, v2, Le/b/a/a/q/c;->D:Le/b/a/a/n;

    :cond_0
    return-object v2
.end method

.method public static getJsonParser(Ljava/io/InputStream;)Le/b/a/a/i;
    .locals 16

    move-object/from16 v0, p0

    .line 11
    sget-object v1, Lcom/microsoft/azure/storage/core/Utility;->jsonFactory:Le/b/a/a/d;

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v0, v2}, Le/b/a/a/d;->a(Ljava/lang/Object;Z)Le/b/a/a/p/b;

    move-result-object v3

    .line 13
    new-instance v4, Le/b/a/a/q/a;

    invoke-direct {v4, v3, v0}, Le/b/a/a/q/a;-><init>(Le/b/a/a/p/b;Ljava/io/InputStream;)V

    iget v7, v1, Le/b/a/a/d;->B:I

    iget-object v9, v1, Le/b/a/a/d;->y:Le/b/a/a/r/a;

    iget-object v0, v1, Le/b/a/a/d;->x:Le/b/a/a/r/b;

    iget v1, v1, Le/b/a/a/d;->A:I

    const/4 v3, 0x4

    .line 14
    invoke-virtual {v4, v3}, Le/b/a/a/q/a;->b(I)Z

    move-result v5

    const/4 v6, 0x2

    const/16 v8, 0x10

    const/4 v11, 0x1

    const/16 v12, 0x8

    if-eqz v5, :cond_d

    .line 15
    iget-object v5, v4, Le/b/a/a/q/a;->c:[B

    iget v13, v4, Le/b/a/a/q/a;->d:I

    aget-byte v14, v5, v13

    shl-int/lit8 v14, v14, 0x18

    add-int/lit8 v15, v13, 0x1

    aget-byte v15, v5, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v8

    or-int/2addr v14, v15

    add-int/lit8 v15, v13, 0x2

    aget-byte v8, v5, v15

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v12

    or-int/2addr v8, v14

    add-int/lit8 v14, v13, 0x3

    aget-byte v5, v5, v14

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v8

    const/high16 v8, -0x1010000

    const-string v12, "3412"

    if-eq v5, v8, :cond_c

    const/high16 v8, -0x20000

    const-string v3, "2143"

    if-eq v5, v8, :cond_5

    const v8, 0xfeff

    if-eq v5, v8, :cond_4

    const v13, 0xfffe

    if-eq v5, v13, :cond_3

    ushr-int/lit8 v10, v5, 0x10

    if-ne v10, v8, :cond_0

    .line 16
    iput v15, v4, Le/b/a/a/q/a;->d:I

    .line 17
    iput v6, v4, Le/b/a/a/q/a;->h:I

    .line 18
    iput-boolean v11, v4, Le/b/a/a/q/a;->g:Z

    goto :goto_0

    :cond_0
    if-ne v10, v13, :cond_1

    .line 19
    iput v15, v4, Le/b/a/a/q/a;->d:I

    .line 20
    iput v6, v4, Le/b/a/a/q/a;->h:I

    .line 21
    iput-boolean v2, v4, Le/b/a/a/q/a;->g:Z

    goto :goto_0

    :cond_1
    ushr-int/lit8 v8, v5, 0x8

    const v10, 0xefbbbf

    if-ne v8, v10, :cond_2

    .line 22
    iput v14, v4, Le/b/a/a/q/a;->d:I

    .line 23
    iput v11, v4, Le/b/a/a/q/a;->h:I

    .line 24
    iput-boolean v11, v4, Le/b/a/a/q/a;->g:Z

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 25
    :cond_3
    invoke-virtual {v4, v3}, Le/b/a/a/q/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 26
    :cond_4
    iput-boolean v11, v4, Le/b/a/a/q/a;->g:Z

    const/4 v8, 0x4

    add-int/2addr v13, v8

    .line 27
    iput v13, v4, Le/b/a/a/q/a;->d:I

    .line 28
    iput v8, v4, Le/b/a/a/q/a;->h:I

    goto :goto_0

    :cond_5
    const/4 v8, 0x4

    add-int/2addr v13, v8

    .line 29
    iput v13, v4, Le/b/a/a/q/a;->d:I

    .line 30
    iput v8, v4, Le/b/a/a/q/a;->h:I

    .line 31
    iput-boolean v2, v4, Le/b/a/a/q/a;->g:Z

    :goto_0
    const/4 v8, 0x1

    :goto_1
    if-eqz v8, :cond_6

    goto :goto_5

    :cond_6
    shr-int/lit8 v8, v5, 0x8

    if-nez v8, :cond_7

    .line 32
    iput-boolean v11, v4, Le/b/a/a/q/a;->g:Z

    :goto_2
    const/4 v3, 0x4

    goto :goto_3

    :cond_7
    const v8, 0xffffff

    and-int/2addr v8, v5

    if-nez v8, :cond_8

    .line 33
    iput-boolean v2, v4, Le/b/a/a/q/a;->g:Z

    goto :goto_2

    .line 34
    :goto_3
    iput v3, v4, Le/b/a/a/q/a;->h:I

    const/4 v3, 0x1

    goto :goto_4

    :cond_8
    const v8, -0xff0001

    and-int/2addr v8, v5

    if-eqz v8, :cond_b

    const v8, -0xff01

    and-int/2addr v8, v5

    if-eqz v8, :cond_a

    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_9

    goto :goto_5

    :cond_9
    const/16 v3, 0x10

    ushr-int/2addr v5, v3

    .line 35
    invoke-virtual {v4, v5}, Le/b/a/a/q/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_5

    .line 36
    :cond_a
    invoke-virtual {v4, v3}, Le/b/a/a/q/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_b
    const/4 v0, 0x0

    .line 37
    invoke-virtual {v4, v12}, Le/b/a/a/q/a;->a(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x0

    .line 38
    invoke-virtual {v4, v12}, Le/b/a/a/q/a;->a(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_d
    invoke-virtual {v4, v6}, Le/b/a/a/q/a;->b(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 40
    iget-object v3, v4, Le/b/a/a/q/a;->c:[B

    iget v5, v4, Le/b/a/a/q/a;->d:I

    aget-byte v8, v3, v5

    and-int/lit16 v8, v8, 0xff

    const/16 v10, 0x8

    shl-int/2addr v8, v10

    add-int/2addr v5, v11

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v8

    .line 41
    invoke-virtual {v4, v3}, Le/b/a/a/q/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_e

    :goto_5
    const/4 v2, 0x1

    :cond_e
    const-string v3, "Internal error"

    if-nez v2, :cond_f

    .line 42
    sget-object v2, Le/b/a/a/c;->UTF8:Le/b/a/a/c;

    goto :goto_6

    .line 43
    :cond_f
    iget v2, v4, Le/b/a/a/q/a;->h:I

    if-eq v2, v11, :cond_14

    if-eq v2, v6, :cond_12

    const/4 v5, 0x4

    if-ne v2, v5, :cond_11

    .line 44
    iget-boolean v2, v4, Le/b/a/a/q/a;->g:Z

    if-eqz v2, :cond_10

    sget-object v2, Le/b/a/a/c;->UTF32_BE:Le/b/a/a/c;

    goto :goto_6

    :cond_10
    sget-object v2, Le/b/a/a/c;->UTF32_LE:Le/b/a/a/c;

    goto :goto_6

    .line 45
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_12
    iget-boolean v2, v4, Le/b/a/a/q/a;->g:Z

    if-eqz v2, :cond_13

    sget-object v2, Le/b/a/a/c;->UTF16_BE:Le/b/a/a/c;

    goto :goto_6

    :cond_13
    sget-object v2, Le/b/a/a/c;->UTF16_LE:Le/b/a/a/c;

    goto :goto_6

    .line 47
    :cond_14
    sget-object v2, Le/b/a/a/c;->UTF8:Le/b/a/a/c;

    .line 48
    :goto_6
    iget-object v5, v4, Le/b/a/a/q/a;->a:Le/b/a/a/p/b;

    .line 49
    iput-object v2, v5, Le/b/a/a/p/b;->b:Le/b/a/a/c;

    .line 50
    sget-object v5, Le/b/a/a/c;->UTF8:Le/b/a/a/c;

    if-ne v2, v5, :cond_16

    .line 51
    sget-object v2, Le/b/a/a/d$a;->CANONICALIZE_FIELD_NAMES:Le/b/a/a/d$a;

    invoke-virtual {v2, v1}, Le/b/a/a/d$a;->enabledIn(I)Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v9, :cond_15

    .line 52
    new-instance v0, Le/b/a/a/r/a;

    sget-object v2, Le/b/a/a/d$a;->INTERN_FIELD_NAMES:Le/b/a/a/d$a;

    invoke-virtual {v2, v1}, Le/b/a/a/d$a;->enabledIn(I)Z

    move-result v10

    iget v11, v9, Le/b/a/a/r/a;->c:I

    sget-object v2, Le/b/a/a/d$a;->FAIL_ON_SYMBOL_HASH_OVERFLOW:Le/b/a/a/d$a;

    invoke-virtual {v2, v1}, Le/b/a/a/d$a;->enabledIn(I)Z

    move-result v12

    iget-object v1, v9, Le/b/a/a/r/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Le/b/a/a/r/a$a;

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Le/b/a/a/r/a;-><init>(Le/b/a/a/r/a;ZIZLe/b/a/a/r/a$a;)V

    .line 53
    new-instance v1, Le/b/a/a/q/h;

    iget-object v6, v4, Le/b/a/a/q/a;->a:Le/b/a/a/p/b;

    iget-object v8, v4, Le/b/a/a/q/a;->b:Ljava/io/InputStream;

    iget-object v10, v4, Le/b/a/a/q/a;->c:[B

    iget v11, v4, Le/b/a/a/q/a;->d:I

    iget v12, v4, Le/b/a/a/q/a;->e:I

    iget-boolean v13, v4, Le/b/a/a/q/a;->f:Z

    move-object v5, v1

    move-object v9, v0

    invoke-direct/range {v5 .. v13}, Le/b/a/a/q/h;-><init>(Le/b/a/a/p/b;ILjava/io/InputStream;Le/b/a/a/r/a;[BIIZ)V

    goto :goto_9

    :cond_15
    const/4 v0, 0x0

    .line 54
    throw v0

    .line 55
    :cond_16
    new-instance v2, Le/b/a/a/q/f;

    iget-object v5, v4, Le/b/a/a/q/a;->a:Le/b/a/a/p/b;

    .line 56
    iget-object v6, v5, Le/b/a/a/p/b;->b:Le/b/a/a/c;

    .line 57
    invoke-virtual {v6}, Le/b/a/a/c;->bits()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_18

    const/16 v9, 0x10

    if-eq v8, v9, :cond_18

    const/16 v6, 0x20

    if-ne v8, v6, :cond_17

    .line 58
    new-instance v3, Le/b/a/a/p/h;

    iget-object v10, v4, Le/b/a/a/q/a;->a:Le/b/a/a/p/b;

    iget-object v11, v4, Le/b/a/a/q/a;->b:Ljava/io/InputStream;

    iget-object v12, v4, Le/b/a/a/q/a;->c:[B

    iget v13, v4, Le/b/a/a/q/a;->d:I

    iget v14, v4, Le/b/a/a/q/a;->e:I

    .line 59
    iget-object v4, v10, Le/b/a/a/p/b;->b:Le/b/a/a/c;

    .line 60
    invoke-virtual {v4}, Le/b/a/a/c;->isBigEndian()Z

    move-result v15

    move-object v9, v3

    invoke-direct/range {v9 .. v15}, Le/b/a/a/p/h;-><init>(Le/b/a/a/p/b;Ljava/io/InputStream;[BIIZ)V

    goto :goto_8

    .line 61
    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_18
    iget-object v10, v4, Le/b/a/a/q/a;->b:Ljava/io/InputStream;

    if-nez v10, :cond_19

    .line 63
    new-instance v10, Ljava/io/ByteArrayInputStream;

    iget-object v3, v4, Le/b/a/a/q/a;->c:[B

    iget v8, v4, Le/b/a/a/q/a;->d:I

    iget v4, v4, Le/b/a/a/q/a;->e:I

    invoke-direct {v10, v3, v8, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    goto :goto_7

    .line 64
    :cond_19
    iget v3, v4, Le/b/a/a/q/a;->d:I

    iget v8, v4, Le/b/a/a/q/a;->e:I

    if-ge v3, v8, :cond_1a

    .line 65
    new-instance v3, Le/b/a/a/p/e;

    iget-object v9, v4, Le/b/a/a/q/a;->a:Le/b/a/a/p/b;

    iget-object v11, v4, Le/b/a/a/q/a;->c:[B

    iget v12, v4, Le/b/a/a/q/a;->d:I

    iget v13, v4, Le/b/a/a/q/a;->e:I

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Le/b/a/a/p/e;-><init>(Le/b/a/a/p/b;Ljava/io/InputStream;[BII)V

    move-object v10, v3

    .line 66
    :cond_1a
    :goto_7
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Le/b/a/a/c;->getJavaName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 67
    :goto_8
    invoke-virtual {v0, v1}, Le/b/a/a/r/b;->b(I)Le/b/a/a/r/b;

    move-result-object v0

    invoke-direct {v2, v5, v7, v3, v0}, Le/b/a/a/q/f;-><init>(Le/b/a/a/p/b;ILjava/io/Reader;Le/b/a/a/r/b;)V

    move-object v1, v2

    .line 68
    :goto_9
    invoke-static {v1}, Lcom/microsoft/azure/storage/core/Utility;->setupJsonParser(Le/b/a/a/i;)Le/b/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public static getJsonParser(Ljava/lang/String;)Le/b/a/a/i;
    .locals 12

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/core/Utility;->jsonFactory:Le/b/a/a/d;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0x8000

    if-gt v1, v2, :cond_0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, p0, v2}, Le/b/a/a/d;->a(Ljava/lang/Object;Z)Le/b/a/a/p/b;

    move-result-object v4

    .line 4
    iget-object v2, v4, Le/b/a/a/p/b;->g:[C

    invoke-virtual {v4, v2}, Le/b/a/a/p/b;->a(Ljava/lang/Object;)V

    .line 5
    iget-object v2, v4, Le/b/a/a/p/b;->d:Le/b/a/a/s/a;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Le/b/a/a/s/a;->a(II)[C

    move-result-object v8

    iput-object v8, v4, Le/b/a/a/p/b;->g:[C

    .line 6
    invoke-virtual {p0, v3, v1, v8, v3}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v11, 0x1

    .line 7
    new-instance p0, Le/b/a/a/q/f;

    iget v5, v0, Le/b/a/a/d;->B:I

    iget-object v2, v0, Le/b/a/a/d;->x:Le/b/a/a/r/b;

    iget v0, v0, Le/b/a/a/d;->A:I

    invoke-virtual {v2, v0}, Le/b/a/a/r/b;->b(I)Le/b/a/a/r/b;

    move-result-object v7

    add-int/lit8 v10, v1, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Le/b/a/a/q/f;-><init>(Le/b/a/a/p/b;ILjava/io/Reader;Le/b/a/a/r/b;[CIIZ)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Le/b/a/a/d;->a(Ljava/io/Reader;)Le/b/a/a/i;

    move-result-object p0

    .line 9
    :goto_0
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->setupJsonParser(Le/b/a/a/i;)Le/b/a/a/i;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    .line 10
    throw p0
.end method

.method public static getListingLocationMode(Lcom/microsoft/azure/storage/ResultContinuation;)Lcom/microsoft/azure/storage/core/RequestLocationMode;
    .locals 5

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ResultContinuation;->getTargetLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ResultContinuation;->getTargetLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    sget-object p0, Lcom/microsoft/azure/storage/core/RequestLocationMode;->SECONDARY_ONLY:Lcom/microsoft/azure/storage/core/RequestLocationMode;

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "token"

    aput-object v4, v2, v3

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ResultContinuation;->getTargetLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "The argument is out of range. Argument name: %s, Value passed: %s."

    .line 6
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    sget-object p0, Lcom/microsoft/azure/storage/core/RequestLocationMode;->PRIMARY_ONLY:Lcom/microsoft/azure/storage/core/RequestLocationMode;

    return-object p0

    .line 8
    :cond_2
    sget-object p0, Lcom/microsoft/azure/storage/core/RequestLocationMode;->PRIMARY_OR_SECONDARY:Lcom/microsoft/azure/storage/core/RequestLocationMode;

    return-object p0
.end method

.method public static getRemainingTimeout(Ljava/lang/Long;Ljava/lang/Integer;)I
    .locals 6

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr p0, v0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_1

    long-to-int p1, p0

    return p1

    .line 2
    :cond_1
    new-instance v5, Ljava/util/concurrent/TimeoutException;

    const-string p0, "The client could not finish the operation within specified maximum execution timeout."

    invoke-direct {v5, p0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p0, Lcom/microsoft/azure/storage/StorageException;

    const/16 v3, 0x132

    const/4 v4, 0x0

    const-string v1, "OperationTimedOut"

    const-string v2, "The client could not finish the operation within specified maximum execution timeout."

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    .line 4
    throw p0

    :cond_2
    const p0, 0x493e0

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, p0

    return p1

    :cond_3
    return p0
.end method

.method public static getSAXParser()Ljavax/xml/parsers/SAXParser;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/core/Utility;->saxParserThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/parsers/SAXParser;

    .line 2
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->reset()V

    return-object v0
.end method

.method public static getStandardHeaderValue(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static getUTCTimeOrEmpty(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2
    sget-object v1, Lcom/microsoft/azure/storage/core/Utility;->UTC_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initIOException(Ljava/lang/Exception;)Ljava/io/IOException;
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Please see the cause for further information."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Please see the cause for further information."

    .line 3
    :goto_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static isHostDnsName(Ljava/net/URI;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 4
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isNullOrEmptyOrWhitespace(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static logHttpError(Lcom/microsoft/azure/storage/StorageException;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Logger;->shouldLog(Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error response received. "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "HttpStatusCode= "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/StorageException;->getHttpStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", HttpStatusMessage= "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ErrorCode= "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/StorageException;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/StorageException;->getExtendedErrorInformation()Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v1, ", ExtendedErrorInformation= {ErrorMessage= "

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;->getAdditionalDetails()Ljava/util/HashMap;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v1, ", AdditionalDetails= { "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "= "

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 19
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const-string v1, ","

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/16 v1, 0x7d

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_2
    const-string p0, "}"

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/microsoft/azure/storage/core/Logger;->debug(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method public static logHttpRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Logger;->shouldLog(Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v2, 0x0

    .line 11
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 12
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    const-string v3, ","

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/16 v1, 0xa

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/microsoft/azure/storage/core/Logger;->trace(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method public static logHttpResponse(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Logger;->shouldLog(Lcom/microsoft/azure/storage/OperationContext;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v2, 0x0

    .line 7
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    const-string v3, ","

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/16 v1, 0xa

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/microsoft/azure/storage/core/Logger;->trace(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method public static parseAccountString(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ";"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 4
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    aget-object v3, p0, v2

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    .line 6
    aget-object v4, p0, v2

    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 7
    aget-object v5, p0, v2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid connection string."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    const/4 v2, 0x1

    const-string v3, "Invalid Date String: %s."

    const/4 v4, 0x0

    const-string v5, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    const-string v1, "Z"

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    sget v0, Lcom/microsoft/azure/storage/core/Utility;->MAX_PRECISION_DATESTRING_LENGTH:I

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_1
    const-string v0, "0"

    .line 4
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    const-string v0, "00"

    .line 5
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v5, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    goto :goto_0

    :cond_1
    const-string v5, "yyyy-MM-dd\'T\'HH:mm\'Z\'"

    .line 6
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    invoke-direct {v0, v5, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 7
    sget-object v1, Lcom/microsoft/azure/storage/core/Utility;->UTC_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 8
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static parseDate(Ljava/lang/String;Z)Ljava/util/Date;
    .locals 3

    if-nez p1, :cond_0

    .line 10
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x18

    if-le p1, v0, :cond_1

    const/16 p1, 0x14

    .line 12
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 14
    :cond_1
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static parseRFC1123DateFromStringInGMT(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/core/Utility;->RFC1123_GMT_DATE_TIME_FORMATTER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static safeDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "+"

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const-string p0, ""

    return-object p0

    .line 2
    :cond_1
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "UTF-8"

    if-eqz v1, :cond_6

    .line 3
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 5
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_3

    if-le v3, v4, :cond_2

    .line 6
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v4, v0, :cond_5

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_6
    invoke-static {p0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 12
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->generateNewUnexpectedStorageException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p0

    throw p0
.end method

.method public static safeEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "UTF-8"

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const-string p0, ""

    return-object p0

    .line 2
    :cond_1
    :try_start_0
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 6
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_3

    if-le v2, v3, :cond_2

    .line 7
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v3, "%20"

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v3, v2, :cond_5

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_6
    return-object v1

    :catch_0
    move-exception p0

    .line 12
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->generateNewUnexpectedStorageException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p0

    throw p0
.end method

.method public static safeRelativize(Ljava/net/URI;Ljava/net/URI;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x2f

    if-ge v1, v4, :cond_4

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v4, v6, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_3

    add-int/lit8 v3, v1, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_6

    add-int/lit8 v4, v1, -0x1

    .line 10
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-eq p0, v5, :cond_6

    :cond_5
    add-int/lit8 v3, v1, 0x1

    .line 11
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-ne v1, p0, :cond_7

    .line 12
    new-instance p0, Ljava/net/URI;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 13
    :cond_7
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    if-lez v2, :cond_8

    const-string v1, "../"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 16
    :cond_8
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_9
    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_a

    const-string p0, "?"

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_a
    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_b

    const-string p0, "#"

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 25
    :cond_c
    :goto_4
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setupJsonParser(Le/b/a/a/i;)Le/b/a/a/i;
    .locals 4

    .line 1
    sget-object v0, Le/b/a/a/i$a;->AUTO_CLOSE_SOURCE:Le/b/a/a/i$a;

    move-object v1, p0

    check-cast v1, Le/b/a/a/o/b;

    .line 2
    iget v2, v1, Le/b/a/a/i;->x:I

    invoke-virtual {v0}, Le/b/a/a/i$a;->getMask()I

    move-result v3

    not-int v3, v3

    and-int/2addr v2, v3

    iput v2, v1, Le/b/a/a/i;->x:I

    .line 3
    sget-object v2, Le/b/a/a/i$a;->STRICT_DUPLICATE_DETECTION:Le/b/a/a/i$a;

    if-ne v0, v2, :cond_0

    .line 4
    iget-object v0, v1, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    const/4 v2, 0x0

    .line 5
    iput-object v2, v0, Le/b/a/a/q/d;->d:Le/b/a/a/q/b;

    .line 6
    iput-object v0, v1, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    .line 7
    :cond_0
    sget-object v0, Le/b/a/a/i$a;->ALLOW_NON_NUMERIC_NUMBERS:Le/b/a/a/i$a;

    check-cast p0, Le/b/a/a/o/b;

    .line 8
    iget v1, p0, Le/b/a/a/i;->x:I

    invoke-virtual {v0}, Le/b/a/a/i$a;->getMask()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Le/b/a/a/i;->x:I

    .line 9
    sget-object v1, Le/b/a/a/i$a;->STRICT_DUPLICATE_DETECTION:Le/b/a/a/i$a;

    if-ne v0, v1, :cond_1

    .line 10
    iget-object v0, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    .line 11
    iget-object v1, v0, Le/b/a/a/q/d;->d:Le/b/a/a/q/b;

    if-nez v1, :cond_1

    .line 12
    new-instance v1, Le/b/a/a/q/b;

    invoke-direct {v1, p0}, Le/b/a/a/q/b;-><init>(Ljava/lang/Object;)V

    .line 13
    iput-object v1, v0, Le/b/a/a/q/d;->d:Le/b/a/a/q/b;

    .line 14
    iput-object v0, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    :cond_1
    return-object p0
.end method

.method public static trimEnd(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static trimStart(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static validateMaxExecutionTimeout(Ljava/lang/Long;)Z
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/microsoft/azure/storage/core/Utility;->validateMaxExecutionTimeout(Ljava/lang/Long;J)Z

    move-result p0

    return p0
.end method

.method public static validateMaxExecutionTimeout(Ljava/lang/Long;J)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, p1

    cmp-long p0, v3, v1

    if-gez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;JZZLcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/RequestOptions;)Lcom/microsoft/azure/storage/core/StreamMd5AndLength;
    .locals 10

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/microsoft/azure/storage/core/Utility;->writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;JZZLcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/RequestOptions;Ljava/lang/Boolean;)Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    move-result-object v0

    return-object v0
.end method

.method public static writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;JZZLcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/RequestOptions;Ljava/lang/Boolean;)Lcom/microsoft/azure/storage/core/StreamMd5AndLength;
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 3
    invoke-static/range {v0 .. v10}, Lcom/microsoft/azure/storage/core/Utility;->writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;JZZLcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/RequestOptions;Ljava/lang/Boolean;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/core/StreamMd5AndLength;)Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    move-result-object v0

    return-object v0
.end method

.method public static writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;JZZLcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/RequestOptions;Ljava/lang/Boolean;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/core/StreamMd5AndLength;)Lcom/microsoft/azure/storage/core/StreamMd5AndLength;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            "JZZ",
            "Lcom/microsoft/azure/storage/OperationContext;",
            "Lcom/microsoft/azure/storage/RequestOptions;",
            "Ljava/lang/Boolean;",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "**",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/microsoft/azure/storage/core/StreamMd5AndLength;",
            ")",
            "Lcom/microsoft/azure/storage/core/StreamMd5AndLength;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    if-eqz p4, :cond_0

    .line 4
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V

    const/high16 v4, 0x10000000

    .line 6
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->mark(I)V

    :cond_0
    if-nez v3, :cond_1

    .line 7
    new-instance v3, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    invoke-direct {v3}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;-><init>()V

    if-eqz p5, :cond_2

    :try_start_0
    const-string v4, "MD5"

    .line 8
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->setDigest(Ljava/security/MessageDigest;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->generateNewUnexpectedStorageException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object v0

    throw v0

    :cond_1
    const/4 v4, 0x0

    .line 10
    invoke-virtual {v3, v4}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->setMd5(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v6, p2, v4

    if-gez v6, :cond_3

    const-wide v4, 0x7fffffffffffffffL

    goto :goto_1

    :cond_3
    move-wide/from16 v4, p2

    :goto_1
    const/16 v6, 0x2000

    new-array v7, v6, [B

    int-to-long v8, v6

    .line 11
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v6, v10

    const/4 v10, 0x0

    .line 12
    invoke-virtual {v0, v7, v10, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    :goto_2
    if-lez v6, :cond_8

    const/4 v6, -0x1

    if-eq v11, v6, :cond_8

    .line 13
    invoke-virtual/range {p7 .. p7}, Lcom/microsoft/azure/storage/RequestOptions;->getOperationExpiryTimeInMs()Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6}, Lcom/microsoft/azure/storage/core/Utility;->validateMaxExecutionTimeout(Ljava/lang/Long;)Z

    move-result v6

    if-nez v6, :cond_7

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {v1, v7, v10, v11}, Ljava/io/OutputStream;->write([BII)V

    :cond_4
    if-eqz p5, :cond_5

    .line 15
    invoke-virtual {v3}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getDigest()Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v7, v10, v11}, Ljava/security/MessageDigest;->update([BII)V

    .line 16
    :cond_5
    invoke-virtual {v3}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getLength()J

    move-result-wide v12

    int-to-long v14, v11

    add-long/2addr v12, v14

    invoke-virtual {v3, v12, v13}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->setLength(J)V

    .line 17
    invoke-virtual {v3}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getCurrentOperationByteCount()J

    move-result-wide v11

    add-long/2addr v11, v14

    invoke-virtual {v3, v11, v12}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->setCurrentOperationByteCount(J)V

    if-eqz v2, :cond_6

    .line 18
    invoke-virtual/range {p9 .. p9}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentRequestByteCount()J

    move-result-wide v11

    add-long/2addr v11, v14

    invoke-virtual {v2, v11, v12}, Lcom/microsoft/azure/storage/core/StorageRequest;->setCurrentRequestByteCount(J)V

    .line 19
    invoke-virtual {v2, v3}, Lcom/microsoft/azure/storage/core/StorageRequest;->setCurrentDescriptor(Lcom/microsoft/azure/storage/core/StreamMd5AndLength;)V

    .line 20
    :cond_6
    invoke-virtual {v3}, Lcom/microsoft/azure/storage/core/StreamMd5AndLength;->getLength()J

    move-result-wide v11

    sub-long v11, v4, v11

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v6, v11

    .line 21
    invoke-virtual {v0, v7, v10, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    goto :goto_2

    .line 22
    :cond_7
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "The client could not finish the operation within specified maximum execution timeout."

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->initIOException(Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_8
    if-eqz v1, :cond_9

    .line 24
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 25
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V

    :cond_9
    return-object v3
.end method
