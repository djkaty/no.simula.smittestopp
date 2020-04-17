.class public abstract Ld/t/a/s$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/t/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/t/a/s$k$c;
    }
.end annotation


# instance fields
.field public a:Ld/t/a/b;

.field public b:Ld/t/a/s;

.field public final c:Ld/t/a/x$b;

.field public final d:Ld/t/a/x$b;

.field public e:Ld/t/a/x;

.field public f:Ld/t/a/x;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ld/t/a/s$k$a;

    invoke-direct {v0, p0}, Ld/t/a/s$k$a;-><init>(Ld/t/a/s$k;)V

    iput-object v0, p0, Ld/t/a/s$k;->c:Ld/t/a/x$b;

    .line 3
    new-instance v0, Ld/t/a/s$k$b;

    invoke-direct {v0, p0}, Ld/t/a/s$k$b;-><init>(Ld/t/a/s$k;)V

    iput-object v0, p0, Ld/t/a/s$k;->d:Ld/t/a/x$b;

    .line 4
    new-instance v0, Ld/t/a/x;

    iget-object v1, p0, Ld/t/a/s$k;->c:Ld/t/a/x$b;

    invoke-direct {v0, v1}, Ld/t/a/x;-><init>(Ld/t/a/x$b;)V

    iput-object v0, p0, Ld/t/a/s$k;->e:Ld/t/a/x;

    .line 5
    new-instance v0, Ld/t/a/x;

    iget-object v1, p0, Ld/t/a/s$k;->d:Ld/t/a/x$b;

    invoke-direct {v0, v1}, Ld/t/a/x;-><init>(Ld/t/a/x$b;)V

    iput-object v0, p0, Ld/t/a/s$k;->f:Ld/t/a/x;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Ld/t/a/s$k;->g:Z

    .line 7
    iput-boolean v0, p0, Ld/t/a/s$k;->h:Z

    .line 8
    iput-boolean v0, p0, Ld/t/a/s$k;->i:Z

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Ld/t/a/s$k;->j:Z

    .line 10
    iput-boolean v0, p0, Ld/t/a/s$k;->k:Z

    return-void
.end method

.method public static a(III)I
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_0
    return p0

    .line 4
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Ld/t/a/s$k$c;
    .locals 2

    .line 70
    new-instance v0, Ld/t/a/s$k$c;

    invoke-direct {v0}, Ld/t/a/s$k$c;-><init>()V

    .line 71
    sget-object v1, Landroidx/recyclerview/R$styleable;->RecyclerView:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 72
    sget p1, Landroidx/recyclerview/R$styleable;->RecyclerView_android_orientation:I

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v0, Ld/t/a/s$k$c;->a:I

    .line 73
    sget p1, Landroidx/recyclerview/R$styleable;->RecyclerView_spanCount:I

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v0, Ld/t/a/s$k$c;->b:I

    .line 74
    sget p1, Landroidx/recyclerview/R$styleable;->RecyclerView_reverseLayout:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Ld/t/a/s$k$c;->c:Z

    .line 75
    sget p1, Landroidx/recyclerview/R$styleable;->RecyclerView_stackFromEnd:I

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Ld/t/a/s$k$c;->d:Z

    .line 76
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 0

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Ld/t/a/s$l;

    invoke-virtual {p1}, Ld/t/a/s$l;->a()I

    move-result p1

    return p1
.end method

.method public a(Ld/t/a/s$q;Ld/t/a/s$u;)I
    .locals 0

    .line 69
    iget-object p1, p0, Ld/t/a/s$k;->b:Ld/t/a/s;

    const/4 p1, 0x1

    return p1
.end method

