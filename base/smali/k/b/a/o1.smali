.class public Lk/b/a/o1;
.super Lk/b/a/i;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lk/b/a/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lk/b/a/i;-><init>(Lk/b/a/f;)V

    return-void
.end method

.method public constructor <init>(Lk/b/a/o;Lk/b/a/l;Lk/b/a/t;ILk/b/a/t;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lk/b/a/i;-><init>(Lk/b/a/o;Lk/b/a/l;Lk/b/a/t;ILk/b/a/t;)V

    return-void
.end method


# virtual methods
.method public a(Lk/b/a/r;Z)V
    .locals 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lk/b/a/i;->x:Lk/b/a/o;

    const-string v2, "DL"

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lk/b/a/n;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_0
    iget-object v1, p0, Lk/b/a/i;->y:Lk/b/a/l;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Lk/b/a/n;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_1
    iget-object v1, p0, Lk/b/a/i;->z:Lk/b/a/t;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Lk/b/a/n;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_2
    new-instance v1, Lk/b/a/h1;

    const/4 v3, 0x1

    iget v4, p0, Lk/b/a/i;->A:I

    iget-object v5, p0, Lk/b/a/i;->B:Lk/b/a/t;

    invoke-direct {v1, v3, v4, v5}, Lk/b/a/h1;-><init>(ZILk/b/a/e;)V

    invoke-virtual {v1, v2}, Lk/b/a/n;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v1, 0x20

    const/16 v2, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, p2, v1, v2, v0}, Lk/b/a/r;->a(ZII[B)V

    return-void
.end method

.method public f()I
    .locals 1

    invoke-virtual {p0}, Lk/b/a/n;->e()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public i()Lk/b/a/t;
    .locals 0

    return-object p0
.end method
