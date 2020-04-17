.class public final Ld/t/a/s$q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/t/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "q"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/t/a/s$x;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/t/a/s$x;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/t/a/s$x;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld/t/a/s$x;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:I

.field public g:Ld/t/a/s$p;

.field public final synthetic h:Ld/t/a/s;


# direct methods
.method public constructor <init>(Ld/t/a/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ld/t/a/s$q;->a:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Ld/t/a/s$q;->b:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ld/t/a/s$q;->c:Ljava/util/ArrayList;

    .line 5
    iget-object p1, p0, Ld/t/a/s$q;->a:Ljava/util/ArrayList;

    .line 6
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ld/t/a/s$q;->d:Ljava/util/List;

    const/4 p1, 0x2

    .line 7
    iput p1, p0, Ld/t/a/s$q;->e:I

    .line 8
    iput p1, p0, Ld/t/a/s$q;->f:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 3

    if-ltz p1, :cond_1

    .line 3
    iget-object v0, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    iget-object v0, v0, Ld/t/a/s;->C0:Ld/t/a/s$u;

    invoke-virtual {v0}, Ld/t/a/s$u;->a()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 4
    iget-object v0, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    iget-object v1, v0, Ld/t/a/s;->C0:Ld/t/a/s$u;

    .line 5
    iget-boolean v1, v1, Ld/t/a/s$u;->g:Z

    if-nez v1, :cond_0

    return p1

    .line 6
    :cond_0
    iget-object v0, v0, Ld/t/a/s;->A:Ld/t/a/a;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p1, v1}, Ld/t/a/a;->a(II)I

    move-result p1

    return p1

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "item count is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    iget-object p1, p1, Ld/t/a/s;->C0:Ld/t/a/s$u;

    .line 9
    invoke-virtual {p1}, Ld/t/a/s$u;->a()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    invoke-static {p1, v1}, Le/a/a/a/a;->a(Ld/t/a/s;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(IZJ)Ld/t/a/s$x;
    .locals 10

    if-ltz p1, :cond_25

    .line 10
    iget-object v0, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    iget-object v0, v0, Ld/t/a/s;->C0:Ld/t/a/s$u;

    invoke-virtual {v0}, Ld/t/a/s$u;->a()I

    move-result v0

    if-ge p1, v0, :cond_25

    .line 11
    iget-object v0, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    iget-object v0, v0, Ld/t/a/s;->C0:Ld/t/a/s$u;

    .line 12
    iget-boolean v0, v0, Ld/t/a/s$u;->g:Z

    const/16 v1, 0x20

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Ld/t/a/s$q;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    .line 14
    iget-object v6, p0, Ld/t/a/s$q;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld/t/a/s$x;

    .line 15
    invoke-virtual {v6}, Ld/t/a/s$x;->w()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Ld/t/a/s$x;->g()I

    move-result v7

    if-ne v7, p1, :cond_1

    .line 16
    invoke-virtual {v6, v1}, Ld/t/a/s$x;->a(I)V

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 17
    :cond_2
    throw v3

    :cond_3
    :goto_1
    move-object v6, v3

    :goto_2
    if-eqz v6, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    move-object v6, v3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-nez v6, :cond_19

    .line 18
    iget-object v5, p0, Ld/t/a/s$q;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_8

    .line 19
    iget-object v7, p0, Ld/t/a/s$q;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld/t/a/s$x;

    .line 20
    invoke-virtual {v7}, Ld/t/a/s$x;->w()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v7}, Ld/t/a/s$x;->g()I

    move-result v8

    if-ne v8, p1, :cond_7

    .line 21
    invoke-virtual {v7}, Ld/t/a/s$x;->l()Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    iget-object v8, v8, Ld/t/a/s;->C0:Ld/t/a/s$u;

    iget-boolean v8, v8, Ld/t/a/s$u;->g:Z

    if-nez v8, :cond_6

    invoke-virtual {v7}, Ld/t/a/s$x;->n()Z

    move-result v8

    if-nez v8, :cond_7

    .line 22
    :cond_6
    invoke-virtual {v7, v1}, Ld/t/a/s$x;->a(I)V

    move-object v6, v7

    goto/16 :goto_8

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    if-nez p2, :cond_f

    .line 23
    iget-object v1, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    iget-object v1, v1, Ld/t/a/s;->B:Ld/t/a/b;

    .line 24
    iget-object v5, v1, Ld/t/a/b;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_b

    .line 25
    iget-object v7, v1, Ld/t/a/b;->c:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 26
    iget-object v8, v1, Ld/t/a/b;->a:Ld/t/a/b$b;

    check-cast v8, Ld/t/a/t;

    if-eqz v8, :cond_a

    .line 27
    invoke-static {v7}, Ld/t/a/s;->b(Landroid/view/View;)Ld/t/a/s$x;

    move-result-object v8

    .line 28
    invoke-virtual {v8}, Ld/t/a/s$x;->g()I

    move-result v9

    if-ne v9, p1, :cond_9

    .line 29
    invoke-virtual {v8}, Ld/t/a/s$x;->l()Z

    move-result v9

    if-nez v9, :cond_9

    .line 30
    invoke-virtual {v8}, Ld/t/a/s$x;->n()Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 31
    :cond_a
    throw v3

    :cond_b
    move-object v7, v3

    :goto_6
    if-eqz v7, :cond_f

    .line 32
    invoke-static {v7}, Ld/t/a/s;->b(Landroid/view/View;)Ld/t/a/s$x;

    move-result-object v1

    .line 33
    iget-object v5, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    iget-object v5, v5, Ld/t/a/s;->B:Ld/t/a/b;

    .line 34
    iget-object v6, v5, Ld/t/a/b;->a:Ld/t/a/b$b;

    check-cast v6, Ld/t/a/t;

    .line 35
    iget-object v6, v6, Ld/t/a/t;->a:Ld/t/a/s;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    if-ltz v6, :cond_e

    .line 36
    iget-object v8, v5, Ld/t/a/b;->b:Ld/t/a/b$a;

    invoke-virtual {v8, v6}, Ld/t/a/b$a;->c(I)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 37
    iget-object v8, v5, Ld/t/a/b;->b:Ld/t/a/b$a;

    invoke-virtual {v8, v6}, Ld/t/a/b$a;->a(I)V

    .line 38
    invoke-virtual {v5, v7}, Ld/t/a/b;->c(Landroid/view/View;)Z

    .line 39
    iget-object v5, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    iget-object v5, v5, Ld/t/a/s;->B:Ld/t/a/b;

    invoke-virtual {v5, v7}, Ld/t/a/b;->a(Landroid/view/View;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_c

    .line 40
    iget-object v6, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    iget-object v6, v6, Ld/t/a/s;->B:Ld/t/a/b;

    invoke-virtual {v6, v5}, Ld/t/a/b;->a(I)V

    .line 41
    invoke-virtual {p0, v7}, Ld/t/a/s$q;->b(Landroid/view/View;)V

    const/16 v5, 0x2020

    .line 42
    invoke-virtual {v1, v5}, Ld/t/a/s$x;->a(I)V

    move-object v6, v1

    goto :goto_8

    .line 43
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    .line 44
    invoke-static {p3, p2}, Le/a/a/a/a;->a(Ld/t/a/s;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "trying to unhide a view that was not hidden"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "view is not a child, cannot hide "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_f
    iget-object v1, p0, Ld/t/a/s$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v1, :cond_11

    .line 48
    iget-object v6, p0, Ld/t/a/s$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld/t/a/s$x;

    .line 49
    invoke-virtual {v6}, Ld/t/a/s$x;->l()Z

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual {v6}, Ld/t/a/s$x;->g()I

    move-result v7

    if-ne v7, p1, :cond_10

    if-nez p2, :cond_12

    .line 50
    iget-object v1, p0, Ld/t/a/s$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_8

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_11
    move-object v6, v3

    :cond_12
    :goto_8
    if-eqz v6, :cond_19

    .line 51
    invoke-virtual {v6}, Ld/t/a/s$x;->n()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 52
    iget-object v1, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    iget-object v1, v1, Ld/t/a/s;->C0:Ld/t/a/s$u;

    .line 53
    iget-boolean v1, v1, Ld/t/a/s$u;->g:Z

    if-nez v1, :cond_16

    if-nez p2, :cond_15

    const/4 p2, 0x4

    .line 54
    invoke-virtual {v6, p2}, Ld/t/a/s$x;->a(I)V

    .line 55
    invoke-virtual {v6}, Ld/t/a/s$x;->o()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 56
    iget-object p2, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    iget-object v1, v6, Ld/t/a/s$x;->a:Landroid/view/View;

    invoke-virtual {p2, v1, v4}, Ld/t/a/s;->removeDetachedView(Landroid/view/View;Z)V

    .line 57
    invoke-virtual {v6}, Ld/t/a/s$x;->v()V

    goto :goto_9

    .line 58
    :cond_13
    invoke-virtual {v6}, Ld/t/a/s$x;->w()Z

    move-result p2

    if-eqz p2, :cond_14

    .line 59
    invoke-virtual {v6}, Ld/t/a/s$x;->b()V

    .line 60
    :cond_14
    :goto_9
    invoke-virtual {p0, v6}, Ld/t/a/s$q;->a(Ld/t/a/s$x;)V

    :cond_15
    move-object v6, v3

    goto :goto_a

    :cond_16
    const/4 v0, 0x1

    goto :goto_a

    .line 61
    :cond_17
    iget p1, v6, Ld/t/a/s$x;->c:I

    if-ltz p1, :cond_18

    throw v3

    .line 62
    :cond_18
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    .line 63
    invoke-static {p3, p2}, Le/a/a/a/a;->a(Ld/t/a/s;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    :goto_a
    if-nez v6, :cond_1b

    .line 64
    iget-object p2, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    iget-object p2, p2, Ld/t/a/s;->A:Ld/t/a/a;

    .line 65
    invoke-virtual {p2, p1, v4}, Ld/t/a/a;->a(II)I

    move-result p2

    if-ltz p2, :cond_1a

    .line 66
    throw v3

    .line 67
    :cond_1a
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Inconsistency detected. Invalid item position "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "(offset:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "state:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    iget-object p1, p1, Ld/t/a/s;->C0:Ld/t/a/s$u;

    .line 68
    invoke-virtual {p1}, Ld/t/a/s$u;->a()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    invoke-static {p1, p4}, Le/a/a/a/a;->a(Ld/t/a/s;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_1b
    if-eqz v0, :cond_1c

    .line 69
    iget-object p2, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    iget-object p2, p2, Ld/t/a/s;->C0:Ld/t/a/s$u;

    .line 70
    iget-boolean p2, p2, Ld/t/a/s$u;->g:Z

    if-nez p2, :cond_1c

    const/16 p2, 0x2000

    .line 71
    invoke-virtual {v6, p2}, Ld/t/a/s$x;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 72
    invoke-virtual {v6, v4, p2}, Ld/t/a/s$x;->a(II)V

    .line 73
    iget-object p2, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    iget-object p2, p2, Ld/t/a/s;->C0:Ld/t/a/s$u;

    iget-boolean p2, p2, Ld/t/a/s$u;->j:Z

    if-eqz p2, :cond_1c

    .line 74
    invoke-static {v6}, Ld/t/a/s$h;->d(Ld/t/a/s$x;)I

    .line 75
    iget-object p2, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    iget-object v0, p2, Ld/t/a/s;->k0:Ld/t/a/s$h;

    iget-object p2, p2, Ld/t/a/s;->C0:Ld/t/a/s$u;

    .line 76
    invoke-virtual {v6}, Ld/t/a/s$x;->i()Ljava/util/List;

    .line 77
    invoke-virtual {v0, v6}, Ld/t/a/s$h;->c(Ld/t/a/s$x;)Ld/t/a/s$h$c;

    move-result-object p2

    .line 78
    iget-object v0, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    invoke-virtual {v0, v6, p2}, Ld/t/a/s;->a(Ld/t/a/s$x;Ld/t/a/s$h$c;)V

    .line 79
    :cond_1c
    iget-object p2, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    iget-object p2, p2, Ld/t/a/s;->C0:Ld/t/a/s$u;

    .line 80
    iget-boolean p2, p2, Ld/t/a/s$u;->g:Z

    if-eqz p2, :cond_1d

    .line 81
    invoke-virtual {v6}, Ld/t/a/s$x;->k()Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 82
    iput p1, v6, Ld/t/a/s$x;->f:I

    goto :goto_c

    .line 83
    :cond_1d
    invoke-virtual {v6}, Ld/t/a/s$x;->k()Z

    move-result p2

    if-eqz p2, :cond_1e

    invoke-virtual {v6}, Ld/t/a/s$x;->r()Z

    move-result p2

    if-nez p2, :cond_1e

    invoke-virtual {v6}, Ld/t/a/s$x;->l()Z

    move-result p2

    if-eqz p2, :cond_21

    .line 84
    :cond_1e
    iget-object p2, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    iget-object p2, p2, Ld/t/a/s;->A:Ld/t/a/a;

    .line 85
    invoke-virtual {p2, p1, v4}, Ld/t/a/a;->a(II)I

    .line 86
    iget-object p1, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    iput-object p1, v6, Ld/t/a/s$x;->q:Ld/t/a/s;

    .line 87
    invoke-virtual {v6}, Ld/t/a/s$x;->f()I

    move-result p1

    .line 88
    iget-object p2, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    invoke-virtual {p2}, Ld/t/a/s;->getNanoTime()J

    move-result-wide v0

    const-wide v7, 0x7fffffffffffffffL

    cmp-long p2, p3, v7

    if-eqz p2, :cond_24

    .line 89
    iget-object p2, p0, Ld/t/a/s$q;->g:Ld/t/a/s$p;

    .line 90
    invoke-virtual {p2, p1}, Ld/t/a/s$p;->a(I)Ld/t/a/s$p$a;

    move-result-object p1

    iget-wide p1, p1, Ld/t/a/s$p$a;->d:J

    const-wide/16 v7, 0x0

    cmp-long v5, p1, v7

    if-eqz v5, :cond_20

    add-long/2addr v0, p1

    cmp-long p1, v0, p3

    if-gez p1, :cond_1f

    goto :goto_b

    :cond_1f
    const/4 v2, 0x0

    :cond_20
    :goto_b
    if-nez v2, :cond_24

    .line 91
    :cond_21
    :goto_c
    iget-object p1, v6, Ld/t/a/s$x;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_22

    .line 92
    iget-object p1, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    invoke-virtual {p1}, Ld/t/a/s;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Ld/t/a/s$l;

    .line 93
    iget-object p2, v6, Ld/t/a/s$x;->a:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    .line 94
    :cond_22
    iget-object p2, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    invoke-virtual {p2, p1}, Ld/t/a/s;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p2

    if-nez p2, :cond_23

    .line 95
    iget-object p2, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    invoke-virtual {p2, p1}, Ld/t/a/s;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Ld/t/a/s$l;

    .line 96
    iget-object p2, v6, Ld/t/a/s$x;->a:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    .line 97
    :cond_23
    check-cast p1, Ld/t/a/s$l;

    .line 98
    :goto_d
    iput-object v6, p1, Ld/t/a/s$l;->a:Ld/t/a/s$x;

    .line 99
    iput-boolean v4, p1, Ld/t/a/s$l;->d:Z

    return-object v6

    .line 100
    :cond_24
    throw v3

    .line 101
    :cond_25
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid item position "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "). Item count:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    iget-object p1, p1, Ld/t/a/s;->C0:Ld/t/a/s$u;

    .line 102
    invoke-virtual {p1}, Ld/t/a/s$u;->a()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    .line 103
    invoke-static {p1, p3}, Le/a/a/a/a;->a(Ld/t/a/s;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/s$q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-virtual {p0}, Ld/t/a/s$q;->c()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .line 104
    invoke-static {p1}, Ld/t/a/s;->b(Landroid/view/View;)Ld/t/a/s$x;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ld/t/a/s$x;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ld/t/a/s;->removeDetachedView(Landroid/view/View;Z)V

    .line 107
    :cond_0
    invoke-virtual {v0}, Ld/t/a/s$x;->o()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 108
    invoke-virtual {v0}, Ld/t/a/s$x;->v()V

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v0}, Ld/t/a/s$x;->w()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 110
    invoke-virtual {v0}, Ld/t/a/s$x;->b()V

    .line 111
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Ld/t/a/s$q;->a(Ld/t/a/s$x;)V

    return-void
.end method

.method public a(Ld/t/a/s$x;)V
    .locals 5

    .line 112
    invoke-virtual {p1}, Ld/t/a/s$x;->o()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    iget-object v0, p1, Ld/t/a/s$x;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 113
    :cond_0
    invoke-virtual {p1}, Ld/t/a/s$x;->p()Z

    move-result v0

    if-nez v0, :cond_9

    .line 114
    invoke-virtual {p1}, Ld/t/a/s$x;->u()Z

    move-result v0

    if-nez v0, :cond_8

    .line 115
    invoke-virtual {p1}, Ld/t/a/s$x;->d()Z

    move-result v0

    .line 116
    invoke-virtual {p1}, Ld/t/a/s$x;->m()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 117
    iget v3, p0, Ld/t/a/s$q;->f:I

    if-lez v3, :cond_5

    const/16 v3, 0x20e

    .line 118
    invoke-virtual {p1, v3}, Ld/t/a/s$x;->b(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 119
    iget-object v3, p0, Ld/t/a/s$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 120
    iget v4, p0, Ld/t/a/s$q;->f:I

    if-lt v3, v4, :cond_1

    if-lez v3, :cond_1

    .line 121
    invoke-virtual {p0, v1}, Ld/t/a/s$q;->b(I)V

    add-int/lit8 v3, v3, -0x1

    .line 122
    :cond_1
    sget-boolean v1, Ld/t/a/s;->X0:Z

    if-eqz v1, :cond_4

    if-lez v3, :cond_4

    iget-object v1, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    iget-object v1, v1, Ld/t/a/s;->B0:Ld/t/a/m$b;

    iget v4, p1, Ld/t/a/s$x;->c:I

    .line 123
    invoke-virtual {v1, v4}, Ld/t/a/m$b;->a(I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_3

    .line 124
    iget-object v1, p0, Ld/t/a/s$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/t/a/s$x;

    iget v1, v1, Ld/t/a/s$x;->c:I

    .line 125
    iget-object v4, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    iget-object v4, v4, Ld/t/a/s;->B0:Ld/t/a/m$b;

    invoke-virtual {v4, v1}, Ld/t/a/m$b;->a(I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_3
    add-int/2addr v3, v2

    .line 126
    :cond_4
    iget-object v1, p0, Ld/t/a/s$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_6

    .line 127
    invoke-virtual {p0, p1, v2}, Ld/t/a/s$q;->a(Ld/t/a/s$x;Z)V

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    .line 128
    :goto_1
    iget-object v3, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    iget-object v3, v3, Ld/t/a/s;->C:Ld/t/a/y;

    invoke-virtual {v3, p1}, Ld/t/a/y;->a(Ld/t/a/s$x;)V

    if-nez v1, :cond_7

    if-nez v2, :cond_7

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 129
    iput-object v0, p1, Ld/t/a/s$x;->q:Ld/t/a/s;

    :cond_7
    return-void

    .line 130
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    .line 131
    invoke-static {v1, v0}, Le/a/a/a/a;->a(Ld/t/a/s;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    .line 133
    invoke-static {p1, v1}, Le/a/a/a/a;->a(Ld/t/a/s;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_a
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 135
    invoke-virtual {p1}, Ld/t/a/s$x;->o()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isAttached:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Ld/t/a/s$x;->a:Landroid/view/View;

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_b

    const/4 v1, 0x1

    :cond_b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    invoke-static {p1, v2}, Le/a/a/a/a;->a(Ld/t/a/s;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ld/t/a/s$x;Z)V
    .locals 3

    .line 137
    invoke-static {p1}, Ld/t/a/s;->b(Ld/t/a/s$x;)V

    const/16 v0, 0x4000

    .line 138
    invoke-virtual {p1, v0}, Ld/t/a/s$x;->b(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 139
    invoke-virtual {p1, v1, v0}, Ld/t/a/s$x;->a(II)V

    .line 140
    iget-object v0, p1, Ld/t/a/s$x;->a:Landroid/view/View;

    invoke-static {v0, v2}, Ld/i/i/n;->a(Landroid/view/View;Ld/i/i/a;)V

    :cond_0
    if-eqz p2, :cond_2

    .line 141
    iget-object p2, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    iget-object p2, p2, Ld/t/a/s;->J:Ld/t/a/s$r;

    if-eqz p2, :cond_1

    .line 142
    invoke-interface {p2, p1}, Ld/t/a/s$r;->a(Ld/t/a/s$x;)V

    .line 143
    :cond_1
    iget-object p2, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    .line 144
    iget-object v0, p2, Ld/t/a/s;->C0:Ld/t/a/s$u;

    if-eqz v0, :cond_2

    .line 145
    iget-object p2, p2, Ld/t/a/s;->C:Ld/t/a/y;

    invoke-virtual {p2, p1}, Ld/t/a/y;->a(Ld/t/a/s$x;)V

    .line 146
    :cond_2
    iput-object v2, p1, Ld/t/a/s$x;->q:Ld/t/a/s;

    .line 147
    invoke-virtual {p0}, Ld/t/a/s$q;->b()Ld/t/a/s$p;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 148
    invoke-virtual {p1}, Ld/t/a/s$x;->f()I

    move-result v0

    .line 149
    invoke-virtual {p2, v0}, Ld/t/a/s$p;->a(I)Ld/t/a/s$p$a;

    move-result-object v1

    iget-object v1, v1, Ld/t/a/s$p$a;->a:Ljava/util/ArrayList;

    .line 150
    iget-object p2, p2, Ld/t/a/s$p;->a:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld/t/a/s$p$a;

    iget p2, p2, Ld/t/a/s$p$a;->b:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p2, v0, :cond_3

    goto :goto_0

    .line 151
    :cond_3
    invoke-virtual {p1}, Ld/t/a/s$x;->s()V

    .line 152
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 153
    :cond_4
    throw v2
.end method

.method public b()Ld/t/a/s$p;
    .locals 1

    .line 23
    iget-object v0, p0, Ld/t/a/s$q;->g:Ld/t/a/s$p;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ld/t/a/s$p;

    invoke-direct {v0}, Ld/t/a/s$p;-><init>()V

    iput-object v0, p0, Ld/t/a/s$q;->g:Ld/t/a/s$p;

    .line 25
    :cond_0
    iget-object v0, p0, Ld/t/a/s$q;->g:Ld/t/a/s$p;

    return-object v0
.end method

.method public b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/t/a/s$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/t/a/s$x;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Ld/t/a/s$q;->a(Ld/t/a/s$x;Z)V

    .line 3
    iget-object v0, p0, Ld/t/a/s$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 4

    .line 4
    invoke-static {p1}, Ld/t/a/s;->b(Landroid/view/View;)Ld/t/a/s$x;

    move-result-object p1

    const/16 v0, 0xc

    .line 5
    invoke-virtual {p1, v0}, Ld/t/a/s$x;->b(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 6
    invoke-virtual {p1}, Ld/t/a/s$x;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    .line 7
    iget-object v0, v0, Ld/t/a/s;->k0:Ld/t/a/s$h;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p1}, Ld/t/a/s$x;->i()Ljava/util/List;

    move-result-object v3

    .line 9
    invoke-virtual {v0, p1, v3}, Ld/t/a/s$h;->a(Ld/t/a/s$x;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    iget-object v0, p0, Ld/t/a/s$q;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/t/a/s$q;->b:Ljava/util/ArrayList;

    .line 12
    :cond_3
    invoke-virtual {p1, p0, v2}, Ld/t/a/s$x;->a(Ld/t/a/s$q;Z)V

    .line 13
    iget-object v0, p0, Ld/t/a/s$q;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 14
    :cond_4
    :goto_2
    invoke-virtual {p1}, Ld/t/a/s$x;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ld/t/a/s$x;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    throw p1

    .line 15
    :cond_6
    :goto_3
    invoke-virtual {p1, p0, v1}, Ld/t/a/s$x;->a(Ld/t/a/s$q;Z)V

    .line 16
    iget-object v0, p0, Ld/t/a/s$q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    return-void
.end method

.method public b(Ld/t/a/s$x;)V
    .locals 1

    .line 17
    iget-boolean v0, p1, Ld/t/a/s$x;->n:Z

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Ld/t/a/s$q;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Ld/t/a/s$q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    .line 20
    iput-object v0, p1, Ld/t/a/s$x;->m:Ld/t/a/s$q;

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p1, Ld/t/a/s$x;->n:Z

    .line 22
    invoke-virtual {p1}, Ld/t/a/s$x;->b()V

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld/t/a/s$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Ld/t/a/s$q;->b(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ld/t/a/s$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    sget-boolean v0, Ld/t/a/s;->X0:Z

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    iget-object v0, v0, Ld/t/a/s;->B0:Ld/t/a/m$b;

    .line 6
    iget-object v2, v0, Ld/t/a/m$b;->c:[I

    if-eqz v2, :cond_1

    .line 7
    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    const/4 v1, 0x0

    .line 8
    iput v1, v0, Ld/t/a/m$b;->d:I

    :cond_2
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld/t/a/s$q;->h:Ld/t/a/s;

    iget-object v0, v0, Ld/t/a/s;->I:Ld/t/a/s$k;

    if-eqz v0, :cond_0

    iget v0, v0, Ld/t/a/s$k;->l:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Ld/t/a/s$q;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Ld/t/a/s$q;->f:I

    .line 3
    iget-object v0, p0, Ld/t/a/s$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 4
    iget-object v1, p0, Ld/t/a/s$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Ld/t/a/s$q;->f:I

    if-le v1, v2, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Ld/t/a/s$q;->b(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method
