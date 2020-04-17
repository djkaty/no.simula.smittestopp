.class public Ld/b/a/k;
.super Ld/b/a/j;
.source "SourceFile"

# interfaces
.implements Ld/b/d/i/g$a;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/b/a/k$f;,
        Ld/b/a/k$h;,
        Ld/b/a/k$g;,
        Ld/b/a/k$e;,
        Ld/b/a/k$i;,
        Ld/b/a/k$j;,
        Ld/b/a/k$c;,
        Ld/b/a/k$k;,
        Ld/b/a/k$d;
    }
.end annotation


# static fields
.field public static final A0:Z

.field public static final w0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final x0:Z

.field public static final y0:[I

.field public static z0:Z


# instance fields
.field public final A:Landroid/content/Context;

.field public B:Landroid/view/Window;

.field public C:Ld/b/a/k$e;

.field public final D:Ld/b/a/i;

.field public E:Ld/b/a/a;

.field public F:Landroid/view/MenuInflater;

.field public G:Ljava/lang/CharSequence;

.field public H:Ld/b/e/c0;

.field public I:Ld/b/a/k$c;

.field public J:Ld/b/a/k$k;

.field public K:Ld/b/d/a;

.field public L:Landroidx/appcompat/widget/ActionBarContextView;

.field public M:Landroid/widget/PopupWindow;

.field public N:Ljava/lang/Runnable;

.field public O:Ld/i/i/s;

.field public P:Z

.field public Q:Z

.field public R:Landroid/view/ViewGroup;

.field public S:Landroid/widget/TextView;

.field public T:Landroid/view/View;

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public a0:Z

.field public b0:Z

.field public c0:[Ld/b/a/k$j;

.field public d0:Ld/b/a/k$j;

.field public e0:Z

.field public f0:Z

.field public g0:Z

.field public h0:Z

.field public i0:Z

.field public j0:I

.field public k0:I

.field public l0:Z

.field public m0:Z

.field public n0:Ld/b/a/k$g;

.field public o0:Ld/b/a/k$g;

.field public p0:Z

.field public q0:I

.field public final r0:Ljava/lang/Runnable;

.field public s0:Z

.field public t0:Landroid/graphics/Rect;

.field public u0:Landroid/graphics/Rect;

.field public v0:Landroidx/appcompat/app/AppCompatViewInflater;

.field public final z:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ld/f/a;

    invoke-direct {v0}, Ld/f/a;-><init>()V

    sput-object v0, Ld/b/a/k;->w0:Ljava/util/Map;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    sput-boolean v1, Ld/b/a/k;->x0:Z

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x1010054

    aput v4, v3, v1

    .line 3
    sput-object v3, Ld/b/a/k;->y0:[I

    const/16 v3, 0x19

    if-gt v0, v3, :cond_0

    const/4 v1, 0x1

    .line 4
    :cond_0
    sput-boolean v1, Ld/b/a/k;->A0:Z

    .line 5
    sget-boolean v0, Ld/b/a/k;->x0:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Ld/b/a/k;->z0:Z

    if-nez v0, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 7
    new-instance v1, Ld/b/a/k$a;

    invoke-direct {v1, v0}, Ld/b/a/k$a;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 8
    sput-boolean v2, Ld/b/a/k;->z0:Z

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Ld/b/a/i;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ld/b/a/j;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ld/b/a/k;->O:Ld/i/i/s;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Ld/b/a/k;->P:Z

    const/16 v1, -0x64

    .line 4
    iput v1, p0, Ld/b/a/k;->j0:I

    .line 5
    new-instance v2, Ld/b/a/k$b;

    invoke-direct {v2, p0}, Ld/b/a/k$b;-><init>(Ld/b/a/k;)V

    iput-object v2, p0, Ld/b/a/k;->r0:Ljava/lang/Runnable;

    .line 6
    iput-object p1, p0, Ld/b/a/k;->A:Landroid/content/Context;

    .line 7
    iput-object p3, p0, Ld/b/a/k;->D:Ld/b/a/i;

    .line 8
    iput-object p4, p0, Ld/b/a/k;->z:Ljava/lang/Object;

    .line 9
    iget p3, p0, Ld/b/a/k;->j0:I

    if-ne p3, v1, :cond_2

    instance-of p3, p4, Landroid/app/Dialog;

    if-eqz p3, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    .line 10
    instance-of p3, p1, Ld/b/a/h;

    if-eqz p3, :cond_0

    .line 11
    move-object v0, p1

    check-cast v0, Ld/b/a/h;

    goto :goto_1

    .line 12
    :cond_0
    instance-of p3, p1, Landroid/content/ContextWrapper;

    if-eqz p3, :cond_1

    .line 13
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v0}, Ld/b/a/h;->j()Ld/b/a/j;

    move-result-object p1

    check-cast p1, Ld/b/a/k;

    .line 15
    iget p1, p1, Ld/b/a/k;->j0:I

    .line 16
    iput p1, p0, Ld/b/a/k;->j0:I

    .line 17
    :cond_2
    iget p1, p0, Ld/b/a/k;->j0:I

    if-ne p1, v1, :cond_3

    .line 18
    sget-object p1, Ld/b/a/k;->w0:Ljava/util/Map;

    iget-object p3, p0, Ld/b/a/k;->z:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Ld/b/a/k;->j0:I

    .line 20
    sget-object p1, Ld/b/a/k;->w0:Ljava/util/Map;

    iget-object p3, p0, Ld/b/a/k;->z:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    .line 21
    invoke-virtual {p0, p2}, Ld/b/a/k;->a(Landroid/view/Window;)V

    .line 22
    :cond_4
    invoke-static {}, Ld/b/e/j;->b()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)Ld/b/a/k$j;
    .locals 5

    .line 217
    iget-object v0, p0, Ld/b/a/k;->c0:[Ld/b/a/k$j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 218
    array-length v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 219
    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    .line 220
    iget-object v4, v3, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 92
    iget-object v0, p0, Ld/b/a/k;->A:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Ld/b/a/k;

    if-nez v0, :cond_1

    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ILd/b/a/k$j;Landroid/view/Menu;)V
    .locals 2

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    if-ltz p1, :cond_0

    .line 209
    iget-object v0, p0, Ld/b/a/k;->c0:[Ld/b/a/k$j;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 210
    aget-object p2, v0, p1

    :cond_0
    if-eqz p2, :cond_1

    .line 211
    iget-object p3, p2, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    :cond_1
    if-eqz p2, :cond_2

    .line 212
    iget-boolean p2, p2, Ld/b/a/k$j;->o:Z

    if-nez p2, :cond_2

    return-void

    .line 213
    :cond_2
    iget-boolean p2, p0, Ld/b/a/k;->i0:Z

    if-nez p2, :cond_3

    .line 214
    iget-object p2, p0, Ld/b/a/k;->C:Ld/b/a/k$e;

    .line 215
    iget-object p2, p2, Ld/b/d/h;->x:Landroid/view/Window$Callback;

    .line 216
    invoke-interface {p2, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_3
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Ld/b/a/k;->f0:Z

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ld/b/a/k;->a(Z)Z

    .line 3
    invoke-virtual {p0}, Ld/b/a/k;->g()V

    .line 4
    iget-object v0, p0, Ld/b/a/k;->z:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 5
    :try_start_0
    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v0, v2}, Ld/b/a/r;->b(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    nop

    :goto_0
    if-eqz v1, :cond_1

    .line 8
    iget-object v0, p0, Ld/b/a/k;->E:Ld/b/a/a;

    if-nez v0, :cond_0

    .line 9
    iput-boolean p1, p0, Ld/b/a/k;->s0:Z

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Ld/b/a/a;->b(Z)V

    .line 11
    :cond_1
    :goto_1
    iput-boolean p1, p0, Ld/b/a/k;->g0:Z

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .line 12
    invoke-virtual {p0}, Ld/b/a/k;->f()V

    .line 13
    iget-object v0, p0, Ld/b/a/k;->R:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 15
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 16
    iget-object p1, p0, Ld/b/a/k;->C:Ld/b/a/k$e;

    .line 17
    iget-object p1, p1, Ld/b/d/h;->x:Landroid/view/Window$Callback;

    .line 18
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 19
    invoke-virtual {p0}, Ld/b/a/k;->f()V

    .line 20
    iget-object v0, p0, Ld/b/a/k;->R:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 21
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object p1, p0, Ld/b/a/k;->C:Ld/b/a/k$e;

    .line 23
    iget-object p1, p1, Ld/b/d/h;->x:Landroid/view/Window$Callback;

    .line 24
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final a(Landroid/view/Window;)V
    .locals 3

    .line 25
    iget-object v0, p0, Ld/b/a/k;->B:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_2

    .line 26
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 27
    instance-of v2, v0, Ld/b/a/k$e;

    if-nez v2, :cond_1

    .line 28
    new-instance v1, Ld/b/a/k$e;

    invoke-direct {v1, p0, v0}, Ld/b/a/k$e;-><init>(Ld/b/a/k;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Ld/b/a/k;->C:Ld/b/a/k$e;

    .line 29
    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 30
    iget-object v0, p0, Ld/b/a/k;->A:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Ld/b/a/k;->y0:[I

    invoke-static {v0, v1, v2}, Ld/b/e/x0;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Ld/b/e/x0;

    move-result-object v0

    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Ld/b/e/x0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    :cond_0
    iget-object v0, v0, Ld/b/e/x0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    iput-object p1, p0, Ld/b/a/k;->B:Landroid/view/Window;

    return-void

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ld/b/a/k$j;Landroid/view/KeyEvent;)V
    .locals 12

    .line 97
    iget-boolean v0, p1, Ld/b/a/k$j;->o:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Ld/b/a/k;->i0:Z

    if-eqz v0, :cond_0

    goto/16 :goto_c

    .line 98
    :cond_0
    iget v0, p1, Ld/b/a/k$j;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 99
    iget-object v0, p0, Ld/b/a/k;->A:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 100
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    .line 101
    :cond_2
    invoke-virtual {p0}, Ld/b/a/k;->j()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 102
    iget v3, p1, Ld/b/a/k$j;->a:I

    iget-object v4, p1, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 103
    invoke-virtual {p0, p1, v1}, Ld/b/a/k;->a(Ld/b/a/k$j;Z)V

    return-void

    .line 104
    :cond_3
    iget-object v0, p0, Ld/b/a/k;->A:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_4

    return-void

    .line 105
    :cond_4
    invoke-virtual {p0, p1, p2}, Ld/b/a/k;->b(Ld/b/a/k$j;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    .line 106
    :cond_5
    iget-object p2, p1, Ld/b/a/k$j;->g:Landroid/view/ViewGroup;

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-eqz p2, :cond_7

    iget-boolean p2, p1, Ld/b/a/k$j;->q:Z

    if-eqz p2, :cond_6

    goto :goto_1

    .line 107
    :cond_6
    iget-object p2, p1, Ld/b/a/k$j;->i:Landroid/view/View;

    if-eqz p2, :cond_1a

    .line 108
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_1a

    .line 109
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v4, :cond_1a

    const/4 v5, -0x1

    goto/16 :goto_b

    .line 110
    :cond_7
    :goto_1
    iget-object p2, p1, Ld/b/a/k$j;->g:Landroid/view/ViewGroup;

    if-nez p2, :cond_a

    .line 111
    invoke-virtual {p0}, Ld/b/a/k;->h()Landroid/content/Context;

    move-result-object p2

    .line 112
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 113
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 114
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 115
    sget v6, Landroidx/appcompat/R$attr;->actionBarPopupTheme:I

    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 116
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_8

    .line 117
    invoke-virtual {v5, v6, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 118
    :cond_8
    sget v6, Landroidx/appcompat/R$attr;->panelMenuListTheme:I

    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 119
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_9

    .line 120
    invoke-virtual {v5, v4, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_2

    .line 121
    :cond_9
    sget v4, Landroidx/appcompat/R$style;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v5, v4, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 122
    :goto_2
    new-instance v4, Ld/b/d/c;

    invoke-direct {v4, p2, v2}, Ld/b/d/c;-><init>(Landroid/content/Context;I)V

    .line 123
    invoke-virtual {v4}, Ld/b/d/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 124
    iput-object v4, p1, Ld/b/a/k$j;->l:Landroid/content/Context;

    .line 125
    sget-object p2, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v4, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 126
    sget v4, Landroidx/appcompat/R$styleable;->AppCompatTheme_panelBackground:I

    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p1, Ld/b/a/k$j;->b:I

    .line 127
    sget v4, Landroidx/appcompat/R$styleable;->AppCompatTheme_android_windowAnimationStyle:I

    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p1, Ld/b/a/k$j;->f:I

    .line 128
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    new-instance p2, Ld/b/a/k$i;

    iget-object v4, p1, Ld/b/a/k$j;->l:Landroid/content/Context;

    invoke-direct {p2, p0, v4}, Ld/b/a/k$i;-><init>(Ld/b/a/k;Landroid/content/Context;)V

    iput-object p2, p1, Ld/b/a/k$j;->g:Landroid/view/ViewGroup;

    const/16 p2, 0x51

    .line 130
    iput p2, p1, Ld/b/a/k$j;->c:I

    goto :goto_3

    .line 131
    :cond_a
    iget-boolean v4, p1, Ld/b/a/k$j;->q:Z

    if-eqz v4, :cond_b

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_b

    .line 132
    iget-object p2, p1, Ld/b/a/k$j;->g:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 133
    :cond_b
    :goto_3
    iget-object p2, p1, Ld/b/a/k$j;->i:Landroid/view/View;

    if-eqz p2, :cond_c

    .line 134
    iput-object p2, p1, Ld/b/a/k$j;->h:Landroid/view/View;

    goto :goto_5

    .line 135
    :cond_c
    iget-object p2, p1, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    if-nez p2, :cond_d

    goto :goto_6

    .line 136
    :cond_d
    iget-object p2, p0, Ld/b/a/k;->J:Ld/b/a/k$k;

    if-nez p2, :cond_e

    .line 137
    new-instance p2, Ld/b/a/k$k;

    invoke-direct {p2, p0}, Ld/b/a/k$k;-><init>(Ld/b/a/k;)V

    iput-object p2, p0, Ld/b/a/k;->J:Ld/b/a/k$k;

    .line 138
    :cond_e
    iget-object p2, p0, Ld/b/a/k;->J:Ld/b/a/k$k;

    .line 139
    iget-object v4, p1, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    if-nez v4, :cond_f

    const/4 p2, 0x0

    goto :goto_4

    .line 140
    :cond_f
    iget-object v4, p1, Ld/b/a/k$j;->k:Ld/b/d/i/e;

    if-nez v4, :cond_10

    .line 141
    new-instance v4, Ld/b/d/i/e;

    iget-object v5, p1, Ld/b/a/k$j;->l:Landroid/content/Context;

    sget v6, Landroidx/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v4, v5, v6}, Ld/b/d/i/e;-><init>(Landroid/content/Context;I)V

    iput-object v4, p1, Ld/b/a/k$j;->k:Ld/b/d/i/e;

    .line 142
    iput-object p2, v4, Ld/b/d/i/e;->E:Ld/b/d/i/m$a;

    .line 143
    iget-object p2, p1, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    .line 144
    iget-object v5, p2, Ld/b/d/i/g;->a:Landroid/content/Context;

    invoke-virtual {p2, v4, v5}, Ld/b/d/i/g;->a(Ld/b/d/i/m;Landroid/content/Context;)V

    .line 145
    :cond_10
    iget-object p2, p1, Ld/b/a/k$j;->k:Ld/b/d/i/e;

    iget-object v4, p1, Ld/b/a/k$j;->g:Landroid/view/ViewGroup;

    .line 146
    iget-object v5, p2, Ld/b/d/i/e;->A:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v5, :cond_12

    .line 147
    iget-object v5, p2, Ld/b/d/i/e;->y:Landroid/view/LayoutInflater;

    sget v6, Landroidx/appcompat/R$layout;->abc_expanded_menu_layout:I

    invoke-virtual {v5, v6, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v4, p2, Ld/b/d/i/e;->A:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 148
    iget-object v4, p2, Ld/b/d/i/e;->F:Ld/b/d/i/e$a;

    if-nez v4, :cond_11

    .line 149
    new-instance v4, Ld/b/d/i/e$a;

    invoke-direct {v4, p2}, Ld/b/d/i/e$a;-><init>(Ld/b/d/i/e;)V

    iput-object v4, p2, Ld/b/d/i/e;->F:Ld/b/d/i/e$a;

    .line 150
    :cond_11
    iget-object v4, p2, Ld/b/d/i/e;->A:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v5, p2, Ld/b/d/i/e;->F:Ld/b/d/i/e$a;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    iget-object v4, p2, Ld/b/d/i/e;->A:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v4, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 152
    :cond_12
    iget-object p2, p2, Ld/b/d/i/e;->A:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 153
    :goto_4
    iput-object p2, p1, Ld/b/a/k$j;->h:Landroid/view/View;

    if-eqz p2, :cond_13

    :goto_5
    const/4 p2, 0x1

    goto :goto_7

    :cond_13
    :goto_6
    const/4 p2, 0x0

    :goto_7
    if-eqz p2, :cond_1b

    .line 154
    iget-object p2, p1, Ld/b/a/k$j;->h:Landroid/view/View;

    if-nez p2, :cond_14

    goto :goto_9

    .line 155
    :cond_14
    iget-object p2, p1, Ld/b/a/k$j;->i:Landroid/view/View;

    if-eqz p2, :cond_15

    goto :goto_8

    .line 156
    :cond_15
    iget-object p2, p1, Ld/b/a/k$j;->k:Ld/b/d/i/e;

    invoke-virtual {p2}, Ld/b/d/i/e;->a()Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2}, Landroid/widget/ListAdapter;->getCount()I

    move-result p2

    if-lez p2, :cond_16

    :goto_8
    const/4 p2, 0x1

    goto :goto_a

    :cond_16
    :goto_9
    const/4 p2, 0x0

    :goto_a
    if-nez p2, :cond_17

    goto :goto_c

    .line 157
    :cond_17
    iget-object p2, p1, Ld/b/a/k$j;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_18

    .line 158
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 159
    :cond_18
    iget v4, p1, Ld/b/a/k$j;->b:I

    .line 160
    iget-object v5, p1, Ld/b/a/k$j;->g:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 161
    iget-object v4, p1, Ld/b/a/k$j;->h:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 162
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_19

    .line 163
    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p1, Ld/b/a/k$j;->h:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 164
    :cond_19
    iget-object v4, p1, Ld/b/a/k$j;->g:Landroid/view/ViewGroup;

    iget-object v5, p1, Ld/b/a/k$j;->h:Landroid/view/View;

    invoke-virtual {v4, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object p2, p1, Ld/b/a/k$j;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_1a

    .line 166
    iget-object p2, p1, Ld/b/a/k$j;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :cond_1a
    const/4 v5, -0x2

    .line 167
    :goto_b
    iput-boolean v2, p1, Ld/b/a/k$j;->n:Z

    .line 168
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x2

    iget v7, p1, Ld/b/a/k$j;->d:I

    iget v8, p1, Ld/b/a/k$j;->e:I

    const/16 v9, 0x3ea

    const/high16 v10, 0x820000

    const/4 v11, -0x3

    move-object v4, p2

    invoke-direct/range {v4 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 169
    iget v2, p1, Ld/b/a/k$j;->c:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 170
    iget v2, p1, Ld/b/a/k$j;->f:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 171
    iget-object v2, p1, Ld/b/a/k$j;->g:Landroid/view/ViewGroup;

    invoke-interface {v0, v2, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iput-boolean v1, p1, Ld/b/a/k$j;->o:Z

    :cond_1b
    :goto_c
    return-void
.end method

.method public a(Ld/b/a/k$j;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 195
    iget v0, p1, Ld/b/a/k$j;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/b/a/k;->H:Ld/b/e/c0;

    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v0}, Ld/b/e/c0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object p1, p1, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    invoke-virtual {p0, p1}, Ld/b/a/k;->b(Ld/b/d/i/g;)V

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Ld/b/a/k;->A:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 199
    iget-boolean v2, p1, Ld/b/a/k$j;->o:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Ld/b/a/k$j;->g:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 200
    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 201
    iget p2, p1, Ld/b/a/k$j;->a:I

    invoke-virtual {p0, p2, p1, v1}, Ld/b/a/k;->a(ILd/b/a/k$j;Landroid/view/Menu;)V

    :cond_1
    const/4 p2, 0x0

    .line 202
    iput-boolean p2, p1, Ld/b/a/k$j;->m:Z

    .line 203
    iput-boolean p2, p1, Ld/b/a/k$j;->n:Z

    .line 204
    iput-boolean p2, p1, Ld/b/a/k$j;->o:Z

    .line 205
    iput-object v1, p1, Ld/b/a/k$j;->h:Landroid/view/View;

    const/4 p2, 0x1

    .line 206
    iput-boolean p2, p1, Ld/b/a/k$j;->q:Z

    .line 207
    iget-object p2, p0, Ld/b/a/k;->d0:Ld/b/a/k$j;

    if-ne p2, p1, :cond_2

    .line 208
    iput-object v1, p0, Ld/b/a/k;->d0:Ld/b/a/k$j;

    :cond_2
    return-void
.end method

.method public a(Ld/b/d/i/g;)V
    .locals 5

    .line 173
    iget-object p1, p0, Ld/b/a/k;->H:Ld/b/e/c0;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ld/b/e/c0;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Ld/b/a/k;->A:Landroid/content/Context;

    .line 174
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ld/b/a/k;->H:Ld/b/e/c0;

    .line 175
    invoke-interface {p1}, Ld/b/e/c0;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 176
    :cond_0
    invoke-virtual {p0}, Ld/b/a/k;->j()Landroid/view/Window$Callback;

    move-result-object p1

    .line 177
    iget-object v2, p0, Ld/b/a/k;->H:Ld/b/e/c0;

    invoke-interface {v2}, Ld/b/e/c0;->b()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_1

    .line 178
    iget-object v0, p0, Ld/b/a/k;->H:Ld/b/e/c0;

    invoke-interface {v0}, Ld/b/e/c0;->c()Z

    .line 179
    iget-boolean v0, p0, Ld/b/a/k;->i0:Z

    if-nez v0, :cond_4

    .line 180
    invoke-virtual {p0, v1}, Ld/b/a/k;->d(I)Ld/b/a/k$j;

    move-result-object v0

    .line 181
    iget-object v0, v0, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    .line 182
    iget-boolean v2, p0, Ld/b/a/k;->i0:Z

    if-nez v2, :cond_4

    .line 183
    iget-boolean v2, p0, Ld/b/a/k;->p0:Z

    if-eqz v2, :cond_2

    iget v2, p0, Ld/b/a/k;->q0:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Ld/b/a/k;->B:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Ld/b/a/k;->r0:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 185
    iget-object v0, p0, Ld/b/a/k;->r0:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 186
    :cond_2
    invoke-virtual {p0, v1}, Ld/b/a/k;->d(I)Ld/b/a/k$j;

    move-result-object v0

    .line 187
    iget-object v2, v0, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    if-eqz v2, :cond_4

    iget-boolean v4, v0, Ld/b/a/k$j;->r:Z

    if-nez v4, :cond_4

    iget-object v4, v0, Ld/b/a/k$j;->i:Landroid/view/View;

    .line 188
    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 189
    iget-object v0, v0, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 190
    iget-object p1, p0, Ld/b/a/k;->H:Ld/b/e/c0;

    invoke-interface {p1}, Ld/b/e/c0;->d()Z

    goto :goto_0

    .line 191
    :cond_3
    invoke-virtual {p0, v1}, Ld/b/a/k;->d(I)Ld/b/a/k$j;

    move-result-object p1

    .line 192
    iput-boolean v0, p1, Ld/b/a/k$j;->q:Z

    .line 193
    invoke-virtual {p0, p1, v1}, Ld/b/a/k;->a(Ld/b/a/k$j;Z)V

    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0, p1, v0}, Ld/b/a/k;->a(Ld/b/a/k$j;Landroid/view/KeyEvent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 37
    iput-object p1, p0, Ld/b/a/k;->G:Ljava/lang/CharSequence;

    .line 38
    iget-object v0, p0, Ld/b/a/k;->H:Ld/b/e/c0;

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {v0, p1}, Ld/b/e/c0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Ld/b/a/k;->E:Ld/b/a/a;

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {v0, p1}, Ld/b/a/a;->b(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Ld/b/a/k;->S:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 43
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(I)Z
    .locals 5

    const-string v0, "AppCompatDelegate"

    const/16 v1, 0x8

    const/16 v2, 0x6d

    const/16 v3, 0x6c

    if-ne p1, v1, :cond_0

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    .line 226
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6c

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    .line 227
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6d

    .line 228
    :cond_1
    :goto_0
    iget-boolean v0, p0, Ld/b/a/k;->a0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ne p1, v3, :cond_2

    return v1

    .line 229
    :cond_2
    iget-boolean v0, p0, Ld/b/a/k;->W:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-ne p1, v4, :cond_3

    .line 230
    iput-boolean v1, p0, Ld/b/a/k;->W:Z

    :cond_3
    if-eq p1, v4, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x5

    if-eq p1, v0, :cond_7

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    .line 231
    iget-object v0, p0, Ld/b/a/k;->B:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p1

    return p1

    .line 232
    :cond_4
    invoke-virtual {p0}, Ld/b/a/k;->m()V

    .line 233
    iput-boolean v4, p0, Ld/b/a/k;->X:Z

    return v4

    .line 234
    :cond_5
    invoke-virtual {p0}, Ld/b/a/k;->m()V

    .line 235
    iput-boolean v4, p0, Ld/b/a/k;->W:Z

    return v4

    .line 236
    :cond_6
    invoke-virtual {p0}, Ld/b/a/k;->m()V

    .line 237
    iput-boolean v4, p0, Ld/b/a/k;->Y:Z

    return v4

    .line 238
    :cond_7
    invoke-virtual {p0}, Ld/b/a/k;->m()V

    .line 239
    iput-boolean v4, p0, Ld/b/a/k;->V:Z

    return v4

    .line 240
    :cond_8
    invoke-virtual {p0}, Ld/b/a/k;->m()V

    .line 241
    iput-boolean v4, p0, Ld/b/a/k;->U:Z

    return v4

    .line 242
    :cond_9
    invoke-virtual {p0}, Ld/b/a/k;->m()V

    .line 243
    iput-boolean v4, p0, Ld/b/a/k;->a0:Z

    return v4
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 48
    iget-object v0, p0, Ld/b/a/k;->z:Ljava/lang/Object;

    instance-of v1, v0, Ld/i/i/c$a;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    instance-of v0, v0, Ld/b/a/q;

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    iget-object v0, p0, Ld/b/a/k;->B:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    invoke-static {v0, p1}, Ld/i/i/n;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 51
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_2

    .line 52
    iget-object v0, p0, Ld/b/a/k;->C:Ld/b/a/k$e;

    .line 53
    iget-object v0, v0, Ld/b/d/h;->x:Landroid/view/Window$Callback;

    .line 54
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 55
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 56
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x4

    if-eqz v3, :cond_8

    if-eq v0, v5, :cond_5

    if-eq v0, v1, :cond_4

    goto :goto_2

    .line 57
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_16

    .line 58
    invoke-virtual {p0, v4}, Ld/b/a/k;->d(I)Ld/b/a/k$j;

    move-result-object v0

    .line 59
    iget-boolean v1, v0, Ld/b/a/k$j;->o:Z

    if-nez v1, :cond_16

    .line 60
    invoke-virtual {p0, v0, p1}, Ld/b/a/k;->b(Ld/b/a/k$j;Landroid/view/KeyEvent;)Z

    goto/16 :goto_8

    .line 61
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Ld/b/a/k;->e0:Z

    :cond_7
    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_8
    if-eq v0, v5, :cond_12

    if-eq v0, v1, :cond_9

    goto :goto_2

    .line 62
    :cond_9
    iget-object v0, p0, Ld/b/a/k;->K:Ld/b/d/a;

    if-eqz v0, :cond_a

    goto/16 :goto_8

    .line 63
    :cond_a
    invoke-virtual {p0, v4}, Ld/b/a/k;->d(I)Ld/b/a/k$j;

    move-result-object v0

    .line 64
    iget-object v1, p0, Ld/b/a/k;->H:Ld/b/e/c0;

    if-eqz v1, :cond_c

    .line 65
    invoke-interface {v1}, Ld/b/e/c0;->f()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Ld/b/a/k;->A:Landroid/content/Context;

    .line 66
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_c

    .line 67
    iget-object v1, p0, Ld/b/a/k;->H:Ld/b/e/c0;

    invoke-interface {v1}, Ld/b/e/c0;->b()Z

    move-result v1

    if-nez v1, :cond_b

    .line 68
    iget-boolean v1, p0, Ld/b/a/k;->i0:Z

    if-nez v1, :cond_f

    invoke-virtual {p0, v0, p1}, Ld/b/a/k;->b(Ld/b/a/k$j;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 69
    iget-object p1, p0, Ld/b/a/k;->H:Ld/b/e/c0;

    invoke-interface {p1}, Ld/b/e/c0;->d()Z

    move-result p1

    goto :goto_5

    .line 70
    :cond_b
    iget-object p1, p0, Ld/b/a/k;->H:Ld/b/e/c0;

    invoke-interface {p1}, Ld/b/e/c0;->c()Z

    move-result p1

    goto :goto_5

    .line 71
    :cond_c
    iget-boolean v1, v0, Ld/b/a/k$j;->o:Z

    if-nez v1, :cond_10

    iget-boolean v1, v0, Ld/b/a/k$j;->n:Z

    if-eqz v1, :cond_d

    goto :goto_4

    .line 72
    :cond_d
    iget-boolean v1, v0, Ld/b/a/k$j;->m:Z

    if-eqz v1, :cond_f

    .line 73
    iget-boolean v1, v0, Ld/b/a/k$j;->r:Z

    if-eqz v1, :cond_e

    .line 74
    iput-boolean v4, v0, Ld/b/a/k$j;->m:Z

    .line 75
    invoke-virtual {p0, v0, p1}, Ld/b/a/k;->b(Ld/b/a/k$j;Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_3

    :cond_e
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_f

    .line 76
    invoke-virtual {p0, v0, p1}, Ld/b/a/k;->a(Ld/b/a/k$j;Landroid/view/KeyEvent;)V

    const/4 p1, 0x1

    goto :goto_5

    :cond_f
    const/4 p1, 0x0

    goto :goto_5

    .line 77
    :cond_10
    :goto_4
    iget-boolean p1, v0, Ld/b/a/k$j;->o:Z

    .line 78
    invoke-virtual {p0, v0, v2}, Ld/b/a/k;->a(Ld/b/a/k$j;Z)V

    :goto_5
    if-eqz p1, :cond_16

    .line 79
    iget-object p1, p0, Ld/b/a/k;->A:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_11

    .line 80
    invoke-virtual {p1, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_8

    :cond_11
    const-string p1, "AppCompatDelegate"

    const-string v0, "Couldn\'t get audio manager"

    .line 81
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 82
    :cond_12
    iget-boolean p1, p0, Ld/b/a/k;->e0:Z

    .line 83
    iput-boolean v4, p0, Ld/b/a/k;->e0:Z

    .line 84
    invoke-virtual {p0, v4}, Ld/b/a/k;->d(I)Ld/b/a/k$j;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 85
    iget-boolean v1, v0, Ld/b/a/k$j;->o:Z

    if-eqz v1, :cond_13

    if-nez p1, :cond_16

    .line 86
    invoke-virtual {p0, v0, v2}, Ld/b/a/k;->a(Ld/b/a/k$j;Z)V

    goto :goto_8

    .line 87
    :cond_13
    iget-object p1, p0, Ld/b/a/k;->K:Ld/b/d/a;

    if-eqz p1, :cond_14

    .line 88
    invoke-virtual {p1}, Ld/b/d/a;->a()V

    goto :goto_6

    .line 89
    :cond_14
    invoke-virtual {p0}, Ld/b/a/k;->k()V

    .line 90
    iget-object p1, p0, Ld/b/a/k;->E:Ld/b/a/a;

    if-eqz p1, :cond_15

    .line 91
    invoke-virtual {p1}, Ld/b/a/a;->b()Z

    move-result p1

    if-eqz p1, :cond_15

    :goto_6
    const/4 p1, 0x1

    goto :goto_7

    :cond_15
    const/4 p1, 0x0

    :goto_7
    if-eqz p1, :cond_7

    :cond_16
    :goto_8
    return v2
.end method

.method public final a(Ld/b/a/k$j;ILandroid/view/KeyEvent;I)Z
    .locals 2

    .line 221
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 222
    :cond_0
    iget-boolean v0, p1, Ld/b/a/k$j;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Ld/b/a/k;->b(Ld/b/a/k$j;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p1, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    if-eqz v0, :cond_2

    .line 223
    invoke-virtual {v0, p2, p3, p4}, Ld/b/d/i/g;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    const/4 p2, 0x1

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_3

    .line 224
    iget-object p3, p0, Ld/b/a/k;->H:Ld/b/e/c0;

    if-nez p3, :cond_3

    .line 225
    invoke-virtual {p0, p1, p2}, Ld/b/a/k;->a(Ld/b/a/k$j;Z)V

    :cond_3
    return v1
.end method

.method public a(Ld/b/d/i/g;Landroid/view/MenuItem;)Z
    .locals 2

    .line 44
    invoke-virtual {p0}, Ld/b/a/k;->j()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-boolean v1, p0, Ld/b/a/k;->i0:Z

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {p1}, Ld/b/d/i/g;->c()Ld/b/d/i/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld/b/a/k;->a(Landroid/view/Menu;)Ld/b/a/k$j;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    iget p1, p1, Ld/b/a/k$j;->a:I

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Z)Z
    .locals 12

    .line 244
    iget-boolean v0, p0, Ld/b/a/k;->i0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 245
    :cond_0
    iget v0, p0, Ld/b/a/k;->j0:I

    const/16 v2, -0x64

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, -0x64

    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/16 v6, 0x17

    const/4 v7, 0x1

    if-eq v0, v2, :cond_7

    if-eq v0, v3, :cond_6

    if-eqz v0, :cond_4

    if-eq v0, v7, :cond_6

    if-eq v0, v5, :cond_6

    if-ne v0, v4, :cond_3

    .line 246
    iget-object v2, p0, Ld/b/a/k;->o0:Ld/b/a/k$g;

    if-nez v2, :cond_2

    .line 247
    new-instance v2, Ld/b/a/k$f;

    iget-object v3, p0, Ld/b/a/k;->A:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Ld/b/a/k$f;-><init>(Ld/b/a/k;Landroid/content/Context;)V

    iput-object v2, p0, Ld/b/a/k;->o0:Ld/b/a/k$g;

    .line 248
    :cond_2
    iget-object v2, p0, Ld/b/a/k;->o0:Ld/b/a/k$g;

    .line 249
    invoke-virtual {v2}, Ld/b/a/k$g;->c()I

    move-result v3

    goto :goto_1

    .line 250
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 251
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_5

    .line 252
    iget-object v2, p0, Ld/b/a/k;->A:Landroid/content/Context;

    const-class v8, Landroid/app/UiModeManager;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/UiModeManager;

    .line 253
    invoke-virtual {v2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    .line 254
    :cond_5
    invoke-virtual {p0}, Ld/b/a/k;->i()Ld/b/a/k$g;

    move-result-object v2

    invoke-virtual {v2}, Ld/b/a/k$g;->c()I

    move-result v3

    goto :goto_1

    :cond_6
    move v3, v0

    .line 255
    :cond_7
    :goto_1
    iget-object v2, p0, Ld/b/a/k;->A:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 256
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-eq v3, v7, :cond_9

    if-eq v3, v5, :cond_8

    move v3, v2

    goto :goto_2

    :cond_8
    const/16 v3, 0x20

    goto :goto_2

    :cond_9
    const/16 v3, 0x10

    .line 257
    :goto_2
    iget-boolean v5, p0, Ld/b/a/k;->m0:Z

    const-string v8, "AppCompatDelegate"

    if-nez v5, :cond_c

    iget-object v5, p0, Ld/b/a/k;->z:Ljava/lang/Object;

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_c

    .line 258
    iget-object v5, p0, Ld/b/a/k;->A:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-nez v5, :cond_a

    const/4 v5, 0x0

    goto :goto_5

    .line 259
    :cond_a
    :try_start_0
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, p0, Ld/b/a/k;->A:Landroid/content/Context;

    iget-object v11, p0, Ld/b/a/k;->z:Ljava/lang/Object;

    .line 260
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    invoke-virtual {v5, v9, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 262
    iget v5, v5, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    goto :goto_3

    :cond_b
    const/4 v5, 0x0

    :goto_3
    iput-boolean v5, p0, Ld/b/a/k;->l0:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    const-string v9, "Exception while getting ActivityInfo"

    .line 263
    invoke-static {v8, v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    iput-boolean v1, p0, Ld/b/a/k;->l0:Z

    .line 265
    :cond_c
    :goto_4
    iput-boolean v7, p0, Ld/b/a/k;->m0:Z

    .line 266
    iget-boolean v5, p0, Ld/b/a/k;->l0:Z

    .line 267
    :goto_5
    sget-boolean v9, Ld/b/a/k;->A0:Z

    if-nez v9, :cond_d

    if-eq v3, v2, :cond_e

    :cond_d
    if-nez v5, :cond_e

    iget-boolean v2, p0, Ld/b/a/k;->f0:Z

    if-nez v2, :cond_e

    iget-object v2, p0, Ld/b/a/k;->z:Ljava/lang/Object;

    instance-of v2, v2, Landroid/view/ContextThemeWrapper;

    if-eqz v2, :cond_e

    .line 268
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 269
    iget v9, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v9, v9, -0x31

    or-int/2addr v9, v3

    iput v9, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 270
    :try_start_1
    iget-object v9, p0, Ld/b/a/k;->z:Ljava/lang/Object;

    check-cast v9, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v9, v2}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x1

    goto :goto_6

    :catch_1
    move-exception v2

    const-string v9, "updateForNightMode. Calling applyOverrideConfiguration() failed with an exception. Will fall back to using Resources.updateConfiguration()"

    .line 271
    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    :cond_e
    :goto_6
    iget-object v2, p0, Ld/b/a/k;->A:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-nez v1, :cond_f

    if-eq v2, v3, :cond_f

    if-eqz p1, :cond_f

    if-nez v5, :cond_f

    .line 273
    iget-boolean p1, p0, Ld/b/a/k;->f0:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Ld/b/a/k;->z:Ljava/lang/Object;

    instance-of v8, p1, Landroid/app/Activity;

    if-eqz v8, :cond_f

    .line 274
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Ld/i/a/a;->d(Landroid/app/Activity;)V

    const/4 v1, 0x1

    :cond_f
    const/4 p1, 0x0

    if-nez v1, :cond_1f

    if-eq v2, v3, :cond_1f

    .line 275
    iget-object v1, p0, Ld/b/a/k;->A:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 276
    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 277
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v8, v8, -0x31

    or-int/2addr v3, v8

    iput v3, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 278
    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 279
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-ge v3, v8, :cond_1c

    const/16 v8, 0x1c

    if-lt v3, v8, :cond_10

    goto/16 :goto_f

    :cond_10
    const/16 v8, 0x18

    const-string v9, "mDrawableCache"

    const-string v10, "ResourcesFlusher"

    if-lt v3, v8, :cond_16

    .line 280
    sget-boolean v3, Ld/b/a/r;->h:Z

    if-nez v3, :cond_11

    .line 281
    :try_start_2
    const-class v3, Landroid/content/res/Resources;

    const-string v8, "mResourcesImpl"

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Ld/b/a/r;->g:Ljava/lang/reflect/Field;

    .line 282
    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception v3

    const-string v8, "Could not retrieve Resources#mResourcesImpl field"

    .line 283
    invoke-static {v10, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    :goto_7
    sput-boolean v7, Ld/b/a/r;->h:Z

    .line 285
    :cond_11
    sget-object v3, Ld/b/a/r;->g:Ljava/lang/reflect/Field;

    if-nez v3, :cond_12

    goto/16 :goto_f

    .line 286
    :cond_12
    :try_start_3
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    :catch_3
    move-exception v1

    const-string v3, "Could not retrieve value from Resources#mResourcesImpl"

    .line 287
    invoke-static {v10, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, p1

    :goto_8
    if-nez v1, :cond_13

    goto/16 :goto_f

    .line 288
    :cond_13
    sget-boolean v3, Ld/b/a/r;->b:Z

    if-nez v3, :cond_14

    .line 289
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Ld/b/a/r;->a:Ljava/lang/reflect/Field;

    .line 290
    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_9

    :catch_4
    move-exception v3

    const-string v8, "Could not retrieve ResourcesImpl#mDrawableCache field"

    .line 291
    invoke-static {v10, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    :goto_9
    sput-boolean v7, Ld/b/a/r;->b:Z

    .line 293
    :cond_14
    sget-object v3, Ld/b/a/r;->a:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_15

    .line 294
    :try_start_5
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_a

    :catch_5
    move-exception v1

    const-string v3, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    .line 295
    invoke-static {v10, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    move-object v1, p1

    :goto_a
    if-eqz v1, :cond_1c

    .line 296
    invoke-static {v1}, Ld/b/a/r;->b(Ljava/lang/Object;)V

    goto :goto_f

    :cond_16
    const-string v8, "Could not retrieve Resources#mDrawableCache field"

    const-string v11, "Could not retrieve value from Resources#mDrawableCache"

    if-lt v3, v6, :cond_1a

    .line 297
    sget-boolean v3, Ld/b/a/r;->b:Z

    if-nez v3, :cond_17

    .line 298
    :try_start_6
    const-class v3, Landroid/content/res/Resources;

    invoke-virtual {v3, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Ld/b/a/r;->a:Ljava/lang/reflect/Field;

    .line 299
    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_b

    :catch_6
    move-exception v3

    .line 300
    invoke-static {v10, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    :goto_b
    sput-boolean v7, Ld/b/a/r;->b:Z

    .line 302
    :cond_17
    sget-object v3, Ld/b/a/r;->a:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_18

    .line 303
    :try_start_7
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_c

    :catch_7
    move-exception v1

    .line 304
    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    move-object v1, p1

    :goto_c
    if-nez v1, :cond_19

    goto :goto_f

    .line 305
    :cond_19
    invoke-static {v1}, Ld/b/a/r;->b(Ljava/lang/Object;)V

    goto :goto_f

    .line 306
    :cond_1a
    sget-boolean v3, Ld/b/a/r;->b:Z

    if-nez v3, :cond_1b

    .line 307
    :try_start_8
    const-class v3, Landroid/content/res/Resources;

    invoke-virtual {v3, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Ld/b/a/r;->a:Ljava/lang/reflect/Field;

    .line 308
    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_8
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_d

    :catch_8
    move-exception v3

    .line 309
    invoke-static {v10, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    :goto_d
    sput-boolean v7, Ld/b/a/r;->b:Z

    .line 311
    :cond_1b
    sget-object v3, Ld/b/a/r;->a:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_1c

    .line 312
    :try_start_9
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_e

    :catch_9
    move-exception v1

    .line 313
    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, p1

    :goto_e
    if-eqz v1, :cond_1c

    .line 314
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 315
    :cond_1c
    :goto_f
    iget v1, p0, Ld/b/a/k;->k0:I

    if-eqz v1, :cond_1d

    .line 316
    iget-object v3, p0, Ld/b/a/k;->A:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->setTheme(I)V

    .line 317
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_1d

    .line 318
    iget-object v1, p0, Ld/b/a/k;->A:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iget v3, p0, Ld/b/a/k;->k0:I

    invoke-virtual {v1, v3, v7}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_1d
    if-eqz v5, :cond_20

    .line 319
    iget-object v1, p0, Ld/b/a/k;->z:Ljava/lang/Object;

    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_20

    .line 320
    check-cast v1, Landroid/app/Activity;

    .line 321
    instance-of v3, v1, Ld/o/l;

    if-eqz v3, :cond_1e

    .line 322
    move-object v3, v1

    check-cast v3, Ld/o/l;

    invoke-interface {v3}, Ld/o/l;->getLifecycle()Ld/o/g;

    move-result-object v3

    .line 323
    check-cast v3, Ld/o/m;

    .line 324
    iget-object v3, v3, Ld/o/m;->b:Ld/o/g$b;

    .line 325
    sget-object v5, Ld/o/g$b;->STARTED:Ld/o/g$b;

    invoke-virtual {v3, v5}, Ld/o/g$b;->isAtLeast(Ld/o/g$b;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 326
    invoke-virtual {v1, v2}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_10

    .line 327
    :cond_1e
    iget-boolean v3, p0, Ld/b/a/k;->h0:Z

    if-eqz v3, :cond_20

    .line 328
    invoke-virtual {v1, v2}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_10

    :cond_1f
    move v7, v1

    :cond_20
    :goto_10
    if-eqz v7, :cond_22

    .line 329
    iget-object v1, p0, Ld/b/a/k;->z:Ljava/lang/Object;

    instance-of v2, v1, Ld/b/a/h;

    if-eqz v2, :cond_22

    .line 330
    check-cast v1, Ld/b/a/h;

    if-eqz v1, :cond_21

    goto :goto_11

    .line 331
    :cond_21
    throw p1

    :cond_22
    :goto_11
    if-nez v0, :cond_23

    .line 332
    invoke-virtual {p0}, Ld/b/a/k;->i()Ld/b/a/k$g;

    move-result-object p1

    invoke-virtual {p1}, Ld/b/a/k$g;->e()V

    goto :goto_12

    .line 333
    :cond_23
    iget-object p1, p0, Ld/b/a/k;->n0:Ld/b/a/k$g;

    if-eqz p1, :cond_24

    .line 334
    invoke-virtual {p1}, Ld/b/a/k$g;->a()V

    :cond_24
    :goto_12
    if-ne v0, v4, :cond_26

    .line 335
    iget-object p1, p0, Ld/b/a/k;->o0:Ld/b/a/k$g;

    if-nez p1, :cond_25

    .line 336
    new-instance p1, Ld/b/a/k$f;

    iget-object v0, p0, Ld/b/a/k;->A:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Ld/b/a/k$f;-><init>(Ld/b/a/k;Landroid/content/Context;)V

    iput-object p1, p0, Ld/b/a/k;->o0:Ld/b/a/k$g;

    .line 337
    :cond_25
    iget-object p1, p0, Ld/b/a/k;->o0:Ld/b/a/k$g;

    .line 338
    invoke-virtual {p1}, Ld/b/a/k$g;->e()V

    goto :goto_13

    .line 339
    :cond_26
    iget-object p1, p0, Ld/b/a/k;->o0:Ld/b/a/k$g;

    if-eqz p1, :cond_27

    .line 340
    invoke-virtual {p1}, Ld/b/a/k$g;->a()V

    :cond_27
    :goto_13
    return v7
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/b/a/k;->k()V

    .line 2
    iget-object v0, p0, Ld/b/a/k;->E:Ld/b/a/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ld/b/a/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Ld/b/a/k;->e(I)V

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 5
    invoke-virtual {p0}, Ld/b/a/k;->f()V

    .line 6
    iget-object v0, p0, Ld/b/a/k;->R:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    iget-object v1, p0, Ld/b/a/k;->A:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    iget-object p1, p0, Ld/b/a/k;->C:Ld/b/a/k$e;

    .line 10
    iget-object p1, p1, Ld/b/d/h;->x:Landroid/view/Window$Callback;

    .line 11
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 12
    invoke-virtual {p0}, Ld/b/a/k;->f()V

    .line 13
    iget-object v0, p0, Ld/b/a/k;->R:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object p1, p0, Ld/b/a/k;->C:Ld/b/a/k$e;

    .line 17
    iget-object p1, p1, Ld/b/d/h;->x:Landroid/view/Window$Callback;

    .line 18
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public b(Ld/b/d/i/g;)V
    .locals 2

    .line 80
    iget-boolean v0, p0, Ld/b/a/k;->b0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Ld/b/a/k;->b0:Z

    .line 82
    iget-object v0, p0, Ld/b/a/k;->H:Ld/b/e/c0;

    invoke-interface {v0}, Ld/b/e/c0;->g()V

    .line 83
    invoke-virtual {p0}, Ld/b/a/k;->j()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    iget-boolean v1, p0, Ld/b/a/k;->i0:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    .line 85
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Ld/b/a/k;->b0:Z

    return-void
.end method

.method public final b(Ld/b/a/k$j;Landroid/view/KeyEvent;)Z
    .locals 10

    .line 19
    iget-boolean v0, p0, Ld/b/a/k;->i0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 20
    :cond_0
    iget-boolean v0, p1, Ld/b/a/k$j;->m:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 21
    :cond_1
    iget-object v0, p0, Ld/b/a/k;->d0:Ld/b/a/k$j;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    .line 22
    invoke-virtual {p0, v0, v1}, Ld/b/a/k;->a(Ld/b/a/k$j;Z)V

    .line 23
    :cond_2
    invoke-virtual {p0}, Ld/b/a/k;->j()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 24
    iget v3, p1, Ld/b/a/k$j;->a:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Ld/b/a/k$j;->i:Landroid/view/View;

    .line 25
    :cond_3
    iget v3, p1, Ld/b/a/k$j;->a:I

    const/16 v4, 0x6c

    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_6

    .line 26
    iget-object v5, p0, Ld/b/a/k;->H:Ld/b/e/c0;

    if-eqz v5, :cond_6

    .line 27
    invoke-interface {v5}, Ld/b/e/c0;->e()V

    .line 28
    :cond_6
    iget-object v5, p1, Ld/b/a/k$j;->i:Landroid/view/View;

    if-nez v5, :cond_19

    if-eqz v3, :cond_7

    .line 29
    iget-object v5, p0, Ld/b/a/k;->E:Ld/b/a/a;

    .line 30
    instance-of v5, v5, Ld/b/a/s;

    if-nez v5, :cond_19

    .line 31
    :cond_7
    iget-object v5, p1, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    iget-boolean v5, p1, Ld/b/a/k$j;->r:Z

    if-eqz v5, :cond_13

    .line 32
    :cond_8
    iget-object v5, p1, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    if-nez v5, :cond_e

    .line 33
    iget-object v5, p0, Ld/b/a/k;->A:Landroid/content/Context;

    .line 34
    iget v7, p1, Ld/b/a/k$j;->a:I

    if-eqz v7, :cond_9

    if-ne v7, v4, :cond_d

    :cond_9
    iget-object v4, p0, Ld/b/a/k;->H:Ld/b/e/c0;

    if-eqz v4, :cond_d

    .line 35
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 36
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 37
    sget v8, Landroidx/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v7, v8, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 38
    iget v8, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_a

    .line 39
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 40
    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 41
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v9, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 42
    sget v9, Landroidx/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_2

    .line 43
    :cond_a
    sget v8, Landroidx/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v7, v8, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v8, v6

    .line 44
    :goto_2
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_c

    if-nez v8, :cond_b

    .line 45
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 46
    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 47
    :cond_b
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_c
    if-eqz v8, :cond_d

    .line 48
    new-instance v4, Ld/b/d/c;

    invoke-direct {v4, v5, v1}, Ld/b/d/c;-><init>(Landroid/content/Context;I)V

    .line 49
    invoke-virtual {v4}, Ld/b/d/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v5, v4

    .line 50
    :cond_d
    new-instance v4, Ld/b/d/i/g;

    invoke-direct {v4, v5}, Ld/b/d/i/g;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p0, v4, Ld/b/d/i/g;->e:Ld/b/d/i/g$a;

    .line 52
    invoke-virtual {p1, v4}, Ld/b/a/k$j;->a(Ld/b/d/i/g;)V

    .line 53
    iget-object v4, p1, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    if-nez v4, :cond_e

    return v1

    :cond_e
    if-eqz v3, :cond_10

    .line 54
    iget-object v4, p0, Ld/b/a/k;->H:Ld/b/e/c0;

    if-eqz v4, :cond_10

    .line 55
    iget-object v4, p0, Ld/b/a/k;->I:Ld/b/a/k$c;

    if-nez v4, :cond_f

    .line 56
    new-instance v4, Ld/b/a/k$c;

    invoke-direct {v4, p0}, Ld/b/a/k$c;-><init>(Ld/b/a/k;)V

    iput-object v4, p0, Ld/b/a/k;->I:Ld/b/a/k$c;

    .line 57
    :cond_f
    iget-object v4, p0, Ld/b/a/k;->H:Ld/b/e/c0;

    iget-object v5, p1, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    iget-object v7, p0, Ld/b/a/k;->I:Ld/b/a/k$c;

    invoke-interface {v4, v5, v7}, Ld/b/e/c0;->a(Landroid/view/Menu;Ld/b/d/i/m$a;)V

    .line 58
    :cond_10
    iget-object v4, p1, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    invoke-virtual {v4}, Ld/b/d/i/g;->j()V

    .line 59
    iget v4, p1, Ld/b/a/k$j;->a:I

    iget-object v5, p1, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 60
    invoke-virtual {p1, v6}, Ld/b/a/k$j;->a(Ld/b/d/i/g;)V

    if-eqz v3, :cond_11

    .line 61
    iget-object p1, p0, Ld/b/a/k;->H:Ld/b/e/c0;

    if-eqz p1, :cond_11

    .line 62
    iget-object p2, p0, Ld/b/a/k;->I:Ld/b/a/k$c;

    invoke-interface {p1, v6, p2}, Ld/b/e/c0;->a(Landroid/view/Menu;Ld/b/d/i/m$a;)V

    :cond_11
    return v1

    .line 63
    :cond_12
    iput-boolean v1, p1, Ld/b/a/k$j;->r:Z

    .line 64
    :cond_13
    iget-object v4, p1, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    invoke-virtual {v4}, Ld/b/d/i/g;->j()V

    .line 65
    iget-object v4, p1, Ld/b/a/k$j;->s:Landroid/os/Bundle;

    if-eqz v4, :cond_14

    .line 66
    iget-object v5, p1, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    invoke-virtual {v5, v4}, Ld/b/d/i/g;->a(Landroid/os/Bundle;)V

    .line 67
    iput-object v6, p1, Ld/b/a/k$j;->s:Landroid/os/Bundle;

    .line 68
    :cond_14
    iget-object v4, p1, Ld/b/a/k$j;->i:Landroid/view/View;

    iget-object v5, p1, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    invoke-interface {v0, v1, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_16

    if-eqz v3, :cond_15

    .line 69
    iget-object p2, p0, Ld/b/a/k;->H:Ld/b/e/c0;

    if-eqz p2, :cond_15

    .line 70
    iget-object v0, p0, Ld/b/a/k;->I:Ld/b/a/k$c;

    invoke-interface {p2, v6, v0}, Ld/b/e/c0;->a(Landroid/view/Menu;Ld/b/d/i/m$a;)V

    .line 71
    :cond_15
    iget-object p1, p1, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    invoke-virtual {p1}, Ld/b/d/i/g;->i()V

    return v1

    :cond_16
    if-eqz p2, :cond_17

    .line 72
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_3

    :cond_17
    const/4 p2, -0x1

    .line 73
    :goto_3
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    .line 74
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_18

    const/4 p2, 0x1

    goto :goto_4

    :cond_18
    const/4 p2, 0x0

    :goto_4
    iput-boolean p2, p1, Ld/b/a/k$j;->p:Z

    .line 75
    iget-object v0, p1, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    invoke-virtual {v0, p2}, Ld/b/d/i/g;->setQwertyMode(Z)V

    .line 76
    iget-object p2, p1, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    invoke-virtual {p2}, Ld/b/d/i/g;->i()V

    .line 77
    :cond_19
    iput-boolean v2, p1, Ld/b/a/k$j;->m:Z

    .line 78
    iput-boolean v1, p1, Ld/b/a/k$j;->n:Z

    .line 79
    iput-object p1, p0, Ld/b/a/k;->d0:Ld/b/a/k$j;

    return v2
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ld/b/a/k;->h0:Z

    .line 2
    invoke-static {p0}, Ld/b/a/j;->b(Ld/b/a/j;)V

    .line 3
    invoke-virtual {p0}, Ld/b/a/k;->k()V

    .line 4
    iget-object v1, p0, Ld/b/a/k;->E:Ld/b/a/a;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Ld/b/a/a;->d(Z)V

    .line 6
    :cond_0
    iget-object v0, p0, Ld/b/a/k;->z:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Ld/b/a/k;->n0:Ld/b/a/k$g;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Ld/b/a/k$g;->a()V

    .line 9
    :cond_1
    iget-object v0, p0, Ld/b/a/k;->o0:Ld/b/a/k$g;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Ld/b/a/k$g;->a()V

    :cond_2
    return-void
.end method

.method public c(I)V
    .locals 3

    .line 11
    invoke-virtual {p0, p1}, Ld/b/a/k;->d(I)Ld/b/a/k$j;

    move-result-object v0

    .line 12
    iget-object v1, v0, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    if-eqz v1, :cond_1

    .line 13
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14
    iget-object v2, v0, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    invoke-virtual {v2, v1}, Ld/b/d/i/g;->b(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 16
    iput-object v1, v0, Ld/b/a/k$j;->s:Landroid/os/Bundle;

    .line 17
    :cond_0
    iget-object v1, v0, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    invoke-virtual {v1}, Ld/b/d/i/g;->j()V

    .line 18
    iget-object v1, v0, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    invoke-virtual {v1}, Ld/b/d/i/g;->clear()V

    :cond_1
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, v0, Ld/b/a/k$j;->r:Z

    .line 20
    iput-boolean v1, v0, Ld/b/a/k$j;->q:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    .line 21
    :cond_2
    iget-object p1, p0, Ld/b/a/k;->H:Ld/b/e/c0;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Ld/b/a/k;->d(I)Ld/b/a/k$j;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 23
    iput-boolean p1, v0, Ld/b/a/k$j;->m:Z

    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, v0, p1}, Ld/b/a/k;->b(Ld/b/a/k$j;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public d(I)Ld/b/a/k$j;
    .locals 4

    .line 1
    iget-object v0, p0, Ld/b/a/k;->c0:[Ld/b/a/k$j;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 2
    new-array v1, v1, [Ld/b/a/k$j;

    if-eqz v0, :cond_1

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    :cond_1
    iput-object v1, p0, Ld/b/a/k;->c0:[Ld/b/a/k$j;

    move-object v0, v1

    .line 5
    :cond_2
    aget-object v1, v0, p1

    if-nez v1, :cond_3

    .line 6
    new-instance v1, Ld/b/a/k$j;

    invoke-direct {v1, p1}, Ld/b/a/k$j;-><init>(I)V

    aput-object v1, v0, p1

    :cond_3
    return-object v1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Ld/b/a/k;->a(Z)Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/a/k;->O:Ld/i/i/s;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ld/i/i/s;->a()V

    :cond_0
    return-void
.end method

.method public final e(I)V
    .locals 2

    .line 3
    iget v0, p0, Ld/b/a/k;->q0:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Ld/b/a/k;->q0:I

    .line 4
    iget-boolean p1, p0, Ld/b/a/k;->p0:Z

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Ld/b/a/k;->B:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Ld/b/a/k;->r0:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Ld/i/i/n;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 6
    iput-boolean v1, p0, Ld/b/a/k;->p0:Z

    :cond_0
    return-void
.end method

.method public f(I)I
    .locals 8

    .line 104
    iget-object v0, p0, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 105
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_9

    .line 106
    iget-object v0, p0, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    .line 107
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 108
    iget-object v2, p0, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isShown()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    .line 109
    iget-object v2, p0, Ld/b/a/k;->t0:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 110
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Ld/b/a/k;->t0:Landroid/graphics/Rect;

    .line 111
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Ld/b/a/k;->u0:Landroid/graphics/Rect;

    .line 112
    :cond_0
    iget-object v2, p0, Ld/b/a/k;->t0:Landroid/graphics/Rect;

    .line 113
    iget-object v4, p0, Ld/b/a/k;->u0:Landroid/graphics/Rect;

    .line 114
    invoke-virtual {v2, v1, p1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 115
    iget-object v5, p0, Ld/b/a/k;->R:Landroid/view/ViewGroup;

    invoke-static {v5, v2, v4}, Ld/b/e/d1;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 116
    iget v2, v4, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_1

    move v2, p1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 117
    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v2, :cond_4

    .line 118
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 119
    iget-object v2, p0, Ld/b/a/k;->T:Landroid/view/View;

    if-nez v2, :cond_2

    .line 120
    new-instance v2, Landroid/view/View;

    iget-object v4, p0, Ld/b/a/k;->A:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Ld/b/a/k;->T:Landroid/view/View;

    .line 121
    iget-object v4, p0, Ld/b/a/k;->A:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroidx/appcompat/R$color;->abc_input_method_navigation_guard:I

    .line 122
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 123
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 124
    iget-object v2, p0, Ld/b/a/k;->R:Landroid/view/ViewGroup;

    iget-object v4, p0, Ld/b/a/k;->T:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 126
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_3

    .line 127
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 128
    iget-object v4, p0, Ld/b/a/k;->T:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 129
    :goto_2
    iget-object v4, p0, Ld/b/a/k;->T:Landroid/view/View;

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 130
    :goto_3
    iget-boolean v4, p0, Ld/b/a/k;->Y:Z

    if-nez v4, :cond_6

    if-eqz v3, :cond_6

    const/4 p1, 0x0

    :cond_6
    move v7, v3

    move v3, v2

    move v2, v7

    goto :goto_4

    .line 131
    :cond_7
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v2, :cond_8

    .line 132
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_a

    .line 133
    iget-object v3, p0, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    .line 134
    :cond_a
    :goto_5
    iget-object v0, p0, Ld/b/a/k;->T:Landroid/view/View;

    if-eqz v0, :cond_c

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    const/16 v1, 0x8

    .line 135
    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return p1
.end method

.method public final f()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Ld/b/a/k;->Q:Z

    if-nez v0, :cond_1b

    .line 2
    iget-object v0, p0, Ld/b/a/k;->A:Landroid/content/Context;

    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 4
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowNoTitle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v3, 0x6c

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, v4}, Ld/b/a/k;->a(I)Z

    goto :goto_0

    .line 6
    :cond_0
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0, v3}, Ld/b/a/k;->a(I)Z

    .line 8
    :cond_1
    :goto_0
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v5, 0x6d

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0, v5}, Ld/b/a/k;->a(I)Z

    .line 10
    :cond_2
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    .line 11
    invoke-virtual {p0, v1}, Ld/b/a/k;->a(I)Z

    .line 12
    :cond_3
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Ld/b/a/k;->Z:Z

    .line 13
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    invoke-virtual {p0}, Ld/b/a/k;->g()V

    .line 15
    iget-object v0, p0, Ld/b/a/k;->B:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 16
    iget-object v0, p0, Ld/b/a/k;->A:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 17
    iget-boolean v1, p0, Ld/b/a/k;->a0:Z

    const/4 v6, 0x0

    if-nez v1, :cond_9

    .line 18
    iget-boolean v1, p0, Ld/b/a/k;->Z:Z

    if-eqz v1, :cond_4

    .line 19
    sget v1, Landroidx/appcompat/R$layout;->abc_dialog_title_material:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 20
    iput-boolean v2, p0, Ld/b/a/k;->X:Z

    iput-boolean v2, p0, Ld/b/a/k;->W:Z

    goto/16 :goto_3

    .line 21
    :cond_4
    iget-boolean v0, p0, Ld/b/a/k;->W:Z

    if-eqz v0, :cond_8

    .line 22
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 23
    iget-object v1, p0, Ld/b/a/k;->A:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v7, Landroidx/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v1, v7, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 24
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_5

    .line 25
    new-instance v1, Ld/b/d/c;

    iget-object v7, p0, Ld/b/a/k;->A:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v7, v0}, Ld/b/d/c;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    .line 26
    :cond_5
    iget-object v1, p0, Ld/b/a/k;->A:Landroid/content/Context;

    .line 27
    :goto_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$layout;->abc_screen_toolbar:I

    .line 28
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 29
    sget v1, Landroidx/appcompat/R$id;->decor_content_parent:I

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Ld/b/e/c0;

    iput-object v1, p0, Ld/b/a/k;->H:Ld/b/e/c0;

    .line 31
    invoke-virtual {p0}, Ld/b/a/k;->j()Landroid/view/Window$Callback;

    move-result-object v7

    invoke-interface {v1, v7}, Ld/b/e/c0;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 32
    iget-boolean v1, p0, Ld/b/a/k;->X:Z

    if-eqz v1, :cond_6

    .line 33
    iget-object v1, p0, Ld/b/a/k;->H:Ld/b/e/c0;

    invoke-interface {v1, v5}, Ld/b/e/c0;->a(I)V

    .line 34
    :cond_6
    iget-boolean v1, p0, Ld/b/a/k;->U:Z

    if-eqz v1, :cond_7

    .line 35
    iget-object v1, p0, Ld/b/a/k;->H:Ld/b/e/c0;

    const/4 v5, 0x2

    invoke-interface {v1, v5}, Ld/b/e/c0;->a(I)V

    .line 36
    :cond_7
    iget-boolean v1, p0, Ld/b/a/k;->V:Z

    if-eqz v1, :cond_b

    .line 37
    iget-object v1, p0, Ld/b/a/k;->H:Ld/b/e/c0;

    const/4 v5, 0x5

    invoke-interface {v1, v5}, Ld/b/e/c0;->a(I)V

    goto :goto_3

    :cond_8
    move-object v0, v6

    goto :goto_3

    .line 38
    :cond_9
    iget-boolean v1, p0, Ld/b/a/k;->Y:Z

    if-eqz v1, :cond_a

    .line 39
    sget v1, Landroidx/appcompat/R$layout;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_2

    .line 40
    :cond_a
    sget v1, Landroidx/appcompat/R$layout;->abc_screen_simple:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 41
    :goto_2
    new-instance v1, Ld/b/a/l;

    invoke-direct {v1, p0}, Ld/b/a/l;-><init>(Ld/b/a/k;)V

    invoke-static {v0, v1}, Ld/i/i/n;->a(Landroid/view/View;Ld/i/i/k;)V

    :cond_b
    :goto_3
    if-eqz v0, :cond_19

    .line 42
    iget-object v1, p0, Ld/b/a/k;->H:Ld/b/e/c0;

    if-nez v1, :cond_c

    .line 43
    sget v1, Landroidx/appcompat/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ld/b/a/k;->S:Landroid/widget/TextView;

    .line 44
    :cond_c
    invoke-static {v0}, Ld/b/e/d1;->b(Landroid/view/View;)V

    .line 45
    sget v1, Landroidx/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 46
    iget-object v5, p0, Ld/b/a/k;->B:Landroid/view/Window;

    const v7, 0x1020002

    invoke-virtual {v5, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_e

    .line 47
    :goto_4
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_d

    .line 48
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 49
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 50
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_d
    const/4 v8, -0x1

    .line 51
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setId(I)V

    .line 52
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setId(I)V

    .line 53
    instance-of v8, v5, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_e

    .line 54
    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 55
    :cond_e
    iget-object v5, p0, Ld/b/a/k;->B:Landroid/view/Window;

    invoke-virtual {v5, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 56
    new-instance v5, Ld/b/a/n;

    invoke-direct {v5, p0}, Ld/b/a/n;-><init>(Ld/b/a/k;)V

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$a;)V

    .line 57
    iput-object v0, p0, Ld/b/a/k;->R:Landroid/view/ViewGroup;

    .line 58
    iget-object v0, p0, Ld/b/a/k;->z:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_f

    .line 59
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_5

    .line 60
    :cond_f
    iget-object v0, p0, Ld/b/a/k;->G:Ljava/lang/CharSequence;

    .line 61
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 62
    iget-object v1, p0, Ld/b/a/k;->H:Ld/b/e/c0;

    if-eqz v1, :cond_10

    .line 63
    invoke-interface {v1, v0}, Ld/b/e/c0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 64
    :cond_10
    iget-object v1, p0, Ld/b/a/k;->E:Ld/b/a/a;

    if-eqz v1, :cond_11

    .line 65
    invoke-virtual {v1, v0}, Ld/b/a/a;->b(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 66
    :cond_11
    iget-object v1, p0, Ld/b/a/k;->S:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    .line 67
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_12
    :goto_6
    iget-object v0, p0, Ld/b/a/k;->R:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 69
    iget-object v1, p0, Ld/b/a/k;->B:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    .line 71
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    .line 72
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 73
    iget-object v8, v0, Landroidx/appcompat/widget/ContentFrameLayout;->D:Landroid/graphics/Rect;

    invoke-virtual {v8, v5, v6, v7, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 74
    invoke-static {v0}, Ld/i/i/n;->t(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 75
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 76
    :cond_13
    iget-object v1, p0, Ld/b/a/k;->A:Landroid/content/Context;

    sget-object v5, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v1, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 77
    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 78
    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 79
    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 80
    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    .line 81
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    .line 82
    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 83
    :cond_14
    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 84
    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    .line 85
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v6

    .line 86
    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 87
    :cond_15
    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 88
    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    .line 89
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v6

    .line 90
    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 91
    :cond_16
    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 92
    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    .line 93
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v6

    .line 94
    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 95
    :cond_17
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 97
    iput-boolean v4, p0, Ld/b/a/k;->Q:Z

    .line 98
    invoke-virtual {p0, v2}, Ld/b/a/k;->d(I)Ld/b/a/k$j;

    move-result-object v0

    .line 99
    iget-boolean v1, p0, Ld/b/a/k;->i0:Z

    if-nez v1, :cond_1b

    if-eqz v0, :cond_18

    iget-object v0, v0, Ld/b/a/k$j;->j:Ld/b/d/i/g;

    if-nez v0, :cond_1b

    .line 100
    :cond_18
    invoke-virtual {p0, v3}, Ld/b/a/k;->e(I)V

    goto :goto_7

    .line 101
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ld/b/a/k;->W:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ld/b/a/k;->X:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ld/b/a/k;->Z:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ld/b/a/k;->Y:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ld/b/a/k;->a0:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_7
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/b/a/k;->B:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/b/a/k;->z:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld/b/a/k;->a(Landroid/view/Window;)V

    .line 3
    :cond_0
    iget-object v0, p0, Ld/b/a/k;->B:Landroid/view/Window;

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We have not been given a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/b/a/k;->k()V

    .line 2
    iget-object v0, p0, Ld/b/a/k;->E:Ld/b/a/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ld/b/a/a;->d()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Ld/b/a/k;->A:Landroid/content/Context;

    :cond_1
    return-object v0
.end method

.method public final i()Ld/b/a/k$g;
    .locals 4

    .line 1
    iget-object v0, p0, Ld/b/a/k;->n0:Ld/b/a/k$g;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ld/b/a/k$h;

    iget-object v1, p0, Ld/b/a/k;->A:Landroid/content/Context;

    .line 3
    sget-object v2, Ld/b/a/u;->d:Ld/b/a/u;

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 5
    new-instance v2, Ld/b/a/u;

    const-string v3, "location"

    .line 6
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    invoke-direct {v2, v1, v3}, Ld/b/a/u;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v2, Ld/b/a/u;->d:Ld/b/a/u;

    .line 7
    :cond_0
    sget-object v1, Ld/b/a/u;->d:Ld/b/a/u;

    .line 8
    invoke-direct {v0, p0, v1}, Ld/b/a/k$h;-><init>(Ld/b/a/k;Ld/b/a/u;)V

    iput-object v0, p0, Ld/b/a/k;->n0:Ld/b/a/k$g;

    .line 9
    :cond_1
    iget-object v0, p0, Ld/b/a/k;->n0:Ld/b/a/k$g;

    return-object v0
.end method

.method public final j()Landroid/view/Window$Callback;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/a/k;->B:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method public final k()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ld/b/a/k;->f()V

    .line 2
    iget-boolean v0, p0, Ld/b/a/k;->W:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Ld/b/a/k;->E:Ld/b/a/a;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Ld/b/a/k;->z:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 4
    new-instance v0, Ld/b/a/v;

    iget-object v1, p0, Ld/b/a/k;->z:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, Ld/b/a/k;->X:Z

    invoke-direct {v0, v1, v2}, Ld/b/a/v;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Ld/b/a/k;->E:Ld/b/a/a;

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Ld/b/a/v;

    iget-object v1, p0, Ld/b/a/k;->z:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Ld/b/a/v;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Ld/b/a/k;->E:Ld/b/a/a;

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Ld/b/a/k;->E:Ld/b/a/a;

    if-eqz v0, :cond_3

    .line 8
    iget-boolean v1, p0, Ld/b/a/k;->s0:Z

    invoke-virtual {v0, v1}, Ld/b/a/a;->b(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld/b/a/k;->Q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/b/a/k;->R:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ld/i/i/n;->t(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ld/b/a/k;->Q:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11

    .line 1
    iget-object v0, p0, Ld/b/a/k;->v0:Landroidx/appcompat/app/AppCompatViewInflater;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Ld/b/a/k;->A:Landroid/content/Context;

    sget-object v2, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTheme_viewInflaterClass:I

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    const-class v2, Landroidx/appcompat/app/AppCompatViewInflater;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/AppCompatViewInflater;

    iput-object v2, p0, Ld/b/a/k;->v0:Landroidx/appcompat/app/AppCompatViewInflater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to instantiate custom view inflater "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Falling back to default."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AppCompatDelegate"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    new-instance v0, Landroidx/appcompat/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Ld/b/a/k;->v0:Landroidx/appcompat/app/AppCompatViewInflater;

    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    new-instance v0, Landroidx/appcompat/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroidx/appcompat/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Ld/b/a/k;->v0:Landroidx/appcompat/app/AppCompatViewInflater;

    .line 13
    :cond_2
    :goto_1
    sget-boolean v0, Ld/b/a/k;->x0:Z

    if-eqz v0, :cond_8

    .line 14
    instance-of v0, p4, Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    move-object v0, p4

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    .line 15
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_7

    goto :goto_3

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    if-nez v0, :cond_4

    goto :goto_4

    .line 16
    :cond_4
    iget-object v3, p0, Ld/b/a/k;->B:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    :goto_2
    if-nez v0, :cond_5

    :goto_3
    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    if-eq v0, v3, :cond_7

    .line 17
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_7

    move-object v4, v0

    check-cast v4, Landroid/view/View;

    .line 18
    invoke-static {v4}, Ld/i/i/n;->s(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    .line 19
    :cond_6
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_7
    :goto_4
    move v7, v1

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    .line 20
    :goto_5
    iget-object v2, p0, Ld/b/a/k;->v0:Landroidx/appcompat/app/AppCompatViewInflater;

    sget-boolean v8, Ld/b/a/k;->x0:Z

    const/4 v9, 0x1

    .line 21
    invoke-static {}, Ld/b/e/c1;->a()Z

    const/4 v10, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 22
    invoke-virtual/range {v2 .. v10}, Landroidx/appcompat/app/AppCompatViewInflater;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0, p1, p2, p3}, Ld/b/a/k;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
