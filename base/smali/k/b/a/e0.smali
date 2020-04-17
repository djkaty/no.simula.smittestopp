.class public Lk/b/a/e0;
.super Lk/b/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILk/b/a/f;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p2, Lk/b/a/f;->b:I

    if-eq v1, v2, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p2, v1}, Lk/b/a/f;->a(I)Lk/b/a/e;

    move-result-object v2

    check-cast v2, Lk/b/a/n;

    const-string v3, "BER"

    invoke-virtual {v2, v3}, Lk/b/a/n;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lk/b/a/s;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "malformed object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lk/b/a/s;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0, p1, p2}, Lk/b/a/a;-><init>(ZI[B)V

    return-void
.end method


# virtual methods
.method public a(Lk/b/a/r;Z)V
    .locals 3

    iget-boolean v0, p0, Lk/b/a/a;->x:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    iget v1, p0, Lk/b/a/a;->y:I

    iget-object v2, p0, Lk/b/a/a;->z:[B

    .line 1
    invoke-virtual {p1, p2, v0, v1}, Lk/b/a/r;->a(ZII)V

    .line 2
    iget-object p2, p1, Lk/b/a/r;->a:Ljava/io/OutputStream;

    const/16 v0, 0x80

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 3
    array-length p2, v2

    .line 4
    iget-object v0, p1, Lk/b/a/r;->a:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 5
    iget-object p2, p1, Lk/b/a/r;->a:Ljava/io/OutputStream;

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object p1, p1, Lk/b/a/r;->a:Ljava/io/OutputStream;

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