.method public a(Ld/t/a/s$u;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(I)Landroid/view/View;
    .locals 1

    .line 17
    iget-object v0, p0, Ld/t/a/s$k;->a:Ld/t/a/b;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0, p1}, Ld/t/a/b;->c(I)I

    move-result p1

    .line 19
    iget-object v0, v0, Ld/t/a/b;->a:Ld/t/a/b$b;

    check-cast v0, Ld/t/a/t;

    invoke-virtual {v0, p1}, Ld/t/a/t;->a(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Ld/t/a/s$l;
    .locals 1

    .line 12
    new-instance v0, Ld/t/a/s$l;

    invoke-direct {v0, p1, p2}, Ld/t/a/s$l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Ld/t/a/s$l;
    .locals 1

    .line 7
    instance-of v0, p1, Ld/t/a/s$l;

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Ld/t/a/s$l;

    check-cast p1, Ld/t/a/s$l;

    invoke-direct {v0, p1}, Ld/t/a/s$l;-><init>(Ld/t/a/s$l;)V

    return-object v0

    .line 9
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 10
    new-instance v0, Ld/t/a/s$l;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Ld/t/a/s$l;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 11
    :cond_1
    new-instance v0, Ld/t/a/s$l;

    invoke-direct {v0, p1}, Ld/t/a/s$l;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public a(ILd/t/a/s$q;)V
    .locals 1

    .line 14
    invoke-virtual {p0, p1}, Ld/t/a/s$k;->a(I)Landroid/view/View;

    move-result-object v0

    .line 15
    invoke-virtual {p0, p1}, Ld/t/a/s$k;->c(I)V

    .line 16
    invoke-virtual {p2, v0}, Ld/t/a/s$q;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;Ld/i/i/x/d;)V
    .locals 2

    .line 62
    invoke-static {p1}, Ld/t/a/s;->b(Landroid/view/View;)Ld/t/a/s$x;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Ld/t/a/s$x;->n()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ld/t/a/s$k;->a:Ld/t/a/b;

    iget-object v0, v0, Ld/t/a/s$x;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Ld/t/a/b;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Ld/t/a/s$k;->b:Ld/t/a/s;

    iget-object v1, v0, Ld/t/a/s;->y:Ld/t/a/s$q;

    iget-object v0, v0, Ld/t/a/s;->C0:Ld/t/a/s$u;

    invoke-virtual {p0, v1, v0, p1, p2}, Ld/t/a/s$k;->a(Ld/t/a/s$q;Ld/t/a/s$u;Landroid/view/View;Ld/i/i/x/d;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 56
    iget-object v0, p0, Ld/t/a/s$k;->b:Ld/t/a/s;

    iget-object v1, v0, Ld/t/a/s;->y:Ld/t/a/s$q;

    iget-object v1, v0, Ld/t/a/s;->C0:Ld/t/a/s$u;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ld/t/a/s$k;->b:Ld/t/a/s;

    const/4 v2, -0x1

    .line 58
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ld/t/a/s$k;->b:Ld/t/a/s;

    .line 59
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ld/t/a/s$k;->b:Ld/t/a/s;

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 61
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Ld/t/a/s$q;)V
    .locals 2

    .line 52
    invoke-virtual {p0}, Ld/t/a/s$k;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 53
    invoke-virtual {p0, v0}, Ld/t/a/s$k;->a(I)Landroid/view/View;

    move-result-object v1

    .line 54
    invoke-static {v1}, Ld/t/a/s;->b(Landroid/view/View;)Ld/t/a/s$x;

    move-result-object v1

    invoke-virtual {v1}, Ld/t/a/s$x;->u()Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    invoke-virtual {p0, v0, p1}, Ld/t/a/s$k;->a(ILd/t/a/s$q;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Ld/t/a/s$q;Ld/t/a/s$u;Landroid/view/View;Ld/i/i/x/d;)V
    .locals 6

    .line 65
    invoke-virtual {p0}, Ld/t/a/s$k;->b()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Ld/t/a/s$k;->a(Landroid/view/View;)I

    move-result p1

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    invoke-virtual {p0}, Ld/t/a/s$k;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3}, Ld/t/a/s$k;->a(Landroid/view/View;)I

    move-result p2

    move v2, p2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 67
    invoke-static/range {v0 .. v5}, Ld/i/i/x/d$b;->a(IIIIZZ)Ld/i/i/x/d$b;

    move-result-object p1

    .line 68
    invoke-virtual {p4, p1}, Ld/i/i/x/d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ld/t/a/s;)V
    .locals 0

    return-void
.end method

.method public a(Ld/t/a/s;II)V
    .locals 0

    return-void
.end method

.method public a(Ld/t/a/s;III)V
    .locals 0

    return-void
.end method

