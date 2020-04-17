.class public Lk/b/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public transient x:Lk/b/a/l2/g;

.field public transient y:Lk/b/a/l2/k;


# direct methods
.method public constructor <init>([B)V
    .locals 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p1, "malformed data: "

    .line 1
    :try_start_0
    new-instance v1, Lk/b/a/k;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lk/b/a/k;-><init>(Ljava/io/InputStream;Z)V

    invoke-virtual {v1}, Lk/b/a/k;->readObject()Lk/b/a/t;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2
    instance-of v1, v0, Lk/b/a/l2/g;

    if-eqz v1, :cond_0

    check-cast v0, Lk/b/a/l2/g;

    goto :goto_0

    :cond_0
    new-instance v1, Lk/b/a/l2/g;

    invoke-static {v0}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object v0

    invoke-direct {v1, v0}, Lk/b/a/l2/g;-><init>(Lk/b/a/u;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 3
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lk/b/b/d;->x:Lk/b/a/l2/g;

    .line 5
    iget-object p1, v0, Lk/b/a/l2/g;->x:Lk/b/a/l2/t;

    .line 6
    iget-object p1, p1, Lk/b/a/l2/t;->D:Lk/b/a/l2/k;

    .line 7
    iput-object p1, p0, Lk/b/b/d;->y:Lk/b/a/l2/k;

    if-nez p1, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    sget-object v1, Lk/b/a/l2/j;->A:Lk/b/a/o;

    .line 9
    iget-object p1, p1, Lk/b/a/l2/k;->x:Ljava/util/Hashtable;

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk/b/a/l2/j;

    if-eqz p1, :cond_4

    .line 10
    :try_start_1
    iget-object p1, p1, Lk/b/a/l2/j;->z:Lk/b/a/p;

    .line 11
    invoke-virtual {p1}, Lk/b/a/p;->j()[B

    move-result-object p1

    invoke-static {p1}, Lk/b/a/t;->a([B)Lk/b/a/t;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 12
    instance-of v1, p1, Lk/b/a/l2/p;

    if-eqz v1, :cond_2

    check-cast p1, Lk/b/a/l2/p;

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    new-instance v1, Lk/b/a/l2/p;

    invoke-static {p1}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p1

    invoke-direct {v1, p1}, Lk/b/a/l2/p;-><init>(Lk/b/a/u;)V

    move-object p1, v1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 13
    :goto_1
    iget-boolean p1, p1, Lk/b/a/l2/p;->B:Z

    goto :goto_2

    :catch_0
    move-exception p1

    .line 14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t convert extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_4
    :goto_2
    iget-object p1, v0, Lk/b/a/l2/g;->x:Lk/b/a/l2/t;

    .line 16
    iget-object p1, p1, Lk/b/a/l2/t;->z:Lk/b/a/k2/c;

    return-void

    .line 17
    :cond_5
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no content found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Lk/b/b/a;

    invoke-static {p1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lk/b/b/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lk/b/b/a;

    invoke-static {p1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lk/b/b/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lk/b/b/d;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lk/b/b/d;

    iget-object v0, p0, Lk/b/b/d;->x:Lk/b/a/l2/g;

    iget-object p1, p1, Lk/b/b/d;->x:Lk/b/a/l2/g;

    invoke-virtual {v0, p1}, Lk/b/a/n;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lk/b/b/d;->x:Lk/b/a/l2/g;

    invoke-virtual {v0}, Lk/b/a/l2/g;->hashCode()I

    move-result v0

    return v0
.end method
