.class public Lk/a/b/a/c/g0$c;
.super Lk/a/b/a/c/m0;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/g0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/c/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/c/m0<",
        "Ljava/util/Map;",
        ">;",
        "Lk/a/b/a/c/g0$b;"
    }
.end annotation


# instance fields
.field public c:Ljava/util/Map;

.field public d:I

.field public final synthetic e:Lk/a/b/a/c/g0;


# direct methods
.method public constructor <init>(Lk/a/b/a/c/g0;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/b/a/c/g0$c;->e:Lk/a/b/a/c/g0;

    .line 2
    invoke-direct {p0, p2, p3}, Lk/a/b/a/c/m0;-><init>(Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/b/a/c/g0$c;->c:Ljava/util/Map;

    .line 2
    iput p2, p0, Lk/a/b/a/c/g0$c;->d:I

    return-void
.end method

.method public a(Lk/a/b/a/c/r0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/a/b/a/c/r0<",
            "Ljava/util/Map;",
            ">;)Z"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/g0$c;->c:Ljava/util/Map;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lk/a/b/a/c/g0$c;->d:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lk/a/b/a/c/g0$c;->e:Lk/a/b/a/c/g0;

    .line 3
    invoke-virtual {v0, p1}, Lk/a/b/a/c/g0;->a(Ljava/util/Map;)I

    move-result p1

    :goto_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public d(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 3
    iget-object v0, v0, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    .line 4
    iget-object v1, p0, Lk/a/b/a/c/g0$c;->c:Ljava/util/Map;

    if-ne p1, v1, :cond_0

    iget v1, p0, Lk/a/b/a/c/g0$c;->d:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lk/a/b/a/c/g0$c;->e:Lk/a/b/a/c/g0;

    .line 5
    invoke-virtual {v1, p1}, Lk/a/b/a/c/g0;->a(Ljava/util/Map;)I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 6
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->c(I)V

    .line 7
    iget-object v0, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 8
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    .line 9
    iget-object v0, v0, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->a(B)V

    .line 10
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lk/a/b/a/c/g0$c;->e:Lk/a/b/a/c/g0;

    .line 12
    iget-object v1, v0, Lk/a/b/a/c/g0;->d:Lk/a/b/a/c/a;

    const/4 v2, 0x0

    .line 13
    iput-object v2, v0, Lk/a/b/a/c/g0;->d:Lk/a/b/a/c/a;

    .line 14
    :goto_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 16
    iget-object v2, p0, Lk/a/b/a/c/g0$c;->e:Lk/a/b/a/c/g0;

    .line 17
    iget-object v2, v2, Lk/a/b/a/c/g0;->c:Lk/a/b/a/c/x;

    .line 18
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lk/a/b/a/c/x;->a(Ljava/lang/Object;)Lk/a/b/a/c/a;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lk/a/b/a/c/a;->a(Ljava/lang/Object;)Lk/a/b/a/c/r0;

    move-result-object v2

    goto :goto_2

    .line 19
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lk/a/b/a/c/a;->a(Ljava/lang/Object;)Lk/a/b/a/c/r0;

    move-result-object v2

    .line 20
    :goto_2
    invoke-interface {v2}, Lk/a/b/a/c/r0;->c()V

    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lk/a/b/a/c/r0;->a(Ljava/lang/Object;)V

    .line 22
    iget-object v2, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lk/a/b/a/c/x;->a(Ljava/lang/Object;)Lk/a/b/a/c/a;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lk/a/b/a/c/a;->a(Ljava/lang/Object;)Lk/a/b/a/c/r0;

    move-result-object v2

    .line 24
    invoke-interface {v2}, Lk/a/b/a/c/r0;->c()V

    .line 25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Lk/a/b/a/c/r0;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 26
    :cond_2
    iget-object p1, p0, Lk/a/b/a/c/g0$c;->e:Lk/a/b/a/c/g0;

    .line 27
    iput-object v1, p1, Lk/a/b/a/c/g0;->d:Lk/a/b/a/c/a;

    return-void

    :catchall_0
    move-exception p1

    .line 28
    iget-object v0, p0, Lk/a/b/a/c/g0$c;->e:Lk/a/b/a/c/g0;

    .line 29
    iput-object v1, v0, Lk/a/b/a/c/g0;->d:Lk/a/b/a/c/a;

    .line 30
    throw p1
.end method

.method public g()B
    .locals 1

    const/16 v0, -0x3f

    return v0
.end method

.method public getType()Lk/a/b/a/c/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/g0$c;->e:Lk/a/b/a/c/g0;

    return-object v0
.end method

.method public getType()Lk/a/b/a/c/i0;
    .locals 1

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/g0$c;->e:Lk/a/b/a/c/g0;

    return-object v0
.end method

.method public k()Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/d;->b:Lk/a/b/a/c/r;

    .line 2
    iget-object v1, v0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    .line 3
    invoke-virtual {v0}, Lk/a/b/a/c/r;->e()B

    .line 4
    invoke-virtual {v0}, Lk/a/b/a/c/r;->e()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 5
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v4

    const/4 v7, 0x0

    .line 6
    :goto_0
    div-int/lit8 v8, v2, 0x2

    if-ge v7, v8, :cond_4

    .line 7
    invoke-static {v0, v1, v4}, Lk/a/b/a/c/g0;->a(Lk/a/b/a/c/r;Lk/a/b/a/c/k0;Lk/a/b/a/c/q0;)Lk/a/b/a/c/q0;

    move-result-object v4

    const-string v8, "Unknown constructor"

    if-eqz v4, :cond_3

    .line 8
    invoke-interface {v4}, Lk/a/b/a/c/q0;->k()Ljava/lang/Object;

    move-result-object v9

    .line 9
    invoke-interface {v1}, Lk/a/b/a/c/k0;->position()I

    move-result v10

    invoke-interface {v1, v10}, Lk/a/b/a/c/k0;->get(I)B

    move-result v10

    const/16 v11, -0x20

    if-eq v10, v11, :cond_0

    const/16 v11, -0x10

    if-eq v10, v11, :cond_0

    const/4 v10, 0x0

    goto :goto_1

    :cond_0
    const/4 v10, 0x1

    .line 10
    :goto_1
    invoke-static {v0, v1, v6}, Lk/a/b/a/c/g0;->a(Lk/a/b/a/c/r;Lk/a/b/a/c/k0;Lk/a/b/a/c/q0;)Lk/a/b/a/c/q0;

    move-result-object v6

    if-eqz v6, :cond_2

    if-eqz v10, :cond_1

    .line 11
    move-object v8, v6

    check-cast v8, Lk/a/b/a/c/e$b;

    invoke-interface {v8}, Lk/a/b/a/c/e$b;->j()Ljava/lang/Object;

    move-result-object v8

    goto :goto_2

    .line 12
    :cond_1
    invoke-interface {v6}, Lk/a/b/a/c/q0;->k()Ljava/lang/Object;

    move-result-object v8

    .line 13
    :goto_2
    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 14
    :cond_2
    new-instance v0, Lk/a/b/a/c/q;

    invoke-direct {v0, v8}, Lk/a/b/a/c/q;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_3
    new-instance v0, Lk/a/b/a/c/q;

    invoke-direct {v0, v8}, Lk/a/b/a/c/q;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-object v3
.end method
