.class public Lk/a/b/a/c/e0$a;
.super Lk/a/b/a/c/d0;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/e0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/c/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/c/d0<",
        "Ljava/util/List;",
        ">;",
        "Lk/a/b/a/c/e0$b;"
    }
.end annotation


# instance fields
.field public c:Ljava/util/List;

.field public d:I

.field public final synthetic e:Lk/a/b/a/c/e0;


# direct methods
.method public constructor <init>(Lk/a/b/a/c/e0;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/b/a/c/e0$a;->e:Lk/a/b/a/c/e0;

    .line 2
    invoke-direct {p0, p2, p3}, Lk/a/b/a/c/d0;-><init>(Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;I)V
    .locals 0

    .line 3
    iput-object p1, p0, Lk/a/b/a/c/e0$a;->c:Ljava/util/List;

    .line 4
    iput p2, p0, Lk/a/b/a/c/e0$a;->d:I

    return-void
.end method

.method public a(Lk/a/b/a/c/r0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/a/b/a/c/r0<",
            "Ljava/util/List;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/e0$a;->e:Lk/a/b/a/c/e0;

    .line 2
    invoke-interface {p1}, Lk/a/b/a/c/r0;->getType()Lk/a/b/a/c/a;

    move-result-object p1

    if-ne v0, p1, :cond_0

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
    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/e0$a;->c:Ljava/util/List;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lk/a/b/a/c/e0$a;->d:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 4
    invoke-static {p1, v0}, Lk/a/b/a/c/e0;->a(Ljava/util/List;Lk/a/b/a/c/x;)I

    move-result p1

    :goto_0
    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public d(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 3
    iget-object v1, v0, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    .line 4
    iget-object v2, p0, Lk/a/b/a/c/e0$a;->c:Ljava/util/List;

    if-ne p1, v2, :cond_0

    iget v0, p0, Lk/a/b/a/c/e0$a;->d:I

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1, v0}, Lk/a/b/a/c/e0;->a(Ljava/util/List;Lk/a/b/a/c/x;)I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    .line 6
    invoke-interface {v1, v0}, Lk/a/b/a/c/y0;->c(I)V

    .line 7
    iget-object v0, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 9
    iget-object v0, v0, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->b(I)V

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 11
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 12
    iget-object v3, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 13
    invoke-virtual {v3, v2}, Lk/a/b/a/c/x;->a(Ljava/lang/Object;)Lk/a/b/a/c/a;

    move-result-object v3

    invoke-interface {v3, v2}, Lk/a/b/a/c/a;->a(Ljava/lang/Object;)Lk/a/b/a/c/r0;

    move-result-object v3

    .line 14
    invoke-interface {v3}, Lk/a/b/a/c/r0;->c()V

    .line 15
    invoke-interface {v3, v2}, Lk/a/b/a/c/r0;->a(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public g()B
    .locals 1

    const/16 v0, -0x30

    return v0
.end method

.method public getType()Lk/a/b/a/c/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/e0$a;->e:Lk/a/b/a/c/e0;

    return-object v0
.end method

.method public getType()Lk/a/b/a/c/i0;
    .locals 1

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/e0$a;->e:Lk/a/b/a/c/e0;

    return-object v0
.end method

.method public k()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/d;->b:Lk/a/b/a/c/r;

    .line 2
    iget-object v1, v0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    .line 3
    invoke-virtual {v0}, Lk/a/b/a/c/r;->f()I

    .line 4
    invoke-virtual {v0}, Lk/a/b/a/c/r;->f()I

    move-result v2

    .line 5
    invoke-virtual {v0}, Lk/a/b/a/c/r;->a()I

    move-result v3

    if-gt v2, v3, :cond_8

    const/4 v0, 0x0

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_7

    .line 7
    invoke-interface {v1}, Lk/a/b/a/c/k0;->position()I

    move-result v5

    invoke-interface {v1, v5}, Lk/a/b/a/c/k0;->get(I)B

    move-result v5

    const/16 v6, -0x20

    if-eq v5, v6, :cond_0

    const/16 v6, -0x10

    if-eq v5, v6, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    :goto_1
    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lk/a/b/a/c/d;->b:Lk/a/b/a/c/r;

    .line 9
    invoke-virtual {v0}, Lk/a/b/a/c/r;->b()Lk/a/b/a/c/q0;

    move-result-object v0

    goto :goto_3

    :cond_1
    if-eqz v5, :cond_4

    .line 10
    instance-of v7, v0, Lk/a/b/a/c/j0;

    if-nez v7, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    move-object v7, v0

    check-cast v7, Lk/a/b/a/c/j0;

    .line 12
    invoke-interface {v7}, Lk/a/b/a/c/j0;->g()B

    move-result v7

    if-eq v5, v7, :cond_3

    .line 13
    iget-object v0, p0, Lk/a/b/a/c/d;->b:Lk/a/b/a/c/r;

    .line 14
    invoke-virtual {v0}, Lk/a/b/a/c/r;->b()Lk/a/b/a/c/q0;

    move-result-object v0

    goto :goto_3

    .line 15
    :cond_3
    invoke-interface {v1}, Lk/a/b/a/c/k0;->get()B

    goto :goto_3

    .line 16
    :cond_4
    :goto_2
    iget-object v0, p0, Lk/a/b/a/c/d;->b:Lk/a/b/a/c/r;

    .line 17
    invoke-virtual {v0}, Lk/a/b/a/c/r;->b()Lk/a/b/a/c/q0;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_6

    if-eqz v6, :cond_5

    .line 18
    move-object v5, v0

    check-cast v5, Lk/a/b/a/c/e$b;

    invoke-interface {v5}, Lk/a/b/a/c/e$b;->j()Ljava/lang/Object;

    move-result-object v5

    goto :goto_4

    .line 19
    :cond_5
    invoke-interface {v0}, Lk/a/b/a/c/q0;->k()Ljava/lang/Object;

    move-result-object v5

    .line 20
    :goto_4
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 21
    :cond_6
    new-instance v0, Lk/a/b/a/c/q;

    const-string v1, "Unknown constructor"

    invoke-direct {v0, v1}, Lk/a/b/a/c/q;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    return-object v3

    .line 22
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "List element count "

    const-string v4, " is specified to be greater than the amount of data available ("

    invoke-static {v3, v2, v4}, Le/a/a/a/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 23
    invoke-virtual {v0}, Lk/a/b/a/c/r;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
