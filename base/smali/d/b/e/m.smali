.class public Ld/b/e/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public b:Ld/b/e/v0;

.field public c:Ld/b/e/v0;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld/b/e/m;->a:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 45
    iget-object v0, p0, Ld/b/e/m;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {v0}, Ld/b/e/e0;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz v0, :cond_9

    .line 47
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_8

    .line 48
    iget-object v1, p0, Ld/b/e/m;->c:Ld/b/e/v0;

    if-nez v1, :cond_3

    .line 49
    new-instance v1, Ld/b/e/v0;

    invoke-direct {v1}, Ld/b/e/v0;-><init>()V

    iput-object v1, p0, Ld/b/e/m;->c:Ld/b/e/v0;

    .line 50
    :cond_3
    iget-object v1, p0, Ld/b/e/m;->c:Ld/b/e/v0;

    const/4 v2, 0x0

    .line 51
    iput-object v2, v1, Ld/b/e/v0;->a:Landroid/content/res/ColorStateList;

    .line 52
    iput-boolean v4, v1, Ld/b/e/v0;->d:Z

    .line 53
    iput-object v2, v1, Ld/b/e/v0;->b:Landroid/graphics/PorterDuff$Mode;

    .line 54
    iput-boolean v4, v1, Ld/b/e/v0;->c:Z

    .line 55
    iget-object v2, p0, Ld/b/e/m;->a:Landroid/widget/ImageView;

    .line 56
    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 57
    iput-boolean v3, v1, Ld/b/e/v0;->d:Z

    .line 58
    iput-object v2, v1, Ld/b/e/v0;->a:Landroid/content/res/ColorStateList;

    .line 59
    :cond_4
    iget-object v2, p0, Ld/b/e/m;->a:Landroid/widget/ImageView;

    .line 60
    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 61
    iput-boolean v3, v1, Ld/b/e/v0;->c:Z

    .line 62
    iput-object v2, v1, Ld/b/e/v0;->b:Landroid/graphics/PorterDuff$Mode;

    .line 63
    :cond_5
    iget-boolean v2, v1, Ld/b/e/v0;->d:Z

    if-nez v2, :cond_7

    iget-boolean v2, v1, Ld/b/e/v0;->c:Z

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 64
    :cond_7
    :goto_1
    iget-object v2, p0, Ld/b/e/m;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Ld/b/e/j;->a(Landroid/graphics/drawable/Drawable;Ld/b/e/v0;[I)V

    :goto_2
    if-eqz v3, :cond_8

    return-void

    .line 65
    :cond_8
    iget-object v1, p0, Ld/b/e/m;->b:Ld/b/e/v0;

    if-eqz v1, :cond_9

    .line 66
    iget-object v2, p0, Ld/b/e/m;->a:Landroid/widget/ImageView;

    .line 67
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v2

    .line 68
    invoke-static {v0, v1, v2}, Ld/b/e/j;->a(Landroid/graphics/drawable/Drawable;Ld/b/e/v0;[I)V

    :cond_9
    return-void
.end method

.method public a(I)V
    .locals 1

    if-eqz p1, :cond_1

    .line 30
    iget-object v0, p0, Ld/b/e/m;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ld/b/b/a/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 31
    invoke-static {p1}, Ld/b/e/e0;->b(Landroid/graphics/drawable/Drawable;)V

    .line 32
    :cond_0
    iget-object v0, p0, Ld/b/e/m;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 33
    :cond_1
    iget-object p1, p0, Ld/b/e/m;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    :goto_0
    invoke-virtual {p0}, Ld/b/e/m;->a()V

    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 35
    iget-object v0, p0, Ld/b/e/m;->b:Ld/b/e/v0;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ld/b/e/v0;

    invoke-direct {v0}, Ld/b/e/v0;-><init>()V

    iput-object v0, p0, Ld/b/e/m;->b:Ld/b/e/v0;

    .line 37
    :cond_0
    iget-object v0, p0, Ld/b/e/m;->b:Ld/b/e/v0;

    iput-object p1, v0, Ld/b/e/v0;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, v0, Ld/b/e/v0;->d:Z

    .line 39
    invoke-virtual {p0}, Ld/b/e/m;->a()V

    return-void
.end method

.method public a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 40
    iget-object v0, p0, Ld/b/e/m;->b:Ld/b/e/v0;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ld/b/e/v0;

    invoke-direct {v0}, Ld/b/e/v0;-><init>()V

    iput-object v0, p0, Ld/b/e/m;->b:Ld/b/e/v0;

    .line 42
    :cond_0
    iget-object v0, p0, Ld/b/e/m;->b:Ld/b/e/v0;

    iput-object p1, v0, Ld/b/e/v0;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, v0, Ld/b/e/v0;->c:Z

    .line 44
    invoke-virtual {p0}, Ld/b/e/m;->a()V

    return-void
.end method

.method public a(Landroid/util/AttributeSet;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld/b/e/m;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatImageView:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Ld/b/e/x0;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Ld/b/e/x0;

    move-result-object p1

    .line 2
    :try_start_0
    iget-object p2, p0, Ld/b/e/m;->a:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, -0x1

    if-nez p2, :cond_0

    .line 3
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatImageView_srcCompat:I

    invoke-virtual {p1, v1, v0}, Ld/b/e/x0;->f(II)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 4
    iget-object p2, p0, Ld/b/e/m;->a:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Ld/b/b/a/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    iget-object v1, p0, Ld/b/e/m;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 6
    invoke-static {p2}, Ld/b/e/e0;->b(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :cond_1
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatImageView_tint:I

    invoke-virtual {p1, p2}, Ld/b/e/x0;->f(I)Z

    move-result p2

    const/16 v1, 0x15

    if-eqz p2, :cond_3

    .line 8
    iget-object p2, p0, Ld/b/e/m;->a:Landroid/widget/ImageView;

    sget v2, Landroidx/appcompat/R$styleable;->AppCompatImageView_tint:I

    .line 9
    invoke-virtual {p1, v2}, Ld/b/e/x0;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 10
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v2, v1, :cond_3

    .line 12
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 13
    invoke-virtual {p2}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 14
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 16
    :cond_2
    :goto_0
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    :cond_3
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatImageView_tintMode:I

    invoke-virtual {p1, p2}, Ld/b/e/x0;->f(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 18
    iget-object p2, p0, Ld/b/e/m;->a:Landroid/widget/ImageView;

    sget v2, Landroidx/appcompat/R$styleable;->AppCompatImageView_tintMode:I

    .line 19
    invoke-virtual {p1, v2, v0}, Ld/b/e/x0;->c(II)I

    move-result v0

    const/4 v2, 0x0

    .line 20
    invoke-static {v0, v2}, Ld/b/e/e0;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 21
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_5

    .line 23
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 24
    invoke-virtual {p2}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 25
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 26
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 27
    :cond_4
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_5
    iget-object p1, p1, Ld/b/e/x0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_1
    iget-object p1, p1, Ld/b/e/x0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    throw p2
.end method
