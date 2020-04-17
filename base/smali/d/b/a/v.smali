.class public Ld/b/a/v;
.super Ld/b/a/a;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/ActionBarOverlayLayout$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/b/a/v$d;
    }
.end annotation


# static fields
.field public static final A:Landroid/view/animation/Interpolator;

.field public static final B:Landroid/view/animation/Interpolator;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public d:Landroidx/appcompat/widget/ActionBarContainer;

.field public e:Ld/b/e/d0;

.field public f:Landroidx/appcompat/widget/ActionBarContextView;

.field public g:Landroid/view/View;

.field public h:Z

.field public i:Ld/b/a/v$d;

.field public j:Ld/b/d/a;

.field public k:Ld/b/d/a$a;

.field public l:Z

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/b/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public n:Z

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Ld/b/d/g;

.field public v:Z

.field public w:Z

.field public final x:Ld/i/i/t;

.field public final y:Ld/i/i/t;

.field public final z:Ld/i/i/v;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Ld/b/a/v;->A:Landroid/view/animation/Interpolator;

    .line 2
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Ld/b/a/v;->B:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ld/b/a/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/b/a/v;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Ld/b/a/v;->o:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Ld/b/a/v;->p:Z

    .line 6
    iput-boolean v0, p0, Ld/b/a/v;->t:Z

    .line 7
    new-instance v0, Ld/b/a/v$a;

    invoke-direct {v0, p0}, Ld/b/a/v$a;-><init>(Ld/b/a/v;)V

    iput-object v0, p0, Ld/b/a/v;->x:Ld/i/i/t;

    .line 8
    new-instance v0, Ld/b/a/v$b;

    invoke-direct {v0, p0}, Ld/b/a/v$b;-><init>(Ld/b/a/v;)V

    iput-object v0, p0, Ld/b/a/v;->y:Ld/i/i/t;

    .line 9
    new-instance v0, Ld/b/a/v$c;

    invoke-direct {v0, p0}, Ld/b/a/v$c;-><init>(Ld/b/a/v;)V

    iput-object v0, p0, Ld/b/a/v;->z:Ld/i/i/v;

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Ld/b/a/v;->a(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ld/b/a/v;->g:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ld/b/a/a;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/b/a/v;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Ld/b/a/v;->o:I

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Ld/b/a/v;->p:Z

    .line 19
    iput-boolean v0, p0, Ld/b/a/v;->t:Z

    .line 20
    new-instance v0, Ld/b/a/v$a;

    invoke-direct {v0, p0}, Ld/b/a/v$a;-><init>(Ld/b/a/v;)V

    iput-object v0, p0, Ld/b/a/v;->x:Ld/i/i/t;

    .line 21
    new-instance v0, Ld/b/a/v$b;

    invoke-direct {v0, p0}, Ld/b/a/v$b;-><init>(Ld/b/a/v;)V

    iput-object v0, p0, Ld/b/a/v;->y:Ld/i/i/t;

    .line 22
    new-instance v0, Ld/b/a/v$c;

    invoke-direct {v0, p0}, Ld/b/a/v$c;-><init>(Ld/b/a/v;)V

    iput-object v0, p0, Ld/b/a/v;->z:Ld/i/i/v;

    .line 23
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld/b/a/v;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Ld/b/d/a$a;)Ld/b/d/a;
    .locals 2

    .line 41
    iget-object v0, p0, Ld/b/a/v;->i:Ld/b/a/v$d;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Ld/b/a/v$d;->a()V

    .line 43
    :cond_0
    iget-object v0, p0, Ld/b/a/v;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 44
    iget-object v0, p0, Ld/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->b()V

    .line 45
    new-instance v0, Ld/b/a/v$d;

    iget-object v1, p0, Ld/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Ld/b/a/v$d;-><init>(Ld/b/a/v;Landroid/content/Context;Ld/b/d/a$a;)V

    .line 46
    iget-object p1, v0, Ld/b/a/v$d;->A:Ld/b/d/i/g;

    invoke-virtual {p1}, Ld/b/d/i/g;->j()V

    .line 47
    :try_start_0
    iget-object p1, v0, Ld/b/a/v$d;->B:Ld/b/d/a$a;

    iget-object v1, v0, Ld/b/a/v$d;->A:Ld/b/d/i/g;

    invoke-interface {p1, v0, v1}, Ld/b/d/a$a;->b(Ld/b/d/a;Landroid/view/Menu;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    iget-object v1, v0, Ld/b/a/v$d;->A:Ld/b/d/i/g;

    invoke-virtual {v1}, Ld/b/d/i/g;->i()V

    if-eqz p1, :cond_1

    .line 49
    iput-object v0, p0, Ld/b/a/v;->i:Ld/b/a/v$d;

    .line 50
    invoke-virtual {v0}, Ld/b/a/v$d;->g()V

    .line 51
    iget-object p1, p0, Ld/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->a(Ld/b/d/a;)V

    const/4 p1, 0x1

    .line 52
    invoke-virtual {p0, p1}, Ld/b/a/v;->e(Z)V

    .line 53
    iget-object p1, p0, Ld/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 54
    iget-object v0, v0, Ld/b/a/v$d;->A:Ld/b/d/i/g;

    invoke-virtual {v0}, Ld/b/d/i/g;->i()V

    .line 55
    throw p1
.end method

.method public a(I)V
    .locals 1

    .line 57
    iget-object v0, p0, Ld/b/a/v;->e:Ld/b/e/d0;

    invoke-interface {v0, p1}, Ld/b/e/d0;->c(I)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    .line 33
    iget-object p1, p0, Ld/b/a/v;->a:Landroid/content/Context;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroidx/appcompat/R$bool;->abc_action_bar_embed_tabs:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 35
    invoke-virtual {p0, p1}, Ld/b/a/v;->f(Z)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 56
    iget-object v0, p0, Ld/b/a/v;->e:Ld/b/e/d0;

    invoke-interface {v0, p1}, Ld/b/e/d0;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 5

    .line 1
    sget v0, Landroidx/appcompat/R$id;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Ld/b/a/v;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$d;)V

    .line 3
    :cond_0
    sget v0, Landroidx/appcompat/R$id;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4
    instance-of v1, v0, Ld/b/e/d0;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Ld/b/e/d0;

    goto :goto_0

    .line 6
    :cond_1
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_b

    .line 7
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Ld/b/e/d0;

    move-result-object v0

    .line 8
    :goto_0
    iput-object v0, p0, Ld/b/a/v;->e:Ld/b/e/d0;

    .line 9
    sget v0, Landroidx/appcompat/R$id;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Ld/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    .line 10
    sget v0, Landroidx/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Ld/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 11
    iget-object v0, p0, Ld/b/a/v;->e:Ld/b/e/d0;

    if-eqz v0, :cond_a

    iget-object v1, p0, Ld/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v1, :cond_a

    if-eqz p1, :cond_a

    .line 12
    invoke-interface {v0}, Ld/b/e/d0;->k()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ld/b/a/v;->a:Landroid/content/Context;

    .line 13
    iget-object p1, p0, Ld/b/a/v;->e:Ld/b/e/d0;

    invoke-interface {p1}, Ld/b/e/d0;->h()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 14
    iput-boolean v0, p0, Ld/b/a/v;->h:Z

    .line 15
    :cond_3
    iget-object v2, p0, Ld/b/a/v;->a:Landroid/content/Context;

    .line 16
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_6

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 p1, 0x1

    .line 17
    :goto_4
    iget-object v3, p0, Ld/b/a/v;->e:Ld/b/e/d0;

    invoke-interface {v3, p1}, Ld/b/e/d0;->a(Z)V

    .line 18
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Landroidx/appcompat/R$bool;->abc_action_bar_embed_tabs:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Ld/b/a/v;->f(Z)V

    .line 20
    iget-object p1, p0, Ld/b/a/v;->a:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Landroidx/appcompat/R$styleable;->ActionBar:[I

    sget v4, Landroidx/appcompat/R$attr;->actionBarStyle:I

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 21
    sget v2, Landroidx/appcompat/R$styleable;->ActionBar_hideOnContentScroll:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 22
    iget-object v2, p0, Ld/b/a/v;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 23
    iget-boolean v3, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->E:Z

    if-eqz v3, :cond_7

    .line 24
    iput-boolean v0, p0, Ld/b/a/v;->w:Z

    .line 25
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    goto :goto_5

    .line 26
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_8
    :goto_5
    sget v0, Landroidx/appcompat/R$styleable;->ActionBar_elevation:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_9

    int-to-float v0, v0

    .line 28
    iget-object v1, p0, Ld/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v1, v0}, Ld/i/i/n;->a(Landroid/view/View;F)V

    .line 29
    :cond_9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 30
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ld/b/a/v;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can only be used with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t make a decor toolbar out of "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_c

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_c
    const-string v0, "null"

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 40
    iget-object v0, p0, Ld/b/a/v;->e:Ld/b/e/d0;

    invoke-interface {v0, p1}, Ld/b/e/d0;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 36
    iget-boolean v0, p0, Ld/b/a/v;->l:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 37
    :cond_0
    iput-boolean p1, p0, Ld/b/a/v;->l:Z

    .line 38
    iget-object v0, p0, Ld/b/a/v;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 39
    iget-object v2, p0, Ld/b/a/v;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/b/a/a$b;

    invoke-interface {v2, p1}, Ld/b/a/a$b;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 58
    iget-object v0, p0, Ld/b/a/v;->i:Ld/b/a/v$d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 59
    :cond_0
    iget-object v0, v0, Ld/b/a/v$d;->A:Ld/b/d/i/g;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    .line 60
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 61
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 63
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/a/v;->e:Ld/b/e/d0;

    invoke-interface {v0, p1}, Ld/b/e/d0;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 4
    iget-boolean v0, p0, Ld/b/a/v;->h:Z

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Ld/b/a/v;->c(Z)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 2
    iget-object v0, p0, Ld/b/a/v;->e:Ld/b/e/d0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ld/b/e/d0;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ld/b/a/v;->e:Ld/b/e/d0;

    invoke-interface {v0}, Ld/b/e/d0;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .locals 1

    .line 4
    iget-object v0, p0, Ld/b/a/v;->e:Ld/b/e/d0;

    invoke-interface {v0}, Ld/b/e/d0;->h()I

    move-result v0

    return v0
