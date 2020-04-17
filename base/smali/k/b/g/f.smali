.class public Lk/b/g/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>([B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk/b/a/k;

    invoke-direct {v0, p1}, Lk/b/a/k;-><init>([B)V

    invoke-virtual {v0}, Lk/b/a/k;->readObject()Lk/b/a/t;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/n;->e()[B

    move-result-object p1

    const-string v1, "malformed data: "

    .line 1
    :try_start_0
    invoke-static {p1}, Lk/b/b/b;->a([B)Lk/b/a/t;

    move-result-object p1

    .line 2
    instance-of v2, p1, Lk/b/a/l2/f;

    if-eqz v2, :cond_0

    check-cast p1, Lk/b/a/l2/f;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v2, Lk/b/a/l2/f;

    invoke-static {p1}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p1

    invoke-direct {v2, p1}, Lk/b/a/l2/f;-><init>(Lk/b/a/u;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object p1, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object p1, p1, Lk/b/a/l2/f;->y:Lk/b/a/l2/u;

    .line 4
    iget-object p1, p1, Lk/b/a/l2/u;->z:Lk/b/a/l2/k;

    .line 5
    invoke-virtual {v0}, Lk/b/a/k;->readObject()Lk/b/a/t;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lk/b/a/n;->e()[B

    move-result-object p1

    .line 6
    invoke-static {p1}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/u;->j()Ljava/util/Enumeration;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/e;

    instance-of v1, v0, Lk/b/a/u;

    if-eqz v1, :cond_3

    invoke-static {v0}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    goto :goto_1

    :cond_3
    instance-of v1, v0, Lk/b/a/b0;

    if-eqz v1, :cond_4

    check-cast v0, Lk/b/a/b0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lk/b/a/u;->a(Lk/b/a/b0;Z)Lk/b/a/u;

    goto :goto_1

    :cond_4
    instance-of v1, v0, Lk/b/a/i1;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_7

    .line 7
    instance-of v1, v0, Lk/b/a/i1;

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    instance-of v1, v0, [B

    if-eqz v1, :cond_6

    :try_start_1
    check-cast v0, [B

    invoke-static {v0}, Lk/b/a/t;->a([B)Lk/b/a/t;

    move-result-object v0

    check-cast v0, Lk/b/a/i1;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encoding error in getInstance: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Le/a/a/a/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal object in getInstance: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    check-cast v0, Lk/b/a/i1;

    .line 8
    :goto_3
    invoke-virtual {v0}, Lk/b/a/i1;->d()Ljava/lang/String;

    goto :goto_1

    :cond_8
    return-void

    :catch_1
    move-exception p1

    .line 9
    new-instance v0, Lk/b/b/a;

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lk/b/b/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    new-instance v0, Lk/b/b/a;

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lk/b/b/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
