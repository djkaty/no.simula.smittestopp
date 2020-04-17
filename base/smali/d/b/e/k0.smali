.class public Ld/b/e/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/b/d/i/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/b/e/k0$c;,
        Ld/b/e/k0$d;,
        Ld/b/e/k0$e;,
        Ld/b/e/k0$a;,
        Ld/b/e/k0$b;
    }
.end annotation


# static fields
.field public static Z:Ljava/lang/reflect/Method;

.field public static a0:Ljava/lang/reflect/Method;

.field public static b0:Ljava/lang/reflect/Method;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:I

.field public J:Z

.field public K:Z

.field public L:I

.field public M:I

.field public N:Landroid/database/DataSetObserver;

.field public O:Landroid/view/View;

.field public P:Landroid/widget/AdapterView$OnItemClickListener;

.field public final Q:Ld/b/e/k0$e;

.field public final R:Ld/b/e/k0$d;

.field public final S:Ld/b/e/k0$c;

.field public final T:Ld/b/e/k0$a;

.field public final U:Landroid/os/Handler;

.field public final V:Landroid/graphics/Rect;

.field public W:Landroid/graphics/Rect;

.field public X:Z

.field public Y:Landroid/widget/PopupWindow;

.field public x:Landroid/content/Context;

.field public y:Landroid/widget/ListAdapter;

.field public z:Ld/b/e/f0;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "ListPopupWindow"

    const/16 v4, 0x1c

    if-gt v0, v4, :cond_0

    .line 2
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v4, "setClipToScreenEnabled"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Ld/b/e/k0;->Z:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    .line 3
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :goto_0
    :try_start_1
    const-class v0, Landroid/widget/PopupWindow;

    const-string v4, "setEpicenterBounds"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Landroid/graphics/Rect;

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Ld/b/e/k0;->b0:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v0, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    .line 5
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-gt v0, v4, :cond_1

    .line 7
    :try_start_2
    const-class v0, Landroid/widget/PopupWindow;

    const-string v4, "getMaxAvailableHeight"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/view/View;

    aput-object v6, v5, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v5, v2

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Ld/b/e/k0;->a0:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const-string v0, "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well."

    .line 8
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 2
    iput v0, p0, Ld/b/e/k0;->A:I

    .line 3
    iput v0, p0, Ld/b/e/k0;->B:I

    const/16 v0, 0x3ea

    .line 4
    iput v0, p0, Ld/b/e/k0;->E:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ld/b/e/k0;->I:I

    .line 6
    iput-boolean v0, p0, Ld/b/e/k0;->J:Z

    .line 7
    iput-boolean v0, p0, Ld/b/e/k0;->K:Z

    const v1, 0x7fffffff

    .line 8
    iput v1, p0, Ld/b/e/k0;->L:I

    .line 9
    iput v0, p0, Ld/b/e/k0;->M:I

    .line 10
    new-instance v1, Ld/b/e/k0$e;

    invoke-direct {v1, p0}, Ld/b/e/k0$e;-><init>(Ld/b/e/k0;)V

    iput-object v1, p0, Ld/b/e/k0;->Q:Ld/b/e/k0$e;

    .line 11
    new-instance v1, Ld/b/e/k0$d;

    invoke-direct {v1, p0}, Ld/b/e/k0$d;-><init>(Ld/b/e/k0;)V

    iput-object v1, p0, Ld/b/e/k0;->R:Ld/b/e/k0$d;

    .line 12
    new-instance v1, Ld/b/e/k0$c;

    invoke-direct {v1, p0}, Ld/b/e/k0$c;-><init>(Ld/b/e/k0;)V

    iput-object v1, p0, Ld/b/e/k0;->S:Ld/b/e/k0$c;

    .line 13
    new-instance v1, Ld/b/e/k0$a;

    invoke-direct {v1, p0}, Ld/b/e/k0$a;-><init>(Ld/b/e/k0;)V

    iput-object v1, p0, Ld/b/e/k0;->T:Ld/b/e/k0$a;

    .line 14
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Ld/b/e/k0;->V:Landroid/graphics/Rect;

    .line 15
    iput-object p1, p0, Ld/b/e/k0;->x:Landroid/content/Context;

    .line 16
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Ld/b/e/k0;->U:Landroid/os/Handler;

    .line 17
    sget-object v1, Landroidx/appcompat/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 18
    sget v2, Landroidx/appcompat/R$styleable;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Ld/b/e/k0;->C:I

    .line 19
    sget v2, Landroidx/appcompat/R$styleable;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Ld/b/e/k0;->D:I

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 20
    iput-boolean v2, p0, Ld/b/e/k0;->F:Z

    .line 21
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    new-instance v0, Ld/b/e/p;

    invoke-direct {v0, p1, p2, p3, p4}, Ld/b/e/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    .line 23
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)Ld/b/e/f0;
    .locals 1

    .line 14
    new-instance v0, Ld/b/e/f0;

    invoke-direct {v0, p1, p2}, Ld/b/e/f0;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 12
    iput p1, p0, Ld/b/e/k0;->C:I

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 11
    iget-object v0, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/b/e/k0;->N:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld/b/e/k0$b;

    invoke-direct {v0, p0}, Ld/b/e/k0$b;-><init>(Ld/b/e/k0;)V

    iput-object v0, p0, Ld/b/e/k0;->N:Landroid/database/DataSetObserver;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Ld/b/e/k0;->y:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 5
    :cond_1
    :goto_0
    iput-object p1, p0, Ld/b/e/k0;->y:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    .line 6
    iget-object v0, p0, Ld/b/e/k0;->N:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 7
    :cond_2
    iget-object p1, p0, Ld/b/e/k0;->z:Ld/b/e/f0;

    if-eqz p1, :cond_3

    .line 8
    iget-object v0, p0, Ld/b/e/k0;->y:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 9
    iput-boolean p1, p0, Ld/b/e/k0;->X:Z

    .line 10
    iget-object v0, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 13
    iget-object v0, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Ld/b/e/k0;->C:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Ld/b/e/k0;->D:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Ld/b/e/k0;->F:Z

    return-void
