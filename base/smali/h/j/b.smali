.class public final Lh/j/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/j/d;
.implements Ljava/io/Serializable;


# instance fields
.field public final x:Lh/j/d;

.field public final y:Lh/j/d$a;


# direct methods
.method public constructor <init>(Lh/j/d;Lh/j/d$a;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/j/b;->x:Lh/j/d;

    iput-object p2, p0, Lh/j/b;->y:Lh/j/d$a;

    return-void

    :cond_0
    const-string p1, "element"

    .line 2
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "left"

    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 3

    const/4 v0, 0x2

    move-object v1, p0

    .line 1
    :goto_0
    iget-object v1, v1, Lh/j/b;->x:Lh/j/d;

    instance-of v2, v1, Lh/j/b;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Lh/j/b;

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eq p0, p1, :cond_4

    .line 1
    instance-of v1, p1, Lh/j/b;

    if-eqz v1, :cond_5

    check-cast p1, Lh/j/b;

    invoke-virtual {p1}, Lh/j/b;->a()I

    move-result v1

    invoke-virtual {p0}, Lh/j/b;->a()I

    move-result v2

    if-ne v1, v2, :cond_5

    if-eqz p1, :cond_3

    move-object v1, p0

    .line 2
    :goto_0
    iget-object v2, v1, Lh/j/b;->y:Lh/j/d$a;

    .line 3
    invoke-interface {v2}, Lh/j/d$a;->getKey()Lh/j/d$b;

    move-result-object v3

    invoke-virtual {p1, v3}, Lh/j/b;->get(Lh/j/d$b;)Lh/j/d$a;

    move-result-object v3

    invoke-static {v3, v2}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, v1, Lh/j/b;->x:Lh/j/d;

    .line 5
    instance-of v2, v1, Lh/j/b;

    if-eqz v2, :cond_1

    .line 6
    check-cast v1, Lh/j/b;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 7
    check-cast v1, Lh/j/d$a;

    .line 8
    invoke-interface {v1}, Lh/j/d$a;->getKey()Lh/j/d$b;

    move-result-object v2

    invoke-virtual {p1, v2}, Lh/j/b;->get(Lh/j/d$b;)Lh/j/d$a;

    move-result-object p1

    invoke-static {p1, v1}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_5

    goto :goto_2

    .line 9
    :cond_2
    new-instance p1, Lh/e;

    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    invoke-direct {p1, v0}, Lh/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p1, 0x0

    .line 10
    throw p1

    :cond_4
    :goto_2
    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method public fold(Ljava/lang/Object;Lh/k/a/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lh/k/a/p<",
            "-TR;-",
            "Lh/j/d$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lh/j/b;->x:Lh/j/d;

    invoke-interface {v0, p1, p2}, Lh/j/d;->fold(Ljava/lang/Object;Lh/k/a/p;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lh/j/b;->y:Lh/j/d$a;

    invoke-interface {p2, p1, v0}, Lh/k/a/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "operation"

    .line 2
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public get(Lh/j/d$b;)Lh/j/d$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lh/j/d$a;",
            ">(",
            "Lh/j/d$b<",
            "TE;>;)TE;"
        }
    .end annotation

    if-eqz p1, :cond_2

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lh/j/b;->y:Lh/j/d$a;

    invoke-interface {v1, p1}, Lh/j/d$a;->get(Lh/j/d$b;)Lh/j/d$a;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, v0, Lh/j/b;->x:Lh/j/d;

    .line 3
    instance-of v1, v0, Lh/j/b;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lh/j/b;

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0, p1}, Lh/j/d;->get(Lh/j/d$b;)Lh/j/d$a;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "key"

    .line 6
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lh/j/b;->x:Lh/j/d;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lh/j/b;->y:Lh/j/d$a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public minusKey(Lh/j/d$b;)Lh/j/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/j/d$b<",
            "*>;)",
            "Lh/j/d;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Lh/j/b;->y:Lh/j/d$a;

    invoke-interface {v0, p1}, Lh/j/d$a;->get(Lh/j/d$b;)Lh/j/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lh/j/b;->x:Lh/j/d;

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lh/j/b;->x:Lh/j/d;

    invoke-interface {v0, p1}, Lh/j/d;->minusKey(Lh/j/d$b;)Lh/j/d;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lh/j/b;->x:Lh/j/d;

    if-ne p1, v0, :cond_1

    move-object p1, p0

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lh/j/f;->x:Lh/j/f;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lh/j/b;->y:Lh/j/d$a;

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Lh/j/b;

    iget-object v1, p0, Lh/j/b;->y:Lh/j/d$a;

    invoke-direct {v0, p1, v1}, Lh/j/b;-><init>(Lh/j/d;Lh/j/d$a;)V

    move-object p1, v0

    :goto_0
    return-object p1

    :cond_3
    const-string p1, "key"

    .line 6
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "["

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lh/j/b$a;->x:Lh/j/b$a;

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Lh/j/b;->fold(Ljava/lang/Object;Lh/k/a/p;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "]"

    invoke-static {v0, v1, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
