.class public abstract Lk/b/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/b/a/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    new-instance v0, Lk/b/a/r;

    invoke-direct {v0, p1}, Lk/b/a/r;-><init>(Ljava/io/OutputStream;)V

    .line 2
    invoke-interface {p0}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object p1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v0, v1}, Lk/b/a/t;->a(Lk/b/a/r;Z)V

    return-void
.end method

.method public a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lk/b/a/r;->a(Ljava/io/OutputStream;Ljava/lang/String;)Lk/b/a/r;

    move-result-object p1

    invoke-virtual {p1, p0}, Lk/b/a/r;->a(Lk/b/a/e;)V

    return-void
.end method

.method public a(Ljava/lang/String;)[B
    .locals 1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0, p1}, Lk/b/a/n;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public abstract c()Lk/b/a/t;
.end method

.method public e()[B
    .locals 1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lk/b/a/n;->a(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lk/b/a/e;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lk/b/a/e;

    invoke-virtual {p0}, Lk/b/a/n;->c()Lk/b/a/t;

    move-result-object v0

    invoke-interface {p1}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object p1

    invoke-virtual {v0, p1}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lk/b/a/n;->c()Lk/b/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/n;->hashCode()I

    move-result v0

    return v0
.end method