.end method

.method public c(Z)V
    .locals 3

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Ld/b/a/v;->e:Ld/b/e/d0;

    invoke-interface {v1}, Ld/b/e/d0;->h()I

    move-result v1

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, p0, Ld/b/a/v;->h:Z

    .line 3
    iget-object v2, p0, Ld/b/a/v;->e:Ld/b/e/d0;

    and-int/2addr p1, v0

    const/4 v0, -0x5

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    invoke-interface {v2, p1}, Ld/b/e/d0;->d(I)V

    return-void
.end method

.method public d()Landroid/content/Context;
    .locals 4

    .line 4
    iget-object v0, p0, Ld/b/a/v;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 6
    iget-object v1, p0, Ld/b/a/v;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 7
    sget v2, Landroidx/appcompat/R$attr;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 8
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    .line 9
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Ld/b/a/v;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Ld/b/a/v;->b:Landroid/content/Context;

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Ld/b/a/v;->a:Landroid/content/Context;

    iput-object v0, p0, Ld/b/a/v;->b:Landroid/content/Context;

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Ld/b/a/v;->b:Landroid/content/Context;

    return-object v0
.end method

.method public d(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ld/b/a/v;->v:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Ld/b/a/v;->u:Ld/b/d/g;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ld/b/d/g;->a()V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-boolean v1, p0, Ld/b/a/v;->s:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Ld/b/a/v;->s:Z

    .line 3
    iget-object v2, p0, Ld/b/a/v;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Ld/b/a/v;->g(Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean v1, p0, Ld/b/a/v;->s:Z

    if-eqz v1, :cond_3

    .line 7
    iput-boolean v0, p0, Ld/b/a/v;->s:Z

    .line 8
    iget-object v1, p0, Ld/b/a/v;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 10
    :cond_2
    invoke-virtual {p0, v0}, Ld/b/a/v;->g(Z)V

    .line 11
    :cond_3
    :goto_0
    iget-object v1, p0, Ld/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v1}, Ld/i/i/n;->t(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eqz v1, :cond_7

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Ld/b/a/v;->e:Ld/b/e/d0;

    invoke-interface {p1, v2, v4, v5}, Ld/b/e/d0;->a(IJ)Ld/i/i/s;

    move-result-object p1

    .line 13
    iget-object v1, p0, Ld/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1, v0, v6, v7}, Ld/b/e/a;->a(IJ)Ld/i/i/s;

    move-result-object v0

    goto :goto_1

    .line 14
    :cond_4
    iget-object p1, p0, Ld/b/a/v;->e:Ld/b/e/d0;

    invoke-interface {p1, v0, v6, v7}, Ld/b/e/d0;->a(IJ)Ld/i/i/s;

    move-result-object v0

    .line 15
    iget-object p1, p0, Ld/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3, v4, v5}, Ld/b/e/a;->a(IJ)Ld/i/i/s;

    move-result-object p1

    .line 16
    :goto_1
    new-instance v1, Ld/b/d/g;

    invoke-direct {v1}, Ld/b/d/g;-><init>()V

    .line 17
    iget-object v2, v1, Ld/b/d/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object p1, p1, Ld/i/i/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_5

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v2

    goto :goto_2

    :cond_5
    const-wide/16 v2, 0x0

    .line 20
    :goto_2
    iget-object p1, v0, Ld/i/i/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_6

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 22
    :cond_6
    iget-object p1, v1, Ld/b/d/g;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {v1}, Ld/b/d/g;->b()V

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    .line 24
    iget-object p1, p0, Ld/b/a/v;->e:Ld/b/e/d0;

    invoke-interface {p1, v2}, Ld/b/e/d0;->a(I)V

    .line 25
    iget-object p1, p0, Ld/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_3

    .line 26
    :cond_8
    iget-object p1, p0, Ld/b/a/v;->e:Ld/b/e/d0;

    invoke-interface {p1, v0}, Ld/b/e/d0;->a(I)V

    .line 27
    iget-object p1, p0, Ld/b/a/v;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public final f(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Ld/b/a/v;->n:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Ld/b/a/v;->e:Ld/b/e/d0;

    invoke-interface {p1, v0}, Ld/b/e/d0;->a(Ld/b/e/q0;)V

    .line 3
    iget-object p1, p0, Ld/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Ld/b/e/q0;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Ld/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Ld/b/e/q0;)V

    .line 5
    iget-object p1, p0, Ld/b/a/v;->e:Ld/b/e/d0;

    invoke-interface {p1, v0}, Ld/b/e/d0;->a(Ld/b/e/q0;)V

    .line 6
    :goto_0
    iget-object p1, p0, Ld/b/a/v;->e:Ld/b/e/d0;

    invoke-interface {p1}, Ld/b/e/d0;->l()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 7
    :goto_1
    iget-object v0, p0, Ld/b/a/v;->e:Ld/b/e/d0;

    iget-boolean v3, p0, Ld/b/a/v;->n:Z

    if-nez v3, :cond_2

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v0, v3}, Ld/b/e/d0;->b(Z)V

    .line 8
    iget-object v0, p0, Ld/b/a/v;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Ld/b/a/v;->n:Z

    if-nez v3, :cond_3

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method public final g(Z)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Ld/b/a/v;->r:Z

    iget-boolean v1, p0, Ld/b/a/v;->s:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-wide/16 v4, 0xfa

    const/4 v1, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eqz v0, :cond_c

    .line 2
    iget-boolean v0, p0, Ld/b/a/v;->t:Z

    if-nez v0, :cond_16

    .line 3
    iput-boolean v2, p0, Ld/b/a/v;->t:Z

    .line 4
    iget-object v0, p0, Ld/b/a/v;->u:Ld/b/d/g;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Ld/b/d/g;->a()V

    .line 6
    :cond_2
    iget-object v0, p0, Ld/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 7
    iget v0, p0, Ld/b/a/v;->o:I

    const/4 v3, 0x0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Ld/b/a/v;->v:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_a

    .line 8
    :cond_3
    iget-object v0, p0, Ld/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 9
    iget-object v0, p0, Ld/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_4

    new-array p1, v1, [I

    .line 10
    fill-array-data p1, :array_0

    .line 11
    iget-object v1, p0, Ld/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 12
    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 13
    :cond_4
    iget-object p1, p0, Ld/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 14
    new-instance p1, Ld/b/d/g;

    invoke-direct {p1}, Ld/b/d/g;-><init>()V

    .line 15
    iget-object v1, p0, Ld/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v1}, Ld/i/i/n;->a(Landroid/view/View;)Ld/i/i/s;

    move-result-object v1

    invoke-virtual {v1, v3}, Ld/i/i/s;->b(F)Ld/i/i/s;

    .line 16
    iget-object v2, p0, Ld/b/a/v;->z:Ld/i/i/v;

    invoke-virtual {v1, v2}, Ld/i/i/s;->a(Ld/i/i/v;)Ld/i/i/s;

    .line 17
    iget-boolean v2, p1, Ld/b/d/g;->e:Z

    if-nez v2, :cond_5

    .line 18
    iget-object v2, p1, Ld/b/d/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_5
    iget-boolean v1, p0, Ld/b/a/v;->p:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Ld/b/a/v;->g:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 20
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 21
    iget-object v0, p0, Ld/b/a/v;->g:Landroid/view/View;

    invoke-static {v0}, Ld/i/i/n;->a(Landroid/view/View;)Ld/i/i/s;

    move-result-object v0

    invoke-virtual {v0, v3}, Ld/i/i/s;->b(F)Ld/i/i/s;

    .line 22
    iget-boolean v1, p1, Ld/b/d/g;->e:Z

    if-nez v1, :cond_6

    .line 23
    iget-object v1, p1, Ld/b/d/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_6
    sget-object v0, Ld/b/a/v;->B:Landroid/view/animation/Interpolator;

    .line 25
    iget-boolean v1, p1, Ld/b/d/g;->e:Z

    if-nez v1, :cond_7

    .line 26
    iput-object v0, p1, Ld/b/d/g;->c:Landroid/view/animation/Interpolator;

    .line 27
    :cond_7
    iget-boolean v0, p1, Ld/b/d/g;->e:Z

    if-nez v0, :cond_8

    .line 28
    iput-wide v4, p1, Ld/b/d/g;->b:J

    .line 29
    :cond_8
    iget-object v0, p0, Ld/b/a/v;->y:Ld/i/i/t;

    .line 30
    iget-boolean v1, p1, Ld/b/d/g;->e:Z

    if-nez v1, :cond_9

    .line 31
    iput-object v0, p1, Ld/b/d/g;->d:Ld/i/i/t;

    .line 32
    :cond_9
    iput-object p1, p0, Ld/b/a/v;->u:Ld/b/d/g;

    .line 33
    invoke-virtual {p1}, Ld/b/d/g;->b()V

    goto :goto_2

    .line 34
    :cond_a
    iget-object p1, p0, Ld/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 35
    iget-object p1, p0, Ld/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 36
    iget-boolean p1, p0, Ld/b/a/v;->p:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Ld/b/a/v;->g:Landroid/view/View;

    if-eqz p1, :cond_b

    .line 37
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 38
    :cond_b
    iget-object p1, p0, Ld/b/a/v;->y:Ld/i/i/t;

    invoke-interface {p1, v7}, Ld/i/i/t;->a(Landroid/view/View;)V

    .line 39
    :goto_2
    iget-object p1, p0, Ld/b/a/v;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_16

    .line 40
    invoke-static {p1}, Ld/i/i/n;->y(Landroid/view/View;)V

    goto/16 :goto_3

    .line 41
    :cond_c
    iget-boolean v0, p0, Ld/b/a/v;->t:Z

    if-eqz v0, :cond_16

    .line 42
    iput-boolean v3, p0, Ld/b/a/v;->t:Z

    .line 43
    iget-object v0, p0, Ld/b/a/v;->u:Ld/b/d/g;

    if-eqz v0, :cond_d

    .line 44
    invoke-virtual {v0}, Ld/b/d/g;->a()V

    .line 45
    :cond_d
    iget v0, p0, Ld/b/a/v;->o:I

    if-nez v0, :cond_15

    iget-boolean v0, p0, Ld/b/a/v;->v:Z

    if-nez v0, :cond_e

    if-eqz p1, :cond_15

    .line 46
    :cond_e
    iget-object v0, p0, Ld/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 47
    iget-object v0, p0, Ld/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 48
    new-instance v0, Ld/b/d/g;

    invoke-direct {v0}, Ld/b/d/g;-><init>()V

    .line 49
    iget-object v3, p0, Ld/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    if-eqz p1, :cond_f

    new-array p1, v1, [I

    .line 50
    fill-array-data p1, :array_1

    .line 51
    iget-object v1, p0, Ld/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 52
    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v3, p1

    .line 53
    :cond_f
    iget-object p1, p0, Ld/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, Ld/i/i/n;->a(Landroid/view/View;)Ld/i/i/s;

    move-result-object p1

    invoke-virtual {p1, v3}, Ld/i/i/s;->b(F)Ld/i/i/s;

    .line 54
    iget-object v1, p0, Ld/b/a/v;->z:Ld/i/i/v;

    invoke-virtual {p1, v1}, Ld/i/i/s;->a(Ld/i/i/v;)Ld/i/i/s;

    .line 55
    iget-boolean v1, v0, Ld/b/d/g;->e:Z

    if-nez v1, :cond_10

    .line 56
    iget-object v1, v0, Ld/b/d/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_10
    iget-boolean p1, p0, Ld/b/a/v;->p:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Ld/b/a/v;->g:Landroid/view/View;

    if-eqz p1, :cond_11

    .line 58
    invoke-static {p1}, Ld/i/i/n;->a(Landroid/view/View;)Ld/i/i/s;

    move-result-object p1

    invoke-virtual {p1, v3}, Ld/i/i/s;->b(F)Ld/i/i/s;

    .line 59
    iget-boolean v1, v0, Ld/b/d/g;->e:Z

    if-nez v1, :cond_11

    .line 60
    iget-object v1, v0, Ld/b/d/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_11
    sget-object p1, Ld/b/a/v;->A:Landroid/view/animation/Interpolator;

    .line 62
    iget-boolean v1, v0, Ld/b/d/g;->e:Z

    if-nez v1, :cond_12

    .line 63
    iput-object p1, v0, Ld/b/d/g;->c:Landroid/view/animation/Interpolator;

    .line 64
    :cond_12
    iget-boolean p1, v0, Ld/b/d/g;->e:Z

    if-nez p1, :cond_13

    .line 65
    iput-wide v4, v0, Ld/b/d/g;->b:J

    .line 66
    :cond_13
    iget-object p1, p0, Ld/b/a/v;->x:Ld/i/i/t;

    .line 67
    iget-boolean v1, v0, Ld/b/d/g;->e:Z

    if-nez v1, :cond_14

    .line 68
    iput-object p1, v0, Ld/b/d/g;->d:Ld/i/i/t;

    .line 69
    :cond_14
    iput-object v0, p0, Ld/b/a/v;->u:Ld/b/d/g;

    .line 70
    invoke-virtual {v0}, Ld/b/d/g;->b()V

    goto :goto_3

    .line 71
    :cond_15
    iget-object p1, p0, Ld/b/a/v;->x:Ld/i/i/t;

    invoke-interface {p1, v7}, Ld/i/i/t;->a(Landroid/view/View;)V

    :cond_16
    :goto_3
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
