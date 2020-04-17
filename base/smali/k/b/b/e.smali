.class public Lk/b/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public transient x:Lk/b/a/l2/f;


# direct methods
.method public constructor <init>([B)V
    .locals 3

    const-string v0, "malformed data: "

    .line 1
    :try_start_0
    invoke-static {p1}, Lk/b/b/b;->a([B)Lk/b/a/t;

    move-result-object p1

    .line 2
    instance-of v1, p1, Lk/b/a/l2/f;

    if-eqz v1, :cond_0

    check-cast p1, Lk/b/a/l2/f;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v1, Lk/b/a/l2/f;

    invoke-static {p1}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p1

    invoke-direct {v1, p1}, Lk/b/a/l2/f;-><init>(Lk/b/a/u;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lk/b/b/e;->x:Lk/b/a/l2/f;

    .line 5
    iget-object p1, p1, Lk/b/a/l2/f;->y:Lk/b/a/l2/u;

    .line 6
    iget-object p1, p1, Lk/b/a/l2/u;->z:Lk/b/a/l2/k;

    return-void

    :catch_0
    move-exception p1

    .line 7
    new-instance v1, Lk/b/b/a;

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lk/b/b/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    new-instance v1, Lk/b/b/a;

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lk/b/b/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lk/b/b/e;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lk/b/b/e;

    iget-object v0, p0, Lk/b/b/e;->x:Lk/b/a/l2/f;

    iget-object p1, p1, Lk/b/b/e;->x:Lk/b/a/l2/f;

    invoke-virtual {v0, p1}, Lk/b/a/n;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lk/b/b/e;->x:Lk/b/a/l2/f;

    invoke-virtual {v0}, Lk/b/a/n;->hashCode()I

    move-result v0

    return v0
.end method