.end method

.method public c()V
    .locals 14

    .line 1
    iget-object v0, p0, Ld/b/e/k0;->z:Ld/b/e/f0;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ld/b/e/k0;->x:Landroid/content/Context;

    .line 3
    iget-boolean v2, p0, Ld/b/e/k0;->X:Z

    xor-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Ld/b/e/k0;->a(Landroid/content/Context;Z)Ld/b/e/f0;

    move-result-object v0

    iput-object v0, p0, Ld/b/e/k0;->z:Ld/b/e/f0;

    .line 4
    iget-object v2, p0, Ld/b/e/k0;->y:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5
    iget-object v0, p0, Ld/b/e/k0;->z:Ld/b/e/f0;

    iget-object v2, p0, Ld/b/e/k0;->P:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 6
    iget-object v0, p0, Ld/b/e/k0;->z:Ld/b/e/f0;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 7
    iget-object v0, p0, Ld/b/e/k0;->z:Ld/b/e/f0;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 8
    iget-object v0, p0, Ld/b/e/k0;->z:Ld/b/e/f0;

    new-instance v2, Ld/b/e/j0;

    invoke-direct {v2, p0}, Ld/b/e/j0;-><init>(Ld/b/e/k0;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 9
    iget-object v0, p0, Ld/b/e/k0;->z:Ld/b/e/f0;

    iget-object v2, p0, Ld/b/e/k0;->S:Ld/b/e/k0$c;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 10
    iget-object v0, p0, Ld/b/e/k0;->z:Ld/b/e/f0;

    .line 11
    iget-object v2, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 13
    :goto_0
    iget-object v0, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 14
    iget-object v3, p0, Ld/b/e/k0;->V:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 15
    iget-object v0, p0, Ld/b/e/k0;->V:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    .line 16
    iget-boolean v4, p0, Ld/b/e/k0;->F:Z

    if-nez v4, :cond_2

    neg-int v3, v3

    .line 17
    iput v3, p0, Ld/b/e/k0;->D:I

    goto :goto_1

    .line 18
    :cond_1
    iget-object v0, p0, Ld/b/e/k0;->V:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x0

    .line 19
    :cond_2
    :goto_1
    iget-object v3, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    .line 20
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 21
    :goto_2
    iget-object v5, p0, Ld/b/e/k0;->O:Landroid/view/View;

    .line 22
    iget v6, p0, Ld/b/e/k0;->D:I

    .line 23
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    const-string v9, "ListPopupWindow"

    if-gt v7, v8, :cond_5

    .line 24
    sget-object v7, Ld/b/e/k0;->a0:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_4

    .line 25
    :try_start_0
    iget-object v8, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v5, v10, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v1

    .line 26
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v10, v4

    .line 27
    invoke-virtual {v7, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string v3, "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version."

    .line 28
    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_4
    iget-object v3, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v5, v6}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v3

    goto :goto_3

    .line 30
    :cond_5
    iget-object v7, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v5, v6, v3}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v3

    .line 31
    :goto_3
    iget-boolean v5, p0, Ld/b/e/k0;->J:Z

    const/4 v6, -0x2

    const/4 v7, -0x1

    if-nez v5, :cond_a

    iget v5, p0, Ld/b/e/k0;->A:I

    if-ne v5, v7, :cond_6

    goto :goto_6

    .line 32
    :cond_6
    iget v5, p0, Ld/b/e/k0;->B:I

    if-eq v5, v6, :cond_8

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_7

    .line 33
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_4

    .line 34
    :cond_7
    iget-object v5, p0, Ld/b/e/k0;->x:Landroid/content/Context;

    .line 35
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v10, p0, Ld/b/e/k0;->V:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->left:I

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v10

    sub-int/2addr v5, v11

    .line 36
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_4

    .line 37
    :cond_8
    iget-object v5, p0, Ld/b/e/k0;->x:Landroid/content/Context;

    .line 38
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Ld/b/e/k0;->V:Landroid/graphics/Rect;

    iget v10, v8, Landroid/graphics/Rect;->left:I

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v8

    sub-int/2addr v5, v10

    const/high16 v8, -0x80000000

    .line 39
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 40
    :goto_4
    iget-object v8, p0, Ld/b/e/k0;->z:Ld/b/e/f0;

    sub-int/2addr v3, v2

    invoke-virtual {v8, v5, v3, v7}, Ld/b/e/f0;->a(III)I

    move-result v3

    if-lez v3, :cond_9

    .line 41
    iget-object v5, p0, Ld/b/e/k0;->z:Ld/b/e/f0;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v5

    iget-object v8, p0, Ld/b/e/k0;->z:Ld/b/e/f0;

    .line 42
    invoke-virtual {v8}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v8

    add-int/2addr v8, v5

    add-int/2addr v8, v0

    add-int/2addr v8, v2

    goto :goto_5

    :cond_9
    const/4 v8, 0x0

    :goto_5
    add-int/2addr v3, v8

    goto :goto_7

    :cond_a
    :goto_6
    add-int/2addr v3, v0

    .line 43
    :goto_7
    iget-object v0, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    if-ne v0, v4, :cond_b

    const/4 v0, 0x1

    goto :goto_8

    :cond_b
    const/4 v0, 0x0

    .line 44
    :goto_8
    iget-object v4, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    iget v5, p0, Ld/b/e/k0;->E:I

    invoke-static {v4, v5}, Ld/b/a/r;->a(Landroid/widget/PopupWindow;I)V

    .line 45
    iget-object v4, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 46
    iget-object v4, p0, Ld/b/e/k0;->O:Landroid/view/View;

    .line 47
    invoke-static {v4}, Ld/i/i/n;->s(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_c

    return-void

    .line 48
    :cond_c
    iget v4, p0, Ld/b/e/k0;->B:I

    if-ne v4, v7, :cond_d

    const/4 v4, -0x1

    goto :goto_9

    :cond_d
    if-ne v4, v6, :cond_e

    .line 49
    iget-object v4, p0, Ld/b/e/k0;->O:Landroid/view/View;

    .line 50
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 51
    :cond_e
    :goto_9
    iget v5, p0, Ld/b/e/k0;->A:I

    if-ne v5, v7, :cond_13

    if-eqz v0, :cond_f

    goto :goto_a

    :cond_f
    const/4 v3, -0x1

    :goto_a
    if-eqz v0, :cond_11

    .line 52
    iget-object v0, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    iget v5, p0, Ld/b/e/k0;->B:I

    if-ne v5, v7, :cond_10

    const/4 v5, -0x1

    goto :goto_b

    :cond_10
    const/4 v5, 0x0

    :goto_b
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 53
    iget-object v0, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_d

    .line 54
    :cond_11
    iget-object v0, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    iget v5, p0, Ld/b/e/k0;->B:I

    if-ne v5, v7, :cond_12

    const/4 v5, -0x1

    goto :goto_c

    :cond_12
    const/4 v5, 0x0

    :goto_c
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 55
    iget-object v0, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_d

    :cond_13
    if-ne v5, v6, :cond_14

    goto :goto_d

    :cond_14
    move v3, v5

    .line 56
    :goto_d
    iget-object v0, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    iget-boolean v5, p0, Ld/b/e/k0;->K:Z

    if-nez v5, :cond_15

    iget-boolean v5, p0, Ld/b/e/k0;->J:Z

    if-nez v5, :cond_15

    goto :goto_e

    :cond_15
    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 57
    iget-object v8, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    .line 58
    iget-object v9, p0, Ld/b/e/k0;->O:Landroid/view/View;

    .line 59
    iget v10, p0, Ld/b/e/k0;->C:I

    iget v11, p0, Ld/b/e/k0;->D:I

    if-gez v4, :cond_16

    const/4 v12, -0x1

    goto :goto_f

    :cond_16
    move v12, v4

    :goto_f
    if-gez v3, :cond_17

    const/4 v13, -0x1

    goto :goto_10

    :cond_17
    move v13, v3

    :goto_10
    invoke-virtual/range {v8 .. v13}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto/16 :goto_16

    .line 60
    :cond_18
    iget v0, p0, Ld/b/e/k0;->B:I

    if-ne v0, v7, :cond_19

    const/4 v0, -0x1

    goto :goto_11

    :cond_19
    if-ne v0, v6, :cond_1a

    .line 61
    iget-object v0, p0, Ld/b/e/k0;->O:Landroid/view/View;

    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 63
    :cond_1a
    :goto_11
    iget v4, p0, Ld/b/e/k0;->A:I

    if-ne v4, v7, :cond_1b

    const/4 v3, -0x1

    goto :goto_12

    :cond_1b
    if-ne v4, v6, :cond_1c

    goto :goto_12

    :cond_1c
    move v3, v4

    .line 64
    :goto_12
    iget-object v4, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 65
    iget-object v0, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-gt v0, v3, :cond_1d

    .line 67
    sget-object v0, Ld/b/e/k0;->Z:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1e

    .line 68
    :try_start_1
    iget-object v4, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_13

    :catch_1
    const-string v0, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    .line 69
    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 70
    :cond_1d
    iget-object v0, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setIsClippedToScreen(Z)V

    .line 71
    :cond_1e
    :goto_13
    iget-object v0, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    iget-boolean v4, p0, Ld/b/e/k0;->K:Z

    if-nez v4, :cond_1f

    iget-boolean v4, p0, Ld/b/e/k0;->J:Z

    if-nez v4, :cond_1f

    const/4 v4, 0x1

    goto :goto_14

    :cond_1f
    const/4 v4, 0x0

    :goto_14
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 72
    iget-object v0, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    iget-object v4, p0, Ld/b/e/k0;->R:Ld/b/e/k0$d;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 73
    iget-boolean v0, p0, Ld/b/e/k0;->H:Z

    if-eqz v0, :cond_20

    .line 74
    iget-object v0, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    iget-boolean v4, p0, Ld/b/e/k0;->G:Z

    invoke-static {v0, v4}, Ld/b/a/r;->a(Landroid/widget/PopupWindow;Z)V

    .line 75
    :cond_20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v3, :cond_21

    .line 76
    sget-object v0, Ld/b/e/k0;->b0:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_22

    .line 77
    :try_start_2
    iget-object v3, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Ld/b/e/k0;->W:Landroid/graphics/Rect;

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_15

    :catch_2
    move-exception v0

    const-string v2, "Could not invoke setEpicenterBounds on PopupWindow"

    .line 78
    invoke-static {v9, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 79
    :cond_21
    iget-object v0, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    iget-object v2, p0, Ld/b/e/k0;->W:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 80
    :cond_22
    :goto_15
    iget-object v0, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    .line 81
    iget-object v2, p0, Ld/b/e/k0;->O:Landroid/view/View;

    .line 82
    iget v3, p0, Ld/b/e/k0;->C:I

    iget v4, p0, Ld/b/e/k0;->D:I

    iget v5, p0, Ld/b/e/k0;->I:I

    .line 83
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 84
    iget-object v0, p0, Ld/b/e/k0;->z:Ld/b/e/f0;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setSelection(I)V

    .line 85
    iget-boolean v0, p0, Ld/b/e/k0;->X:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Ld/b/e/k0;->z:Ld/b/e/f0;

    invoke-virtual {v0}, Ld/b/e/f0;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 86
    :cond_23
    iget-object v0, p0, Ld/b/e/k0;->z:Ld/b/e/f0;

    if-eqz v0, :cond_24

    .line 87
    invoke-virtual {v0, v1}, Ld/b/e/f0;->setListSelectionHidden(Z)V

    .line 88
    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    .line 89
    :cond_24
    iget-boolean v0, p0, Ld/b/e/k0;->X:Z

    if-nez v0, :cond_25

    .line 90
    iget-object v0, p0, Ld/b/e/k0;->U:Landroid/os/Handler;

    iget-object v1, p0, Ld/b/e/k0;->T:Ld/b/e/k0$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_25
    :goto_16
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld/b/e/k0;->F:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Ld/b/e/k0;->D:I

    return v0
.end method

.method public d(I)V
    .locals 2

    .line 3
    iget-object v0, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Ld/b/e/k0;->V:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 5
    iget-object v0, p0, Ld/b/e/k0;->V:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iput v1, p0, Ld/b/e/k0;->B:I

    goto :goto_0

    .line 6
    :cond_0
    iput p1, p0, Ld/b/e/k0;->B:I

    :goto_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    iget-object v0, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3
    iput-object v1, p0, Ld/b/e/k0;->z:Ld/b/e/f0;

    .line 4
    iget-object v0, p0, Ld/b/e/k0;->U:Landroid/os/Handler;

    iget-object v1, p0, Ld/b/e/k0;->Q:Ld/b/e/k0$e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/e/k0;->Y:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/e/k0;->z:Ld/b/e/f0;

    return-object v0
.end method
