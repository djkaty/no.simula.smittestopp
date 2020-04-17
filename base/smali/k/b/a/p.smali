.class public abstract Lk/b/a/p;
.super Lk/b/a/t;
.source "SourceFile"

# interfaces
.implements Lk/b/a/q;


# instance fields
.field public x:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lk/b/a/t;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lk/b/a/p;->x:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'string\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/Object;)Lk/b/a/p;
    .locals 2

    if-eqz p0, :cond_3

    instance-of v0, p0, Lk/b/a/p;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lk/b/a/t;->a([B)Lk/b/a/t;

    move-result-object p0

    invoke-static {p0}, Lk/b/a/p;->a(Ljava/lang/Object;)Lk/b/a/p;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "failed to construct OCTET STRING from byte[]: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v0, p0, Lk/b/a/e;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lk/b/a/e;

    invoke-interface {v0}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object v0

    instance-of v1, v0, Lk/b/a/p;

    if-eqz v1, :cond_2

    check-cast v0, Lk/b/a/p;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal object in getInstance: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v1}, Le/a/a/a/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    check-cast p0, Lk/b/a/p;

    return-object p0
.end method

.method public static a(Lk/b/a/b0;Z)Lk/b/a/p;
    .locals 2

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lk/b/a/b0;->y:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lk/b/a/b0;->j()Lk/b/a/t;

    move-result-object p0

    invoke-static {p0}, Lk/b/a/p;->a(Ljava/lang/Object;)Lk/b/a/p;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "object implicit - explicit expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lk/b/a/b0;->j()Lk/b/a/t;

    move-result-object p1

    .line 4
    iget-boolean v0, p0, Lk/b/a/b0;->y:Z

    if-eqz v0, :cond_3

    .line 5
    invoke-static {p1}, Lk/b/a/p;->a(Ljava/lang/Object;)Lk/b/a/p;

    move-result-object p1

    instance-of p0, p0, Lk/b/a/n0;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    new-instance p0, Lk/b/a/h0;

    new-array v1, v1, [Lk/b/a/p;

    aput-object p1, v1, v0

    invoke-direct {p0, v1}, Lk/b/a/h0;-><init>([Lk/b/a/p;)V

    return-object p0

    :cond_2
    new-instance p0, Lk/b/a/h0;

    new-array v1, v1, [Lk/b/a/p;

    aput-object p1, v1, v0

    invoke-direct {p0, v1}, Lk/b/a/h0;-><init>([Lk/b/a/p;)V

    invoke-virtual {p0}, Lk/b/a/p;->i()Lk/b/a/t;

    move-result-object p0

    check-cast p0, Lk/b/a/p;

    return-object p0

    :cond_3
    instance-of v0, p1, Lk/b/a/p;

    if-eqz v0, :cond_5

    check-cast p1, Lk/b/a/p;

    instance-of p0, p0, Lk/b/a/n0;

    if-eqz p0, :cond_4

    return-object p1

    :cond_4
    invoke-virtual {p1}, Lk/b/a/p;->i()Lk/b/a/t;

    move-result-object p0

    check-cast p0, Lk/b/a/p;

    return-object p0

    :cond_5
    instance-of v0, p1, Lk/b/a/u;

    if-eqz v0, :cond_7

    check-cast p1, Lk/b/a/u;

    instance-of p0, p0, Lk/b/a/n0;

    if-eqz p0, :cond_6

    invoke-static {p1}, Lk/b/a/h0;->a(Lk/b/a/u;)Lk/b/a/h0;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {p1}, Lk/b/a/h0;->a(Lk/b/a/u;)Lk/b/a/h0;

    move-result-object p0

    invoke-virtual {p0}, Lk/b/a/p;->i()Lk/b/a/t;

    move-result-object p0

    check-cast p0, Lk/b/a/p;

    return-object p0

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown object in getInstance: "

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lk/b/a/t;
    .locals 0

    return-object p0
.end method

.method public a(Lk/b/a/t;)Z
    .locals 1

    instance-of v0, p1, Lk/b/a/p;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lk/b/a/p;

    iget-object v0, p0, Lk/b/a/p;->x:[B

    iget-object p1, p1, Lk/b/a/p;->x:[B

    .line 1
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public b()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lk/b/a/p;->x:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public h()Lk/b/a/t;
    .locals 2

    new-instance v0, Lk/b/a/a1;

    iget-object v1, p0, Lk/b/a/p;->x:[B

    invoke-direct {v0, v1}, Lk/b/a/a1;-><init>([B)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lk/b/a/p;->j()[B

    move-result-object v0

    invoke-static {v0}, Lk/b/c/e/a;->d([B)I

    move-result v0

    return v0
.end method

.method public i()Lk/b/a/t;
    .locals 2

    new-instance v0, Lk/b/a/a1;

    iget-object v1, p0, Lk/b/a/p;->x:[B

    invoke-direct {v0, v1}, Lk/b/a/a1;-><init>([B)V

    return-object v0
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, Lk/b/a/p;->x:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "#"

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/b/a/p;->x:[B

    invoke-static {v1}, Lk/b/j/g/f;->a([B)[B

    move-result-object v1

    invoke-static {v1}, Lk/b/j/f;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
