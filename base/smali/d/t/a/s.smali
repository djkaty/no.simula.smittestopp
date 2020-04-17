.class public Ld/t/a/s;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Ld/i/i/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/t/a/s$f;,
        Ld/t/a/s$h;,
        Ld/t/a/s$i;,
        Ld/t/a/s$m;,
        Ld/t/a/s$u;,
        Ld/t/a/s$t;,
        Ld/t/a/s$e;,
        Ld/t/a/s$l;,
        Ld/t/a/s$x;,
        Ld/t/a/s$r;,
        Ld/t/a/s$o;,
        Ld/t/a/s$n;,
        Ld/t/a/s$j;,
        Ld/t/a/s$k;,
        Ld/t/a/s$d;,
        Ld/t/a/s$v;,
        Ld/t/a/s$q;,
        Ld/t/a/s$p;,
        Ld/t/a/s$g;,
        Ld/t/a/s$s;,
        Ld/t/a/s$w;
    }
.end annotation


# static fields
.field public static final U0:[I

.field public static final V0:[I

.field public static final W0:Z

.field public static final X0:Z

.field public static final Y0:Z

.field public static final Z0:Z

.field public static final a1:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final b1:Landroid/view/animation/Interpolator;


# instance fields
.field public A:Ld/t/a/a;

.field public A0:Ld/t/a/m;

.field public B:Ld/t/a/b;

.field public B0:Ld/t/a/m$b;

.field public final C:Ld/t/a/y;

.field public final C0:Ld/t/a/s$u;

.field public D:Z

.field public D0:Ld/t/a/s$o;

.field public final E:Landroid/graphics/Rect;

.field public E0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld/t/a/s$o;",
            ">;"
        }
    .end annotation
.end field

.field public final F:Landroid/graphics/Rect;

.field public F0:Z

.field public final G:Landroid/graphics/RectF;

.field public G0:Z

.field public H:Ld/t/a/s$d;

.field public H0:Ld/t/a/s$h$b;

.field public I:Ld/t/a/s$k;

.field public I0:Z

.field public J:Ld/t/a/s$r;

.field public J0:Ld/t/a/v;

.field public final K:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/t/a/s$j;",
            ">;"
        }
    .end annotation
.end field

.field public K0:Ld/t/a/s$f;

.field public final L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/t/a/s$n;",
            ">;"
        }
    .end annotation
.end field

