.class public Ld/b/e/g;
.super Landroid/widget/CheckBox;
.source "SourceFile"


# instance fields
.field public final x:Ld/b/e/i;

.field public final y:Ld/b/e/e;

.field public final z:Ld/b/e/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget v0, Landroidx/appcompat/R$attr;->checkboxStyle:I

    .line 2
    invoke-static {p1}, Ld/b/e/u0;->a(Landroid/content/Context;)Landroid/content/Context;

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Ld/b/e/i;

    invoke-direct {p1, p0}, Ld/b/e/i;-><init>(Landroid/widget/CompoundButton;)V

    iput-object p1, p0, Ld/b/e/g;->x:Ld/b/e/i;

    .line 4
    invoke-virtual {p1, p2, v0}, Ld/b/e/i;->a(Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p1, Ld/b/e/e;

    invoke-direct {p1, p0}, Ld/b/e/e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Ld/b/e/g;->y:Ld/b/e/e;

    .line 6
    invoke-virtual {p1, p2, v0}, Ld/b/e/e;->a(Landroid/util/AttributeSet;I)V

    .line 7
    new-instance p1, Ld/b/e/y;

    invoke-direct {p1, p0}, Ld/b/e/y;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Ld/b/e/g;->z:Ld/b/e/y;

    .line 8
    invoke-virtual {p1, p2, v0}, Ld/b/e/y;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/CheckBox;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Ld/b/e/g;->y:Ld/b/e/e;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ld/b/e/e;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Ld/b/e/g;->z:Ld/b/e/y;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ld/b/e/y;->a()V

    :cond_1
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/CheckBox;->getCompoundPaddingLeft()I

    move-result v0

    .line 2
    iget-object v1, p0, Ld/b/e/g;->x:Ld/b/e/i;

    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/e/g;->y:Ld/b/e/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ld/b/e/e;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/e/g;->y:Ld/b/e/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ld/b/e/e;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/e/g;->x:Ld/b/e/i;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Ld/b/e/i;->b:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/e/g;->x:Ld/b/e/i;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Ld/b/e/i;->c:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Ld/b/e/g;->y:Ld/b/e/e;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ld/b/e/e;->d()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Ld/b/e/g;->y:Ld/b/e/e;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Ld/b/e/e;->a(I)V

    :cond_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ld/b/b/a/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld/b/e/g;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Ld/b/e/g;->x:Ld/b/e/i;

    if-eqz p1, :cond_1

    .line 3
    iget-boolean v0, p1, Ld/b/e/i;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Ld/b/e/i;->f:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Ld/b/e/i;->f:Z

    .line 6
    invoke-virtual {p1}, Ld/b/e/i;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/e/g;->y:Ld/b/e/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ld/b/e/e;->b(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/e/g;->y:Ld/b/e/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ld/b/e/e;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/e/g;->x:Ld/b/e/i;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, v0, Ld/b/e/i;->b:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, v0, Ld/b/e/i;->d:Z

    .line 4
    invoke-virtual {v0}, Ld/b/e/i;->a()V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/e/g;->x:Ld/b/e/i;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, v0, Ld/b/e/i;->c:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, v0, Ld/b/e/i;->e:Z

    .line 4
    invoke-virtual {v0}, Ld/b/e/i;->a()V

    :cond_0
    return-void
.end method
