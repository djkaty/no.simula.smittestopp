.class public Lk/b/j/g/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lk/b/j/g/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk/b/j/g/g;

    invoke-direct {v0}, Lk/b/j/g/g;-><init>()V

    sput-object v0, Lk/b/j/g/f;->a:Lk/b/j/g/g;

    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    sget-object v1, Lk/b/j/g/f;->a:Lk/b/j/g/g;

    invoke-virtual {v1, p0, v0}, Lk/b/j/g/g;->a(Ljava/lang/String;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lk/b/j/g/c;

    const-string v1, "exception decoding Hex string: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lk/b/j/g/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;II)[B
    .locals 1

    :try_start_0
    sget-object v0, Lk/b/j/g/f;->a:Lk/b/j/g/g;

    invoke-virtual {v0, p0, p1, p2}, Lk/b/j/g/g;->a(Ljava/lang/String;II)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lk/b/j/g/c;

    const-string p2, "exception decoding Hex string: "

    invoke-static {p2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lk/b/j/g/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a([B)[B
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lk/b/j/g/f;->a([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BII)[B
    .locals 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    sget-object v1, Lk/b/j/g/f;->a:Lk/b/j/g/g;

    if-eqz v1, :cond_1

    move v2, p1

    :goto_0
    add-int v3, p1, p2

    if-ge v2, v3, :cond_0

    .line 1
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    iget-object v4, v1, Lk/b/j/g/g;->a:[B

    ushr-int/lit8 v5, v3, 0x4

    aget-byte v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v4, v1, Lk/b/j/g/g;->a:[B

    and-int/lit8 v3, v3, 0xf

    aget-byte v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    .line 3
    :try_start_1
    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Lk/b/j/g/e;

    const-string p2, "exception encoding Hex string: "

    invoke-static {p2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lk/b/j/g/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static b([B)Ljava/lang/String;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v1, v0}, Lk/b/j/g/f;->a([BII)[B

    move-result-object p0

    invoke-static {p0}, Lk/b/j/f;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
