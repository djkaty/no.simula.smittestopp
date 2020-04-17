.class public Le/c/a/b/j/f;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# instance fields
.field public x:I


# virtual methods
.method public final a(IZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz p2, :cond_0

    .line 2
    iput p1, p0, Le/c/a/b/j/f;->x:I

    :cond_0
    return-void
.end method

.method public final getUserSetVisibility()I
    .locals 1

    .line 1
    iget v0, p0, Le/c/a/b/j/f;->x:I

    return v0
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2
    iput p1, p0, Le/c/a/b/j/f;->x:I

    return-void
.end method
