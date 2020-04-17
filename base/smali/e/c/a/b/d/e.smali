.class public Le/c/a/b/d/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/b/d/i/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/a/b/d/e$a;
    }
.end annotation


# instance fields
.field public A:I

.field public x:Ld/b/d/i/g;

.field public y:Le/c/a/b/d/d;

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/c/a/b/d/e;->z:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ld/b/d/i/g;)V
    .locals 0

    .line 1
    iput-object p2, p0, Le/c/a/b/d/e;->x:Ld/b/d/i/g;

    .line 2
    iget-object p1, p0, Le/c/a/b/d/e;->y:Le/c/a/b/d/d;

    .line 3
    iput-object p2, p1, Le/c/a/b/d/d;->U:Ld/b/d/i/g;

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 5

    .line 26
    instance-of v0, p1, Le/c/a/b/d/e$a;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Le/c/a/b/d/e;->y:Le/c/a/b/d/d;

    check-cast p1, Le/c/a/b/d/e$a;

    iget p1, p1, Le/c/a/b/d/e$a;->x:I

    .line 28
    iget-object v1, v0, Le/c/a/b/d/d;->U:Ld/b/d/i/g;

    invoke-virtual {v1}, Ld/b/d/i/g;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 29
    iget-object v3, v0, Le/c/a/b/d/d;->U:Ld/b/d/i/g;

    invoke-virtual {v3, v2}, Ld/b/d/i/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 30
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 31
    iput p1, v0, Le/c/a/b/d/d;->I:I

    .line 32
    iput v2, v0, Le/c/a/b/d/d;->J:I

    const/4 p1, 0x1

    .line 33
    invoke-interface {v3, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public a(Ld/b/d/i/g;Z)V
    .locals 0

    return-void
.end method

.method public a(Ld/b/d/i/m$a;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 6

    .line 4
    iget-boolean v0, p0, Le/c/a/b/d/e;->z:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Le/c/a/b/d/e;->y:Le/c/a/b/d/d;

    invoke-virtual {p1}, Le/c/a/b/d/d;->a()V

    goto/16 :goto_2

    .line 6
    :cond_1
    iget-object p1, p0, Le/c/a/b/d/e;->y:Le/c/a/b/d/d;

    .line 7
    iget-object v0, p1, Le/c/a/b/d/d;->U:Ld/b/d/i/g;

    if-eqz v0, :cond_7

    iget-object v1, p1, Le/c/a/b/d/d;->H:[Le/c/a/b/d/a;

    if-nez v1, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {v0}, Ld/b/d/i/g;->size()I

    move-result v0

    .line 9
    iget-object v1, p1, Le/c/a/b/d/d;->H:[Le/c/a/b/d/a;

    array-length v1, v1

    if-eq v0, v1, :cond_3

    .line 10
    invoke-virtual {p1}, Le/c/a/b/d/d;->a()V

    goto :goto_2

    .line 11
    :cond_3
    iget v1, p1, Le/c/a/b/d/d;->I:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    .line 12
    iget-object v4, p1, Le/c/a/b/d/d;->U:Ld/b/d/i/g;

    invoke-virtual {v4, v3}, Ld/b/d/i/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 13
    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 14
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, p1, Le/c/a/b/d/d;->I:I

    .line 15
    iput v3, p1, Le/c/a/b/d/d;->J:I

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 16
    :cond_5
    iget v3, p1, Le/c/a/b/d/d;->I:I

    if-eq v1, v3, :cond_6

    .line 17
    iget-object v1, p1, Le/c/a/b/d/d;->x:Ld/x/n;

    invoke-static {p1, v1}, Ld/x/l;->a(Landroid/view/ViewGroup;Ld/x/h;)V

    .line 18
    :cond_6
    iget v1, p1, Le/c/a/b/d/d;->G:I

    iget-object v3, p1, Le/c/a/b/d/d;->U:Ld/b/d/i/g;

    invoke-virtual {v3}, Ld/b/d/i/g;->d()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Le/c/a/b/d/d;->a(II)Z

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_7

    .line 19
    iget-object v4, p1, Le/c/a/b/d/d;->T:Le/c/a/b/d/e;

    const/4 v5, 0x1

    .line 20
    iput-boolean v5, v4, Le/c/a/b/d/e;->z:Z

    .line 21
    iget-object v4, p1, Le/c/a/b/d/d;->H:[Le/c/a/b/d/a;

    aget-object v4, v4, v3

    iget v5, p1, Le/c/a/b/d/d;->G:I

    invoke-virtual {v4, v5}, Le/c/a/b/d/a;->setLabelVisibilityMode(I)V

    .line 22
    iget-object v4, p1, Le/c/a/b/d/d;->H:[Le/c/a/b/d/a;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Le/c/a/b/d/a;->setShifting(Z)V

    .line 23
    iget-object v4, p1, Le/c/a/b/d/d;->H:[Le/c/a/b/d/a;

    aget-object v4, v4, v3

    iget-object v5, p1, Le/c/a/b/d/d;->U:Ld/b/d/i/g;

    invoke-virtual {v5, v3}, Ld/b/d/i/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Ld/b/d/i/i;

    invoke-virtual {v4, v5, v2}, Le/c/a/b/d/a;->a(Ld/b/d/i/i;I)V

    .line 24
    iget-object v4, p1, Le/c/a/b/d/d;->T:Le/c/a/b/d/e;

    .line 25
    iput-boolean v2, v4, Le/c/a/b/d/e;->z:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return-void
.end method

.method public a(Ld/b/d/i/g;Ld/b/d/i/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Ld/b/d/i/r;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ld/b/d/i/g;Ld/b/d/i/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d()Landroid/os/Parcelable;
    .locals 2

    .line 1
    new-instance v0, Le/c/a/b/d/e$a;

    invoke-direct {v0}, Le/c/a/b/d/e$a;-><init>()V

    .line 2
    iget-object v1, p0, Le/c/a/b/d/e;->y:Le/c/a/b/d/d;

    invoke-virtual {v1}, Le/c/a/b/d/d;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Le/c/a/b/d/e$a;->x:I

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Le/c/a/b/d/e;->A:I

    return v0
.end method
