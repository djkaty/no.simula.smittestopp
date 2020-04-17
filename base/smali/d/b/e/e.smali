.class public Ld/b/e/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Ld/b/e/j;

.field public c:I

.field public d:Ld/b/e/v0;

.field public e:Ld/b/e/v0;

.field public f:Ld/b/e/v0;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Ld/b/e/e;->c:I

    .line 3
    iput-object p1, p0, Ld/b/e/e;->a:Landroid/view/View;

    .line 4
    invoke-static {}, Ld/b/e/j;->a()Ld/b/e/j;

    move-result-object p1

    iput-object p1, p0, Ld/b/e/e;->b:Ld/b/e/j;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 28
    iget-object v0, p0, Ld/b/e/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 29
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_1

    .line 30
    iget-object v1, p0, Ld/b/e/e;->d:Ld/b/e/v0;

    if-eqz v1, :cond_0

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    if-ne v1, v2, :cond_0

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_7

    .line 31
    iget-object v1, p0, Ld/b/e/e;->f:Ld/b/e/v0;

    if-nez v1, :cond_2

    .line 32
    new-instance v1, Ld/b/e/v0;

    invoke-direct {v1}, Ld/b/e/v0;-><init>()V

    iput-object v1, p0, Ld/b/e/e;->f:Ld/b/e/v0;

    .line 33
    :cond_2
    iget-object v1, p0, Ld/b/e/e;->f:Ld/b/e/v0;

    const/4 v2, 0x0

    .line 34
    iput-object v2, v1, Ld/b/e/v0;->a:Landroid/content/res/ColorStateList;

    .line 35
    iput-boolean v4, v1, Ld/b/e/v0;->d:Z

    .line 36
    iput-object v2, v1, Ld/b/e/v0;->b:Landroid/graphics/PorterDuff$Mode;

    .line 37
    iput-boolean v4, v1, Ld/b/e/v0;->c:Z

    .line 38
    iget-object v2, p0, Ld/b/e/e;->a:Landroid/view/View;

    invoke-static {v2}, Ld/i/i/n;->c(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 39
    iput-boolean v3, v1, Ld/b/e/v0;->d:Z

    .line 40
    iput-object v2, v1, Ld/b/e/v0;->a:Landroid/content/res/ColorStateList;

    .line 41
    :cond_3
    iget-object v2, p0, Ld/b/e/e;->a:Landroid/view/View;

    .line 42
    invoke-virtual {v2}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 43
    iput-boolean v3, v1, Ld/b/e/v0;->c:Z

    .line 44
    iput-object v2, v1, Ld/b/e/v0;->b:Landroid/graphics/PorterDuff$Mode;

    .line 45
    :cond_4
    iget-boolean v2, v1, Ld/b/e/v0;->d:Z

    if-nez v2, :cond_6

    iget-boolean v2, v1, Ld/b/e/v0;->c:Z

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 46
    :cond_6
    :goto_2
    iget-object v2, p0, Ld/b/e/e;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Ld/b/e/j;->a(Landroid/graphics/drawable/Drawable;Ld/b/e/v0;[I)V

    :goto_3
    if-eqz v3, :cond_7

    return-void

    .line 47
    :cond_7
    iget-object v1, p0, Ld/b/e/e;->e:Ld/b/e/v0;

    if-eqz v1, :cond_8

    .line 48
    iget-object v2, p0, Ld/b/e/e;->a:Landroid/view/View;

    .line 49
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 50
    invoke-static {v0, v1, v2}, Ld/b/e/j;->a(Landroid/graphics/drawable/Drawable;Ld/b/e/v0;[I)V

    goto :goto_4

    .line 51
    :cond_8
    iget-object v1, p0, Ld/b/e/e;->d:Ld/b/e/v0;

    if-eqz v1, :cond_9

    .line 52
    iget-object v2, p0, Ld/b/e/e;->a:Landroid/view/View;

    .line 53
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 54
    invoke-static {v0, v1, v2}, Ld/b/e/j;->a(Landroid/graphics/drawable/Drawable;Ld/b/e/v0;[I)V

    :cond_9
    :goto_4
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 18
    iput p1, p0, Ld/b/e/e;->c:I

    .line 19
    iget-object v0, p0, Ld/b/e/e;->b:Ld/b/e/j;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ld/b/e/e;->a:Landroid/view/View;

    .line 20
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ld/b/e/j;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    invoke-virtual {p0, p1}, Ld/b/e/e;->a(Landroid/content/res/ColorStateList;)V

    .line 22
    invoke-virtual {p0}, Ld/b/e/e;->a()V

    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 55
    iget-object v0, p0, Ld/b/e/e;->d:Ld/b/e/v0;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ld/b/e/v0;

    invoke-direct {v0}, Ld/b/e/v0;-><init>()V

    iput-object v0, p0, Ld/b/e/e;->d:Ld/b/e/v0;

    .line 57
    :cond_0
    iget-object v0, p0, Ld/b/e/e;->d:Ld/b/e/v0;

    iput-object p1, v0, Ld/b/e/v0;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, v0, Ld/b/e/v0;->d:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Ld/b/e/e;->d:Ld/b/e/v0;

    .line 60
    :goto_0
    invoke-virtual {p0}, Ld/b/e/e;->a()V

    return-void
.end method

.method public a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 23
    iget-object v0, p0, Ld/b/e/e;->e:Ld/b/e/v0;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ld/b/e/v0;

    invoke-direct {v0}, Ld/b/e/v0;-><init>()V

    iput-object v0, p0, Ld/b/e/e;->e:Ld/b/e/v0;

    .line 25
    :cond_0
    iget-object v0, p0, Ld/b/e/e;->e:Ld/b/e/v0;

    iput-object p1, v0, Ld/b/e/v0;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, v0, Ld/b/e/v0;->c:Z

    .line 27
    invoke-virtual {p0}, Ld/b/e/e;->a()V

    return-void
.end method

.method public a(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld/b/e/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Ld/b/e/x0;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Ld/b/e/x0;

    move-result-object p1

    .line 2
    :try_start_0
    sget p2, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    invoke-virtual {p1, p2}, Ld/b/e/x0;->f(I)Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 3
    sget p2, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    invoke-virtual {p1, p2, v0}, Ld/b/e/x0;->f(II)I

    move-result p2

    iput p2, p0, Ld/b/e/e;->c:I

    .line 4
    iget-object p2, p0, Ld/b/e/e;->b:Ld/b/e/j;

    iget-object v1, p0, Ld/b/e/e;->a:Landroid/view/View;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Ld/b/e/e;->c:I

    invoke-virtual {p2, v1, v2}, Ld/b/e/j;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0, p2}, Ld/b/e/e;->a(Landroid/content/res/ColorStateList;)V

    .line 7
    :cond_0
    sget p2, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {p1, p2}, Ld/b/e/x0;->f(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    iget-object p2, p0, Ld/b/e/e;->a:Landroid/view/View;

    sget v1, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    .line 9
    invoke-virtual {p1, v1}, Ld/b/e/x0;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 10
    invoke-static {p2, v1}, Ld/i/i/n;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 11
    :cond_1
    sget p2, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {p1, p2}, Ld/b/e/x0;->f(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    iget-object p2, p0, Ld/b/e/e;->a:Landroid/view/View;

    sget v1, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    .line 13
    invoke-virtual {p1, v1, v0}, Ld/b/e/x0;->c(II)I

    move-result v0

    const/4 v1, 0x0

    .line 14
    invoke-static {v0, v1}, Ld/b/e/e0;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 15
    invoke-static {p2, v0}, Ld/i/i/n;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_2
    iget-object p1, p1, Ld/b/e/x0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    iget-object p1, p1, Ld/b/e/x0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    throw p2
.end method

.method public b()Landroid/content/res/ColorStateList;
    .locals 1

    .line 6
    iget-object v0, p0, Ld/b/e/e;->e:Ld/b/e/v0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ld/b/e/v0;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/e/e;->e:Ld/b/e/v0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld/b/e/v0;

    invoke-direct {v0}, Ld/b/e/v0;-><init>()V

    iput-object v0, p0, Ld/b/e/e;->e:Ld/b/e/v0;

    .line 3
    :cond_0
    iget-object v0, p0, Ld/b/e/e;->e:Ld/b/e/v0;

    iput-object p1, v0, Ld/b/e/v0;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Ld/b/e/v0;->d:Z

    .line 5
    invoke-virtual {p0}, Ld/b/e/e;->a()V

    return-void
.end method

.method public c()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/e/e;->e:Ld/b/e/v0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ld/b/e/v0;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public d()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Ld/b/e/e;->c:I

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ld/b/e/e;->a(Landroid/content/res/ColorStateList;)V

    .line 3
    invoke-virtual {p0}, Ld/b/e/e;->a()V

    return-void
.end method
