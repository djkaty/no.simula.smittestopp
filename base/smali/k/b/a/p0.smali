.class public Lk/b/a/p0;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final x:Lk/b/a/z;

.field public y:Z

.field public z:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lk/b/a/z;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk/b/a/p0;->y:Z

    iput-object p1, p0, Lk/b/a/p0;->x:Lk/b/a/z;

    return-void
.end method


# virtual methods
.method public read()I
    .locals 6

    iget-object v0, p0, Lk/b/a/p0;->z:Ljava/io/InputStream;

    const-string v1, "unknown object encountered: "

    const/4 v2, -0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lk/b/a/p0;->y:Z

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lk/b/a/p0;->x:Lk/b/a/z;

    invoke-virtual {v0}, Lk/b/a/z;->a()Lk/b/a/e;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    instance-of v3, v0, Lk/b/a/q;

    if-eqz v3, :cond_2

    check-cast v0, Lk/b/a/q;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lk/b/a/p0;->y:Z

    const/4 v3, -0x1

    move-object v2, v1

    move-object v1, p0

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/io/IOException;

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object v0, p0

    :goto_0
    iget-object v3, v0, Lk/b/a/p0;->z:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ltz v3, :cond_4

    return v3

    :cond_4
    iget-object v3, v0, Lk/b/a/p0;->x:Lk/b/a/z;

    invoke-virtual {v3}, Lk/b/a/z;->a()Lk/b/a/e;

    move-result-object v3

    if-nez v3, :cond_5

    const/4 v1, 0x0

    iput-object v1, v0, Lk/b/a/p0;->z:Ljava/io/InputStream;

    return v2

    :cond_5
    instance-of v4, v3, Lk/b/a/q;

    if-eqz v4, :cond_6

    check-cast v3, Lk/b/a/q;

    move-object v5, v1

    move-object v1, v0

    move-object v0, v3

    move v3, v2

    move-object v2, v5

    :goto_1
    invoke-interface {v0}, Lk/b/a/q;->b()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v1, Lk/b/a/p0;->z:Ljava/io/InputStream;

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 8

    iget-object v0, p0, Lk/b/a/p0;->z:Ljava/io/InputStream;

    const-string v1, "unknown object encountered: "

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lk/b/a/p0;->y:Z

    if-nez v0, :cond_0

    return v3

    :cond_0
    iget-object v0, p0, Lk/b/a/p0;->x:Lk/b/a/z;

    invoke-virtual {v0}, Lk/b/a/z;->a()Lk/b/a/e;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    instance-of v4, v0, Lk/b/a/q;

    if-eqz v4, :cond_2

    check-cast v0, Lk/b/a/q;

    iput-boolean v2, p0, Lk/b/a/p0;->y:Z

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v2, v1

    move-object v1, p0

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    move-object v0, p0

    :cond_4
    :goto_0
    iget-object v4, v0, Lk/b/a/p0;->z:Ljava/io/InputStream;

    add-int v5, p2, v2

    sub-int v6, p3, v2

    invoke-virtual {v4, p1, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_5

    add-int/2addr v2, v4

    if-ne v2, p3, :cond_4

    return v2

    :cond_5
    iget-object v4, v0, Lk/b/a/p0;->x:Lk/b/a/z;

    invoke-virtual {v4}, Lk/b/a/z;->a()Lk/b/a/e;

    move-result-object v4

    if-nez v4, :cond_7

    const/4 p1, 0x0

    iput-object p1, v0, Lk/b/a/p0;->z:Ljava/io/InputStream;

    const/4 p1, 0x1

    if-ge v2, p1, :cond_6

    move v2, v3

    :cond_6
    return v2

    :cond_7
    instance-of v5, v4, Lk/b/a/q;

    if-eqz v5, :cond_8

    check-cast v4, Lk/b/a/q;

    move-object v7, v1

    move-object v1, v0

    move-object v0, v4

    move v4, v3

    move v3, v2

    move-object v2, v7

    :goto_1
    invoke-interface {v0}, Lk/b/a/q;->b()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v1, Lk/b/a/p0;->z:Ljava/io/InputStream;

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    move v3, v4

    goto :goto_0

    :cond_8
    new-instance p1, Ljava/io/IOException;

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