.field public final L0:[I

.field public M:Ld/t/a/s$n;

.field public M0:Ld/i/i/g;

.field public N:Z

.field public final N0:[I

.field public O:Z

.field public final O0:[I

.field public P:Z

.field public final P0:[I

.field public Q:Z

.field public final Q0:[I

.field public R:I

.field public final R0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld/t/a/s$x;",
            ">;"
        }
    .end annotation
.end field

.field public S:Z

.field public S0:Ljava/lang/Runnable;

.field public T:Z

.field public final T0:Ld/t/a/y$b;

.field public U:Z

.field public V:I

.field public W:Z

.field public final a0:Landroid/view/accessibility/AccessibilityManager;

.field public b0:Z

.field public c0:Z

.field public d0:I

.field public e0:I

.field public f0:Ld/t/a/s$g;

.field public g0:Landroid/widget/EdgeEffect;

.field public h0:Landroid/widget/EdgeEffect;

.field public i0:Landroid/widget/EdgeEffect;

.field public j0:Landroid/widget/EdgeEffect;

.field public k0:Ld/t/a/s$h;

.field public l0:I

.field public m0:I

.field public n0:Landroid/view/VelocityTracker;

.field public o0:I

.field public p0:I

.field public q0:I

.field public r0:I

.field public s0:I

.field public t0:Ld/t/a/s$m;

.field public final u0:I

.field public final v0:I

.field public w0:F

.field public final x:Ld/t/a/s$s;

.field public x0:F

.field public final y:Ld/t/a/s$q;

.field public y0:Z

.field public z:Ld/t/a/s$t;

.field public final z0:Ld/t/a/s$w;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x1010436

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1
    sput-object v1, Ld/t/a/s;->U0:[I

    new-array v1, v0, [I

    const v2, 0x10100eb

    aput v2, v1, v3

    .line 2
    sput-object v1, Ld/t/a/s;->V0:[I

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    sput-boolean v1, Ld/t/a/s;->W0:Z

    .line 5
    sput-boolean v0, Ld/t/a/s;->X0:Z

    .line 6
    sput-boolean v3, Ld/t/a/s;->Y0:Z

    .line 7
    sput-boolean v3, Ld/t/a/s;->Z0:Z

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    .line 8
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    aput-object v2, v1, v0

    sput-object v1, Ld/t/a/s;->a1:[Ljava/lang/Class;

    .line 9
    new-instance v0, Ld/t/a/s$b;

    invoke-direct {v0}, Ld/t/a/s$b;-><init>()V

    sput-object v0, Ld/t/a/s;->b1:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Ld/t/a/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Ld/t/a/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 20

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    .line 3
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Ld/t/a/s$s;

    invoke-direct {v0, v10}, Ld/t/a/s$s;-><init>(Ld/t/a/s;)V

    iput-object v0, v10, Ld/t/a/s;->x:Ld/t/a/s$s;

    .line 5
    new-instance v0, Ld/t/a/s$q;

    invoke-direct {v0, v10}, Ld/t/a/s$q;-><init>(Ld/t/a/s;)V

    iput-object v0, v10, Ld/t/a/s;->y:Ld/t/a/s$q;

    .line 6
    new-instance v0, Ld/t/a/y;

    invoke-direct {v0}, Ld/t/a/y;-><init>()V

    iput-object v0, v10, Ld/t/a/s;->C:Ld/t/a/y;

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v10, Ld/t/a/s;->E:Landroid/graphics/Rect;

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v10, Ld/t/a/s;->F:Landroid/graphics/Rect;

    .line 9
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v10, Ld/t/a/s;->G:Landroid/graphics/RectF;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Ld/t/a/s;->K:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Ld/t/a/s;->L:Ljava/util/ArrayList;

    const/4 v14, 0x0

    .line 12
    iput v14, v10, Ld/t/a/s;->R:I

    .line 13
    iput-boolean v14, v10, Ld/t/a/s;->b0:Z

    .line 14
    iput-boolean v14, v10, Ld/t/a/s;->c0:Z

    .line 15
    iput v14, v10, Ld/t/a/s;->d0:I

    .line 16
    iput v14, v10, Ld/t/a/s;->e0:I

    .line 17
    new-instance v0, Ld/t/a/s$g;

    invoke-direct {v0}, Ld/t/a/s$g;-><init>()V

    iput-object v0, v10, Ld/t/a/s;->f0:Ld/t/a/s$g;

    .line 18
    new-instance v0, Ld/t/a/k;

    invoke-direct {v0}, Ld/t/a/k;-><init>()V

    iput-object v0, v10, Ld/t/a/s;->k0:Ld/t/a/s$h;

    .line 19
    iput v14, v10, Ld/t/a/s;->l0:I

    const/4 v0, -0x1

    .line 20
    iput v0, v10, Ld/t/a/s;->m0:I

    const/4 v1, 0x1

    .line 21
    iput v1, v10, Ld/t/a/s;->w0:F

    .line 22
    iput v1, v10, Ld/t/a/s;->x0:F

    const/4 v15, 0x1

    .line 23
    iput-boolean v15, v10, Ld/t/a/s;->y0:Z

    .line 24
    new-instance v1, Ld/t/a/s$w;

    invoke-direct {v1, v10}, Ld/t/a/s$w;-><init>(Ld/t/a/s;)V

    iput-object v1, v10, Ld/t/a/s;->z0:Ld/t/a/s$w;

    .line 25
    sget-boolean v1, Ld/t/a/s;->X0:Z

    const/16 v16, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Ld/t/a/m$b;

    invoke-direct {v1}, Ld/t/a/m$b;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, v16

    :goto_0
    iput-object v1, v10, Ld/t/a/s;->B0:Ld/t/a/m$b;

    .line 26
    new-instance v1, Ld/t/a/s$u;

    invoke-direct {v1}, Ld/t/a/s$u;-><init>()V

    iput-object v1, v10, Ld/t/a/s;->C0:Ld/t/a/s$u;

    .line 27
    iput-boolean v14, v10, Ld/t/a/s;->F0:Z

    .line 28
    iput-boolean v14, v10, Ld/t/a/s;->G0:Z

    .line 29
    new-instance v1, Ld/t/a/s$i;

    invoke-direct {v1, v10}, Ld/t/a/s$i;-><init>(Ld/t/a/s;)V

    iput-object v1, v10, Ld/t/a/s;->H0:Ld/t/a/s$h$b;

    .line 30
    iput-boolean v14, v10, Ld/t/a/s;->I0:Z

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 31
    iput-object v2, v10, Ld/t/a/s;->L0:[I

    new-array v2, v1, [I

    .line 32
    iput-object v2, v10, Ld/t/a/s;->N0:[I

    new-array v2, v1, [I

    .line 33
    iput-object v2, v10, Ld/t/a/s;->O0:[I

    new-array v2, v1, [I

    .line 34
    iput-object v2, v10, Ld/t/a/s;->P0:[I

    new-array v2, v1, [I

    .line 35
    iput-object v2, v10, Ld/t/a/s;->Q0:[I

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v10, Ld/t/a/s;->R0:Ljava/util/List;

    .line 37
    new-instance v2, Ld/t/a/s$a;

    invoke-direct {v2, v10}, Ld/t/a/s$a;-><init>(Ld/t/a/s;)V

    iput-object v2, v10, Ld/t/a/s;->S0:Ljava/lang/Runnable;

    .line 38
    new-instance v2, Ld/t/a/s$c;

    invoke-direct {v2, v10}, Ld/t/a/s$c;-><init>(Ld/t/a/s;)V

    iput-object v2, v10, Ld/t/a/s;->T0:Ld/t/a/y$b;

    if-eqz v12, :cond_1

    .line 39
    sget-object v2, Ld/t/a/s;->V0:[I

    invoke-virtual {v11, v12, v2, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 40
    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v10, Ld/t/a/s;->D:Z

    .line 41
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 42
    :cond_1
    iput-boolean v15, v10, Ld/t/a/s;->D:Z

    .line 43
    :goto_1
    invoke-virtual {v10, v15}, Landroid/view/ViewGroup;->setScrollContainer(Z)V

    .line 44
    invoke-virtual {v10, v15}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 45
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, v10, Ld/t/a/s;->s0:I

    .line 47
    invoke-static {v2, v11}, Ld/i/i/r;->b(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v3

    iput v3, v10, Ld/t/a/s;->w0:F

    .line 48
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_2

    .line 49
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v3

    goto :goto_2

    .line 50
    :cond_2
    invoke-static {v2, v11}, Ld/i/i/r;->a(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v3

    .line 51
    :goto_2
    iput v3, v10, Ld/t/a/s;->x0:F

    .line 52
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, v10, Ld/t/a/s;->u0:I

    .line 53
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, v10, Ld/t/a/s;->v0:I

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v2

    if-ne v2, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 55
    iget-object v1, v10, Ld/t/a/s;->k0:Ld/t/a/s$h;

    iget-object v2, v10, Ld/t/a/s;->H0:Ld/t/a/s$h$b;

    .line 56
    iput-object v2, v1, Ld/t/a/s$h;->a:Ld/t/a/s$h$b;

    .line 57
    new-instance v1, Ld/t/a/a;

    new-instance v2, Ld/t/a/u;

    invoke-direct {v2, v10}, Ld/t/a/u;-><init>(Ld/t/a/s;)V

    invoke-direct {v1, v2}, Ld/t/a/a;-><init>(Ld/t/a/a$a;)V

    iput-object v1, v10, Ld/t/a/s;->A:Ld/t/a/a;

    .line 58
    new-instance v1, Ld/t/a/b;

    new-instance v2, Ld/t/a/t;

    invoke-direct {v2, v10}, Ld/t/a/t;-><init>(Ld/t/a/s;)V

    invoke-direct {v1, v2}, Ld/t/a/b;-><init>(Ld/t/a/b$b;)V

    iput-object v1, v10, Ld/t/a/s;->B:Ld/t/a/b;

    .line 59
    invoke-static/range {p0 .. p0}, Ld/i/i/n;->h(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x8

    .line 60
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_4

    .line 61
    invoke-virtual {v10, v1}, Landroid/view/View;->setImportantForAutofill(I)V

    .line 62
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 63
    invoke-virtual {v10, v15}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 64
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    .line 65
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, v10, Ld/t/a/s;->a0:Landroid/view/accessibility/AccessibilityManager;

    .line 66
    new-instance v1, Ld/t/a/v;

    invoke-direct {v1, v10}, Ld/t/a/v;-><init>(Ld/t/a/s;)V

    invoke-virtual {v10, v1}, Ld/t/a/s;->setAccessibilityDelegateCompat(Ld/t/a/v;)V

    const/high16 v1, 0x40000

    if-eqz v12, :cond_d

    .line 67
    sget-object v2, Landroidx/recyclerview/R$styleable;->RecyclerView:[I

    invoke-virtual {v11, v12, v2, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 68
    sget v2, Landroidx/recyclerview/R$styleable;->RecyclerView_layoutManager:I

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 69
    sget v2, Landroidx/recyclerview/R$styleable;->RecyclerView_android_descendantFocusability:I

    invoke-virtual {v9, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-ne v2, v0, :cond_6

    .line 70
    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 71
    :cond_6
    sget v0, Landroidx/recyclerview/R$styleable;->RecyclerView_fastScrollEnabled:I

    invoke-virtual {v9, v0, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v10, Ld/t/a/s;->P:Z

    if-eqz v0, :cond_8

    .line 72
    sget v0, Landroidx/recyclerview/R$styleable;->RecyclerView_fastScrollVerticalThumbDrawable:I

    .line 73
    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    .line 74
    sget v0, Landroidx/recyclerview/R$styleable;->RecyclerView_fastScrollVerticalTrackDrawable:I

    .line 75
    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 76
    sget v0, Landroidx/recyclerview/R$styleable;->RecyclerView_fastScrollHorizontalThumbDrawable:I

    .line 77
    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/graphics/drawable/StateListDrawable;

    .line 78
    sget v0, Landroidx/recyclerview/R$styleable;->RecyclerView_fastScrollHorizontalTrackDrawable:I

    .line 79
    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    if-eqz v6, :cond_7

    .line 80
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    new-instance v1, Ld/t/a/l;

    sget v2, Landroidx/recyclerview/R$dimen;->fastscroll_default_thickness:I

    .line 82
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v2, Landroidx/recyclerview/R$dimen;->fastscroll_minimum_range:I

    .line 83
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sget v2, Landroidx/recyclerview/R$dimen;->fastscroll_margin:I

    .line 84
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/16 v18, 0x2

    move-object/from16 v2, p0

    move-object/from16 v19, v9

    move v9, v0

    invoke-direct/range {v1 .. v9}, Ld/t/a/l;-><init>(Ld/t/a/s;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    goto :goto_4

    .line 85
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to set fast scroller without both required drawables."

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 86
    invoke-static {v10, v1}, Le/a/a/a/a;->a(Ld/t/a/s;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object/from16 v19, v9

    const/16 v18, 0x2

    .line 87
    :goto_4
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    const-string v1, ": Could not instantiate the LayoutManager: "

    if-eqz v17, :cond_c

    .line 88
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 90
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_9

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    move-object v2, v0

    goto :goto_6

    :cond_9
    const-string v2, "."

    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    .line 93
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Ld/t/a/s;

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 94
    :goto_6
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 95
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_7

    .line 96
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 97
    :goto_7
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v3, Ld/t/a/s$k;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 98
    :try_start_1
    sget-object v0, Ld/t/a/s;->a1:[Ljava/lang/Class;

    .line 99
    invoke-virtual {v3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v11, v4, v14

    aput-object v12, v4, v15

    .line 100
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v18

    const/4 v5, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v4, v0

    :try_start_2
    new-array v0, v14, [Ljava/lang/Class;

    .line 101
    invoke-virtual {v3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v4, v16

    .line 102
    :goto_8
    :try_start_3
    invoke-virtual {v0, v15}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 103
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/t/a/s$k;

    invoke-virtual {v10, v0}, Ld/t/a/s;->setLayoutManager(Ld/t/a/s$k;)V

    goto/16 :goto_9

    :catch_1
    move-exception v0

    .line 104
    invoke-virtual {v0, v4}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 105
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": Error creating LayoutManager "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    .line 106
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Class is not a LayoutManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    .line 107
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Cannot access non-public constructor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    .line 108
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_5
    move-exception v0

    .line 109
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_6
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Unable to find LayoutManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 111
    :cond_c
    :goto_9
    sget-object v0, Ld/t/a/s;->U0:[I

    invoke-virtual {v11, v12, v0, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 112
    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 113
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_a

    .line 114
    :cond_d
    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 115
    :goto_a
    invoke-virtual {v10, v15}, Ld/t/a/s;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ld/t/a/s$l;

    .line 114
    iget-object v1, v0, Ld/t/a/s$l;->b:Landroid/graphics/Rect;

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    .line 119
    invoke-virtual {p1, v2, v3, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static synthetic a(Ld/t/a/s;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->detachViewFromParent(I)V

    return-void
.end method

.method public static synthetic a(Ld/t/a/s;)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/View;)Ld/t/a/s$x;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Ld/t/a/s$l;

    iget-object p0, p0, Ld/t/a/s$l;->a:Ld/t/a/s$x;

    return-object p0
.end method

.method public static b(Ld/t/a/s$x;)V
    .locals 3

    .line 45
    iget-object v0, p0, Ld/t/a/s$x;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 46
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 47
    iget-object v2, p0, Ld/t/a/s$x;->a:Landroid/view/View;

    if-ne v0, v2, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 49
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 50
    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 51
    :cond_2
    iput-object v1, p0, Ld/t/a/s$x;->b:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void
.end method

.method private getScrollingChildHelper()Ld/i/i/g;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/s;->M0:Ld/i/i/g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld/i/i/g;

    invoke-direct {v0, p0}, Ld/i/i/g;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Ld/t/a/s;->M0:Ld/i/i/g;

    .line 3
    :cond_0
    iget-object v0, p0, Ld/t/a/s;->M0:Ld/i/i/g;

    return-object v0
.end method


# virtual methods
.method public a(Ld/t/a/s$x;)I
    .locals 7

    const/16 v0, 0x20c

    .line 124
    invoke-virtual {p1, v0}, Ld/t/a/s$x;->b(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_9

    .line 125
    invoke-virtual {p1}, Ld/t/a/s$x;->k()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 126
    :cond_0
    iget-object v0, p0, Ld/t/a/s;->A:Ld/t/a/a;

    iget p1, p1, Ld/t/a/s$x;->c:I

    .line 127
    iget-object v2, v0, Ld/t/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_8

    .line 128
    iget-object v4, v0, Ld/t/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/t/a/a$b;

    .line 129
    iget v5, v4, Ld/t/a/a$b;->a:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    goto :goto_1

    .line 130
    :cond_1
    iget v5, v4, Ld/t/a/a$b;->b:I

    if-ne v5, p1, :cond_2

    .line 131
    iget p1, v4, Ld/t/a/a$b;->d:I

    goto :goto_1

    :cond_2
    if-ge v5, p1, :cond_3

    add-int/lit8 p1, p1, -0x1

    .line 132
    :cond_3
    iget v4, v4, Ld/t/a/a$b;->d:I

    if-gt v4, p1, :cond_7

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 133
    :cond_4
    iget v5, v4, Ld/t/a/a$b;->b:I

    if-gt v5, p1, :cond_7

    .line 134
    iget v4, v4, Ld/t/a/a$b;->d:I

    add-int/2addr v5, v4

    if-le v5, p1, :cond_5

    goto :goto_2

    :cond_5
    sub-int/2addr p1, v4

    goto :goto_1

    .line 135
    :cond_6
    iget v5, v4, Ld/t/a/a$b;->b:I

    if-gt v5, p1, :cond_7

    .line 136
    iget v4, v4, Ld/t/a/a$b;->d:I

    add-int/2addr p1, v4

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    move v1, p1

    :cond_9
    :goto_2
    return v1
.end method

.method public a(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 110
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 111
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public final a()V
    .locals 1

    .line 65
    invoke-virtual {p0}, Ld/t/a/s;->p()V

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, v0}, Ld/t/a/s;->setScrollState(I)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 137
    invoke-direct {p0}, Ld/t/a/s;->getScrollingChildHelper()Ld/i/i/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/i/i/g;->c(I)V

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 31
    iget-object v0, p0, Ld/t/a/s;->g0:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    .line 32
    iget-object v0, p0, Ld/t/a/s;->g0:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 33
    iget-object v0, p0, Ld/t/a/s;->g0:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    iget-object v1, p0, Ld/t/a/s;->i0:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 35
    iget-object p1, p0, Ld/t/a/s;->i0:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 36
    iget-object p1, p0, Ld/t/a/s;->i0:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 37
    :cond_1
    iget-object p1, p0, Ld/t/a/s;->h0:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    if-lez p2, :cond_2

    .line 38
    iget-object p1, p0, Ld/t/a/s;->h0:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 39
    iget-object p1, p0, Ld/t/a/s;->h0:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 40
    :cond_2
    iget-object p1, p0, Ld/t/a/s;->j0:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    if-gez p2, :cond_3

    .line 41
    iget-object p1, p0, Ld/t/a/s;->j0:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 42
    iget-object p1, p0, Ld/t/a/s;->j0:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_3
    if-eqz v0, :cond_4

    .line 43
    invoke-static {p0}, Ld/i/i/n;->x(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public a(IIZ)V
    .locals 7

    add-int v0, p1, p2

    .line 93
    iget-object v1, p0, Ld/t/a/s;->B:Ld/t/a/b;

    invoke-virtual {v1}, Ld/t/a/b;->b()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 94
    iget-object v3, p0, Ld/t/a/s;->B:Ld/t/a/b;

    invoke-virtual {v3, v2}, Ld/t/a/b;->d(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Ld/t/a/s;->b(Landroid/view/View;)Ld/t/a/s$x;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 95
    invoke-virtual {v3}, Ld/t/a/s$x;->u()Z

    move-result v4

    if-nez v4, :cond_1

    .line 96
    iget v4, v3, Ld/t/a/s$x;->c:I

    const/4 v5, 0x1

    if-lt v4, v0, :cond_0

    neg-int v4, p2

    .line 97
    invoke-virtual {v3, v4, p3}, Ld/t/a/s$x;->a(IZ)V

    .line 98
    iget-object v3, p0, Ld/t/a/s;->C0:Ld/t/a/s$u;

    iput-boolean v5, v3, Ld/t/a/s$u;->f:Z

    goto :goto_1

    :cond_0
    if-lt v4, p1, :cond_1

    add-int/lit8 v4, p1, -0x1

    neg-int v6, p2

    .line 99
    invoke-virtual {v3, v4, v6, p3}, Ld/t/a/s$x;->a(IIZ)V

    .line 100
    iget-object v3, p0, Ld/t/a/s;->C0:Ld/t/a/s$u;

    iput-boolean v5, v3, Ld/t/a/s$u;->f:Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_2
    iget-object v1, p0, Ld/t/a/s;->y:Ld/t/a/s$q;

    .line 102
    iget-object v2, v1, Ld/t/a/s$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_5

    .line 103
    iget-object v3, v1, Ld/t/a/s$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/t/a/s$x;

    if-eqz v3, :cond_3

    .line 104
    iget v4, v3, Ld/t/a/s$x;->c:I

    if-lt v4, v0, :cond_4

    neg-int v4, p2

    .line 105
    invoke-virtual {v3, v4, p3}, Ld/t/a/s$x;->a(IZ)V

    goto :goto_2

    :cond_4
    if-lt v4, p1, :cond_3

    const/16 v4, 0x8

    .line 106
    invoke-virtual {v3, v4}, Ld/t/a/s$x;->a(I)V

    .line 107
    invoke-virtual {v1, v2}, Ld/t/a/s$q;->b(I)V

    goto :goto_2

    .line 108
    :cond_5
    invoke-virtual {p0}, Ld/t/a/s;->requestLayout()V

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 3

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Ld/t/a/s;->m0:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Ld/t/a/s;->m0:I

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Ld/t/a/s;->q0:I

    iput v1, p0, Ld/t/a/s;->o0:I

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Ld/t/a/s;->r0:I

    iput p1, p0, Ld/t/a/s;->p0:I

    :cond_1
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/View;)V
    .locals 11

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 44
    :goto_0
    iget-object v1, p0, Ld/t/a/s;->E:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 46
    instance-of v1, v0, Ld/t/a/s$l;

    if-eqz v1, :cond_1

    .line 47
    check-cast v0, Ld/t/a/s$l;

    .line 48
    iget-boolean v1, v0, Ld/t/a/s$l;->c:Z

    if-nez v1, :cond_1

    .line 49
    iget-object v0, v0, Ld/t/a/s$l;->b:Landroid/graphics/Rect;

    .line 50
    iget-object v1, p0, Ld/t/a/s;->E:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 51
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 52
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 53
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    if-eqz p2, :cond_2

    .line 54
    iget-object v0, p0, Ld/t/a/s;->E:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 55
    iget-object v0, p0, Ld/t/a/s;->E:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 56
    :cond_2
    iget-object v5, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    iget-object v8, p0, Ld/t/a/s;->E:Landroid/graphics/Rect;

    iget-boolean v0, p0, Ld/t/a/s;->Q:Z

    const/4 v1, 0x1

    xor-int/lit8 v9, v0, 0x1

    if-nez p2, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Ld/t/a/s$k;->a(Ld/t/a/s;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    return-void
.end method

.method public a(Ld/t/a/s$x;Ld/t/a/s$h$c;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x2000

    .line 88
    invoke-virtual {p1, v0, v1}, Ld/t/a/s$x;->a(II)V

    .line 89
    iget-object v0, p0, Ld/t/a/s;->C0:Ld/t/a/s$u;

    iget-boolean v0, v0, Ld/t/a/s$u;->h:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ld/t/a/s$x;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p1}, Ld/t/a/s$x;->n()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ld/t/a/s$x;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 91
    throw p1

    .line 92
    :cond_1
    :goto_0
    iget-object v0, p0, Ld/t/a/s;->C:Ld/t/a/y;

    invoke-virtual {v0, p1, p2}, Ld/t/a/y;->a(Ld/t/a/s$x;Ld/t/a/s$h$c;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 57
    invoke-virtual {p0}, Ld/t/a/s;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 58
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 59
    invoke-static {p0, v0}, Le/a/a/a/a;->a(Ld/t/a/s;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    iget p1, p0, Ld/t/a/s;->e0:I

    if-lez p1, :cond_2

    .line 62
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, ""

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    invoke-static {p0, v0}, Le/a/a/a/a;->a(Ld/t/a/s;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v0, "RecyclerView"

    const-string v1, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    .line 64
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 72
    iget v0, p0, Ld/t/a/s;->d0:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ld/t/a/s;->d0:I

    if-ge v0, v1, :cond_5

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Ld/t/a/s;->d0:I

    if-eqz p1, :cond_5

    .line 74
    iget p1, p0, Ld/t/a/s;->V:I

    .line 75
    iput v0, p0, Ld/t/a/s;->V:I

    if-eqz p1, :cond_1

    .line 76
    iget-object v2, p0, Ld/t/a/s;->a0:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 77
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/16 v1, 0x800

    .line 78
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 79
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 80
    invoke-virtual {p0, v0}, Ld/t/a/s;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 81
    :cond_1
    iget-object p1, p0, Ld/t/a/s;->R0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, -0x1

    add-int/2addr p1, v0

    :goto_1
    if-ltz p1, :cond_4

    .line 82
    iget-object v1, p0, Ld/t/a/s;->R0:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/t/a/s$x;

    .line 83
    iget-object v2, v1, Ld/t/a/s$x;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_3

    invoke-virtual {v1}, Ld/t/a/s$x;->u()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 84
    :cond_2
    iget v2, v1, Ld/t/a/s$x;->p:I

    if-eq v2, v0, :cond_3

    .line 85
    iget-object v3, v1, Ld/t/a/s$x;->a:Landroid/view/View;

    invoke-static {v3, v2}, Ld/i/i/n;->e(Landroid/view/View;I)V

    .line 86
    iput v0, v1, Ld/t/a/s$x;->p:I

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 87
    :cond_4
    iget-object p1, p0, Ld/t/a/s;->R0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_5
    return-void
.end method

.method public a(IIII[II)Z
    .locals 8

    .line 138
    invoke-direct {p0}, Ld/t/a/s;->getScrollingChildHelper()Ld/i/i/g;

    move-result-object v0

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .line 139
    invoke-virtual/range {v0 .. v7}, Ld/i/i/g;->a(IIII[II[I)Z

    move-result p1

    return p1
.end method

.method public a(IILandroid/view/MotionEvent;)Z
    .locals 10

    .line 3
    invoke-virtual {p0}, Ld/t/a/s;->b()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 4
    iget-object v0, p0, Ld/t/a/s;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 6
    :cond_0
    iget-object v5, p0, Ld/t/a/s;->N0:[I

    const/4 v6, 0x0

    move-object v0, p0

    move v3, v8

    move v4, v7

    invoke-virtual/range {v0 .. v6}, Ld/t/a/s;->a(IIII[II)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 7
    iget p1, p0, Ld/t/a/s;->q0:I

    iget-object p2, p0, Ld/t/a/s;->N0:[I

    aget v0, p2, v2

    sub-int/2addr p1, v0

    iput p1, p0, Ld/t/a/s;->q0:I

    .line 8
    iget p1, p0, Ld/t/a/s;->r0:I

    aget v0, p2, v1

    sub-int/2addr p1, v0

    iput p1, p0, Ld/t/a/s;->r0:I

    if-eqz p3, :cond_1

    .line 9
    aget p1, p2, v2

    int-to-float p1, p1

    aget p2, p2, v1

    int-to-float p2, p2

    invoke-virtual {p3, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 10
    :cond_1
    iget-object p1, p0, Ld/t/a/s;->P0:[I

    aget p2, p1, v2

    iget-object p3, p0, Ld/t/a/s;->N0:[I

    aget v0, p3, v2

    add-int/2addr p2, v0

    aput p2, p1, v2

    .line 11
    aget p2, p1, v1

    aget p3, p3, v1

    add-int/2addr p2, p3

    aput p2, p1, v1

    goto/16 :goto_4

    .line 12
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_a

    if-eqz p3, :cond_9

    const/16 v0, 0x2002

    .line 13
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/2addr v3, v0

    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_9

    .line 14
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v3, v8

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    int-to-float v4, v7

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    cmpg-float v7, v3, v6

    if-gez v7, :cond_4

    .line 15
    invoke-virtual {p0}, Ld/t/a/s;->e()V

    .line 16
    iget-object v7, p0, Ld/t/a/s;->g0:Landroid/widget/EdgeEffect;

    neg-float v8, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr p3, v9

    sub-float p3, v5, p3

    .line 17
    invoke-virtual {v7, v8, p3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    goto :goto_1

    :cond_4
    cmpl-float v7, v3, v6

    if-lez v7, :cond_5

    .line 18
    invoke-virtual {p0}, Ld/t/a/s;->f()V

    .line 19
    iget-object v7, p0, Ld/t/a/s;->i0:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v3, v8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr p3, v9

    .line 20
    invoke-virtual {v7, v8, p3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    :goto_1
    const/4 p3, 0x1

    goto :goto_2

    :cond_5
    const/4 p3, 0x0

    :goto_2
    cmpg-float v7, v4, v6

    if-gez v7, :cond_6

    .line 21
    invoke-virtual {p0}, Ld/t/a/s;->g()V

    .line 22
    iget-object p3, p0, Ld/t/a/s;->h0:Landroid/widget/EdgeEffect;

    neg-float v5, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v0, v7

    .line 23
    invoke-virtual {p3, v5, v0}, Landroid/widget/EdgeEffect;->onPull(FF)V

    goto :goto_3

    :cond_6
    cmpl-float v7, v4, v6

    if-lez v7, :cond_7

    .line 24
    invoke-virtual {p0}, Ld/t/a/s;->d()V

    .line 25
    iget-object p3, p0, Ld/t/a/s;->j0:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v4, v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v0, v8

    sub-float/2addr v5, v0

    .line 26
    invoke-virtual {p3, v7, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    goto :goto_3

    :cond_7
    move v1, p3

    :goto_3
    if-nez v1, :cond_8

    cmpl-float p3, v3, v6

    if-nez p3, :cond_8

    cmpl-float p3, v4, v6

    if-eqz p3, :cond_9

    .line 27
    :cond_8
    invoke-static {p0}, Ld/i/i/n;->x(Landroid/view/View;)V

    .line 28
    :cond_9
    invoke-virtual {p0, p1, p2}, Ld/t/a/s;->a(II)V

    .line 29
    :cond_a
    :goto_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_b

    .line 30
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_b
    return v2
.end method

.method public a(II[I[II)Z
    .locals 6

    .line 140
    invoke-direct {p0}, Ld/t/a/s;->getScrollingChildHelper()Ld/i/i/g;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ld/i/i/g;->a(II[I[II)Z

    move-result p1

    return p1
.end method

.method public a(Ld/t/a/s$x;I)Z
    .locals 1

    .line 120
    invoke-virtual {p0}, Ld/t/a/s;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iput p2, p1, Ld/t/a/s$x;->p:I

    .line 122
    iget-object p2, p0, Ld/t/a/s;->R0:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return p1

    .line 123
    :cond_0
    iget-object p1, p1, Ld/t/a/s$x;->a:Landroid/view/View;

    invoke-static {p1, p2}, Ld/i/i/n;->e(Landroid/view/View;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public b()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Ld/t/a/s;->Q:Z

    const-string v1, "RV FullInvalidate"

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Ld/t/a/s;->b0:Z

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    iget-object v0, p0, Ld/t/a/s;->A:Ld/t/a/a;

    invoke-virtual {v0}, Ld/t/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Ld/t/a/s;->A:Ld/t/a/a;

    .line 4
    iget v0, v0, Ld/t/a/a;->g:I

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_9

    .line 5
    iget-object v0, p0, Ld/t/a/s;->A:Ld/t/a/a;

    .line 6
    iget v0, v0, Ld/t/a/a;->g:I

    and-int/lit8 v0, v0, 0xb

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_9

    const-string v0, "RV PartialInvalidate"

    .line 7
    invoke-static {v0}, Ld/i/e/b;->a(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Ld/t/a/s;->q()V

    .line 9
    invoke-virtual {p0}, Ld/t/a/s;->m()V

    .line 10
    iget-object v0, p0, Ld/t/a/s;->A:Ld/t/a/a;

    invoke-virtual {v0}, Ld/t/a/a;->d()V

    .line 11
    iget-boolean v0, p0, Ld/t/a/s;->S:Z

    if-nez v0, :cond_8

    .line 12
    iget-object v0, p0, Ld/t/a/s;->B:Ld/t/a/b;

    invoke-virtual {v0}, Ld/t/a/b;->a()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    .line 13
    iget-object v4, p0, Ld/t/a/s;->B:Ld/t/a/b;

    invoke-virtual {v4, v1}, Ld/t/a/b;->b(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Ld/t/a/s;->b(Landroid/view/View;)Ld/t/a/s$x;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 14
    invoke-virtual {v4}, Ld/t/a/s$x;->u()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    .line 15
    :cond_4
    invoke-virtual {v4}, Ld/t/a/s$x;->q()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    if-eqz v2, :cond_7

    .line 16
    invoke-virtual {p0}, Ld/t/a/s;->c()V

    goto :goto_5

    .line 17
    :cond_7
    iget-object v0, p0, Ld/t/a/s;->A:Ld/t/a/a;

    invoke-virtual {v0}, Ld/t/a/a;->a()V

    .line 18
    :cond_8
    :goto_5
    invoke-virtual {p0, v3}, Ld/t/a/s;->b(Z)V

    .line 19
    invoke-virtual {p0, v3}, Ld/t/a/s;->a(Z)V

    .line 20
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_6

    .line 21
    :cond_9
    iget-object v0, p0, Ld/t/a/s;->A:Ld/t/a/a;

    invoke-virtual {v0}, Ld/t/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 22
    invoke-static {v1}, Ld/i/e/b;->a(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Ld/t/a/s;->c()V

    .line 24
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_a
    :goto_6
    return-void

    .line 25
    :cond_b
    :goto_7
    invoke-static {v1}, Ld/i/e/b;->a(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Ld/t/a/s;->c()V

    .line 27
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public b(II)V
    .locals 2

    .line 37
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    .line 38
    invoke-static {p0}, Ld/i/i/n;->k(Landroid/view/View;)I

    move-result v0

    .line 39
    invoke-static {p1, v1, v0}, Ld/t/a/s$k;->a(III)I

    move-result p1

    .line 40
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    .line 42
    invoke-static {p2, v1, v0}, Ld/t/a/s$k;->a(III)I

    move-result p2

    .line 43
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public b(Z)V
    .locals 3

    .line 28
    iget v0, p0, Ld/t/a/s;->R:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 29
    iput v1, p0, Ld/t/a/s;->R:I

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 30
    iget-boolean v2, p0, Ld/t/a/s;->T:Z

    if-nez v2, :cond_1

    .line 31
    iput-boolean v0, p0, Ld/t/a/s;->S:Z

    .line 32
    :cond_1
    iget v2, p0, Ld/t/a/s;->R:I

    if-ne v2, v1, :cond_3

    if-eqz p1, :cond_2

    .line 33
    iget-boolean p1, p0, Ld/t/a/s;->S:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Ld/t/a/s;->T:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    .line 34
    :cond_2
    iget-boolean p1, p0, Ld/t/a/s;->T:Z

    if-nez p1, :cond_3

    .line 35
    iput-boolean v0, p0, Ld/t/a/s;->S:Z

    .line 36
    :cond_3
    iget p1, p0, Ld/t/a/s;->R:I

    sub-int/2addr p1, v1

    iput p1, p0, Ld/t/a/s;->R:I

    return-void
.end method

.method public b(I)Z
    .locals 1

    .line 52
    invoke-direct {p0}, Ld/t/a/s;->getScrollingChildHelper()Ld/i/i/g;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p1}, Ld/i/i/g;->a(I)Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()V
    .locals 2

    const-string v0, "RecyclerView"

    const-string v1, "No adapter attached; skipping layout"

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c(II)V
    .locals 12

    .line 1
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    if-nez v0, :cond_0

    const-string p1, "RecyclerView"

    const-string p2, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 3
    :cond_0
    iget-boolean v1, p0, Ld/t/a/s;->T:Z

    if-eqz v1, :cond_1

    goto/16 :goto_6

    .line 4
    :cond_1
    invoke-virtual {v0}, Ld/t/a/s$k;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    move v5, p1

    .line 5
    :goto_0
    iget-object p1, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    invoke-virtual {p1}, Ld/t/a/s$k;->b()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    move v6, p2

    :goto_1
    if-nez v5, :cond_4

    if-eqz v6, :cond_b

    .line 6
    :cond_4
    iget-object p1, p0, Ld/t/a/s;->z0:Ld/t/a/s$w;

    if-eqz p1, :cond_c

    .line 7
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 8
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le p2, v0, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    int-to-double v3, v1

    .line 9
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v3, v3

    mul-int v4, v5, v5

    mul-int v7, v6, v6

    add-int/2addr v7, v4

    int-to-double v7, v7

    .line 10
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-int v4, v7

    .line 11
    iget-object v7, p1, Ld/t/a/s$w;->D:Ld/t/a/s;

    if-eqz v2, :cond_6

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    goto :goto_3

    :cond_6
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    .line 12
    :goto_3
    div-int/lit8 v8, v7, 0x2

    int-to-float v4, v4

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float v4, v4, v9

    int-to-float v7, v7

    div-float/2addr v4, v7

    .line 13
    invoke-static {v9, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    int-to-float v8, v8

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float/2addr v4, v10

    const v10, 0x3ef1463b

    mul-float v4, v4, v10

    float-to-double v10, v4

    .line 14
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v4, v10

    mul-float v4, v4, v8

    add-float/2addr v4, v8

    if-lez v3, :cond_7

    const/high16 p2, 0x447a0000    # 1000.0f

    int-to-float v0, v3

    div-float/2addr v4, v0

    .line 15
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    goto :goto_5

    :cond_7
    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    move p2, v0

    :goto_4
    int-to-float p2, p2

    div-float/2addr p2, v7

    add-float/2addr p2, v9

    const/high16 v0, 0x43960000    # 300.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    :goto_5
    const/16 v0, 0x7d0

    .line 16
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 17
    sget-object p2, Ld/t/a/s;->b1:Landroid/view/animation/Interpolator;

    .line 18
    iget-object v0, p1, Ld/t/a/s$w;->A:Landroid/view/animation/Interpolator;

    if-eq v0, p2, :cond_9

    .line 19
    iput-object p2, p1, Ld/t/a/s$w;->A:Landroid/view/animation/Interpolator;

    .line 20
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v2, p1, Ld/t/a/s$w;->D:Ld/t/a/s;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p1, Ld/t/a/s$w;->z:Landroid/widget/OverScroller;

    .line 21
    :cond_9
    iget-object p2, p1, Ld/t/a/s$w;->D:Ld/t/a/s;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ld/t/a/s;->setScrollState(I)V

    .line 22
    iput v1, p1, Ld/t/a/s$w;->y:I

    iput v1, p1, Ld/t/a/s$w;->x:I

    .line 23
    iget-object v2, p1, Ld/t/a/s$w;->z:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 24
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p2, v0, :cond_a

    .line 25
    iget-object p2, p1, Ld/t/a/s$w;->z:Landroid/widget/OverScroller;

    invoke-virtual {p2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 26
    :cond_a
    invoke-virtual {p1}, Ld/t/a/s$w;->a()V

    :cond_b
    :goto_6
    return-void

    :cond_c
    const/4 p1, 0x0

    .line 27
    throw p1
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ld/t/a/s$l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    check-cast p1, Ld/t/a/s$l;

    invoke-virtual {v0, p1}, Ld/t/a/s$k;->a(Ld/t/a/s$l;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    .line 1
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ld/t/a/s$k;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    iget-object v1, p0, Ld/t/a/s;->C0:Ld/t/a/s$u;

    invoke-virtual {v0, v1}, Ld/t/a/s$k;->a(Ld/t/a/s$u;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    .line 1
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ld/t/a/s$k;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    iget-object v1, p0, Ld/t/a/s;->C0:Ld/t/a/s$u;

    invoke-virtual {v0, v1}, Ld/t/a/s$k;->b(Ld/t/a/s$u;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    .line 1
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ld/t/a/s$k;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    iget-object v1, p0, Ld/t/a/s;->C0:Ld/t/a/s$u;

    invoke-virtual {v0, v1}, Ld/t/a/s$k;->c(Ld/t/a/s$u;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .line 1
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ld/t/a/s$k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    iget-object v1, p0, Ld/t/a/s;->C0:Ld/t/a/s$u;

    invoke-virtual {v0, v1}, Ld/t/a/s$k;->d(Ld/t/a/s$u;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .line 1
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ld/t/a/s$k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    iget-object v1, p0, Ld/t/a/s;->C0:Ld/t/a/s$u;

    invoke-virtual {v0, v1}, Ld/t/a/s$k;->e(Ld/t/a/s$u;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .line 1
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ld/t/a/s$k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    iget-object v1, p0, Ld/t/a/s;->C0:Ld/t/a/s$u;

    invoke-virtual {v0, v1}, Ld/t/a/s$k;->f(Ld/t/a/s$u;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld/t/a/s;->j0:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ld/t/a/s;->f0:Ld/t/a/s$g;

    invoke-virtual {v0, p0}, Ld/t/a/s$g;->a(Ld/t/a/s;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Ld/t/a/s;->j0:Landroid/widget/EdgeEffect;

    .line 3
    iget-boolean v1, p0, Ld/t/a/s;->D:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method public d(II)Z
    .locals 1

    .line 8
    invoke-direct {p0}, Ld/t/a/s;->getScrollingChildHelper()Ld/i/i/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ld/i/i/g;->a(II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Ld/t/a/s;->getScrollingChildHelper()Ld/i/i/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ld/i/i/g;->a(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Ld/t/a/s;->getScrollingChildHelper()Ld/i/i/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ld/i/i/g;->a(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    .line 1
    invoke-direct {p0}, Ld/t/a/s;->getScrollingChildHelper()Ld/i/i/g;

    move-result-object v0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Ld/i/i/g;->a(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 1
    invoke-direct {p0}, Ld/t/a/s;->getScrollingChildHelper()Ld/i/i/g;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ld/i/i/g;->a(IIII[I)Z

    move-result p1

    return p1
.end method

.method public dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Ld/t/a/s;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v0, :cond_6

    .line 3
    iget-object v5, p0, Ld/t/a/s;->K:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld/t/a/s$j;

    check-cast v5, Ld/t/a/l;

    .line 4
    iget v6, v5, Ld/t/a/l;->q:I

    iget-object v7, v5, Ld/t/a/l;->s:Ld/t/a/s;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_4

    iget v6, v5, Ld/t/a/l;->r:I

    iget-object v7, v5, Ld/t/a/l;->s:Ld/t/a/s;

    .line 5
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    if-eq v6, v7, :cond_0

    goto/16 :goto_3

    .line 6
    :cond_0
    iget v6, v5, Ld/t/a/l;->A:I

    if-eqz v6, :cond_5

    .line 7
    iget-boolean v6, v5, Ld/t/a/l;->t:Z

    if-eqz v6, :cond_3

    .line 8
    iget v6, v5, Ld/t/a/l;->q:I

    .line 9
    iget v7, v5, Ld/t/a/l;->e:I

    sub-int/2addr v6, v7

    .line 10
    iget v8, v5, Ld/t/a/l;->l:I

    iget v9, v5, Ld/t/a/l;->k:I

    div-int/lit8 v10, v9, 0x2

    sub-int/2addr v8, v10

    .line 11
    iget-object v10, v5, Ld/t/a/l;->c:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v10, v1, v1, v7, v9}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 12
    iget-object v7, v5, Ld/t/a/l;->d:Landroid/graphics/drawable/Drawable;

    iget v9, v5, Ld/t/a/l;->f:I

    iget v10, v5, Ld/t/a/l;->r:I

    .line 13
    invoke-virtual {v7, v1, v1, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 14
    iget-object v7, v5, Ld/t/a/l;->s:Ld/t/a/s;

    invoke-static {v7}, Ld/i/i/n;->i(Landroid/view/View;)I

    move-result v7

    if-ne v7, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    .line 15
    iget-object v4, v5, Ld/t/a/l;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 16
    iget v4, v5, Ld/t/a/l;->e:I

    int-to-float v4, v4

    int-to-float v6, v8

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 17
    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 18
    iget-object v4, v5, Ld/t/a/l;->c:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 19
    invoke-virtual {p1, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 20
    iget v4, v5, Ld/t/a/l;->e:I

    neg-int v4, v4

    int-to-float v4, v4

    neg-int v6, v8

    int-to-float v6, v6

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    :cond_2
    int-to-float v4, v6

    .line 21
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 22
    iget-object v4, v5, Ld/t/a/l;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v4, v8

    .line 23
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 24
    iget-object v4, v5, Ld/t/a/l;->c:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v4, v6

    int-to-float v4, v4

    neg-int v6, v8

    int-to-float v6, v6

    .line 25
    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 26
    :cond_3
    :goto_2
    iget-boolean v4, v5, Ld/t/a/l;->u:Z

    if-eqz v4, :cond_5

    .line 27
    iget v4, v5, Ld/t/a/l;->r:I

    .line 28
    iget v6, v5, Ld/t/a/l;->i:I

    sub-int/2addr v4, v6

    .line 29
    iget v7, v5, Ld/t/a/l;->o:I

    iget v8, v5, Ld/t/a/l;->n:I

    div-int/lit8 v9, v8, 0x2

    sub-int/2addr v7, v9

    .line 30
    iget-object v9, v5, Ld/t/a/l;->g:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v9, v1, v1, v8, v6}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 31
    iget-object v6, v5, Ld/t/a/l;->h:Landroid/graphics/drawable/Drawable;

    iget v8, v5, Ld/t/a/l;->q:I

    iget v9, v5, Ld/t/a/l;->j:I

    .line 32
    invoke-virtual {v6, v1, v1, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v6, v4

    .line 33
    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 34
    iget-object v6, v5, Ld/t/a/l;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v6, v7

    .line 35
    invoke-virtual {p1, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 36
    iget-object v3, v5, Ld/t/a/l;->g:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v3, v7

    int-to-float v3, v3

    neg-int v4, v4

    int-to-float v4, v4

    .line 37
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_4

    .line 38
    :cond_4
    :goto_3
    iget-object v3, v5, Ld/t/a/l;->s:Ld/t/a/s;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iput v3, v5, Ld/t/a/l;->q:I

    .line 39
    iget-object v3, v5, Ld/t/a/l;->s:Ld/t/a/s;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    iput v3, v5, Ld/t/a/l;->r:I

    .line 40
    invoke-virtual {v5, v1}, Ld/t/a/l;->a(I)V

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 41
    :cond_6
    iget-object v0, p0, Ld/t/a/s;->g0:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_9

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 43
    iget-boolean v2, p0, Ld/t/a/s;->D:Z

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_5
    const/high16 v5, 0x43870000    # 270.0f

    .line 44
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 45
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    neg-int v5, v5

    add-int/2addr v5, v2

    int-to-float v2, v5

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 46
    iget-object v2, p0, Ld/t/a/s;->g0:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_8

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    .line 47
    :goto_6
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    .line 48
    :goto_7
    iget-object v0, p0, Ld/t/a/s;->h0:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_c

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 50
    iget-boolean v3, p0, Ld/t/a/s;->D:Z

    if-eqz v3, :cond_a

    .line 51
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 52
    :cond_a
    iget-object v3, p0, Ld/t/a/s;->h0:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_b

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    goto :goto_8

    :cond_b
    const/4 v3, 0x0

    :goto_8
    or-int/2addr v2, v3

    .line 53
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 54
    :cond_c
    iget-object v0, p0, Ld/t/a/s;->i0:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_f

    .line 55
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 56
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    .line 57
    iget-boolean v5, p0, Ld/t/a/s;->D:Z

    if-eqz v5, :cond_d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    goto :goto_9

    :cond_d
    const/4 v5, 0x0

    :goto_9
    const/high16 v6, 0x42b40000    # 90.0f

    .line 58
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v5, v5

    int-to-float v5, v5

    neg-int v3, v3

    int-to-float v3, v3

    .line 59
    invoke-virtual {p1, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 60
    iget-object v3, p0, Ld/t/a/s;->i0:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_e

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    goto :goto_a

    :cond_e
    const/4 v3, 0x0

    :goto_a
    or-int/2addr v2, v3

    .line 61
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 62
    :cond_f
    iget-object v0, p0, Ld/t/a/s;->j0:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_12

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/high16 v3, 0x43340000    # 180.0f

    .line 64
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 65
    iget-boolean v3, p0, Ld/t/a/s;->D:Z

    if-eqz v3, :cond_10

    .line 66
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v3

    int-to-float v3, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    add-int/2addr v6, v5

    int-to-float v5, v6

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_b

    .line 67
    :cond_10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 68
    :goto_b
    iget-object v3, p0, Ld/t/a/s;->j0:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_11

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v1, 0x1

    :cond_11
    or-int/2addr v2, v1

    .line 69
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_12
    if-nez v2, :cond_13

    .line 70
    iget-object p1, p0, Ld/t/a/s;->k0:Ld/t/a/s$h;

    if-eqz p1, :cond_13

    iget-object p1, p0, Ld/t/a/s;->K:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_13

    iget-object p1, p0, Ld/t/a/s;->k0:Ld/t/a/s$h;

    .line 71
    invoke-virtual {p1}, Ld/t/a/s$h;->c()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_c

    :cond_13
    move v4, v2

    :goto_c
    if-eqz v4, :cond_14

    .line 72
    invoke-static {p0}, Ld/i/i/n;->x(Landroid/view/View;)V

    :cond_14
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld/t/a/s;->g0:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ld/t/a/s;->f0:Ld/t/a/s$g;

    invoke-virtual {v0, p0}, Ld/t/a/s$g;->a(Ld/t/a/s;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Ld/t/a/s;->g0:Landroid/widget/EdgeEffect;

    .line 3
    iget-boolean v1, p0, Ld/t/a/s;->D:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld/t/a/s;->i0:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ld/t/a/s;->f0:Ld/t/a/s$g;

    invoke-virtual {v0, p0}, Ld/t/a/s$g;->a(Ld/t/a/s;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Ld/t/a/s;->i0:Landroid/widget/EdgeEffect;

    .line 3
    iget-boolean v1, p0, Ld/t/a/s;->D:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 9

    .line 1
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 6
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {p0, v0, v1}, Ld/t/a/s;->a(Landroid/view/View;Landroid/view/View;)V

    return-object p1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    if-ne v0, p0, :cond_2

    goto/16 :goto_4

    .line 8
    :cond_2
    invoke-virtual {p0, v0}, Ld/t/a/s;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3

    goto/16 :goto_4

    :cond_3
    if-nez p1, :cond_4

    goto/16 :goto_3

    .line 9
    :cond_4
    invoke-virtual {p0, p1}, Ld/t/a/s;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_5

    goto/16 :goto_3

    .line 10
    :cond_5
    iget-object v3, p0, Ld/t/a/s;->E:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 11
    iget-object v3, p0, Ld/t/a/s;->F:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 12
    iget-object v3, p0, Ld/t/a/s;->E:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 13
    iget-object v3, p0, Ld/t/a/s;->F:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 14
    iget-object v3, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    invoke-virtual {v3}, Ld/t/a/s$k;->e()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v2, :cond_6

    const/4 v3, -0x1

    goto :goto_0

    :cond_6
    const/4 v3, 0x1

    .line 15
    :goto_0
    iget-object v5, p0, Ld/t/a/s;->E:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Ld/t/a/s;->F:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-lt v6, v7, :cond_7

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-gt v5, v7, :cond_8

    :cond_7
    iget-object v5, p0, Ld/t/a/s;->E:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Ld/t/a/s;->F:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-ge v5, v6, :cond_8

    const/4 v5, 0x1

    goto :goto_1

    .line 16
    :cond_8
    iget-object v5, p0, Ld/t/a/s;->E:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Ld/t/a/s;->F:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_9

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-lt v5, v7, :cond_a

    :cond_9
    iget-object v5, p0, Ld/t/a/s;->E:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Ld/t/a/s;->F:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-le v5, v6, :cond_a

    const/4 v5, -0x1

    goto :goto_1

    :cond_a
    const/4 v5, 0x0

    .line 17
    :goto_1
    iget-object v6, p0, Ld/t/a/s;->E:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Ld/t/a/s;->F:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-lt v7, v8, :cond_b

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-gt v6, v8, :cond_c

    :cond_b
    iget-object v6, p0, Ld/t/a/s;->E:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Ld/t/a/s;->F:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v7, :cond_c

    const/4 v4, 0x1

    goto :goto_2

    .line 18
    :cond_c
    iget-object v6, p0, Ld/t/a/s;->E:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Ld/t/a/s;->F:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    if-gt v7, v8, :cond_d

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-lt v6, v8, :cond_e

    :cond_d
    iget-object v6, p0, Ld/t/a/s;->E:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Ld/t/a/s;->F:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_e

    goto :goto_2

    :cond_e
    const/4 v4, 0x0

    :goto_2
    if-eq p2, v2, :cond_14

    const/4 v2, 0x2

    if-eq p2, v2, :cond_13

    const/16 v2, 0x11

    if-eq p2, v2, :cond_12

    const/16 v2, 0x21

    if-eq p2, v2, :cond_11

    const/16 v2, 0x42

    if-eq p2, v2, :cond_10

    const/16 v2, 0x82

    if-ne p2, v2, :cond_f

    if-lez v4, :cond_16

    goto :goto_3

    .line 19
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p0, v0}, Le/a/a/a/a;->a(Ld/t/a/s;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    if-lez v5, :cond_16

    goto :goto_3

    :cond_11
    if-gez v4, :cond_16

    goto :goto_3

    :cond_12
    if-gez v5, :cond_16

    goto :goto_3

    :cond_13
    if-gtz v4, :cond_15

    if-nez v4, :cond_16

    mul-int v5, v5, v3

    if-ltz v5, :cond_16

    goto :goto_3

    :cond_14
    if-ltz v4, :cond_15

    if-nez v4, :cond_16

    mul-int v5, v5, v3

    if-gtz v5, :cond_16

    :cond_15
    :goto_3
    const/4 v1, 0x1

    :cond_16
    :goto_4
    if-eqz v1, :cond_17

    goto :goto_5

    .line 20
    :cond_17
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :goto_5
    return-object v0

    .line 21
    :cond_18
    throw v1
.end method

.method public g()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld/t/a/s;->h0:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ld/t/a/s;->f0:Ld/t/a/s$g;

    invoke-virtual {v0, p0}, Ld/t/a/s$g;->a(Ld/t/a/s;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Ld/t/a/s;->h0:Landroid/widget/EdgeEffect;

    .line 3
    iget-boolean v1, p0, Ld/t/a/s;->D:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ld/t/a/s$k;->c()Ld/t/a/s$l;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v1}, Le/a/a/a/a;->a(Ld/t/a/s;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ld/t/a/s$k;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Ld/t/a/s$l;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RecyclerView has no LayoutManager"

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, v0}, Le/a/a/a/a;->a(Ld/t/a/s;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 4
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Ld/t/a/s$k;->a(Landroid/view/ViewGroup$LayoutParams;)Ld/t/a/s$l;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RecyclerView has no LayoutManager"

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, v0}, Le/a/a/a/a;->a(Ld/t/a/s;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAdapter()Ld/t/a/s$d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0

    .line 3
    :cond_1
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getChildDrawingOrder(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/s;->K0:Ld/t/a/s$f;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-interface {v0, p1, p2}, Ld/t/a/s$f;->a(II)I

    move-result p1

    return p1
.end method

.method public getClipToPadding()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld/t/a/s;->D:Z

    return v0
.end method

.method public getCompatAccessibilityDelegate()Ld/t/a/v;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/s;->J0:Ld/t/a/v;

    return-object v0
.end method

.method public getEdgeEffectFactory()Ld/t/a/s$g;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/s;->f0:Ld/t/a/s$g;

    return-object v0
.end method

.method public getItemAnimator()Ld/t/a/s$h;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/s;->k0:Ld/t/a/s$h;

    return-object v0
.end method

.method public getItemDecorationCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/s;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Ld/t/a/s$k;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    .line 1
    iget v0, p0, Ld/t/a/s;->v0:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .line 1
    iget v0, p0, Ld/t/a/s;->u0:I

    return v0
.end method

.method public getNanoTime()J
    .locals 2

    .line 1
    sget-boolean v0, Ld/t/a/s;->X0:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOnFlingListener()Ld/t/a/s$m;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld/t/a/s;->y0:Z

    return v0
.end method

.method public getRecycledViewPool()Ld/t/a/s$p;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/s;->y:Ld/t/a/s$q;

    invoke-virtual {v0}, Ld/t/a/s$q;->b()Ld/t/a/s$p;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .line 1
    iget v0, p0, Ld/t/a/s;->l0:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    const-string v0, " "

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adapter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Ld/t/a/s;->getScrollingChildHelper()Ld/i/i/g;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ld/i/i/g;->b(I)Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld/t/a/s;->Q:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ld/t/a/s;->b0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ld/t/a/s;->A:Ld/t/a/a;

    .line 2
    invoke-virtual {v0}, Ld/t/a/a;->c()Z

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
    return v0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld/t/a/s;->N:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Ld/t/a/s;->getScrollingChildHelper()Ld/i/i/g;

    move-result-object v0

    .line 2
    iget-boolean v0, v0, Ld/i/i/g;->d:Z

    return v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Ld/t/a/s;->j0:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Ld/t/a/s;->h0:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Ld/t/a/s;->i0:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Ld/t/a/s;->g0:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    iget v0, p0, Ld/t/a/s;->d0:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()V
    .locals 5

    .line 1
    iget-object v0, p0, Ld/t/a/s;->B:Ld/t/a/b;

    invoke-virtual {v0}, Ld/t/a/b;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_0

    .line 2
    iget-object v4, p0, Ld/t/a/s;->B:Ld/t/a/b;

    invoke-virtual {v4, v2}, Ld/t/a/b;->d(I)Landroid/view/View;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Ld/t/a/s$l;

    iput-boolean v3, v4, Ld/t/a/s$l;->c:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ld/t/a/s;->y:Ld/t/a/s$q;

    .line 5
    iget-object v2, v0, Ld/t/a/s$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    .line 6
    iget-object v4, v0, Ld/t/a/s$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/t/a/s$x;

    .line 7
    iget-object v4, v4, Ld/t/a/s$x;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Ld/t/a/s$l;

    if-eqz v4, :cond_1

    .line 8
    iput-boolean v3, v4, Ld/t/a/s$l;->c:Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget v0, p0, Ld/t/a/s;->d0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/t/a/s;->d0:I

    return-void
.end method

.method public final n()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Ld/t/a/s;->b0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ld/t/a/s;->A:Ld/t/a/a;

    .line 3
    iget-object v2, v0, Ld/t/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ld/t/a/a;->a(Ljava/util/List;)V

    .line 4
    iget-object v2, v0, Ld/t/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ld/t/a/a;->a(Ljava/util/List;)V

    .line 5
    iput v1, v0, Ld/t/a/a;->g:I

    .line 6
    iget-boolean v0, p0, Ld/t/a/s;->c0:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    invoke-virtual {v0, p0}, Ld/t/a/s$k;->a(Ld/t/a/s;)V

    .line 8
    :cond_0
    iget-object v0, p0, Ld/t/a/s;->k0:Ld/t/a/s$h;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    invoke-virtual {v0}, Ld/t/a/s$k;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Ld/t/a/s;->A:Ld/t/a/a;

    invoke-virtual {v0}, Ld/t/a/a;->d()V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Ld/t/a/s;->A:Ld/t/a/a;

    invoke-virtual {v0}, Ld/t/a/a;->b()V

    .line 11
    :goto_1
    iget-boolean v0, p0, Ld/t/a/s;->F0:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Ld/t/a/s;->G0:Z

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    .line 12
    :goto_3
    iget-object v3, p0, Ld/t/a/s;->C0:Ld/t/a/s$u;

    iget-boolean v4, p0, Ld/t/a/s;->Q:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Ld/t/a/s;->k0:Ld/t/a/s$h;

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Ld/t/a/s;->b0:Z

    if-nez v4, :cond_5

    if-nez v0, :cond_5

    iget-object v4, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    iget-boolean v4, v4, Ld/t/a/s$k;->g:Z

    if-eqz v4, :cond_7

    :cond_5
    iget-boolean v4, p0, Ld/t/a/s;->b0:Z

    if-nez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    .line 13
    throw v0

    :cond_7
    const/4 v4, 0x0

    :goto_4
    iput-boolean v4, v3, Ld/t/a/s$u;->j:Z

    .line 14
    iget-object v3, p0, Ld/t/a/s;->C0:Ld/t/a/s$u;

    iget-boolean v4, v3, Ld/t/a/s$u;->j:Z

    if-eqz v4, :cond_9

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Ld/t/a/s;->b0:Z

    if-nez v0, :cond_9

    .line 15
    iget-object v0, p0, Ld/t/a/s;->k0:Ld/t/a/s$h;

    if-eqz v0, :cond_8

    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    invoke-virtual {v0}, Ld/t/a/s$k;->m()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_9

    const/4 v1, 0x1

    .line 16
    :cond_9
    iput-boolean v1, v3, Ld/t/a/s$u;->k:Z

    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/t/a/s;->k0:Ld/t/a/s$h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ld/t/a/s$h;->b()V

    .line 3
    :cond_0
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Ld/t/a/s;->y:Ld/t/a/s$q;

    invoke-virtual {v0, v1}, Ld/t/a/s$k;->a(Ld/t/a/s$q;)V

    .line 5
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    iget-object v1, p0, Ld/t/a/s;->y:Ld/t/a/s$q;

    invoke-virtual {v0, v1}, Ld/t/a/s$k;->b(Ld/t/a/s$q;)V

    .line 6
    :cond_1
    iget-object v0, p0, Ld/t/a/s;->y:Ld/t/a/s$q;

    invoke-virtual {v0}, Ld/t/a/s$q;->a()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ld/t/a/s;->d0:I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Ld/t/a/s;->N:Z

    .line 4
    iget-boolean v2, p0, Ld/t/a/s;->Q:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Ld/t/a/s;->Q:Z

    .line 5
    iget-object v2, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    if-eqz v2, :cond_1

    .line 6
    iput-boolean v1, v2, Ld/t/a/s$k;->h:Z

    .line 7
    :cond_1
    iput-boolean v0, p0, Ld/t/a/s;->I0:Z

    .line 8
    sget-boolean v0, Ld/t/a/s;->X0:Z

    if-eqz v0, :cond_4

    .line 9
    sget-object v0, Ld/t/a/m;->B:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/t/a/m;

    iput-object v0, p0, Ld/t/a/s;->A0:Ld/t/a/m;

    if-nez v0, :cond_3

    .line 10
    new-instance v0, Ld/t/a/m;

    invoke-direct {v0}, Ld/t/a/m;-><init>()V

    iput-object v0, p0, Ld/t/a/s;->A0:Ld/t/a/m;

    .line 11
    invoke-static {p0}, Ld/i/i/n;->e(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    const/high16 v1, 0x42700000    # 60.0f

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    const/high16 v2, 0x41f00000    # 30.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2

    move v1, v0

    .line 14
    :cond_2
    iget-object v0, p0, Ld/t/a/s;->A0:Ld/t/a/m;

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v2, v1

    float-to-long v1, v2

    iput-wide v1, v0, Ld/t/a/m;->z:J

    .line 15
    sget-object v1, Ld/t/a/m;->B:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 16
    :cond_3
    iget-object v0, p0, Ld/t/a/s;->A0:Ld/t/a/m;

    .line 17
    iget-object v0, v0, Ld/t/a/m;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Ld/t/a/s;->k0:Ld/t/a/s$h;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ld/t/a/s$h;->b()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Ld/t/a/s;->r()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ld/t/a/s;->N:Z

    .line 6
    iget-object v1, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    if-eqz v1, :cond_1

    .line 7
    iget-object v2, p0, Ld/t/a/s;->y:Ld/t/a/s$q;

    .line 8
    iput-boolean v0, v1, Ld/t/a/s$k;->h:Z

    .line 9
    invoke-virtual {v1, p0, v2}, Ld/t/a/s$k;->a(Ld/t/a/s;Ld/t/a/s$q;)V

    .line 10
    :cond_1
    iget-object v0, p0, Ld/t/a/s;->R0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    iget-object v0, p0, Ld/t/a/s;->S0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    iget-object v0, p0, Ld/t/a/s;->C:Ld/t/a/y;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 13
    :goto_0
    sget-object v0, Ld/t/a/y$a;->d:Ld/i/h/b;

    invoke-virtual {v0}, Ld/i/h/b;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    sget-boolean v0, Ld/t/a/s;->X0:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Ld/t/a/s;->A0:Ld/t/a/m;

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, v0, Ld/t/a/m;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    iput-object v1, p0, Ld/t/a/s;->A0:Ld/t/a/m;

    :cond_3
    return-void

    .line 17
    :cond_4
    throw v1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object p1, p0, Ld/t/a/s;->K:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 3
    iget-object v1, p0, Ld/t/a/s;->K:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/t/a/s$j;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Ld/t/a/s;->T:Z

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_8

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    invoke-virtual {v0}, Ld/t/a/s$k;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v3, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    invoke-virtual {v3}, Ld/t/a/s$k;->a()Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0xa

    .line 8
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/high16 v3, 0x400000

    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    const/16 v0, 0x1a

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 11
    iget-object v3, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    invoke-virtual {v3}, Ld/t/a/s$k;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    neg-float v0, v0

    goto :goto_1

    .line 12
    :cond_4
    iget-object v3, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    invoke-virtual {v3}, Ld/t/a/s$k;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    const/4 v3, 0x0

    :goto_2
    cmpl-float v4, v0, v2

    if-nez v4, :cond_7

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_8

    .line 13
    :cond_7
    iget v2, p0, Ld/t/a/s;->w0:F

    mul-float v3, v3, v2

    float-to-int v2, v3

    iget v3, p0, Ld/t/a/s;->x0:F

    mul-float v0, v0, v3

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0, p1}, Ld/t/a/s;->a(IILandroid/view/MotionEvent;)Z

    :cond_8
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Ld/t/a/s;->T:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v3, 0x0

    .line 3
    iput-object v3, p0, Ld/t/a/s;->M:Ld/t/a/s$n;

    .line 4
    :cond_2
    iget-object v3, p0, Ld/t/a/s;->L:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_4

    .line 5
    iget-object v6, p0, Ld/t/a/s;->L:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld/t/a/s$n;

    .line 6
    invoke-interface {v6, p0, p1}, Ld/t/a/s$n;->a(Ld/t/a/s;Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eq v0, v2, :cond_3

    .line 7
    iput-object v6, p0, Ld/t/a/s;->M:Ld/t/a/s$n;

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {p0}, Ld/t/a/s;->a()V

    return v5

    .line 9
    :cond_5
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    if-nez v0, :cond_6

    return v1

    .line 10
    :cond_6
    invoke-virtual {v0}, Ld/t/a/s$k;->a()Z

    move-result v0

    .line 11
    iget-object v3, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    invoke-virtual {v3}, Ld/t/a/s$k;->b()Z

    move-result v3

    .line 12
    iget-object v4, p0, Ld/t/a/s;->n0:Landroid/view/VelocityTracker;

    if-nez v4, :cond_7

    .line 13
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Ld/t/a/s;->n0:Landroid/view/VelocityTracker;

    .line 14
    :cond_7
    iget-object v4, p0, Ld/t/a/s;->n0:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    const/4 v7, 0x2

    const/high16 v8, 0x3f000000    # 0.5f

    if-eqz v4, :cond_10

    if-eq v4, v5, :cond_f

    if-eq v4, v7, :cond_b

    if-eq v4, v2, :cond_a

    const/4 v0, 0x5

    if-eq v4, v0, :cond_9

    const/4 v0, 0x6

    if-eq v4, v0, :cond_8

    goto/16 :goto_4

    .line 17
    :cond_8
    invoke-virtual {p0, p1}, Ld/t/a/s;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_4

    .line 18
    :cond_9
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Ld/t/a/s;->m0:I

    .line 19
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Ld/t/a/s;->q0:I

    iput v0, p0, Ld/t/a/s;->o0:I

    .line 20
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v8

    float-to-int p1, p1

    iput p1, p0, Ld/t/a/s;->r0:I

    iput p1, p0, Ld/t/a/s;->p0:I

    goto/16 :goto_4

    .line 21
    :cond_a
    invoke-virtual {p0}, Ld/t/a/s;->a()V

    goto/16 :goto_4

    .line 22
    :cond_b
    iget v2, p0, Ld/t/a/s;->m0:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_c

    const-string p1, "Error processing scroll; pointer index for id "

    .line 23
    invoke-static {p1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Ld/t/a/s;->m0:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecyclerView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 24
    :cond_c
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v4, v8

    float-to-int v4, v4

    .line 25
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v8

    float-to-int p1, p1

    .line 26
    iget v2, p0, Ld/t/a/s;->l0:I

    if-eq v2, v5, :cond_15

    .line 27
    iget v2, p0, Ld/t/a/s;->o0:I

    sub-int v2, v4, v2

    .line 28
    iget v6, p0, Ld/t/a/s;->p0:I

    sub-int v6, p1, v6

    if-eqz v0, :cond_d

    .line 29
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Ld/t/a/s;->s0:I

    if-le v0, v2, :cond_d

    .line 30
    iput v4, p0, Ld/t/a/s;->q0:I

    const/4 v0, 0x1

    goto :goto_2

    :cond_d
    const/4 v0, 0x0

    :goto_2
    if-eqz v3, :cond_e

    .line 31
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Ld/t/a/s;->s0:I

    if-le v2, v3, :cond_e

    .line 32
    iput p1, p0, Ld/t/a/s;->r0:I

    const/4 v0, 0x1

    :cond_e
    if-eqz v0, :cond_15

    .line 33
    invoke-virtual {p0, v5}, Ld/t/a/s;->setScrollState(I)V

    goto :goto_4

    .line 34
    :cond_f
    iget-object p1, p0, Ld/t/a/s;->n0:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 35
    invoke-virtual {p0, v1}, Ld/t/a/s;->a(I)V

    goto :goto_4

    .line 36
    :cond_10
    iget-boolean v2, p0, Ld/t/a/s;->U:Z

    if-eqz v2, :cond_11

    .line 37
    iput-boolean v1, p0, Ld/t/a/s;->U:Z

    .line 38
    :cond_11
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Ld/t/a/s;->m0:I

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    add-float/2addr v2, v8

    float-to-int v2, v2

    iput v2, p0, Ld/t/a/s;->q0:I

    iput v2, p0, Ld/t/a/s;->o0:I

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v8

    float-to-int p1, p1

    iput p1, p0, Ld/t/a/s;->r0:I

    iput p1, p0, Ld/t/a/s;->p0:I

    .line 41
    iget p1, p0, Ld/t/a/s;->l0:I

    if-ne p1, v7, :cond_12

    .line 42
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 43
    invoke-virtual {p0, v5}, Ld/t/a/s;->setScrollState(I)V

    .line 44
    :cond_12
    iget-object p1, p0, Ld/t/a/s;->P0:[I

    aput v1, p1, v5

    aput v1, p1, v1

    if-eqz v0, :cond_13

    const/4 p1, 0x1

    goto :goto_3

    :cond_13
    const/4 p1, 0x0

    :goto_3
    if-eqz v3, :cond_14

    or-int/lit8 p1, p1, 0x2

    .line 45
    :cond_14
    invoke-virtual {p0, p1, v1}, Ld/t/a/s;->d(II)Z

    .line 46
    :cond_15
    :goto_4
    iget p1, p0, Ld/t/a/s;->l0:I

    if-ne p1, v5, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    const-string p1, "RV OnLayout"

    .line 1
    invoke-static {p1}, Ld/i/e/b;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ld/t/a/s;->c()V

    .line 3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Ld/t/a/s;->Q:Z

    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Ld/t/a/s;->b(II)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ld/t/a/s$k;->j()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 6
    iget-object v4, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    .line 7
    iget-object v4, v4, Ld/t/a/s$k;->b:Ld/t/a/s;

    invoke-virtual {v4, p1, p2}, Ld/t/a/s;->b(II)V

    const/high16 p1, 0x40000000    # 2.0f

    if-ne v0, p1, :cond_1

    if-ne v3, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-void

    .line 8
    :cond_2
    iget-boolean v0, p0, Ld/t/a/s;->O:Z

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    .line 10
    iget-object v0, v0, Ld/t/a/s$k;->b:Ld/t/a/s;

    invoke-virtual {v0, p1, p2}, Ld/t/a/s;->b(II)V

    return-void

    .line 11
    :cond_3
    iget-boolean v0, p0, Ld/t/a/s;->W:Z

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p0}, Ld/t/a/s;->q()V

    .line 13
    invoke-virtual {p0}, Ld/t/a/s;->m()V

    .line 14
    invoke-virtual {p0}, Ld/t/a/s;->n()V

    .line 15
    invoke-virtual {p0, v1}, Ld/t/a/s;->a(Z)V

    .line 16
    iget-object v0, p0, Ld/t/a/s;->C0:Ld/t/a/s$u;

    iget-boolean v3, v0, Ld/t/a/s$u;->k:Z

    if-eqz v3, :cond_4

    .line 17
    iput-boolean v1, v0, Ld/t/a/s$u;->g:Z

    goto :goto_1

    .line 18
    :cond_4
    iget-object v0, p0, Ld/t/a/s;->A:Ld/t/a/a;

    invoke-virtual {v0}, Ld/t/a/a;->b()V

    .line 19
    iget-object v0, p0, Ld/t/a/s;->C0:Ld/t/a/s$u;

    iput-boolean v2, v0, Ld/t/a/s$u;->g:Z

    .line 20
    :goto_1
    iput-boolean v2, p0, Ld/t/a/s;->W:Z

    .line 21
    invoke-virtual {p0, v2}, Ld/t/a/s;->b(Z)V

    goto :goto_2

    .line 22
    :cond_5
    iget-object v0, p0, Ld/t/a/s;->C0:Ld/t/a/s$u;

    iget-boolean v0, v0, Ld/t/a/s$u;->k:Z

    if-eqz v0, :cond_6

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    .line 24
    :cond_6
    :goto_2
    iget-object v0, p0, Ld/t/a/s;->C0:Ld/t/a/s$u;

    iput v2, v0, Ld/t/a/s$u;->e:I

    .line 25
    invoke-virtual {p0}, Ld/t/a/s;->q()V

    .line 26
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    .line 27
    iget-object v0, v0, Ld/t/a/s$k;->b:Ld/t/a/s;

    invoke-virtual {v0, p1, p2}, Ld/t/a/s;->b(II)V

    .line 28
    invoke-virtual {p0, v2}, Ld/t/a/s;->b(Z)V

    .line 29
    iget-object p1, p0, Ld/t/a/s;->C0:Ld/t/a/s$u;

    iput-boolean v2, p1, Ld/t/a/s$u;->g:Z

    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/t/a/s;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ld/t/a/s$t;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Ld/t/a/s$t;

    iput-object p1, p0, Ld/t/a/s;->z:Ld/t/a/s$t;

    .line 4
    iget-object p1, p1, Ld/k/a/a;->x:Landroid/os/Parcelable;

    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    iget-object p1, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    if-eqz p1, :cond_1

    iget-object v0, p0, Ld/t/a/s;->z:Ld/t/a/s$t;

    iget-object v0, v0, Ld/t/a/s$t;->z:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1, v0}, Ld/t/a/s$k;->a(Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    new-instance v0, Ld/t/a/s$t;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Ld/t/a/s$t;-><init>(Landroid/os/Parcelable;)V

    .line 2
    iget-object v1, p0, Ld/t/a/s;->z:Ld/t/a/s$t;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Ld/t/a/s$t;->z:Landroid/os/Parcelable;

    iput-object v1, v0, Ld/t/a/s$t;->z:Landroid/os/Parcelable;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Ld/t/a/s$k;->k()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Ld/t/a/s$t;->z:Landroid/os/Parcelable;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Ld/t/a/s$t;->z:Landroid/os/Parcelable;

    :goto_0
    return-object v0
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ld/t/a/s;->j()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-boolean v2, v0, Ld/t/a/s;->T:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2f

    iget-boolean v2, v0, Ld/t/a/s;->U:Z

    if-eqz v2, :cond_0

    goto/16 :goto_11

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 3
    iget-object v4, v0, Ld/t/a/s;->M:Ld/t/a/s$n;

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    const/4 v7, 0x0

    if-nez v2, :cond_1

    .line 4
    iput-object v7, v0, Ld/t/a/s;->M:Ld/t/a/s$n;

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v4, v0, v1}, Ld/t/a/s$n;->b(Ld/t/a/s;Landroid/view/MotionEvent;)V

    if-eq v2, v5, :cond_2

    if-ne v2, v6, :cond_4

    .line 6
    :cond_2
    iput-object v7, v0, Ld/t/a/s;->M:Ld/t/a/s$n;

    goto :goto_2

    :cond_3
    :goto_0
    if-eqz v2, :cond_6

    .line 7
    iget-object v2, v0, Ld/t/a/s;->L:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_6

    .line 8
    iget-object v7, v0, Ld/t/a/s;->L:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld/t/a/s$n;

    .line 9
    invoke-interface {v7, v0, v1}, Ld/t/a/s$n;->a(Ld/t/a/s;Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 10
    iput-object v7, v0, Ld/t/a/s;->M:Ld/t/a/s$n;

    :cond_4
    :goto_2
    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_7

    .line 11
    invoke-virtual/range {p0 .. p0}, Ld/t/a/s;->a()V

    return v6

    .line 12
    :cond_7
    iget-object v2, v0, Ld/t/a/s;->I:Ld/t/a/s$k;

    if-nez v2, :cond_8

    return v3

    .line 13
    :cond_8
    invoke-virtual {v2}, Ld/t/a/s$k;->a()Z

    move-result v2

    .line 14
    iget-object v4, v0, Ld/t/a/s;->I:Ld/t/a/s$k;

    invoke-virtual {v4}, Ld/t/a/s$k;->b()Z

    move-result v4

    .line 15
    iget-object v7, v0, Ld/t/a/s;->n0:Landroid/view/VelocityTracker;

    if-nez v7, :cond_9

    .line 16
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, v0, Ld/t/a/s;->n0:Landroid/view/VelocityTracker;

    .line 17
    :cond_9
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    .line 18
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    if-nez v8, :cond_a

    .line 20
    iget-object v10, v0, Ld/t/a/s;->P0:[I

    aput v3, v10, v6

    aput v3, v10, v3

    .line 21
    :cond_a
    iget-object v10, v0, Ld/t/a/s;->P0:[I

    aget v11, v10, v3

    int-to-float v11, v11

    aget v10, v10, v6

    int-to-float v10, v10

    invoke-virtual {v7, v11, v10}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/high16 v10, 0x3f000000    # 0.5f

    if-eqz v8, :cond_2a

    const-string v11, "RecyclerView"

    const/4 v12, 0x2

    if-eq v8, v6, :cond_19

    if-eq v8, v12, :cond_e

    if-eq v8, v5, :cond_d

    const/4 v2, 0x5

    if-eq v8, v2, :cond_c

    const/4 v2, 0x6

    if-eq v8, v2, :cond_b

    goto/16 :goto_10

    .line 22
    :cond_b
    invoke-virtual/range {p0 .. p1}, Ld/t/a/s;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_10

    .line 23
    :cond_c
    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v0, Ld/t/a/s;->m0:I

    .line 24
    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v2, v10

    float-to-int v2, v2

    iput v2, v0, Ld/t/a/s;->q0:I

    iput v2, v0, Ld/t/a/s;->o0:I

    .line 25
    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v10

    float-to-int v1, v1

    iput v1, v0, Ld/t/a/s;->r0:I

    iput v1, v0, Ld/t/a/s;->p0:I

    goto/16 :goto_10

    .line 26
    :cond_d
    invoke-virtual/range {p0 .. p0}, Ld/t/a/s;->a()V

    goto/16 :goto_10

    .line 27
    :cond_e
    iget v5, v0, Ld/t/a/s;->m0:I

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-gez v5, :cond_f

    const-string v1, "Error processing scroll; pointer index for id "

    .line 28
    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Ld/t/a/s;->m0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 29
    :cond_f
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    add-float/2addr v8, v10

    float-to-int v8, v8

    .line 30
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v10

    float-to-int v1, v1

    .line 31
    iget v5, v0, Ld/t/a/s;->q0:I

    sub-int/2addr v5, v8

    .line 32
    iget v9, v0, Ld/t/a/s;->r0:I

    sub-int v15, v9, v1

    .line 33
    iget-object v12, v0, Ld/t/a/s;->O0:[I

    iget-object v13, v0, Ld/t/a/s;->N0:[I

    const/4 v14, 0x0

    .line 34
    invoke-direct/range {p0 .. p0}, Ld/t/a/s;->getScrollingChildHelper()Ld/i/i/g;

    move-result-object v9

    move v10, v5

    move v11, v15

    invoke-virtual/range {v9 .. v14}, Ld/i/i/g;->a(II[I[II)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 35
    iget-object v9, v0, Ld/t/a/s;->O0:[I

    aget v10, v9, v3

    sub-int/2addr v5, v10

    .line 36
    aget v9, v9, v6

    sub-int/2addr v15, v9

    .line 37
    iget-object v9, v0, Ld/t/a/s;->N0:[I

    aget v10, v9, v3

    int-to-float v10, v10

    aget v9, v9, v6

    int-to-float v9, v9

    invoke-virtual {v7, v10, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 38
    iget-object v9, v0, Ld/t/a/s;->P0:[I

    aget v10, v9, v3

    iget-object v11, v0, Ld/t/a/s;->N0:[I

    aget v12, v11, v3

    add-int/2addr v10, v12

    aput v10, v9, v3

    .line 39
    aget v10, v9, v6

    aget v11, v11, v6

    add-int/2addr v10, v11

    aput v10, v9, v6

    .line 40
    :cond_10
    iget v9, v0, Ld/t/a/s;->l0:I

    if-eq v9, v6, :cond_15

    if-eqz v2, :cond_12

    .line 41
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, v0, Ld/t/a/s;->s0:I

    if-le v9, v10, :cond_12

    if-lez v5, :cond_11

    sub-int/2addr v5, v10

    goto :goto_4

    :cond_11
    add-int/2addr v5, v10

    :goto_4
    const/4 v9, 0x1

    goto :goto_5

    :cond_12
    const/4 v9, 0x0

    :goto_5
    if-eqz v4, :cond_14

    .line 42
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, v0, Ld/t/a/s;->s0:I

    if-le v10, v11, :cond_14

    if-lez v15, :cond_13

    sub-int/2addr v15, v11

    goto :goto_6

    :cond_13
    add-int/2addr v15, v11

    :goto_6
    const/4 v9, 0x1

    :cond_14
    if-eqz v9, :cond_15

    .line 43
    invoke-virtual {v0, v6}, Ld/t/a/s;->setScrollState(I)V

    .line 44
    :cond_15
    iget v9, v0, Ld/t/a/s;->l0:I

    if-ne v9, v6, :cond_2d

    .line 45
    iget-object v9, v0, Ld/t/a/s;->N0:[I

    aget v10, v9, v3

    sub-int/2addr v8, v10

    iput v8, v0, Ld/t/a/s;->q0:I

    .line 46
    aget v8, v9, v6

    sub-int/2addr v1, v8

    iput v1, v0, Ld/t/a/s;->r0:I

    if-eqz v2, :cond_16

    move v1, v5

    goto :goto_7

    :cond_16
    const/4 v1, 0x0

    :goto_7
    if-eqz v4, :cond_17

    move v2, v15

    goto :goto_8

    :cond_17
    const/4 v2, 0x0

    .line 47
    :goto_8
    invoke-virtual {v0, v1, v2, v7}, Ld/t/a/s;->a(IILandroid/view/MotionEvent;)Z

    .line 48
    iget-object v1, v0, Ld/t/a/s;->A0:Ld/t/a/m;

    if-eqz v1, :cond_2d

    if-nez v5, :cond_18

    if-eqz v15, :cond_2d

    .line 49
    :cond_18
    iget-object v1, v0, Ld/t/a/s;->A0:Ld/t/a/m;

    invoke-virtual {v1, v0, v5, v15}, Ld/t/a/m;->a(Ld/t/a/s;II)V

    goto/16 :goto_10

    .line 50
    :cond_19
    iget-object v1, v0, Ld/t/a/s;->n0:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 51
    iget-object v1, v0, Ld/t/a/s;->n0:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    iget v8, v0, Ld/t/a/s;->v0:I

    int-to-float v8, v8

    invoke-virtual {v1, v5, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 v1, 0x0

    if-eqz v2, :cond_1a

    .line 52
    iget-object v2, v0, Ld/t/a/s;->n0:Landroid/view/VelocityTracker;

    iget v5, v0, Ld/t/a/s;->m0:I

    .line 53
    invoke-virtual {v2, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    neg-float v2, v2

    goto :goto_9

    :cond_1a
    const/4 v2, 0x0

    :goto_9
    if-eqz v4, :cond_1b

    .line 54
    iget-object v4, v0, Ld/t/a/s;->n0:Landroid/view/VelocityTracker;

    iget v5, v0, Ld/t/a/s;->m0:I

    .line 55
    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    neg-float v4, v4

    goto :goto_a

    :cond_1b
    const/4 v4, 0x0

    :goto_a
    cmpl-float v5, v2, v1

    if-nez v5, :cond_1c

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_28

    :cond_1c
    float-to-int v1, v2

    float-to-int v2, v4

    .line 56
    iget-object v4, v0, Ld/t/a/s;->I:Ld/t/a/s$k;

    if-nez v4, :cond_1d

    const-string v1, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 57
    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 58
    :cond_1d
    iget-boolean v5, v0, Ld/t/a/s;->T:Z

    if-eqz v5, :cond_1e

    goto/16 :goto_d

    .line 59
    :cond_1e
    invoke-virtual {v4}, Ld/t/a/s$k;->a()Z

    move-result v4

    .line 60
    iget-object v5, v0, Ld/t/a/s;->I:Ld/t/a/s$k;

    invoke-virtual {v5}, Ld/t/a/s$k;->b()Z

    move-result v5

    if-eqz v4, :cond_1f

    .line 61
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, v0, Ld/t/a/s;->u0:I

    if-ge v8, v9, :cond_20

    :cond_1f
    const/4 v1, 0x0

    :cond_20
    if-eqz v5, :cond_21

    .line 62
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, v0, Ld/t/a/s;->u0:I

    if-ge v8, v9, :cond_22

    :cond_21
    const/4 v2, 0x0

    :cond_22
    if-nez v1, :cond_23

    if-nez v2, :cond_23

    goto :goto_d

    :cond_23
    int-to-float v8, v1

    int-to-float v9, v2

    .line 63
    invoke-virtual {v0, v8, v9}, Ld/t/a/s;->dispatchNestedPreFling(FF)Z

    move-result v10

    if-nez v10, :cond_27

    if-nez v4, :cond_25

    if-eqz v5, :cond_24

    goto :goto_b

    :cond_24
    const/4 v10, 0x0

    goto :goto_c

    :cond_25
    :goto_b
    const/4 v10, 0x1

    .line 64
    :goto_c
    invoke-virtual {v0, v8, v9, v10}, Ld/t/a/s;->dispatchNestedFling(FFZ)Z

    if-eqz v10, :cond_27

    if-eqz v5, :cond_26

    or-int/lit8 v4, v4, 0x2

    .line 65
    :cond_26
    invoke-virtual {v0, v4, v6}, Ld/t/a/s;->d(II)Z

    .line 66
    iget v4, v0, Ld/t/a/s;->v0:I

    neg-int v5, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 67
    iget v1, v0, Ld/t/a/s;->v0:I

    neg-int v4, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 68
    iget-object v1, v0, Ld/t/a/s;->z0:Ld/t/a/s$w;

    .line 69
    iget-object v2, v1, Ld/t/a/s$w;->D:Ld/t/a/s;

    invoke-virtual {v2, v12}, Ld/t/a/s;->setScrollState(I)V

    .line 70
    iput v3, v1, Ld/t/a/s$w;->y:I

    iput v3, v1, Ld/t/a/s$w;->x:I

    .line 71
    iget-object v13, v1, Ld/t/a/s$w;->z:Landroid/widget/OverScroller;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v18, -0x80000000

    const v19, 0x7fffffff

    const/high16 v20, -0x80000000

    const v21, 0x7fffffff

    invoke-virtual/range {v13 .. v21}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 72
    invoke-virtual {v1}, Ld/t/a/s$w;->a()V

    const/4 v1, 0x1

    goto :goto_e

    :cond_27
    :goto_d
    const/4 v1, 0x0

    :goto_e
    if-nez v1, :cond_29

    .line 73
    :cond_28
    invoke-virtual {v0, v3}, Ld/t/a/s;->setScrollState(I)V

    .line 74
    :cond_29
    invoke-virtual/range {p0 .. p0}, Ld/t/a/s;->p()V

    const/4 v3, 0x1

    goto :goto_10

    .line 75
    :cond_2a
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, v0, Ld/t/a/s;->m0:I

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    add-float/2addr v5, v10

    float-to-int v5, v5

    iput v5, v0, Ld/t/a/s;->q0:I

    iput v5, v0, Ld/t/a/s;->o0:I

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v10

    float-to-int v1, v1

    iput v1, v0, Ld/t/a/s;->r0:I

    iput v1, v0, Ld/t/a/s;->p0:I

    if-eqz v2, :cond_2b

    const/4 v1, 0x1

    goto :goto_f

    :cond_2b
    const/4 v1, 0x0

    :goto_f
    if-eqz v4, :cond_2c

    or-int/lit8 v1, v1, 0x2

    .line 78
    :cond_2c
    invoke-virtual {v0, v1, v3}, Ld/t/a/s;->d(II)Z

    :cond_2d
    :goto_10
    if-nez v3, :cond_2e

    .line 79
    iget-object v1, v0, Ld/t/a/s;->n0:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 80
    :cond_2e
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    return v6

    :cond_2f
    :goto_11
    return v3
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/t/a/s;->n0:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Ld/t/a/s;->a(I)V

    .line 4
    iget-object v1, p0, Ld/t/a/s;->g0:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 6
    iget-object v0, p0, Ld/t/a/s;->g0:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    .line 7
    :cond_1
    iget-object v1, p0, Ld/t/a/s;->h0:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 9
    iget-object v1, p0, Ld/t/a/s;->h0:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 10
    :cond_2
    iget-object v1, p0, Ld/t/a/s;->i0:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 12
    iget-object v1, p0, Ld/t/a/s;->i0:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 13
    :cond_3
    iget-object v1, p0, Ld/t/a/s;->j0:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 15
    iget-object v1, p0, Ld/t/a/s;->j0:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_4
    if-eqz v0, :cond_5

    .line 16
    invoke-static {p0}, Ld/i/i/n;->x(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    iget v0, p0, Ld/t/a/s;->R:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ld/t/a/s;->R:I

    if-ne v0, v1, :cond_0

    .line 2
    iget-boolean v0, p0, Ld/t/a/s;->T:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ld/t/a/s;->S:Z

    :cond_0
    return-void
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ld/t/a/s;->setScrollState(I)V

    .line 2
    invoke-virtual {p0}, Ld/t/a/s;->s()V

    return-void
.end method

.method public removeDetachedView(Landroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Ld/t/a/s;->b(Landroid/view/View;)Ld/t/a/s$x;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Ld/t/a/s$x;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ld/t/a/s$x;->c()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ld/t/a/s$x;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p0, p2}, Le/a/a/a/a;->a(Ld/t/a/s;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 8
    invoke-static {p1}, Ld/t/a/s;->b(Landroid/view/View;)Ld/t/a/s$x;

    .line 9
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ld/t/a/s;->k()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Ld/t/a/s;->a(Landroid/view/View;Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 2
    invoke-virtual/range {v0 .. v5}, Ld/t/a/s$k;->a(Ld/t/a/s;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld/t/a/s;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Ld/t/a/s;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/t/a/s$n;

    .line 3
    invoke-interface {v2, p1}, Ld/t/a/s$n;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    iget v0, p0, Ld/t/a/s;->R:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ld/t/a/s;->T:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ld/t/a/s;->S:Z

    :goto_0
    return-void
.end method

.method public final s()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/t/a/s;->z0:Ld/t/a/s$w;

    .line 2
    iget-object v1, v0, Ld/t/a/s$w;->D:Ld/t/a/s;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, v0, Ld/t/a/s$w;->z:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    return-void
.end method

.method public scrollBy(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    if-nez v0, :cond_0

    const-string p1, "RecyclerView"

    const-string p2, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-boolean v1, p0, Ld/t/a/s;->T:Z

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Ld/t/a/s$k;->a()Z

    move-result v0

    .line 5
    iget-object v1, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    invoke-virtual {v1}, Ld/t/a/s$k;->b()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Ld/t/a/s;->a(IILandroid/view/MotionEvent;)Z

    :cond_5
    return-void
.end method

.method public scrollTo(II)V
    .locals 0

    const-string p1, "RecyclerView"

    const-string p2, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ld/t/a/s;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 3
    :goto_1
    iget v0, p0, Ld/t/a/s;->V:I

    or-int/2addr v0, v1

    iput v0, p0, Ld/t/a/s;->V:I

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    return-void

    .line 4
    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public setAccessibilityDelegateCompat(Ld/t/a/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/t/a/s;->J0:Ld/t/a/v;

    .line 2
    invoke-static {p0, p1}, Ld/i/i/n;->a(Landroid/view/View;Ld/i/i/a;)V

    return-void
.end method

.method public setAdapter(Ld/t/a/s$d;)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ld/t/a/s;->setLayoutFrozen(Z)V

    .line 2
    invoke-virtual {p0}, Ld/t/a/s;->o()V

    .line 3
    iget-object v1, p0, Ld/t/a/s;->A:Ld/t/a/a;

    .line 4
    iget-object v2, v1, Ld/t/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ld/t/a/a;->a(Ljava/util/List;)V

    .line 5
    iget-object v2, v1, Ld/t/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ld/t/a/a;->a(Ljava/util/List;)V

    .line 6
    iput v0, v1, Ld/t/a/a;->g:I

    .line 7
    iput-object p1, p0, Ld/t/a/s;->H:Ld/t/a/s$d;

    const/4 v1, 0x0

    if-nez p1, :cond_6

    .line 8
    iget-object p1, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    .line 9
    iget-object p1, p0, Ld/t/a/s;->y:Ld/t/a/s$q;

    .line 10
    invoke-virtual {p1}, Ld/t/a/s$q;->a()V

    .line 11
    invoke-virtual {p1}, Ld/t/a/s$q;->b()Ld/t/a/s$p;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 12
    iget v2, p1, Ld/t/a/s$p;->b:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 13
    :goto_0
    iget-object v3, p1, Ld/t/a/s$p;->a:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 14
    iget-object v3, p1, Ld/t/a/s$p;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/t/a/s$p$a;

    .line 15
    iget-object v3, v3, Ld/t/a/s$p$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Ld/t/a/s;->C0:Ld/t/a/s$u;

    const/4 v2, 0x1

    iput-boolean v2, p1, Ld/t/a/s$u;->f:Z

    .line 17
    iget-boolean p1, p0, Ld/t/a/s;->c0:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Ld/t/a/s;->c0:Z

    .line 18
    iput-boolean v2, p0, Ld/t/a/s;->b0:Z

    .line 19
    iget-object p1, p0, Ld/t/a/s;->B:Ld/t/a/b;

    invoke-virtual {p1}, Ld/t/a/b;->b()I

    move-result p1

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x6

    if-ge v2, p1, :cond_2

    .line 20
    iget-object v4, p0, Ld/t/a/s;->B:Ld/t/a/b;

    invoke-virtual {v4, v2}, Ld/t/a/b;->d(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Ld/t/a/s;->b(Landroid/view/View;)Ld/t/a/s$x;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 21
    invoke-virtual {v4}, Ld/t/a/s$x;->u()Z

    move-result v5

    if-nez v5, :cond_1

    .line 22
    invoke-virtual {v4, v3}, Ld/t/a/s$x;->a(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 23
    :cond_2
    invoke-virtual {p0}, Ld/t/a/s;->l()V

    .line 24
    iget-object p1, p0, Ld/t/a/s;->y:Ld/t/a/s$q;

    .line 25
    iget-object v2, p1, Ld/t/a/s$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-ge v0, v2, :cond_4

    .line 26
    iget-object v4, p1, Ld/t/a/s$q;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/t/a/s$x;

    if-eqz v4, :cond_3

    .line 27
    invoke-virtual {v4, v3}, Ld/t/a/s$x;->a(I)V

    .line 28
    invoke-virtual {v4, v1}, Ld/t/a/s$x;->a(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 29
    :cond_4
    invoke-virtual {p1}, Ld/t/a/s$q;->c()V

    .line 30
    invoke-virtual {p0}, Ld/t/a/s;->requestLayout()V

    return-void

    .line 31
    :cond_5
    throw v1

    .line 32
    :cond_6
    throw v1
.end method

.method public setChildDrawingOrderCallback(Ld/t/a/s$f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/s;->K0:Ld/t/a/s$f;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Ld/t/a/s;->K0:Ld/t/a/s$f;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld/t/a/s;->D:Z

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ld/t/a/s;->j()V

    .line 3
    :cond_0
    iput-boolean p1, p0, Ld/t/a/s;->D:Z

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 5
    iget-boolean p1, p0, Ld/t/a/s;->Q:Z

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Ld/t/a/s;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setEdgeEffectFactory(Ld/t/a/s$g;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Ld/t/a/s;->f0:Ld/t/a/s$g;

    .line 2
    invoke-virtual {p0}, Ld/t/a/s;->j()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ld/t/a/s;->O:Z

    return-void
.end method

.method public setItemAnimator(Ld/t/a/s$h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/t/a/s;->k0:Ld/t/a/s$h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ld/t/a/s$h;->b()V

    .line 3
    iget-object v0, p0, Ld/t/a/s;->k0:Ld/t/a/s$h;

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Ld/t/a/s$h;->a:Ld/t/a/s$h$b;

    .line 5
    :cond_0
    iput-object p1, p0, Ld/t/a/s;->k0:Ld/t/a/s$h;

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Ld/t/a/s;->H0:Ld/t/a/s$h$b;

    .line 7
    iput-object v0, p1, Ld/t/a/s$h;->a:Ld/t/a/s$h$b;

    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/s;->y:Ld/t/a/s$q;

    .line 2
    iput p1, v0, Ld/t/a/s$q;->e:I

    .line 3
    invoke-virtual {v0}, Ld/t/a/s$q;->d()V

    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Ld/t/a/s;->T:Z

    if-eq p1, v0, :cond_2

    const-string v0, "Do not setLayoutFrozen in layout or scroll"

    .line 2
    invoke-virtual {p0, v0}, Ld/t/a/s;->a(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Ld/t/a/s;->T:Z

    .line 4
    iget-boolean v0, p0, Ld/t/a/s;->S:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    .line 5
    :cond_0
    iput-boolean p1, p0, Ld/t/a/s;->S:Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    .line 7
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Ld/t/a/s;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Ld/t/a/s;->T:Z

    .line 10
    iput-boolean p1, p0, Ld/t/a/s;->U:Z

    .line 11
    invoke-virtual {p0}, Ld/t/a/s;->r()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setLayoutManager(Ld/t/a/s$k;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Ld/t/a/s;->r()V

    .line 3
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Ld/t/a/s;->k0:Ld/t/a/s$h;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ld/t/a/s$h;->b()V

    .line 6
    :cond_1
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    iget-object v3, p0, Ld/t/a/s;->y:Ld/t/a/s$q;

    invoke-virtual {v0, v3}, Ld/t/a/s$k;->a(Ld/t/a/s$q;)V

    .line 7
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    iget-object v3, p0, Ld/t/a/s;->y:Ld/t/a/s$q;

    invoke-virtual {v0, v3}, Ld/t/a/s$k;->b(Ld/t/a/s$q;)V

    .line 8
    iget-object v0, p0, Ld/t/a/s;->y:Ld/t/a/s$q;

    invoke-virtual {v0}, Ld/t/a/s$q;->a()V

    .line 9
    iget-boolean v0, p0, Ld/t/a/s;->N:Z

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    iget-object v3, p0, Ld/t/a/s;->y:Ld/t/a/s$q;

    .line 11
    iput-boolean v1, v0, Ld/t/a/s$k;->h:Z

    .line 12
    invoke-virtual {v0, p0, v3}, Ld/t/a/s$k;->a(Ld/t/a/s;Ld/t/a/s$q;)V

    .line 13
    :cond_2
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    invoke-virtual {v0, v2}, Ld/t/a/s$k;->b(Ld/t/a/s;)V

    .line 14
    iput-object v2, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    goto :goto_0

    .line 15
    :cond_3
    iget-object v0, p0, Ld/t/a/s;->y:Ld/t/a/s$q;

    invoke-virtual {v0}, Ld/t/a/s$q;->a()V

    .line 16
    :goto_0
    iget-object v0, p0, Ld/t/a/s;->B:Ld/t/a/b;

    .line 17
    iget-object v3, v0, Ld/t/a/b;->b:Ld/t/a/b$a;

    const-wide/16 v4, 0x0

    .line 18
    iput-wide v4, v3, Ld/t/a/b$a;->a:J

    .line 19
    iget-object v3, v3, Ld/t/a/b$a;->b:Ld/t/a/b$a;

    if-eqz v3, :cond_4

    .line 20
    invoke-virtual {v3}, Ld/t/a/b$a;->b()V

    .line 21
    :cond_4
    iget-object v3, v0, Ld/t/a/b;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_7

    .line 22
    iget-object v4, v0, Ld/t/a/b;->a:Ld/t/a/b$b;

    iget-object v5, v0, Ld/t/a/b;->c:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    check-cast v4, Ld/t/a/t;

    if-eqz v4, :cond_6

    .line 23
    invoke-static {v5}, Ld/t/a/s;->b(Landroid/view/View;)Ld/t/a/s$x;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 24
    iget-object v4, v4, Ld/t/a/t;->a:Ld/t/a/s;

    invoke-virtual {v5, v4}, Ld/t/a/s$x;->a(Ld/t/a/s;)V

    .line 25
    :cond_5
    iget-object v4, v0, Ld/t/a/b;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 26
    :cond_6
    throw v2

    .line 27
    :cond_7
    iget-object v0, v0, Ld/t/a/b;->a:Ld/t/a/b$b;

    check-cast v0, Ld/t/a/t;

    .line 28
    invoke-virtual {v0}, Ld/t/a/t;->a()I

    move-result v3

    :goto_2
    if-ge v1, v3, :cond_9

    .line 29
    invoke-virtual {v0, v1}, Ld/t/a/t;->a(I)Landroid/view/View;

    move-result-object v4

    .line 30
    iget-object v5, v0, Ld/t/a/t;->a:Ld/t/a/s;

    if-eqz v5, :cond_8

    .line 31
    invoke-static {v4}, Ld/t/a/s;->b(Landroid/view/View;)Ld/t/a/s$x;

    .line 32
    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 33
    :cond_8
    throw v2

    .line 34
    :cond_9
    iget-object v0, v0, Ld/t/a/t;->a:Ld/t/a/s;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 35
    iput-object p1, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    if-eqz p1, :cond_b

    .line 36
    iget-object v0, p1, Ld/t/a/s$k;->b:Ld/t/a/s;

    if-nez v0, :cond_a

    .line 37
    invoke-virtual {p1, p0}, Ld/t/a/s$k;->b(Ld/t/a/s;)V

    .line 38
    iget-boolean p1, p0, Ld/t/a/s;->N:Z

    if-eqz p1, :cond_b

    .line 39
    iget-object p1, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p1, Ld/t/a/s$k;->h:Z

    goto :goto_3

    .line 41
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already attached to a RecyclerView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Ld/t/a/s$k;->b:Ld/t/a/s;

    .line 42
    invoke-static {p1, v1}, Le/a/a/a/a;->a(Ld/t/a/s;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_b
    :goto_3
    iget-object p1, p0, Ld/t/a/s;->y:Ld/t/a/s$q;

    invoke-virtual {p1}, Ld/t/a/s$q;->d()V

    .line 44
    invoke-virtual {p0}, Ld/t/a/s;->requestLayout()V

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ld/t/a/s;->getScrollingChildHelper()Ld/i/i/g;

    move-result-object v0

    .line 2
    iget-boolean v1, v0, Ld/i/i/g;->d:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v0, Ld/i/i/g;->c:Landroid/view/View;

    invoke-static {v1}, Ld/i/i/n;->z(Landroid/view/View;)V

    .line 4
    :cond_0
    iput-boolean p1, v0, Ld/i/i/g;->d:Z

    return-void
.end method

.method public setOnFlingListener(Ld/t/a/s$m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/t/a/s;->t0:Ld/t/a/s$m;

    return-void
.end method

.method public setOnScrollListener(Ld/t/a/s$o;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Ld/t/a/s;->D0:Ld/t/a/s$o;

    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ld/t/a/s;->y0:Z

    return-void
.end method

.method public setRecycledViewPool(Ld/t/a/s$p;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld/t/a/s;->y:Ld/t/a/s$q;

    .line 2
    iget-object v1, v0, Ld/t/a/s$q;->g:Ld/t/a/s$p;

    if-eqz v1, :cond_0

    .line 3
    iget v2, v1, Ld/t/a/s$p;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Ld/t/a/s$p;->b:I

    .line 4
    :cond_0
    iput-object p1, v0, Ld/t/a/s$q;->g:Ld/t/a/s$p;

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, v0, Ld/t/a/s$q;->h:Ld/t/a/s;

    invoke-virtual {p1}, Ld/t/a/s;->getAdapter()Ld/t/a/s$d;

    :cond_1
    return-void
.end method

.method public setRecyclerListener(Ld/t/a/s$r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/t/a/s;->J:Ld/t/a/s$r;

    return-void
.end method

.method public setScrollState(I)V
    .locals 2

    .line 1
    iget v0, p0, Ld/t/a/s;->l0:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Ld/t/a/s;->l0:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ld/t/a/s;->s()V

    .line 4
    :cond_1
    iget-object v0, p0, Ld/t/a/s;->I:Ld/t/a/s$k;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p1}, Ld/t/a/s$k;->b(I)V

    .line 6
    :cond_2
    iget-object p1, p0, Ld/t/a/s;->D0:Ld/t/a/s$o;

    const/4 v0, 0x0

    .line 7
    iget-object p1, p0, Ld/t/a/s;->E0:Ljava/util/List;

    if-eqz p1, :cond_4

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_4

    .line 9
    iget-object v1, p0, Ld/t/a/s;->E0:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/t/a/s$o;

    if-eqz v1, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    throw v0

    :cond_4
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; using default value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RecyclerView"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    iput p1, p0, Ld/t/a/s;->s0:I

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Ld/t/a/s;->s0:I

    :goto_1
    return-void
.end method

.method public setViewCacheExtension(Ld/t/a/s$v;)V
    .locals 0

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Ld/t/a/s;->getScrollingChildHelper()Ld/i/i/g;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Ld/i/i/g;->a(II)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ld/t/a/s;->getScrollingChildHelper()Ld/i/i/g;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ld/i/i/g;->c(I)V

    return-void
.end method
