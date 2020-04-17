.class public abstract Lk/b/a/b;
.super Lk/b/a/t;
.source "SourceFile"

# interfaces
.implements Lk/b/a/a0;


# static fields
.field public static final z:[C


# instance fields
.field public final x:[B

.field public final y:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lk/b/a/b;->z:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>([BI)V
    .locals 1

    invoke-direct {p0}, Lk/b/a/t;-><init>()V

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "zero length data with non-zero pad bits"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x7

    if-gt p2, v0, :cond_2

    if-ltz p2, :cond_2

    invoke-static {p1}, Lk/b/c/e/a;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lk/b/a/b;->x:[B

    iput p2, p0, Lk/b/a/b;->y:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'data\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lk/b/a/t;)Z
    .locals 7

    instance-of v0, p1, Lk/b/a/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lk/b/a/b;

    iget v0, p0, Lk/b/a/b;->y:I

    iget v2, p1, Lk/b/a/b;->y:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lk/b/a/b;->x:[B

    iget-object p1, p1, Lk/b/a/b;->x:[B

    array-length v2, v0

    array-length v3, p1

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    if-gez v2, :cond_3

    return v3

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    aget-byte v5, v0, v4

    aget-byte v6, p1, v4

    if-eq v5, v6, :cond_4

    return v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    aget-byte v0, v0, v2

    iget v4, p0, Lk/b/a/b;->y:I

    const/16 v5, 0xff

    shl-int v6, v5, v4

    and-int/2addr v0, v6

    int-to-byte v0, v0

    aget-byte p1, p1, v2

    shl-int v2, v5, v4

    and-int/2addr p1, v2

    int-to-byte p1, p1

    if-ne v0, p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public d()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lk/b/a/n;->e()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_0

    sget-object v3, Lk/b/a/b;->z:[C

    aget-byte v4, v1, v2

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v3, Lk/b/a/b;->z:[C

    aget-byte v4, v1, v2

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lk/b/a/s;

    const-string v2, "Internal error encoding BitString: "

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lk/b/a/s;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public h()Lk/b/a/t;
    .locals 3

    new-instance v0, Lk/b/a/r0;

    iget-object v1, p0, Lk/b/a/b;->x:[B

    iget v2, p0, Lk/b/a/b;->y:I

    invoke-direct {v0, v1, v2}, Lk/b/a/r0;-><init>([BI)V

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lk/b/a/b;->x:[B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    aget-byte v2, v0, v1

    const/16 v3, 0xff

    iget v4, p0, Lk/b/a/b;->y:I

    shl-int/2addr v3, v4

    and-int/2addr v2, v3

    int-to-byte v2, v2

    const/4 v3, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v1, 0x1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    mul-int/lit16 v4, v4, 0x101

    add-int v5, v3, v1

    .line 1
    aget-byte v5, v0, v5

    xor-int/2addr v4, v5

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_1
    mul-int/lit16 v3, v3, 0x101

    xor-int v0, v3, v2

    .line 2
    iget v1, p0, Lk/b/a/b;->y:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public i()Lk/b/a/t;
    .locals 3

    new-instance v0, Lk/b/a/n1;

    iget-object v1, p0, Lk/b/a/b;->x:[B

    iget v2, p0, Lk/b/a/b;->y:I

    invoke-direct {v0, v1, v2}, Lk/b/a/n1;-><init>([BI)V

    return-object v0
.end method

.method public j()[B
    .locals 5

    iget-object v0, p0, Lk/b/a/b;->x:[B

    iget v1, p0, Lk/b/a/b;->y:I

    .line 1
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lk/b/c/e/a;->a([B)[B

    move-result-object v2

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    aget-byte v3, v2, v0

    const/16 v4, 0xff

    shl-int v1, v4, v1

    and-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lk/b/a/b;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
