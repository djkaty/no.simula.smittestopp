.class public Ld/b/a/k$e;
.super Ld/b/d/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic y:Ld/b/a/k;


# direct methods
.method public constructor <init>(Ld/b/a/k;Landroid/view/Window$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/b/a/k$e;->y:Ld/b/a/k;

    .line 2
    invoke-direct {p0, p2}, Ld/b/d/h;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 9

    .line 1
    new-instance v0, Ld/b/d/e$a;

    iget-object v1, p0, Ld/b/a/k$e;->y:Ld/b/a/k;

    iget-object v1, v1, Ld/b/a/k;->A:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Ld/b/d/e$a;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 2
    iget-object p1, p0, Ld/b/a/k$e;->y:Ld/b/a/k;

    const/4 v1, 0x0

    if-eqz p1, :cond_10

    .line 3
    iget-object v2, p1, Ld/b/a/k;->K:Ld/b/d/a;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Ld/b/d/a;->a()V

    .line 5
    :cond_0
    new-instance v2, Ld/b/a/k$d;

    invoke-direct {v2, p1, v0}, Ld/b/a/k$d;-><init>(Ld/b/a/k;Ld/b/d/a$a;)V

    .line 6
    invoke-virtual {p1}, Ld/b/a/k;->k()V

    .line 7
    iget-object v3, p1, Ld/b/a/k;->E:Ld/b/a/a;

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v3, v2}, Ld/b/a/a;->a(Ld/b/d/a$a;)Ld/b/d/a;

    move-result-object v3

    iput-object v3, p1, Ld/b/a/k;->K:Ld/b/d/a;

    if-eqz v3, :cond_1

    .line 9
    iget-object v4, p1, Ld/b/a/k;->D:Ld/b/a/i;

    if-eqz v4, :cond_1

    .line 10
    invoke-interface {v4, v3}, Ld/b/a/i;->a(Ld/b/d/a;)V

    .line 11
    :cond_1
    iget-object v3, p1, Ld/b/a/k;->K:Ld/b/d/a;

    if-nez v3, :cond_e

    .line 12
    invoke-virtual {p1}, Ld/b/a/k;->e()V

    .line 13
    iget-object v3, p1, Ld/b/a/k;->K:Ld/b/d/a;

    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {v3}, Ld/b/d/a;->a()V

    .line 15
    :cond_2
    iget-object v3, p1, Ld/b/a/k;->D:Ld/b/a/i;

    if-eqz v3, :cond_3

    iget-boolean v4, p1, Ld/b/a/k;->i0:Z

    if-nez v4, :cond_3

    .line 16
    :try_start_0
    invoke-interface {v3, v2}, Ld/b/a/i;->a(Ld/b/d/a$a;)Ld/b/d/a;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_4

    .line 17
    iput-object v3, p1, Ld/b/a/k;->K:Ld/b/d/a;

    goto/16 :goto_5

    .line 18
    :cond_4
    iget-object v3, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_7

    .line 19
    iget-boolean v3, p1, Ld/b/a/k;->Z:Z

    if-eqz v3, :cond_6

    .line 20
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 21
    iget-object v6, p1, Ld/b/a/k;->A:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 22
    sget v7, Landroidx/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v6, v7, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 23
    iget v7, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_5

    .line 24
    iget-object v7, p1, Ld/b/a/k;->A:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 25
    invoke-virtual {v7, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 26
    iget v6, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v7, v6, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 27
    new-instance v6, Ld/b/d/c;

    iget-object v8, p1, Ld/b/a/k;->A:Landroid/content/Context;

    invoke-direct {v6, v8, v5}, Ld/b/d/c;-><init>(Landroid/content/Context;I)V

    .line 28
    invoke-virtual {v6}, Ld/b/d/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_1

    .line 29
    :cond_5
    iget-object v6, p1, Ld/b/a/k;->A:Landroid/content/Context;

    .line 30
    :goto_1
    new-instance v7, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v7, v6}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    .line 31
    new-instance v7, Landroid/widget/PopupWindow;

    sget v8, Landroidx/appcompat/R$attr;->actionModePopupWindowStyle:I

    invoke-direct {v7, v6, v1, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v7, p1, Ld/b/a/k;->M:Landroid/widget/PopupWindow;

    const/4 v8, 0x2

    .line 32
    invoke-static {v7, v8}, Ld/b/a/r;->a(Landroid/widget/PopupWindow;I)V

    .line 33
    iget-object v7, p1, Ld/b/a/k;->M:Landroid/widget/PopupWindow;

    iget-object v8, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 34
    iget-object v7, p1, Ld/b/a/k;->M:Landroid/widget/PopupWindow;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 35
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    sget v8, Landroidx/appcompat/R$attr;->actionBarSize:I

    invoke-virtual {v7, v8, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 36
    iget v3, v3, Landroid/util/TypedValue;->data:I

    .line 37
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 38
    invoke-static {v3, v6}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    .line 39
    iget-object v6, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 40
    iget-object v3, p1, Ld/b/a/k;->M:Landroid/widget/PopupWindow;

    const/4 v6, -0x2

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 41
    new-instance v3, Ld/b/a/o;

    invoke-direct {v3, p1}, Ld/b/a/o;-><init>(Ld/b/a/k;)V

    iput-object v3, p1, Ld/b/a/k;->N:Ljava/lang/Runnable;

    goto :goto_2

    .line 42
    :cond_6
    iget-object v3, p1, Ld/b/a/k;->R:Landroid/view/ViewGroup;

    sget v6, Landroidx/appcompat/R$id;->action_mode_bar_stub:I

    .line 43
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz v3, :cond_7

    .line 44
    invoke-virtual {p1}, Ld/b/a/k;->h()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 45
    invoke-virtual {v3}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v3, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    .line 46
    :cond_7
    :goto_2
    iget-object v3, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v3, :cond_c

    .line 47
    invoke-virtual {p1}, Ld/b/a/k;->e()V

    .line 48
    iget-object v3, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarContextView;->b()V

    .line 49
    new-instance v3, Ld/b/d/d;

    iget-object v6, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v8, p1, Ld/b/a/k;->M:Landroid/widget/PopupWindow;

    if-nez v8, :cond_8

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    :goto_3
    invoke-direct {v3, v6, v7, v2, v4}, Ld/b/d/d;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Ld/b/d/a$a;Z)V

    .line 50
    iget-object v4, v3, Ld/b/d/d;->E:Ld/b/d/i/g;

    .line 51
    iget-object v2, v2, Ld/b/a/k$d;->a:Ld/b/d/a$a;

    invoke-interface {v2, v3, v4}, Ld/b/d/a$a;->b(Ld/b/d/a;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 52
    invoke-virtual {v3}, Ld/b/d/d;->g()V

    .line 53
    iget-object v2, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarContextView;->a(Ld/b/d/a;)V

    .line 54
    iput-object v3, p1, Ld/b/a/k;->K:Ld/b/d/a;

    .line 55
    invoke-virtual {p1}, Ld/b/a/k;->l()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_9

    .line 56
    iget-object v2, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 57
    iget-object v2, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v2}, Ld/i/i/n;->a(Landroid/view/View;)Ld/i/i/s;

    move-result-object v2

    invoke-virtual {v2, v3}, Ld/i/i/s;->a(F)Ld/i/i/s;

    iput-object v2, p1, Ld/b/a/k;->O:Ld/i/i/s;

    .line 58
    new-instance v3, Ld/b/a/p;

    invoke-direct {v3, p1}, Ld/b/a/p;-><init>(Ld/b/a/k;)V

    .line 59
    iget-object v4, v2, Ld/i/i/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_a

    .line 60
    invoke-virtual {v2, v4, v3}, Ld/i/i/s;->a(Landroid/view/View;Ld/i/i/t;)V

    goto :goto_4

    .line 61
    :cond_9
    iget-object v2, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 62
    iget-object v2, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 63
    iget-object v2, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 64
    iget-object v2, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_a

    .line 65
    iget-object v2, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 66
    invoke-virtual {v2}, Landroid/view/View;->requestApplyInsets()V

    .line 67
    :cond_a
    :goto_4
    iget-object v2, p1, Ld/b/a/k;->M:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_c

    .line 68
    iget-object v2, p1, Ld/b/a/k;->B:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p1, Ld/b/a/k;->N:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 69
    :cond_b
    iput-object v1, p1, Ld/b/a/k;->K:Ld/b/d/a;

    .line 70
    :cond_c
    :goto_5
    iget-object v2, p1, Ld/b/a/k;->K:Ld/b/d/a;

    if-eqz v2, :cond_d

    iget-object v3, p1, Ld/b/a/k;->D:Ld/b/a/i;

    if-eqz v3, :cond_d

    .line 71
    invoke-interface {v3, v2}, Ld/b/a/i;->a(Ld/b/d/a;)V

    .line 72
    :cond_d
    iget-object v2, p1, Ld/b/a/k;->K:Ld/b/d/a;

    .line 73
    iput-object v2, p1, Ld/b/a/k;->K:Ld/b/d/a;

    .line 74
    :cond_e
    iget-object p1, p1, Ld/b/a/k;->K:Ld/b/d/a;

    if-eqz p1, :cond_f

    .line 75
    invoke-virtual {v0, p1}, Ld/b/d/e$a;->b(Ld/b/d/a;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_f
    return-object v1

    .line 76
    :cond_10
    throw v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/a/k$e;->y:Ld/b/a/k;

    invoke-virtual {v0, p1}, Ld/b/a/k;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Ld/b/d/h;->x:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Ld/b/d/h;->x:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Ld/b/a/k$e;->y:Ld/b/a/k;

    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 4
    invoke-virtual {v0}, Ld/b/a/k;->k()V

    .line 5
    iget-object v4, v0, Ld/b/a/k;->E:Ld/b/a/a;

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v4, v3, p1}, Ld/b/a/a;->a(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v3, v0, Ld/b/a/k;->d0:Ld/b/a/k$j;

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v0, v3, v4, p1, v2}, Ld/b/a/k;->a(Ld/b/a/k$j;ILandroid/view/KeyEvent;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    iget-object p1, v0, Ld/b/a/k;->d0:Ld/b/a/k$j;

    if-eqz p1, :cond_0

    .line 10
    iput-boolean v2, p1, Ld/b/a/k$j;->n:Z

    goto :goto_0

    .line 11
    :cond_2
    iget-object v3, v0, Ld/b/a/k;->d0:Ld/b/a/k$j;

    if-nez v3, :cond_3

    .line 12
    invoke-virtual {v0, v1}, Ld/b/a/k;->d(I)Ld/b/a/k$j;

    move-result-object v3

    .line 13
    invoke-virtual {v0, v3, p1}, Ld/b/a/k;->b(Ld/b/a/k$j;Landroid/view/KeyEvent;)Z

    .line 14
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v0, v3, v4, p1, v2}, Ld/b/a/k;->a(Ld/b/a/k$j;ILandroid/view/KeyEvent;I)Z

    move-result p1

    .line 15
    iput-boolean v1, v3, Ld/b/a/k$j;->m:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public onContentChanged()V
    .locals 0

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 1
    instance-of v0, p2, Ld/b/d/i/g;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Ld/b/d/h;->x:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ld/b/d/h;->x:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 2
    iget-object p2, p0, Ld/b/a/k$e;->y:Ld/b/a/k;

    if-eqz p2, :cond_1

    const/16 v0, 0x6c

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p2}, Ld/b/a/k;->k()V

    .line 4
    iget-object p1, p2, Ld/b/a/k;->E:Ld/b/a/a;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Ld/b/a/a;->a(Z)V

    :cond_0
    return v1

    :cond_1
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/b/d/h;->x:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 2
    iget-object p2, p0, Ld/b/a/k$e;->y:Ld/b/a/k;

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_0

    .line 3
    invoke-virtual {p2}, Ld/b/a/k;->k()V

    .line 4
    iget-object p1, p2, Ld/b/a/k;->E:Ld/b/a/a;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Ld/b/a/a;->a(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p2, p1}, Ld/b/a/k;->d(I)Ld/b/a/k$j;

    move-result-object p1

    .line 7
    iget-boolean v1, p1, Ld/b/a/k$j;->o:Z

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p2, p1, v0}, Ld/b/a/k;->a(Ld/b/a/k$j;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 9
    throw p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    .line 1
    instance-of v0, p3, Ld/b/d/i/g;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Ld/b/d/i/g;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, v0, Ld/b/d/i/g;->y:Z

    .line 3
    :cond_2
    iget-object v2, p0, Ld/b/d/h;->x:Landroid/view/Window$Callback;

    invoke-interface {v2, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz v0, :cond_3

    .line 4
    iput-boolean v1, v0, Ld/b/d/i/g;->y:Z

    :cond_3
    return p1
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld/b/a/k$e;->y:Ld/b/a/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld/b/a/k;->d(I)Ld/b/a/k$j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    if-eqz v0, :cond_0

    .line 3
    iget-object p2, p0, Ld/b/d/h;->x:Landroid/view/Window$Callback;

    invoke-interface {p2, p1, v0, p3}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ld/b/d/h;->x:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    :goto_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Ld/b/a/k$e;->y:Ld/b/a/k;

    .line 3
    iget-boolean v0, v0, Ld/b/a/k;->P:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Ld/b/a/k$e;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Ld/b/d/h;->x:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 6
    iget-object v0, p0, Ld/b/a/k$e;->y:Ld/b/a/k;

    .line 7
    iget-boolean v0, v0, Ld/b/a/k;->P:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Ld/b/a/k$e;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Ld/b/d/h;->x:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
