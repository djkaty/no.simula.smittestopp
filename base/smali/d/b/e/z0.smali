.class public Ld/b/e/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/b/e/d0;


# instance fields
.field public a:Landroidx/appcompat/widget/Toolbar;

.field public b:I

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Z

.field public i:Ljava/lang/CharSequence;

.field public j:Ljava/lang/CharSequence;

.field public k:Ljava/lang/CharSequence;

.field public l:Landroid/view/Window$Callback;

.field public m:Z

.field public n:Ld/b/e/c;

.field public o:I

.field public p:I

.field public q:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Z)V
    .locals 5

    .line 1
    sget v0, Landroidx/appcompat/R$string;->abc_action_bar_up_description:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Ld/b/e/z0;->o:I

    .line 4
    iput v1, p0, Ld/b/e/z0;->p:I

    .line 5
    iput-object p1, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 6
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Ld/b/e/z0;->i:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Ld/b/e/z0;->j:Ljava/lang/CharSequence;

    .line 8
    iget-object v2, p0, Ld/b/e/z0;->i:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Ld/b/e/z0;->h:Z

    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Ld/b/e/z0;->g:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v2, 0x0

    sget-object v3, Landroidx/appcompat/R$styleable;->ActionBar:[I

    sget v4, Landroidx/appcompat/R$attr;->actionBarStyle:I

    invoke-static {p1, v2, v3, v4, v1}, Ld/b/e/x0;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Ld/b/e/x0;

    move-result-object p1

    .line 11
    sget v2, Landroidx/appcompat/R$styleable;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {p1, v2}, Ld/b/e/x0;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Ld/b/e/z0;->q:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_e

    .line 12
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_title:I

    invoke-virtual {p1, p2}, Ld/b/e/x0;->e(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 13
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 14
    invoke-virtual {p0, p2}, Ld/b/e/z0;->setTitle(Ljava/lang/CharSequence;)V

    .line 15
    :cond_1
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_subtitle:I

    invoke-virtual {p1, p2}, Ld/b/e/x0;->e(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 16
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 17
    iput-object p2, p0, Ld/b/e/z0;->j:Ljava/lang/CharSequence;

    .line 18
    iget v2, p0, Ld/b/e/z0;->b:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    .line 19
    iget-object v2, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, p2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 20
    :cond_2
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_logo:I

    invoke-virtual {p1, p2}, Ld/b/e/x0;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 21
    iput-object p2, p0, Ld/b/e/z0;->f:Landroid/graphics/drawable/Drawable;

    .line 22
    invoke-virtual {p0}, Ld/b/e/z0;->r()V

    .line 23
    :cond_3
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_icon:I

    invoke-virtual {p1, p2}, Ld/b/e/x0;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 24
    iput-object p2, p0, Ld/b/e/z0;->e:Landroid/graphics/drawable/Drawable;

    .line 25
    invoke-virtual {p0}, Ld/b/e/z0;->r()V

    .line 26
    :cond_4
    iget-object p2, p0, Ld/b/e/z0;->g:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_5

    iget-object p2, p0, Ld/b/e/z0;->q:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_5

    .line 27
    iput-object p2, p0, Ld/b/e/z0;->g:Landroid/graphics/drawable/Drawable;

    .line 28
    invoke-virtual {p0}, Ld/b/e/z0;->q()V

    .line 29
    :cond_5
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_displayOptions:I

    invoke-virtual {p1, p2, v1}, Ld/b/e/x0;->c(II)I

    move-result p2

    invoke-virtual {p0, p2}, Ld/b/e/z0;->d(I)V

    .line 30
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_customNavigationLayout:I

    invoke-virtual {p1, p2, v1}, Ld/b/e/x0;->f(II)I

    move-result p2

    if-eqz p2, :cond_8

    .line 31
    iget-object v2, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, p2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 32
    iget-object v2, p0, Ld/b/e/z0;->d:Landroid/view/View;

    if-eqz v2, :cond_6

    iget v3, p0, Ld/b/e/z0;->b:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_6

    .line 33
    iget-object v3, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 34
    :cond_6
    iput-object p2, p0, Ld/b/e/z0;->d:Landroid/view/View;

    if-eqz p2, :cond_7

    .line 35
    iget v2, p0, Ld/b/e/z0;->b:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_7

    .line 36
    iget-object v2, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 37
    :cond_7
    iget p2, p0, Ld/b/e/z0;->b:I

    or-int/lit8 p2, p2, 0x10

    invoke-virtual {p0, p2}, Ld/b/e/z0;->d(I)V

    .line 38
    :cond_8
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_height:I

    invoke-virtual {p1, p2, v1}, Ld/b/e/x0;->e(II)I

    move-result p2

    if-lez p2, :cond_9

    .line 39
    iget-object v2, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 40
    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 41
    iget-object p2, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    :cond_9
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_contentInsetStart:I

    const/4 v2, -0x1

    invoke-virtual {p1, p2, v2}, Ld/b/e/x0;->a(II)I

    move-result p2

    .line 43
    sget v3, Landroidx/appcompat/R$styleable;->ActionBar_contentInsetEnd:I

    invoke-virtual {p1, v3, v2}, Ld/b/e/x0;->a(II)I

    move-result v2

    if-gez p2, :cond_a

    if-ltz v2, :cond_b

    .line 44
    :cond_a
    iget-object v3, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 45
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 46
    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->b()V

    .line 47
    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->Q:Ld/b/e/p0;

    invoke-virtual {v3, p2, v2}, Ld/b/e/p0;->a(II)V

    .line 48
    :cond_b
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_titleTextStyle:I

    invoke-virtual {p1, p2, v1}, Ld/b/e/x0;->f(II)I

    move-result p2

    if-eqz p2, :cond_c

    .line 49
    iget-object v2, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 50
    iput p2, v2, Landroidx/appcompat/widget/Toolbar;->I:I

    .line 51
    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->y:Landroid/widget/TextView;

    if-eqz v2, :cond_c

    .line 52
    invoke-virtual {v2, v3, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 53
    :cond_c
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_subtitleTextStyle:I

    invoke-virtual {p1, p2, v1}, Ld/b/e/x0;->f(II)I

    move-result p2

    if-eqz p2, :cond_d

    .line 54
    iget-object v2, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 55
    iput p2, v2, Landroidx/appcompat/widget/Toolbar;->J:I

    .line 56
    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->z:Landroid/widget/TextView;

    if-eqz v2, :cond_d

    .line 57
    invoke-virtual {v2, v3, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 58
    :cond_d
    sget p2, Landroidx/appcompat/R$styleable;->ActionBar_popupTheme:I

    invoke-virtual {p1, p2, v1}, Ld/b/e/x0;->f(II)I

    move-result p2

    if-eqz p2, :cond_10

    .line 59
    iget-object v1, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, p2}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    goto :goto_2

    .line 60
    :cond_e
    iget-object p2, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_f

    const/16 p2, 0xf

    .line 61
    iget-object v1, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Ld/b/e/z0;->q:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_f
    const/16 p2, 0xb

    .line 62
    :goto_1
    iput p2, p0, Ld/b/e/z0;->b:I

    .line 63
    :cond_10
    :goto_2
    iget-object p1, p1, Ld/b/e/x0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    iget p1, p0, Ld/b/e/z0;->p:I

    if-ne v0, p1, :cond_11

    goto :goto_3

    .line 65
    :cond_11
    iput v0, p0, Ld/b/e/z0;->p:I

    .line 66
    iget-object p1, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 67
    iget p1, p0, Ld/b/e/z0;->p:I

    invoke-virtual {p0, p1}, Ld/b/e/z0;->c(I)V

    .line 68
    :cond_12
    :goto_3
    iget-object p1, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Ld/b/e/z0;->k:Ljava/lang/CharSequence;

    .line 69
    iget-object p1, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    new-instance p2, Ld/b/e/y0;

    invoke-direct {p2, p0}, Ld/b/e/y0;-><init>(Ld/b/e/z0;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(IJ)Ld/i/i/s;
    .locals 2

    .line 43
    iget-object v0, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Ld/i/i/n;->a(Landroid/view/View;)Ld/i/i/s;

    move-result-object v0

    if-nez p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 44
    :goto_0
    invoke-virtual {v0, v1}, Ld/i/i/s;->a(F)Ld/i/i/s;

    .line 45
    invoke-virtual {v0, p2, p3}, Ld/i/i/s;->a(J)Ld/i/i/s;

    new-instance p2, Ld/b/e/z0$a;

    invoke-direct {p2, p0, p1}, Ld/b/e/z0$a;-><init>(Ld/b/e/z0;I)V

    .line 46
    iget-object p1, v0, Ld/i/i/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {v0, p1, p2}, Ld/i/i/s;->a(Landroid/view/View;Ld/i/i/t;)V

    :cond_1
    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 50
    iget-object v0, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 48
    iput-object p1, p0, Ld/b/e/z0;->g:Landroid/graphics/drawable/Drawable;

    .line 49
    invoke-virtual {p0}, Ld/b/e/z0;->q()V

    return-void
.end method

.method public a(Landroid/view/Menu;Ld/b/d/i/m$a;)V
    .locals 5

    .line 5
    iget-object v0, p0, Ld/b/e/z0;->n:Ld/b/e/c;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Ld/b/e/c;

    iget-object v1, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ld/b/e/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ld/b/e/z0;->n:Ld/b/e/c;

    .line 7
    sget v1, Landroidx/appcompat/R$id;->action_menu_presenter:I

    .line 8
    iput v1, v0, Ld/b/d/i/b;->F:I

    .line 9
    :cond_0
    iget-object v0, p0, Ld/b/e/z0;->n:Ld/b/e/c;

    .line 10
    iput-object p2, v0, Ld/b/d/i/b;->B:Ld/b/d/i/m$a;

    .line 11
    iget-object p2, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    check-cast p1, Ld/b/d/i/g;

    if-nez p1, :cond_1

    .line 12
    iget-object v1, p2, Landroidx/appcompat/widget/Toolbar;->x:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v1, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p2}, Landroidx/appcompat/widget/Toolbar;->d()V

    .line 14
    iget-object v1, p2, Landroidx/appcompat/widget/Toolbar;->x:Landroidx/appcompat/widget/ActionMenuView;

    .line 15
    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuView;->M:Ld/b/d/i/g;

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 16
    iget-object v2, p2, Landroidx/appcompat/widget/Toolbar;->j0:Ld/b/e/c;

    invoke-virtual {v1, v2}, Ld/b/d/i/g;->a(Ld/b/d/i/m;)V

    .line 17
    iget-object v2, p2, Landroidx/appcompat/widget/Toolbar;->k0:Landroidx/appcompat/widget/Toolbar$d;

    invoke-virtual {v1, v2}, Ld/b/d/i/g;->a(Ld/b/d/i/m;)V

    .line 18
    :cond_3
    iget-object v1, p2, Landroidx/appcompat/widget/Toolbar;->k0:Landroidx/appcompat/widget/Toolbar$d;

    if-nez v1, :cond_4

    .line 19
    new-instance v1, Landroidx/appcompat/widget/Toolbar$d;

    invoke-direct {v1, p2}, Landroidx/appcompat/widget/Toolbar$d;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v1, p2, Landroidx/appcompat/widget/Toolbar;->k0:Landroidx/appcompat/widget/Toolbar$d;

    :cond_4
    const/4 v1, 0x1

    .line 20
    iput-boolean v1, v0, Ld/b/e/c;->O:Z

    if-eqz p1, :cond_5

    .line 21
    iget-object v1, p2, Landroidx/appcompat/widget/Toolbar;->G:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Ld/b/d/i/g;->a(Ld/b/d/i/m;Landroid/content/Context;)V

    .line 22
    iget-object v1, p2, Landroidx/appcompat/widget/Toolbar;->k0:Landroidx/appcompat/widget/Toolbar$d;

    iget-object v2, p2, Landroidx/appcompat/widget/Toolbar;->G:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Ld/b/d/i/g;->a(Ld/b/d/i/m;Landroid/content/Context;)V

    goto :goto_0

    .line 23
    :cond_5
    iget-object p1, p2, Landroidx/appcompat/widget/Toolbar;->G:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ld/b/e/c;->a(Landroid/content/Context;Ld/b/d/i/g;)V

    .line 24
    iget-object p1, p2, Landroidx/appcompat/widget/Toolbar;->k0:Landroidx/appcompat/widget/Toolbar$d;

    .line 25
    iget-object v3, p1, Landroidx/appcompat/widget/Toolbar$d;->x:Ld/b/d/i/g;

    if-eqz v3, :cond_6

    iget-object v4, p1, Landroidx/appcompat/widget/Toolbar$d;->y:Ld/b/d/i/i;

    if-eqz v4, :cond_6

    .line 26
    invoke-virtual {v3, v4}, Ld/b/d/i/g;->a(Ld/b/d/i/i;)Z

    .line 27
    :cond_6
    iput-object v2, p1, Landroidx/appcompat/widget/Toolbar$d;->x:Ld/b/d/i/g;

    .line 28
    invoke-virtual {v0, v1}, Ld/b/e/c;->a(Z)V

    .line 29
    iget-object p1, p2, Landroidx/appcompat/widget/Toolbar;->k0:Landroidx/appcompat/widget/Toolbar$d;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar$d;->a(Z)V

    .line 30
    :goto_0
    iget-object p1, p2, Landroidx/appcompat/widget/Toolbar;->x:Landroidx/appcompat/widget/ActionMenuView;

    iget v1, p2, Landroidx/appcompat/widget/Toolbar;->H:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    .line 31
    iget-object p1, p2, Landroidx/appcompat/widget/Toolbar;->x:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Ld/b/e/c;)V

    .line 32
    iput-object v0, p2, Landroidx/appcompat/widget/Toolbar;->j0:Ld/b/e/c;

    :goto_1
    return-void
.end method

.method public a(Ld/b/d/i/m$a;Ld/b/d/i/g$a;)V
    .locals 1

    .line 51
    iget-object v0, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 52
    iput-object p1, v0, Landroidx/appcompat/widget/Toolbar;->l0:Ld/b/d/i/m$a;

    .line 53
    iput-object p2, v0, Landroidx/appcompat/widget/Toolbar;->m0:Ld/b/d/i/g$a;

    .line 54
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->x:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 55
    iput-object p1, v0, Landroidx/appcompat/widget/ActionMenuView;->R:Ld/b/d/i/m$a;

    .line 56
    iput-object p2, v0, Landroidx/appcompat/widget/ActionMenuView;->S:Ld/b/d/i/g$a;

    :cond_0
    return-void
.end method

.method public a(Ld/b/e/q0;)V
    .locals 2

    .line 33
    iget-object v0, p0, Ld/b/e/z0;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    if-ne v0, v1, :cond_0

    .line 34
    iget-object v0, p0, Ld/b/e/z0;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 35
    :cond_0
    iput-object p1, p0, Ld/b/e/z0;->c:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 36
    iget v0, p0, Ld/b/e/z0;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 37
    iget-object v0, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 38
    iget-object v0, p0, Ld/b/e/z0;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$e;

    const/4 v1, -0x2

    .line 39
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 40
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const v1, 0x800053

    .line 41
    iput v1, v0, Ld/b/a/a$a;->a:I

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p1, v0}, Ld/b/e/q0;->setAllowCollapse(Z)V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 4

    .line 1
    iget-object v0, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->x:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->Q:Ld/b/e/c;

    if-eqz v0, :cond_2

    .line 4
    iget-object v3, v0, Ld/b/e/c;->T:Ld/b/e/c$c;

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ld/b/e/c;->f()Z

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

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public b(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Ld/b/e/z0;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ld/b/b/a/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-object p1, p0, Ld/b/e/z0;->f:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Ld/b/e/z0;->r()V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 4
    iget-object v0, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->f()Z

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ld/b/e/z0;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    :goto_0
    iput-object p1, p0, Ld/b/e/z0;->k:Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {p0}, Ld/b/e/z0;->p()V

    return-void
.end method

.method public c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->x:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->Q:Ld/b/e/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld/b/e/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public collapseActionView()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->k0:Landroidx/appcompat/widget/Toolbar$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$d;->y:Ld/b/d/i/i;

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ld/b/d/i/i;->collapseActionView()Z

    :cond_1
    return-void
.end method

.method public d(I)V
    .locals 3

    .line 2
    iget v0, p0, Ld/b/e/z0;->b:I

    xor-int/2addr v0, p1

    .line 3
    iput p1, p0, Ld/b/e/z0;->b:I

    if-eqz v0, :cond_6

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Ld/b/e/z0;->p()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Ld/b/e/z0;->q()V

    :cond_1
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p0}, Ld/b/e/z0;->r()V

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_4

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    .line 7
    iget-object v1, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Ld/b/e/z0;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v1, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Ld/b/e/z0;->j:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v1, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v1, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    .line 11
    iget-object v0, p0, Ld/b/e/z0;->d:Landroid/view/View;

    if-eqz v0, :cond_6

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_5

    .line 12
    iget-object p1, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 13
    :cond_5
    iget-object p1, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->g()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ld/b/e/z0;->m:Z

    return-void
.end method

.method public f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->x:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuView;->P:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->x:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->Q:Ld/b/e/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ld/b/e/c;->a()Z

    :cond_0
    return-void
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Ld/b/e/z0;->b:I

    return v0
.end method

.method public i()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public j()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public k()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Ld/b/e/z0;->o:I

    return v0
.end method

.method public m()V
    .locals 2

    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->k0:Landroidx/appcompat/widget/Toolbar$d;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$d;->y:Ld/b/d/i/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()V
    .locals 2

    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    iget v0, p0, Ld/b/e/z0;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Ld/b/e/z0;->k:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    iget v1, p0, Ld/b/e/z0;->p:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Ld/b/e/z0;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final q()V
    .locals 2

    .line 1
    iget v0, p0, Ld/b/e/z0;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Ld/b/e/z0;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ld/b/e/z0;->q:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    iget v0, p0, Ld/b/e/z0;->b:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Ld/b/e/z0;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld/b/e/z0;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Ld/b/e/z0;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Ld/b/e/z0;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ld/b/b/a/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-object p1, p0, Ld/b/e/z0;->e:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Ld/b/e/z0;->r()V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 4
    iput-object p1, p0, Ld/b/e/z0;->e:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p0}, Ld/b/e/z0;->r()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ld/b/e/z0;->h:Z

    .line 2
    iput-object p1, p0, Ld/b/e/z0;->i:Ljava/lang/CharSequence;

    .line 3
    iget v0, p0, Ld/b/e/z0;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/b/e/z0;->l:Landroid/view/Window$Callback;

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld/b/e/z0;->h:Z

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Ld/b/e/z0;->i:Ljava/lang/CharSequence;

    .line 3
    iget v0, p0, Ld/b/e/z0;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Ld/b/e/z0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
