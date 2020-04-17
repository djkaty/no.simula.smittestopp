.class public abstract Lk/c/a/a/a/s/s/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/nio/charset/Charset;

.field public static final f:[Ljava/lang/String;


# instance fields
.field public a:B

.field public b:I

.field public c:Z

.field public d:Lk/c/a/a/a/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lk/c/a/a/a/s/s/u;->e:Ljava/nio/charset/Charset;

    const-string v1, "reserved"

    const-string v2, "CONNECT"

    const-string v3, "CONNACK"

    const-string v4, "PUBLISH"

    const-string v5, "PUBACK"

    const-string v6, "PUBREC"

    const-string v7, "PUBREL"

    const-string v8, "PUBCOMP"

    const-string v9, "SUBSCRIBE"

    const-string v10, "SUBACK"

    const-string v11, "UNSUBSCRIBE"

    const-string v12, "UNSUBACK"

    const-string v13, "PINGREQ"

    const-string v14, "PINGRESP"

    const-string v15, "DISCONNECT"

    .line 2
    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    .line 3
    sput-object v0, Lk/c/a/a/a/s/s/u;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lk/c/a/a/a/s/s/u;->c:Z

    .line 3
    iput-byte p1, p0, Lk/c/a/a/a/s/s/u;->a:B

    .line 4
    iput v0, p0, Lk/c/a/a/a/s/s/u;->b:I

    return-void
.end method

.method public static a(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 2

    .line 49
    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 50
    new-array v0, v0, [B

    .line 51
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 52
    new-instance p0, Ljava/lang/String;

    sget-object v1, Lk/c/a/a/a/s/s/u;->e:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 53
    invoke-static {p0}, Lk/c/a/a/a/s/s/u;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 54
    new-instance v0, Lk/c/a/a/a/k;

    invoke-direct {v0, p0}, Lk/c/a/a/a/k;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Ljava/io/InputStream;)Lk/c/a/a/a/s/s/u;
    .locals 9

    .line 9
    :try_start_0
    new-instance v0, Lk/c/a/a/a/s/s/a;

    invoke-direct {v0, p0}, Lk/c/a/a/a/s/s/a;-><init>(Ljava/io/InputStream;)V

    .line 10
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 11
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    shr-int/lit8 v2, v1, 0x4

    int-to-byte v2, v2

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    .line 12
    invoke-static {p0}, Lk/c/a/a/a/s/s/u;->b(Ljava/io/DataInputStream;)Lk/c/a/a/a/s/s/w;

    move-result-object v3

    .line 13
    iget v3, v3, Lk/c/a/a/a/s/s/w;->a:I

    int-to-long v3, v3

    .line 14
    iget v5, v0, Lk/c/a/a/a/s/s/a;->y:I

    int-to-long v5, v5

    add-long/2addr v5, v3

    .line 15
    iget v0, v0, Lk/c/a/a/a/s/s/a;->y:I

    int-to-long v3, v0

    sub-long/2addr v5, v3

    const/4 v0, 0x0

    new-array v3, v0, [B

    const-wide/16 v7, 0x0

    cmp-long v4, v5, v7

    if-lez v4, :cond_0

    long-to-int v3, v5

    .line 16
    new-array v4, v3, [B

    .line 17
    invoke-virtual {p0, v4, v0, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    move-object v3, v4

    :cond_0
    const/4 p0, 0x1

    if-ne v2, p0, :cond_1

    .line 18
    new-instance p0, Lk/c/a/a/a/s/s/d;

    invoke-direct {p0, v3}, Lk/c/a/a/a/s/s/d;-><init>([B)V

    goto/16 :goto_0

    :cond_1
    const/4 p0, 0x3

    if-ne v2, p0, :cond_2

    .line 19
    new-instance p0, Lk/c/a/a/a/s/s/o;

    invoke-direct {p0, v1, v3}, Lk/c/a/a/a/s/s/o;-><init>(B[B)V

    goto/16 :goto_0

    :cond_2
    const/4 p0, 0x4

    if-ne v2, p0, :cond_3

    .line 20
    new-instance p0, Lk/c/a/a/a/s/s/k;

    invoke-direct {p0, v3}, Lk/c/a/a/a/s/s/k;-><init>([B)V

    goto/16 :goto_0

    :cond_3
    const/4 p0, 0x7

    if-ne v2, p0, :cond_4

    .line 21
    new-instance p0, Lk/c/a/a/a/s/s/l;

    invoke-direct {p0, v3}, Lk/c/a/a/a/s/s/l;-><init>([B)V

    goto :goto_0

    :cond_4
    const/4 p0, 0x2

    if-ne v2, p0, :cond_5

    .line 22
    new-instance p0, Lk/c/a/a/a/s/s/c;

    invoke-direct {p0, v3}, Lk/c/a/a/a/s/s/c;-><init>([B)V

    goto :goto_0

    :cond_5
    const/16 p0, 0xc

    if-ne v2, p0, :cond_6

    .line 23
    new-instance p0, Lk/c/a/a/a/s/s/i;

    invoke-direct {p0, v1, v3}, Lk/c/a/a/a/s/s/i;-><init>(B[B)V

    goto :goto_0

    :cond_6
    const/16 p0, 0xd

    if-ne v2, p0, :cond_7

    .line 24
    new-instance p0, Lk/c/a/a/a/s/s/j;

    invoke-direct {p0}, Lk/c/a/a/a/s/s/j;-><init>()V

    goto :goto_0

    :cond_7
    const/16 p0, 0x8

    if-ne v2, p0, :cond_8

    .line 25
    new-instance p0, Lk/c/a/a/a/s/s/r;

    invoke-direct {p0, v3}, Lk/c/a/a/a/s/s/r;-><init>([B)V

    goto :goto_0

    :cond_8
    const/16 p0, 0x9

    if-ne v2, p0, :cond_9

    .line 26
    new-instance p0, Lk/c/a/a/a/s/s/q;

    invoke-direct {p0, v3}, Lk/c/a/a/a/s/s/q;-><init>([B)V

    goto :goto_0

    :cond_9
    const/16 p0, 0xa

    if-ne v2, p0, :cond_a

    .line 27
    new-instance p0, Lk/c/a/a/a/s/s/t;

    invoke-direct {p0, v3}, Lk/c/a/a/a/s/s/t;-><init>([B)V

    goto :goto_0

    :cond_a
    const/16 p0, 0xb

    if-ne v2, p0, :cond_b

    .line 28
    new-instance p0, Lk/c/a/a/a/s/s/s;

    invoke-direct {p0, v3}, Lk/c/a/a/a/s/s/s;-><init>([B)V

    goto :goto_0

    :cond_b
    const/4 p0, 0x6

    if-ne v2, p0, :cond_c

    .line 29
    new-instance p0, Lk/c/a/a/a/s/s/n;

    invoke-direct {p0, v3}, Lk/c/a/a/a/s/s/n;-><init>([B)V

    goto :goto_0

    :cond_c
    const/4 v0, 0x5

    if-ne v2, v0, :cond_d

    .line 30
    new-instance p0, Lk/c/a/a/a/s/s/m;

    invoke-direct {p0, v3}, Lk/c/a/a/a/s/s/m;-><init>([B)V

    goto :goto_0

    :cond_d
    const/16 v0, 0xe

    if-ne v2, v0, :cond_e

    .line 31
    new-instance p0, Lk/c/a/a/a/s/s/e;

    invoke-direct {p0, v1, v3}, Lk/c/a/a/a/s/s/e;-><init>(B[B)V

    :goto_0
    return-object p0

    .line 32
    :cond_e
    invoke-static {p0}, Lk/b/c/e/a;->a(I)Lk/c/a/a/a/k;

    move-result-object p0

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 33
    new-instance v0, Lk/c/a/a/a/k;

    invoke-direct {v0, p0}, Lk/c/a/a/a/k;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Lk/c/a/a/a/m;)Lk/c/a/a/a/s/s/u;
    .locals 8

    .line 2
    invoke-interface {p0}, Lk/c/a/a/a/m;->d()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    :cond_0
    move-object v5, v0

    .line 3
    new-instance v0, Lk/c/a/a/a/s/s/v;

    invoke-interface {p0}, Lk/c/a/a/a/m;->c()[B

    move-result-object v2

    invoke-interface {p0}, Lk/c/a/a/a/m;->b()I

    move-result v3

    .line 4
    invoke-interface {p0}, Lk/c/a/a/a/m;->f()I

    move-result v4

    invoke-interface {p0}, Lk/c/a/a/a/m;->e()I

    move-result v6

    invoke-interface {p0}, Lk/c/a/a/a/m;->a()I

    move-result v7

    move-object v1, v0

    .line 5
    invoke-direct/range {v1 .. v7}, Lk/c/a/a/a/s/s/v;-><init>([BII[BII)V

    .line 6
    invoke-static {v0}, Lk/c/a/a/a/s/s/u;->a(Ljava/io/InputStream;)Lk/c/a/a/a/s/s/u;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Lk/c/a/a/a/s/s/u;
    .locals 1

    .line 7
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 8
    invoke-static {v0}, Lk/c/a/a/a/s/s/u;->a(Ljava/io/InputStream;)Lk/c/a/a/a/s/s/u;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 2

    .line 40
    invoke-static {p1}, Lk/c/a/a/a/s/s/u;->a(Ljava/lang/String;)V

    .line 41
    :try_start_0
    sget-object v0, Lk/c/a/a/a/s/s/u;->e:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 42
    array-length v0, p1

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 43
    array-length v1, p1

    ushr-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 44
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 45
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 46
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 47
    new-instance p1, Lk/c/a/a/a/k;

    invoke-direct {p1, p0}, Lk/c/a/a/a/k;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 48
    new-instance p1, Lk/c/a/a/a/k;

    invoke-direct {p1, p0}, Lk/c/a/a/a/k;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 55
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 57
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    const v4, 0xfffe

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 60
    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    and-int/lit16 v6, v2, 0x3ff

    shl-int/lit8 v6, v6, 0xa

    and-int/lit16 v3, v3, 0x3ff

    or-int/2addr v3, v6

    const v6, 0xffff

    and-int/2addr v3, v6

    if-eq v3, v6, :cond_6

    if-ne v3, v4, :cond_5

    goto :goto_1

    .line 61
    :cond_3
    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const v3, 0xfdd0

    if-lt v2, v3, :cond_5

    if-eq v2, v4, :cond_6

    if-ge v2, v3, :cond_6

    const v3, 0xfddf

    if-gt v2, v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_7

    add-int/2addr v1, v5

    goto :goto_0

    .line 62
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "Invalid UTF-8 char: [%x]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(J)[B
    .locals 6

    long-to-int v0, p0

    if-ltz v0, :cond_3

    const v1, 0xfffffff

    if-gt v0, v1, :cond_3

    const/4 v0, 0x0

    .line 34
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :cond_0
    const-wide/16 v2, 0x80

    .line 35
    rem-long v4, p0, v2

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 36
    div-long/2addr p0, v2

    const-wide/16 v2, 0x0

    cmp-long v5, p0, v2

    if-lez v5, :cond_1

    or-int/lit16 v2, v4, 0x80

    int-to-byte v4, v2

    .line 37
    :cond_1
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    if-lez v5, :cond_2

    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 38
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 39
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This property must be a number between 0 and 268435455"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/io/DataInputStream;)Lk/c/a/a/a/s/s/w;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    add-int/2addr v1, v0

    and-int/lit8 v5, v4, 0x7f

    mul-int v5, v5, v3

    add-int/2addr v2, v5

    mul-int/lit16 v3, v3, 0x80

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_0

    if-ltz v2, :cond_1

    const p0, 0xfffffff

    if-gt v2, p0, :cond_1

    .line 2
    new-instance p0, Lk/c/a/a/a/s/s/w;

    invoke-direct {p0, v2, v1}, Lk/c/a/a/a/s/s/w;-><init>(II)V

    return-object p0

    .line 3
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This property must be a number between 0 and 268435455. Read value was: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lk/c/a/a/a/s/s/u;->b:I

    return-void
.end method

.method public g()[B
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3
    iget v2, p0, Lk/c/a/a/a/s/s/u;->b:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Lk/c/a/a/a/k;

    invoke-direct {v1, v0}, Lk/c/a/a/a/k;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public h()[B
    .locals 7

    .line 1
    :try_start_0
    iget-byte v0, p0, Lk/c/a/a/a/s/s/u;->a:B

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x4

    .line 2
    invoke-virtual {p0}, Lk/c/a/a/a/s/s/u;->j()B

    move-result v1

    and-int/lit8 v1, v1, 0xf

    xor-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lk/c/a/a/a/s/s/u;->l()[B

    move-result-object v1

    .line 4
    array-length v2, v1

    invoke-virtual {p0}, Lk/c/a/a/a/s/s/u;->k()[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v2, v3

    .line 5
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 7
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    int-to-long v5, v2

    .line 8
    invoke-static {v5, v6}, Lk/c/a/a/a/s/s/u;->a(J)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 9
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 10
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 11
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Lk/c/a/a/a/k;

    invoke-direct {v1, v0}, Lk/c/a/a/a/k;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lk/c/a/a/a/s/s/u;->b:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract j()B
.end method

.method public k()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public abstract l()[B
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lk/c/a/a/a/s/s/u;->f:[Ljava/lang/String;

    iget-byte v1, p0, Lk/c/a/a/a/s/s/u;->a:B

    aget-object v0, v0, v1

    return-object v0
.end method
