.class public abstract Ld/t/a/s$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/t/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/t/a/s$h$c;,
        Ld/t/a/s$h$a;,
        Ld/t/a/s$h$b;
    }
.end annotation


# instance fields
.field public a:Ld/t/a/s$h$b;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/t/a/s$h$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:J

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ld/t/a/s$h;->a:Ld/t/a/s$h$b;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/t/a/s$h;->b:Ljava/util/ArrayList;

    const-wide/16 v0, 0x78

    .line 4
    iput-wide v0, p0, Ld/t/a/s$h;->c:J

    .line 5
    iput-wide v0, p0, Ld/t/a/s$h;->d:J

    const-wide/16 v0, 0xfa

    .line 6
    iput-wide v0, p0, Ld/t/a/s$h;->e:J

    .line 7
    iput-wide v0, p0, Ld/t/a/s$h;->f:J

    return-void
.end method

.method public static d(Ld/t/a/s$x;)I
    .locals 3

    .line 1
    iget v0, p0, Ld/t/a/s$x;->i:I

    and-int/lit8 v0, v0, 0xe

    .line 2
    invoke-virtual {p0}, Ld/t/a/s$x;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0}, Ld/t/a/s$x;->h()I

    move-result v1

    .line 4
    invoke-virtual {p0}, Ld/t/a/s$x;->e()I

    move-result p0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eq p0, v2, :cond_1

    if-eq v1, p0, :cond_1

    or-int/lit16 v0, v0, 0x800

    :cond_1
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 27
    iget-object v0, p0, Ld/t/a/s$h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 28
    iget-object v2, p0, Ld/t/a/s$h;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/t/a/s$h$a;

    invoke-interface {v2}, Ld/t/a/s$h$a;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Ld/t/a/s$h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final a(Ld/t/a/s$x;)V
    .locals 8

    .line 1
    iget-object v0, p0, Ld/t/a/s$h;->a:Ld/t/a/s$h$b;

    if-eqz v0, :cond_5

    .line 2
    check-cast v0, Ld/t/a/s$i;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p1, v2}, Ld/t/a/s$x;->a(Z)V

    .line 4
    iget-object v3, p1, Ld/t/a/s$x;->g:Ld/t/a/s$x;

    if-eqz v3, :cond_0

    iget-object v3, p1, Ld/t/a/s$x;->h:Ld/t/a/s$x;

    if-nez v3, :cond_0

    .line 5
    iput-object v1, p1, Ld/t/a/s$x;->g:Ld/t/a/s$x;

    .line 6
    :cond_0
    iput-object v1, p1, Ld/t/a/s$x;->h:Ld/t/a/s$x;

    .line 7
    invoke-virtual {p1}, Ld/t/a/s$x;->t()Z

    move-result v1

    if-nez v1, :cond_5

    .line 8
    iget-object v1, v0, Ld/t/a/s$i;->a:Ld/t/a/s;

    iget-object v3, p1, Ld/t/a/s$x;->a:Landroid/view/View;

    .line 9
    invoke-virtual {v1}, Ld/t/a/s;->q()V

    .line 10
    iget-object v4, v1, Ld/t/a/s;->B:Ld/t/a/b;

    .line 11
    iget-object v5, v4, Ld/t/a/b;->a:Ld/t/a/b$b;

    check-cast v5, Ld/t/a/t;

    .line 12
    iget-object v5, v5, Ld/t/a/t;->a:Ld/t/a/s;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-ne v5, v6, :cond_1

    .line 13
    invoke-virtual {v4, v3}, Ld/t/a/b;->c(Landroid/view/View;)Z

    goto :goto_0

    .line 14
    :cond_1
    iget-object v6, v4, Ld/t/a/b;->b:Ld/t/a/b$a;

    invoke-virtual {v6, v5}, Ld/t/a/b$a;->c(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 15
    iget-object v6, v4, Ld/t/a/b;->b:Ld/t/a/b$a;

    invoke-virtual {v6, v5}, Ld/t/a/b$a;->d(I)Z

    .line 16
    invoke-virtual {v4, v3}, Ld/t/a/b;->c(Landroid/view/View;)Z

    .line 17
    iget-object v4, v4, Ld/t/a/b;->a:Ld/t/a/b$b;

    check-cast v4, Ld/t/a/t;

    invoke-virtual {v4, v5}, Ld/t/a/t;->b(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 18
    invoke-static {v3}, Ld/t/a/s;->b(Landroid/view/View;)Ld/t/a/s$x;

    move-result-object v3

    .line 19
    iget-object v4, v1, Ld/t/a/s;->y:Ld/t/a/s$q;

    invoke-virtual {v4, v3}, Ld/t/a/s$q;->b(Ld/t/a/s$x;)V

    .line 20
    iget-object v4, v1, Ld/t/a/s;->y:Ld/t/a/s$q;

    invoke-virtual {v4, v3}, Ld/t/a/s$q;->a(Ld/t/a/s$x;)V

    :cond_3
    xor-int/lit8 v3, v2, 0x1

    .line 21
    invoke-virtual {v1, v3}, Ld/t/a/s;->b(Z)V

    if-nez v2, :cond_5

    .line 22
    invoke-virtual {p1}, Ld/t/a/s$x;->p()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 23
    iget-object v0, v0, Ld/t/a/s$i;->a:Ld/t/a/s;

    iget-object p1, p1, Ld/t/a/s$x;->a:Landroid/view/View;

    invoke-virtual {v0, p1, v7}, Ld/t/a/s;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_1

    .line 24
    :cond_4
    throw v1

    :cond_5
    :goto_1
    return-void
.end method

.method public a(Ld/t/a/s$x;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/t/a/s$x;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 25
    move-object p2, p0

    check-cast p2, Ld/t/a/w;

    .line 26
    iget-boolean p2, p2, Ld/t/a/w;->g:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ld/t/a/s$x;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public abstract b()V
.end method

.method public abstract b(Ld/t/a/s$x;)V
.end method

.method public c(Ld/t/a/s$x;)Ld/t/a/s$h$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/t/a/s$u;",
            "Ld/t/a/s$x;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ld/t/a/s$h$c;"
        }
    .end annotation

    .line 1
    new-instance v0, Ld/t/a/s$h$c;

    invoke-direct {v0}, Ld/t/a/s$h$c;-><init>()V

    .line 2
    iget-object p1, p1, Ld/t/a/s$x;->a:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, v0, Ld/t/a/s$h$c;->a:I

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, v0, Ld/t/a/s$h$c;->b:I

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    return-object v0
.end method

.method public abstract c()Z
.end method
