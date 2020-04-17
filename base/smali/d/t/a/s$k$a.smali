.class public Ld/t/a/s$k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/t/a/x$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/t/a/s$k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/t/a/s$k;


# direct methods
.method public constructor <init>(Ld/t/a/s$k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/t/a/s$k$a;->a:Ld/t/a/s$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 2
    iget-object v0, p0, Ld/t/a/s$k$a;->a:Ld/t/a/s$k;

    .line 3
    iget v1, v0, Ld/t/a/s$k;->o:I

    .line 4
    invoke-virtual {v0}, Ld/t/a/s$k;->h()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public a(Landroid/view/View;)I
    .locals 2

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ld/t/a/s$l;

    .line 6
    iget-object v1, p0, Ld/t/a/s$k$a;->a:Ld/t/a/s$k;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Ld/t/a/s$l;

    iget-object p1, p1, Ld/t/a/s$l;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p1

    .line 9
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, p1

    return v1

    :cond_0
    const/4 p1, 0x0

    .line 10
    throw p1
.end method

.method public a(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/s$k$a;->a:Ld/t/a/s$k;

    invoke-virtual {v0, p1}, Ld/t/a/s$k;->a(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/s$k$a;->a:Ld/t/a/s$k;

    invoke-virtual {v0}, Ld/t/a/s$k;->g()I

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
    iget-object v1, p0, Ld/t/a/s$k$a;->a:Ld/t/a/s$k;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Ld/t/a/s$l;

    iget-object p1, p1, Ld/t/a/s$l;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    .line 6
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, p1

    return v1

    :cond_0
    const/4 p1, 0x0

    .line 7
    throw p1
.end method
