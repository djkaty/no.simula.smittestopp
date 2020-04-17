.class public Lk/b/a/n0;
.super Lk/b/a/b0;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILk/b/a/e;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lk/b/a/b0;-><init>(ZILk/b/a/e;)V

    return-void
.end method

.method public constructor <init>(ZILk/b/a/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lk/b/a/b0;-><init>(ZILk/b/a/e;)V

    return-void
.end method


# virtual methods
.method public a(Lk/b/a/r;Z)V
    .locals 2

    iget v0, p0, Lk/b/a/b0;->x:I

    const/16 v1, 0xa0

    invoke-virtual {p1, p2, v1, v0}, Lk/b/a/r;->a(ZII)V

    .line 1
    iget-object p2, p1, Lk/b/a/r;->a:Ljava/io/OutputStream;

    const/16 v0, 0x80

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 2
    iget-boolean p2, p0, Lk/b/a/b0;->y:Z

    if-nez p2, :cond_5

    iget-object p2, p0, Lk/b/a/b0;->z:Lk/b/a/e;

    instance-of v0, p2, Lk/b/a/p;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lk/b/a/h0;

    if-eqz v0, :cond_0

    check-cast p2, Lk/b/a/h0;

    invoke-virtual {p2}, Lk/b/a/h0;->k()Ljava/util/Enumeration;

    move-result-object p2

    goto :goto_0

    :cond_0
    check-cast p2, Lk/b/a/p;

    new-instance v0, Lk/b/a/h0;

    invoke-virtual {p2}, Lk/b/a/p;->j()[B

    move-result-object p2

    invoke-direct {v0, p2}, Lk/b/a/h0;-><init>([B)V

    invoke-virtual {v0}, Lk/b/a/h0;->k()Ljava/util/Enumeration;

    move-result-object p2

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lk/b/a/u;

    if-eqz v0, :cond_2

    check-cast p2, Lk/b/a/u;

    invoke-virtual {p2}, Lk/b/a/u;->j()Ljava/util/Enumeration;

    move-result-object p2

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lk/b/a/x;

    if-eqz v0, :cond_4

    check-cast p2, Lk/b/a/x;

    if-eqz p2, :cond_3

    .line 3
    new-instance v0, Lk/b/a/w;

    invoke-direct {v0, p2}, Lk/b/a/w;-><init>(Lk/b/a/x;)V

    move-object p2, v0

    .line 4
    :goto_0
    invoke-virtual {p1, p2}, Lk/b/a/r;->a(Ljava/util/Enumeration;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 5
    throw p1

    .line 6
    :cond_4
    new-instance p1, Lk/b/a/h;

    const-string p2, "not implemented: "

    invoke-static {p2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lk/b/a/b0;->z:Lk/b/a/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lk/b/a/h;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object p2, p0, Lk/b/a/b0;->z:Lk/b/a/e;

    invoke-interface {p2}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lk/b/a/r;->a(Lk/b/a/t;Z)V

    .line 7
    :goto_1
    iget-object p2, p1, Lk/b/a/r;->a:Ljava/io/OutputStream;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object p1, p1, Lk/b/a/r;->a:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public f()I
    .locals 3

    iget-object v0, p0, Lk/b/a/b0;->z:Lk/b/a/e;

    invoke-interface {v0}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/t;->f()I

    move-result v0

    iget-boolean v1, p0, Lk/b/a/b0;->y:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lk/b/a/b0;->x:I

    invoke-static {v1}, Lk/b/a/d2;->b(I)I

    move-result v1

    invoke-static {v0}, Lk/b/a/d2;->a(I)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    return v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lk/b/a/b0;->x:I

    invoke-static {v1}, Lk/b/a/d2;->b(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lk/b/a/b0;->y:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lk/b/a/b0;->z:Lk/b/a/e;

    invoke-interface {v0}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/t;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