.method public a(Ld/t/a/s;IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Ld/t/a/s;Ld/t/a/s$q;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 5
    iget-object v0, p0, Ld/t/a/s$k;->b:Ld/t/a/s;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Ld/t/a/s;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Ld/t/a/s$l;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Ld/t/a/s;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 20
    invoke-virtual {p0}, Ld/t/a/s$k;->g()I

    move-result v1

    .line 21
    invoke-virtual {p0}, Ld/t/a/s$k;->i()I

    move-result v2

    .line 22
    iget v3, p0, Ld/t/a/s$k;->o:I

    .line 23
    invoke-virtual {p0}, Ld/t/a/s$k;->h()I

    move-result v4

    sub-int/2addr v3, v4

    .line 24
    iget v4, p0, Ld/t/a/s$k;->p:I

    .line 25
    invoke-virtual {p0}, Ld/t/a/s$k;->f()I

    move-result v5

    sub-int/2addr v4, v5

    .line 26
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result p2

    sub-int/2addr v6, p2

    .line 28
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p2, v5

    .line 29
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, v6

    sub-int/2addr v5, v1

    const/4 v1, 0x0

    .line 30
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int/2addr v6, v2

    .line 31
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr p2, v3

    .line 32
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr p3, v4

    .line 33
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 34
    invoke-virtual {p0}, Ld/t/a/s$k;->e()I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_1

    if-eqz v3, :cond_0

    goto :goto_1

    .line 35
    :cond_0
    invoke-static {v7, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    :cond_1
    if-eqz v7, :cond_2

    goto :goto_0

    .line 36
    :cond_2
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_0
    move v3, v7

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    .line 37
    :cond_3
    invoke-static {v6, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_2
    aput v3, v0, v1

    aput v2, v0, v8

    .line 38
    aget p2, v0, v1

    .line 39
    aget p3, v0, v8

    if-eqz p5, :cond_7

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p5

    if-nez p5, :cond_5

    :cond_4
    :goto_3
    const/4 p5, 0x0

    goto :goto_4

    .line 41
    :cond_5
    invoke-virtual {p0}, Ld/t/a/s$k;->g()I

    move-result v0

    .line 42
    invoke-virtual {p0}, Ld/t/a/s$k;->i()I

    move-result v2

    .line 43
    iget v3, p0, Ld/t/a/s$k;->o:I

    .line 44
    invoke-virtual {p0}, Ld/t/a/s$k;->h()I

    move-result v4

    sub-int/2addr v3, v4

    .line 45
    iget v4, p0, Ld/t/a/s$k;->p:I

    .line 46
    invoke-virtual {p0}, Ld/t/a/s$k;->f()I

    move-result v5

    sub-int/2addr v4, v5

    .line 47
    iget-object v5, p0, Ld/t/a/s$k;->b:Ld/t/a/s;

    iget-object v5, v5, Ld/t/a/s;->E:Landroid/graphics/Rect;

    .line 48
    invoke-static {p5, v5}, Ld/t/a/s;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 49
    iget p5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p5, p2

    if-ge p5, v3, :cond_4

    iget p5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p2

    if-le p5, v0, :cond_4

    iget p5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, p3

    if-ge p5, v4, :cond_4

    iget p5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, p3

    if-gt p5, v2, :cond_6

    goto :goto_3

    :cond_6
    const/4 p5, 0x1

    :goto_4
    if-eqz p5, :cond_8

    :cond_7
    if-nez p2, :cond_9

    if-eqz p3, :cond_8

    goto :goto_5

    :cond_8
    return v1

    :cond_9
    :goto_5
    if-eqz p4, :cond_a

    .line 50
    invoke-virtual {p1, p2, p3}, Ld/t/a/s;->scrollBy(II)V

    goto :goto_6

    .line 51
    :cond_a
    invoke-virtual {p1, p2, p3}, Ld/t/a/s;->c(II)V

    :goto_6
    return v8
.end method

.method public b(Ld/t/a/s$q;Ld/t/a/s$u;)I
    .locals 0

    .line 30
    iget-object p1, p0, Ld/t/a/s$k;->b:Ld/t/a/s;

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ld/t/a/s$u;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public b(Ld/t/a/s$q;)V
    .locals 6

    .line 1
    iget-object v0, p1, Ld/t/a/s$q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 2
    iget-object v2, p1, Ld/t/a/s$q;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/t/a/s$x;

    iget-object v2, v2, Ld/t/a/s$x;->a:Landroid/view/View;

    .line 3
    invoke-static {v2}, Ld/t/a/s;->b(Landroid/view/View;)Ld/t/a/s$x;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Ld/t/a/s$x;->u()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 5
    invoke-virtual {v3, v4}, Ld/t/a/s$x;->a(Z)V

    .line 6
    invoke-virtual {v3}, Ld/t/a/s$x;->p()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    iget-object v5, p0, Ld/t/a/s$k;->b:Ld/t/a/s;

    invoke-virtual {v5, v2, v4}, Ld/t/a/s;->removeDetachedView(Landroid/view/View;Z)V

    .line 8
    :cond_1
    iget-object v5, p0, Ld/t/a/s$k;->b:Ld/t/a/s;

    iget-object v5, v5, Ld/t/a/s;->k0:Ld/t/a/s$h;

    if-eqz v5, :cond_2

    .line 9
    invoke-virtual {v5, v3}, Ld/t/a/s$h;->b(Ld/t/a/s$x;)V

    :cond_2
    const/4 v5, 0x1

    .line 10
    invoke-virtual {v3, v5}, Ld/t/a/s$x;->a(Z)V

    .line 11
    invoke-static {v2}, Ld/t/a/s;->b(Landroid/view/View;)Ld/t/a/s$x;

    move-result-object v2

    const/4 v3, 0x0

    .line 12
    iput-object v3, v2, Ld/t/a/s$x;->m:Ld/t/a/s$q;

    .line 13
    iput-boolean v4, v2, Ld/t/a/s$x;->n:Z

    .line 14
    invoke-virtual {v2}, Ld/t/a/s$x;->b()V

    .line 15
    invoke-virtual {p1, v2}, Ld/t/a/s$q;->a(Ld/t/a/s$x;)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 16
    :cond_3
    iget-object v1, p1, Ld/t/a/s$q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 17
    iget-object p1, p1, Ld/t/a/s$q;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_4
    if-lez v0, :cond_5

    .line 19
    iget-object p1, p0, Ld/t/a/s$k;->b:Ld/t/a/s;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_5
    return-void
.end method

.method public b(Ld/t/a/s;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Ld/t/a/s$k;->b:Ld/t/a/s;

    .line 21
    iput-object p1, p0, Ld/t/a/s$k;->a:Ld/t/a/b;

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Ld/t/a/s$k;->o:I

    .line 23
    iput p1, p0, Ld/t/a/s$k;->p:I

    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Ld/t/a/s$k;->b:Ld/t/a/s;

    .line 25
    iget-object v0, p1, Ld/t/a/s;->B:Ld/t/a/b;

    iput-object v0, p0, Ld/t/a/s$k;->a:Ld/t/a/b;

    .line 26
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iput v0, p0, Ld/t/a/s$k;->o:I

    .line 27
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iput p1, p0, Ld/t/a/s$k;->p:I

    :goto_0
    const/high16 p1, 0x40000000    # 2.0f

    .line 28
    iput p1, p0, Ld/t/a/s$k;->m:I

    .line 29
    iput p1, p0, Ld/t/a/s$k;->n:I

    return-void
.end method

.method public b(Ld/t/a/s;II)V
    .locals 0

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Ld/t/a/s$u;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract c()Ld/t/a/s$l;
.end method

.method public c(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Ld/t/a/s$k;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Ld/t/a/s$k;->a:Ld/t/a/b;

    .line 3
    invoke-virtual {v0, p1}, Ld/t/a/b;->c(I)I

    move-result p1

    .line 4
    iget-object v1, v0, Ld/t/a/b;->a:Ld/t/a/b$b;

    check-cast v1, Ld/t/a/t;

    invoke-virtual {v1, p1}, Ld/t/a/t;->a(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v0, Ld/t/a/b;->b:Ld/t/a/b$a;

    invoke-virtual {v2, p1}, Ld/t/a/b$a;->d(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Ld/t/a/b;->c(Landroid/view/View;)Z

    .line 7
    :cond_1
    iget-object v0, v0, Ld/t/a/b;->a:Ld/t/a/b$b;

    check-cast v0, Ld/t/a/t;

    invoke-virtual {v0, p1}, Ld/t/a/t;->b(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/s$k;->a:Ld/t/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld/t/a/b;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Ld/t/a/s$u;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/s$k;->b:Ld/t/a/s;

    invoke-static {v0}, Ld/i/i/n;->i(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public e(Ld/t/a/s$u;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/s$k;->b:Ld/t/a/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(Ld/t/a/s$u;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/s$k;->b:Ld/t/a/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/s$k;->b:Ld/t/a/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/s$k;->b:Ld/t/a/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld/t/a/s$k;->i:Z

    return v0
.end method

.method public k()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/s$k;->b:Ld/t/a/s;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ld/t/a/s;->requestLayout()V

    :cond_0
    return-void
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
