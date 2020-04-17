.class public abstract Lk/b/a/b0;
.super Lk/b/a/t;
.source "SourceFile"

# interfaces
.implements Lk/b/a/c0;


# instance fields
.field public final x:I

.field public final y:Z

.field public final z:Lk/b/a/e;


# direct methods
.method public constructor <init>(ZILk/b/a/e;)V
    .locals 0

    invoke-direct {p0}, Lk/b/a/t;-><init>()V

    if-eqz p3, :cond_2

    iput p2, p0, Lk/b/a/b0;->x:I

    if-nez p1, :cond_1

    instance-of p1, p3, Lk/b/a/d;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lk/b/a/b0;->y:Z

    iput-object p3, p0, Lk/b/a/b0;->z:Lk/b/a/e;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'obj\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/Object;)Lk/b/a/b0;
    .locals 2

    if-eqz p0, :cond_2

    instance-of v0, p0, Lk/b/a/b0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lk/b/a/t;->a([B)Lk/b/a/t;

    move-result-object p0

    invoke-static {p0}, Lk/b/a/b0;->a(Ljava/lang/Object;)Lk/b/a/b0;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "failed to construct tagged object from byte[]: "

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
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v1}, Le/a/a/a/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Lk/b/a/b0;

    return-object p0
.end method


# virtual methods
.method public a()Lk/b/a/t;
    .locals 0

    return-object p0
.end method

.method public a(Lk/b/a/t;)Z
    .locals 3

    instance-of v0, p1, Lk/b/a/b0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lk/b/a/b0;

    iget v0, p0, Lk/b/a/b0;->x:I

    iget v2, p1, Lk/b/a/b0;->x:I

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lk/b/a/b0;->y:Z

    iget-boolean v2, p1, Lk/b/a/b0;->y:Z

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lk/b/a/b0;->z:Lk/b/a/e;

    invoke-interface {v0}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object v0

    iget-object p1, p1, Lk/b/a/b0;->z:Lk/b/a/e;

    invoke-interface {p1}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object p1

    if-eq v0, p1, :cond_2

    invoke-virtual {v0, p1}, Lk/b/a/t;->a(Lk/b/a/t;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public h()Lk/b/a/t;
    .locals 4

    new-instance v0, Lk/b/a/h1;

    iget-boolean v1, p0, Lk/b/a/b0;->y:Z

    iget v2, p0, Lk/b/a/b0;->x:I

    iget-object v3, p0, Lk/b/a/b0;->z:Lk/b/a/e;

    invoke-direct {v0, v1, v2, v3}, Lk/b/a/h1;-><init>(ZILk/b/a/e;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lk/b/a/b0;->x:I

    iget-boolean v1, p0, Lk/b/a/b0;->y:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto :goto_0

    :cond_0
    const/16 v1, 0xf0

    :goto_0
    xor-int/2addr v0, v1

    iget-object v1, p0, Lk/b/a/b0;->z:Lk/b/a/e;

    invoke-interface {v1}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/n;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public i()Lk/b/a/t;
    .locals 4

    new-instance v0, Lk/b/a/v1;

    iget-boolean v1, p0, Lk/b/a/b0;->y:Z

    iget v2, p0, Lk/b/a/b0;->x:I

    iget-object v3, p0, Lk/b/a/b0;->z:Lk/b/a/e;

    invoke-direct {v0, v1, v2, v3}, Lk/b/a/v1;-><init>(ZILk/b/a/e;)V

    return-object v0
.end method

.method public j()Lk/b/a/t;
    .locals 1

    iget-object v0, p0, Lk/b/a/b0;->z:Lk/b/a/e;

    invoke-interface {v0}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "["

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lk/b/a/b0;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/b/a/b0;->z:Lk/b/a/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
