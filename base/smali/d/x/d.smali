.class public Ld/x/d;
.super Ld/m/a/k0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld/m/a/k0;-><init>()V

    return-void
.end method

.method public static a(Ld/x/h;)Z
    .locals 1

    .line 46
    iget-object v0, p0, Ld/x/h;->B:Ljava/util/ArrayList;

    .line 47
    invoke-static {v0}, Ld/m/a/k0;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Ld/x/h;->D:Ljava/util/ArrayList;

    .line 49
    invoke-static {v0}, Ld/m/a/k0;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object p0, p0, Ld/x/h;->E:Ljava/util/ArrayList;

    .line 51
    invoke-static {p0}, Ld/m/a/k0;->a(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 15
    check-cast p1, Ld/x/h;

    .line 16
    check-cast p2, Ld/x/h;

    .line 17
    check-cast p3, Ld/x/h;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 18
    new-instance v0, Ld/x/n;

    invoke-direct {v0}, Ld/x/n;-><init>()V

    .line 19
    invoke-virtual {v0, p1}, Ld/x/n;->a(Ld/x/h;)Ld/x/n;

    .line 20
    invoke-virtual {v0, p2}, Ld/x/n;->a(Ld/x/h;)Ld/x/n;

    const/4 p1, 0x1

    .line 21
    invoke-virtual {v0, p1}, Ld/x/n;->b(I)Ld/x/n;

    move-object p1, v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move-object p1, p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p3, :cond_4

    .line 22
    new-instance p2, Ld/x/n;

    invoke-direct {p2}, Ld/x/n;-><init>()V

    if-eqz p1, :cond_3

    .line 23
    invoke-virtual {p2, p1}, Ld/x/n;->a(Ld/x/h;)Ld/x/n;

    .line 24
    :cond_3
    invoke-virtual {p2, p3}, Ld/x/n;->a(Ld/x/h;)Ld/x/n;

    return-object p2

    :cond_4
    return-object p1
.end method

.method public a(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Ld/x/h;

    invoke-static {p1, p2}, Ld/x/l;->a(Landroid/view/ViewGroup;Ld/x/h;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 44
    check-cast p1, Ld/x/h;

    .line 45
    new-instance v0, Ld/x/d$d;

    invoke-direct {v0, p0, p2}, Ld/x/d$d;-><init>(Ld/x/d;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Ld/x/h;->a(Ld/x/h$c;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 42
    check-cast p1, Ld/x/h;

    .line 43
    invoke-virtual {p1, p2}, Ld/x/h;->a(Landroid/view/View;)Ld/x/h;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 13
    check-cast p1, Ld/x/h;

    .line 14
    new-instance v0, Ld/x/d$b;

    invoke-direct {v0, p0, p2, p3}, Ld/x/d$b;-><init>(Ld/x/d;Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Ld/x/h;->a(Ld/x/h$d;)Ld/x/h;

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 26
    move-object v0, p1

    check-cast v0, Ld/x/h;

    .line 27
    new-instance v9, Ld/x/d$c;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Ld/x/d$c;-><init>(Ld/x/d;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v9}, Ld/x/h;->a(Ld/x/h$d;)Ld/x/h;

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 2
    check-cast p1, Ld/x/h;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of v0, p1, Ld/x/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ld/x/n;

    .line 5
    iget-object v0, p1, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 6
    invoke-virtual {p1, v1}, Ld/x/n;->a(I)Ld/x/h;

    move-result-object v2

    .line 7
    invoke-virtual {p0, v2, p2}, Ld/x/d;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p1}, Ld/x/d;->a(Ld/x/h;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p1, Ld/x/h;->C:Ljava/util/ArrayList;

    .line 10
    invoke-static {v0}, Ld/m/a/k0;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 12
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Ld/x/h;->a(Landroid/view/View;)Ld/x/h;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 28
    check-cast p1, Ld/x/h;

    .line 29
    instance-of v0, p1, Ld/x/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 30
    check-cast p1, Ld/x/n;

    .line 31
    iget-object v0, p1, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 32
    invoke-virtual {p1, v1}, Ld/x/n;->a(I)Ld/x/h;

    move-result-object v2

    .line 33
    invoke-virtual {p0, v2, p2, p3}, Ld/x/d;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {p1}, Ld/x/d;->a(Ld/x/h;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 35
    iget-object v0, p1, Ld/x/h;->C:Ljava/util/ArrayList;

    .line 36
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 37
    invoke-interface {v0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 39
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Ld/x/h;->a(Landroid/view/View;)Ld/x/h;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 40
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    :goto_2
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_3

    .line 41
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Ld/x/h;->d(Landroid/view/View;)Ld/x/h;

    goto :goto_2

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Ld/x/h;

    return p1
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    check-cast p1, Ld/x/h;

    invoke-virtual {p1}, Ld/x/h;->clone()Ld/x/h;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 11
    new-instance v0, Ld/x/n;

    invoke-direct {v0}, Ld/x/n;-><init>()V

    if-eqz p1, :cond_0

    .line 12
    check-cast p1, Ld/x/h;

    invoke-virtual {v0, p1}, Ld/x/n;->a(Ld/x/h;)Ld/x/n;

    :cond_0
    if-eqz p2, :cond_1

    .line 13
    check-cast p2, Ld/x/h;

    invoke-virtual {v0, p2}, Ld/x/n;->a(Ld/x/h;)Ld/x/n;

    :cond_1
    if-eqz p3, :cond_2

    .line 14
    check-cast p3, Ld/x/h;

    invoke-virtual {v0, p3}, Ld/x/n;->a(Ld/x/h;)Ld/x/n;

    :cond_2
    return-object v0
.end method

.method public b(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 21
    check-cast p1, Ld/x/h;

    .line 22
    invoke-virtual {p1, p2}, Ld/x/h;->d(Landroid/view/View;)Ld/x/h;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 2
    check-cast p1, Ld/x/n;

    .line 3
    iget-object v0, p1, Ld/x/h;->C:Ljava/util/ArrayList;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 7
    invoke-static {v0, v3}, Ld/m/a/k0;->a(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0, p1, p3}, Ld/x/d;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 15
    check-cast p1, Ld/x/n;

    if-eqz p1, :cond_0

    .line 16
    iget-object v0, p1, Ld/x/h;->C:Ljava/util/ArrayList;

    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    iget-object v0, p1, Ld/x/h;->C:Ljava/util/ArrayList;

    .line 19
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Ld/x/d;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Ld/x/n;

    invoke-direct {v0}, Ld/x/n;-><init>()V

    .line 2
    check-cast p1, Ld/x/h;

    invoke-virtual {v0, p1}, Ld/x/n;->a(Ld/x/h;)Ld/x/n;

    return-object v0
.end method

.method public c(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, Ld/x/h;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 5
    invoke-virtual {p0, p2, v0}, Ld/m/a/k0;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 6
    new-instance p2, Ld/x/d$a;

    invoke-direct {p2, p0, v0}, Ld/x/d$a;-><init>(Ld/x/d;Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Ld/x/h;->a(Ld/x/h$c;)V

    :cond_0
    return-void
.end method
