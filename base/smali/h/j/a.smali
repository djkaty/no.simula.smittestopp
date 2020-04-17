.class public abstract Lh/j/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/j/d$a;


# instance fields
.field public final key:Lh/j/d$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/j/d$b<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh/j/d$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/j/d$b<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/j/a;->key:Lh/j/d$b;

    return-void

    :cond_0
    const-string p1, "key"

    .line 2
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lh/k/a/p;)Ljava/lang/Object;
    .locals 0
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
    invoke-interface {p2, p1, p0}, Lh/k/a/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p0}, Lh/j/d$a;->getKey()Lh/j/d$b;

    move-result-object v1

    invoke-static {v1, p1}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v0, p0

    :cond_0
    return-object v0

    :cond_1
    const-string p1, "key"

    .line 2
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0
.end method

.method public getKey()Lh/j/d$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh/j/d$b<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh/j/a;->key:Lh/j/d$b;

    return-object v0
.end method

.method public minusKey(Lh/j/d$b;)Lh/j/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/j/d$b<",
            "*>;)",
            "Lh/j/d;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p0}, Lh/j/d$a;->getKey()Lh/j/d$b;

    move-result-object v0

    invoke-static {v0, p1}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lh/j/f;->x:Lh/j/f;

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1

    :cond_1
    const-string p1, "key"

    .line 2
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public plus(Lh/j/d;)Lh/j/d;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    sget-object v0, Lh/j/f;->x:Lh/j/f;

    if-ne p1, v0, :cond_0

    move-object p1, p0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lh/j/e;->x:Lh/j/e;

    invoke-interface {p1, p0, v0}, Lh/j/d;->fold(Ljava/lang/Object;Lh/k/a/p;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh/j/d;

    :goto_0
    return-object p1

    :cond_1
    const-string p1, "context"

    .line 3
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
