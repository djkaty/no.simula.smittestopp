.class public final Ld/t/a/q;
.super Ld/t/a/r;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ld/t/a/s$k;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Ld/t/a/r;-><init>(Ld/t/a/s$k;Ld/t/a/p;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget-object v0, p0, Ld/t/a/r;->a:Ld/t/a/s$k;

    .line 2
    iget v1, v0, Ld/t/a/s$k;->p:I

    .line 3
    invoke-virtual {v0}, Ld/t/a/s$k;->f()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public a(Landroid/view/View;)I
    .locals 2

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ld/t/a/s$l;

    .line 5
    iget-object v1, p0, Ld/t/a/r;->a:Ld/t/a/s$k;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Ld/t/a/s$l;

    iget-object p1, p1, Ld/t/a/s$l;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p1

    .line 8
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p1

    return v1

    :cond_0
    const/4 p1, 0x0

    .line 9
    throw p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/r;->a:Ld/t/a/s$k;

    invoke-virtual {v0}, Ld/t/a/s$k;->i()I

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;)I
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ld/t/a/s$l;

    .line 3
    iget-object v1, p0, Ld/t/a/r;->a:Ld/t/a/s$k;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Ld/t/a/s$l;

    iget-object p1, p1, Ld/t/a/s$l;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    .line 6
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, p1

    return v1

    :cond_0
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public c()I
    .locals 2

    .line 1
    iget-object v0, p0, Ld/t/a/r;->a:Ld/t/a/s$k;

    .line 2
    iget v1, v0, Ld/t/a/s$k;->p:I

    .line 3
    invoke-virtual {v0}, Ld/t/a/s$k;->i()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Ld/t/a/r;->a:Ld/t/a/s$k;

    .line 4
    invoke-virtual {v0}, Ld/t/a/s$k;->f()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method
