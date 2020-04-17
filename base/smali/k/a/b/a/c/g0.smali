.class public Lk/a/b/a/c/g0;
.super Lk/a/b/a/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/b/a/c/g0$c;,
        Lk/a/b/a/c/g0$a;,
        Lk/a/b/a/c/g0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/c/c<",
        "Ljava/util/Map;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lk/a/b/a/c/g0$b;

.field public final b:Lk/a/b/a/c/g0$b;

.field public c:Lk/a/b/a/c/x;

.field public d:Lk/a/b/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a/b/a/c/a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk/a/b/a/c/c;-><init>()V

    .line 2
    iput-object p1, p0, Lk/a/b/a/c/g0;->c:Lk/a/b/a/c/x;

    .line 3
    new-instance v0, Lk/a/b/a/c/g0$a;

    invoke-direct {v0, p0, p1, p2}, Lk/a/b/a/c/g0$a;-><init>(Lk/a/b/a/c/g0;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    iput-object v0, p0, Lk/a/b/a/c/g0;->a:Lk/a/b/a/c/g0$b;

    .line 4
    new-instance v0, Lk/a/b/a/c/g0$c;

    invoke-direct {v0, p0, p1, p2}, Lk/a/b/a/c/g0$c;-><init>(Lk/a/b/a/c/g0;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    iput-object v0, p0, Lk/a/b/a/c/g0;->b:Lk/a/b/a/c/g0$b;

    .line 5
    const-class v0, Ljava/util/Map;

    .line 6
    iget-object p1, p1, Lk/a/b/a/c/x;->c:Ljava/util/Map;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p2, p0}, Lk/a/b/a/c/r;->a(Lk/a/b/a/c/i0;)V

    return-void
.end method

.method public static synthetic a(Lk/a/b/a/c/r;Lk/a/b/a/c/k0;Lk/a/b/a/c/q0;)Lk/a/b/a/c/q0;
    .locals 2

    if-nez p2, :cond_0

    .line 16
    invoke-virtual {p0}, Lk/a/b/a/c/r;->b()Lk/a/b/a/c/q0;

    move-result-object p2

    goto :goto_1

    .line 17
    :cond_0
    invoke-interface {p1}, Lk/a/b/a/c/k0;->position()I

    move-result v0

    invoke-interface {p1, v0}, Lk/a/b/a/c/k0;->get(I)B

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    instance-of v1, p2, Lk/a/b/a/c/j0;

    if-nez v1, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    move-object v1, p2

    check-cast v1, Lk/a/b/a/c/j0;

    .line 20
    invoke-interface {v1}, Lk/a/b/a/c/j0;->g()B

    move-result v1

    if-eq v0, v1, :cond_2

    .line 21
    invoke-virtual {p0}, Lk/a/b/a/c/r;->b()Lk/a/b/a/c/q0;

    move-result-object p2

    goto :goto_1

    .line 22
    :cond_2
    invoke-interface {p1}, Lk/a/b/a/c/k0;->get()B

    goto :goto_1

    .line 23
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lk/a/b/a/c/r;->b()Lk/a/b/a/c/q0;

    move-result-object p2

    :goto_1
    return-object p2
.end method


# virtual methods
.method public final a(Ljava/util/Map;)I
    .locals 6

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lk/a/b/a/c/g0;->d:Lk/a/b/a/c/a;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lk/a/b/a/c/g0;->d:Lk/a/b/a/c/a;

    const/4 v1, 0x0

    .line 7
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 9
    iget-object v3, p0, Lk/a/b/a/c/g0;->c:Lk/a/b/a/c/x;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lk/a/b/a/c/x;->a(Ljava/lang/Object;)Lk/a/b/a/c/a;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lk/a/b/a/c/a;->a(Ljava/lang/Object;)Lk/a/b/a/c/r0;

    move-result-object v3

    goto :goto_1

    .line 10
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lk/a/b/a/c/a;->a(Ljava/lang/Object;)Lk/a/b/a/c/r0;

    move-result-object v3

    .line 11
    :goto_1
    invoke-interface {v3}, Lk/a/b/a/c/r0;->d()I

    move-result v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Lk/a/b/a/c/r0;->b(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    .line 12
    iget-object v1, p0, Lk/a/b/a/c/g0;->c:Lk/a/b/a/c/x;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lk/a/b/a/c/x;->a(Ljava/lang/Object;)Lk/a/b/a/c/a;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lk/a/b/a/c/a;->a(Ljava/lang/Object;)Lk/a/b/a/c/r0;

    move-result-object v1

    .line 13
    invoke-interface {v1}, Lk/a/b/a/c/r0;->d()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lk/a/b/a/c/r0;->b(Ljava/lang/Object;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v3, v1

    add-int v1, v3, v4

    goto :goto_0

    .line 14
    :cond_1
    iput-object v0, p0, Lk/a/b/a/c/g0;->d:Lk/a/b/a/c/a;

    return v1

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lk/a/b/a/c/g0;->d:Lk/a/b/a/c/a;

    .line 15
    throw p1
.end method

.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation

    .line 3
    const-class v0, Ljava/util/Map;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lk/a/b/a/c/j0;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lk/a/b/a/c/g0;->b(Ljava/util/Map;)Lk/a/b/a/c/g0$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lk/a/b/a/c/r0;
    .locals 0

    .line 2
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lk/a/b/a/c/g0;->b(Ljava/util/Map;)Lk/a/b/a/c/g0$b;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/Map;)Lk/a/b/a/c/g0$b;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/c/g0;->a(Ljava/util/Map;)I

    move-result v0

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_1

    const/16 v1, 0xfe

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lk/a/b/a/c/g0;->b:Lk/a/b/a/c/g0$b;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lk/a/b/a/c/g0;->a:Lk/a/b/a/c/g0$b;

    .line 3
    :goto_1
    invoke-interface {v1, p1, v0}, Lk/a/b/a/c/g0$b;->a(Ljava/util/Map;I)V

    return-object v1
.end method

.method public f()Lk/a/b/a/c/r0;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/g0;->a:Lk/a/b/a/c/g0$b;

    return-object v0
.end method

.method public i()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lk/a/b/a/c/g0$b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lk/a/b/a/c/g0$b;

    .line 1
    iget-object v1, p0, Lk/a/b/a/c/g0;->b:Lk/a/b/a/c/g0$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lk/a/b/a/c/g0;->a:Lk/a/b/a/c/g0$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
