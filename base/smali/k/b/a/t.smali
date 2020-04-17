.class public abstract Lk/b/a/t;
.super Lk/b/a/n;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    return-void
.end method

.method public static a([B)Lk/b/a/t;
    .locals 1

    new-instance v0, Lk/b/a/k;

    invoke-direct {v0, p0}, Lk/b/a/k;-><init>([B)V

    :try_start_0
    invoke-virtual {v0}, Lk/b/a/k;->readObject()Lk/b/a/t;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Extra data detected in stream"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "cannot recognise object in stream"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    new-instance v0, Lk/b/a/r;

    invoke-direct {v0, p1}, Lk/b/a/r;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, v0, p1}, Lk/b/a/t;->a(Lk/b/a/r;Z)V

    return-void
.end method

.method public a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lk/b/a/r;->a(Ljava/io/OutputStream;Ljava/lang/String;)Lk/b/a/r;

    move-result-object p1

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1, p0, p2}, Lk/b/a/r;->a(Lk/b/a/t;Z)V

    return-void
.end method

.method public abstract a(Lk/b/a/r;Z)V
.end method

.method public abstract a(Lk/b/a/t;)Z
.end method

.method public final b(Lk/b/a/t;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    invoke-virtual {p0, p1}, Lk/b/a/t;->a(Lk/b/a/t;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final c()Lk/b/a/t;
    .locals 0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lk/b/a/e;

    if-eqz v1, :cond_1

    check-cast p1, Lk/b/a/e;

    invoke-interface {p1}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/b/a/t;->a(Lk/b/a/t;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract f()I
.end method

.method public abstract g()Z
.end method

.method public h()Lk/b/a/t;
    .locals 0

    return-object p0
.end method

.method public i()Lk/b/a/t;
    .locals 0

    return-object p0
.end method
