.class public Ld/b/e/i0;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/b/e/i0$a;
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:F

.field public E:Z

.field public F:[I

.field public G:[I

.field public H:Landroid/graphics/drawable/Drawable;

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Ld/b/e/i0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Ld/b/e/i0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Ld/b/e/i0;->x:Z

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Ld/b/e/i0;->y:I

    const/4 v2, 0x0

    .line 6
    iput v2, p0, Ld/b/e/i0;->z:I

    const v3, 0x800033

    .line 7
    iput v3, p0, Ld/b/e/i0;->B:I

    .line 8
    sget-object v3, Landroidx/appcompat/R$styleable;->LinearLayoutCompat:[I

    .line 9
    invoke-virtual {p1, p2, v3, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 10
    sget p3, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    .line 11
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-ltz p3, :cond_0

    .line 12
    invoke-virtual {p0, p3}, Ld/b/e/i0;->setOrientation(I)V

    .line 13
    :cond_0
    sget p3, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    .line 14
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-ltz p3, :cond_1

    .line 15
    invoke-virtual {p0, p3}, Ld/b/e/i0;->setGravity(I)V

    .line 16
    :cond_1
    sget p3, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    .line 17
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    if-nez p3, :cond_2

    .line 18
    invoke-virtual {p0, p3}, Ld/b/e/i0;->setBaselineAligned(Z)V

    .line 19
    :cond_2
    sget p3, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 20
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    .line 21
    iput p3, p0, Ld/b/e/i0;->D:F

    .line 22
    sget p3, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    .line 23
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 24
    iput p3, p0, Ld/b/e/i0;->y:I

    .line 25
    sget p3, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    .line 26
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 27
    iput-boolean p3, p0, Ld/b/e/i0;->E:Z

    .line 28
    sget p3, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    .line 29
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    invoke-static {p1, v0}, Ld/b/b/a/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 32
    :cond_3
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 33
    :goto_0
    invoke-virtual {p0, p1}, Ld/b/e/i0;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    .line 35
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 36
    iput p1, p0, Ld/b/e/i0;->K:I

    .line 37
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    .line 38
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 39
    iput p1, p0, Ld/b/e/i0;->L:I

    .line 40
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 10

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 12
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    .line 13
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ld/b/e/i0$a;

    .line 14
    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 15
    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 16
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move v6, v0

    .line 17
    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 18
    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld/b/e/i0;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Ld/b/e/i0;->L:I

    add-int/2addr v1, v2

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Ld/b/e/i0;->L:I

    sub-int/2addr v2, v3

    iget v3, p0, Ld/b/e/i0;->J:I

    add-int/2addr v3, p2

    .line 3
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    iget-object p2, p0, Ld/b/e/i0;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 0

    .line 19
    invoke-virtual/range {p0 .. p5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public a(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 5
    iget p1, p0, Ld/b/e/i0;->K:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 7
    iget p1, p0, Ld/b/e/i0;->K:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 8
    :cond_3
    iget v2, p0, Ld/b/e/i0;->K:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_5

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0
.end method

.method public final b(II)V
    .locals 10

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    .line 8
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ld/b/e/i0$a;

    .line 9
    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 10
    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 11
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v0

    move v6, p2

    .line 12
    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 13
    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Ld/b/e/i0;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget v2, p0, Ld/b/e/i0;->L:I

    add-int/2addr v1, v2

    iget v2, p0, Ld/b/e/i0;->I:I

    add-int/2addr v2, p2

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Ld/b/e/i0;->L:I

    sub-int/2addr v3, v4

    .line 3
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    iget-object p2, p0, Ld/b/e/i0;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Ld/b/e/i0$a;

    return p1
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/b/e/i0;->generateDefaultLayoutParams()Ld/b/e/i0$a;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Ld/b/e/i0$a;
    .locals 3

    .line 2
    iget v0, p0, Ld/b/e/i0;->A:I

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ld/b/e/i0$a;

    invoke-direct {v0, v1, v1}, Ld/b/e/i0$a;-><init>(II)V

    return-object v0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 4
    new-instance v0, Ld/b/e/i0$a;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Ld/b/e/i0$a;-><init>(II)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ld/b/e/i0;->generateLayoutParams(Landroid/util/AttributeSet;)Ld/b/e/i0$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Ld/b/e/i0;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Ld/b/e/i0$a;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Ld/b/e/i0$a;
    .locals 2

    .line 3
    new-instance v0, Ld/b/e/i0$a;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ld/b/e/i0$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Ld/b/e/i0$a;
    .locals 1

    .line 4
    new-instance v0, Ld/b/e/i0$a;

    invoke-direct {v0, p1}, Ld/b/e/i0$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 5

    .line 1
    iget v0, p0, Ld/b/e/i0;->y:I

    if-gez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Ld/b/e/i0;->y:I

    if-le v0, v1, :cond_6

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 6
    iget v0, p0, Ld/b/e/i0;->y:I

    if-nez v0, :cond_1

    return v2

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    iget v2, p0, Ld/b/e/i0;->z:I

    .line 9
    iget v3, p0, Ld/b/e/i0;->A:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 10
    iget v3, p0, Ld/b/e/i0;->B:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_5

    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    const/16 v4, 0x50

    if-eq v3, v4, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Ld/b/e/i0;->C:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Ld/b/e/i0;->C:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 13
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ld/b/e/i0$a;

    .line 14
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2

    .line 15
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .line 1
    iget v0, p0, Ld/b/e/i0;->y:I

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/e/i0;->H:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    .line 1
    iget v0, p0, Ld/b/e/i0;->L:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .line 1
    iget v0, p0, Ld/b/e/i0;->I:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 1
    iget v0, p0, Ld/b/e/i0;->B:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Ld/b/e/i0;->A:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .line 1
    iget v0, p0, Ld/b/e/i0;->K:I

    return v0
.end method

.method public getVirtualChildCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .line 1
    iget v0, p0, Ld/b/e/i0;->D:F

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ld/b/e/i0;->H:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Ld/b/e/i0;->A:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 3
    invoke-virtual {p0}, Ld/b/e/i0;->getVirtualChildCount()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v1, :cond_1

    .line 6
    invoke-virtual {p0, v2}, Ld/b/e/i0;->a(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Ld/b/e/i0$a;

    .line 8
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Ld/b/e/i0;->J:I

    sub-int/2addr v3, v4

    .line 9
    invoke-virtual {p0, p1, v3}, Ld/b/e/i0;->a(Landroid/graphics/Canvas;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, v0}, Ld/b/e/i0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_b

    add-int/lit8 v0, v0, -0x1

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Ld/b/e/i0;->J:I

    sub-int/2addr v0, v1

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Ld/b/e/i0$a;

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 15
    :goto_1
    invoke-virtual {p0, p1, v0}, Ld/b/e/i0;->a(Landroid/graphics/Canvas;I)V

    goto/16 :goto_6

    .line 16
    :cond_4
    invoke-virtual {p0}, Ld/b/e/i0;->getVirtualChildCount()I

    move-result v0

    .line 17
    invoke-static {p0}, Ld/b/e/d1;->a(Landroid/view/View;)Z

    move-result v3

    :goto_2
    if-ge v2, v0, :cond_7

    .line 18
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 19
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v1, :cond_6

    .line 20
    invoke-virtual {p0, v2}, Ld/b/e/i0;->a(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 21
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Ld/b/e/i0$a;

    if-eqz v3, :cond_5

    .line 22
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    goto :goto_3

    .line 23
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Ld/b/e/i0;->I:I

    sub-int/2addr v4, v5

    .line 24
    :goto_3
    invoke-virtual {p0, p1, v4}, Ld/b/e/i0;->b(Landroid/graphics/Canvas;I)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 25
    :cond_7
    invoke-virtual {p0, v0}, Ld/b/e/i0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_b

    add-int/lit8 v0, v0, -0x1

    .line 26
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    if-eqz v3, :cond_8

    .line 27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    goto :goto_5

    .line 28
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Ld/b/e/i0;->I:I

    goto :goto_4

    .line 29
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Ld/b/e/i0$a;

    if-eqz v3, :cond_a

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Ld/b/e/i0;->I:I

    :goto_4
    sub-int/2addr v0, v1

    goto :goto_5

    .line 31
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 32
    :goto_5
    invoke-virtual {p0, p1, v0}, Ld/b/e/i0;->b(Landroid/graphics/Canvas;I)V

    :cond_b
    :goto_6
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Ld/b/e/i0;->A:I

    const/16 v2, 0x50

    const/16 v3, 0x10

    const/16 v4, 0x8

    const/4 v5, 0x5

    const v6, 0x800007

    const/4 v7, 0x1

    if-ne v1, v7, :cond_8

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int v8, p4, p2

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v9

    sub-int v9, v8, v9

    sub-int/2addr v8, v1

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    sub-int/2addr v8, v10

    .line 5
    invoke-virtual/range {p0 .. p0}, Ld/b/e/i0;->getVirtualChildCount()I

    move-result v10

    .line 6
    iget v11, v0, Ld/b/e/i0;->B:I

    and-int/lit8 v12, v11, 0x70

    and-int/2addr v6, v11

    if-eq v12, v3, :cond_1

    if-eq v12, v2, :cond_0

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    add-int v2, v2, p5

    sub-int v2, v2, p3

    iget v3, v0, Ld/b/e/i0;->C:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int v3, p5, p3

    iget v11, v0, Ld/b/e/i0;->C:I

    sub-int/2addr v3, v11

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v10, :cond_17

    .line 10
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_2

    add-int/lit8 v2, v2, 0x0

    goto :goto_4

    .line 11
    :cond_2
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eq v12, v4, :cond_7

    .line 12
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 13
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 14
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Ld/b/e/i0$a;

    .line 15
    iget v14, v13, Ld/b/e/i0$a;->b:I

    if-gez v14, :cond_3

    move v14, v6

    .line 16
    :cond_3
    invoke-static/range {p0 .. p0}, Ld/i/i/n;->i(Landroid/view/View;)I

    move-result v15

    .line 17
    invoke-static {v14, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v14

    and-int/lit8 v14, v14, 0x7

    if-eq v14, v7, :cond_5

    if-eq v14, v5, :cond_4

    .line 18
    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v1

    goto :goto_3

    :cond_4
    sub-int v5, v9, v4

    .line 19
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    :cond_5
    sub-int v5, v8, v4

    .line 20
    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v14

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_2
    sub-int/2addr v5, v14

    .line 21
    :goto_3
    invoke-virtual {v0, v3}, Ld/b/e/i0;->a(I)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 22
    iget v14, v0, Ld/b/e/i0;->J:I

    add-int/2addr v2, v14

    .line 23
    :cond_6
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v14

    add-int/lit8 v14, v2, 0x0

    add-int/2addr v4, v5

    add-int v15, v12, v14

    .line 24
    invoke-virtual {v11, v5, v14, v4, v15}, Landroid/view/View;->layout(IIII)V

    .line 25
    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/4 v5, 0x0

    invoke-static {v12, v4, v5, v2}, Le/a/a/a/a;->a(IIII)I

    move-result v2

    add-int/lit8 v3, v3, 0x0

    :cond_7
    :goto_4
    add-int/2addr v3, v7

    const/16 v4, 0x8

    const/4 v5, 0x5

    goto :goto_1

    .line 26
    :cond_8
    invoke-static/range {p0 .. p0}, Ld/b/e/d1;->a(Landroid/view/View;)Z

    move-result v1

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int v3, p5, p3

    .line 28
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int v4, v3, v4

    sub-int/2addr v3, v2

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v3, v5

    .line 30
    invoke-virtual/range {p0 .. p0}, Ld/b/e/i0;->getVirtualChildCount()I

    move-result v5

    .line 31
    iget v8, v0, Ld/b/e/i0;->B:I

    and-int/2addr v6, v8

    and-int/lit8 v8, v8, 0x70

    .line 32
    iget-boolean v9, v0, Ld/b/e/i0;->x:Z

    .line 33
    iget-object v10, v0, Ld/b/e/i0;->F:[I

    .line 34
    iget-object v11, v0, Ld/b/e/i0;->G:[I

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v12

    .line 36
    invoke-static {v6, v12}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    if-eq v6, v7, :cond_a

    const/4 v7, 0x5

    if-eq v6, v7, :cond_9

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    goto :goto_5

    .line 38
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    add-int v6, v6, p4

    sub-int v6, v6, p2

    iget v7, v0, Ld/b/e/i0;->C:I

    sub-int/2addr v6, v7

    goto :goto_5

    .line 39
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    sub-int v7, p4, p2

    iget v12, v0, Ld/b/e/i0;->C:I

    sub-int/2addr v7, v12

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    :goto_5
    if-eqz v1, :cond_b

    add-int/lit8 v1, v5, -0x1

    const/4 v7, -0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    const/4 v7, 0x1

    :goto_6
    const/4 v12, 0x0

    :goto_7
    if-ge v12, v5, :cond_17

    mul-int v13, v7, v12

    add-int/2addr v13, v1

    .line 40
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-nez v14, :cond_c

    add-int/lit8 v6, v6, 0x0

    move/from16 p1, v1

    goto/16 :goto_a

    .line 41
    :cond_c
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    move/from16 p1, v1

    const/16 v1, 0x8

    if-eq v15, v1, :cond_16

    .line 42
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 43
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 44
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move/from16 p3, v5

    move-object/from16 v5, v16

    check-cast v5, Ld/b/e/i0$a;

    if-eqz v9, :cond_d

    move/from16 p2, v7

    .line 45
    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 p5, v8

    const/4 v8, -0x1

    if-eq v7, v8, :cond_e

    .line 46
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v7

    goto :goto_8

    :cond_d
    move/from16 p2, v7

    move/from16 p5, v8

    :cond_e
    const/4 v7, -0x1

    .line 47
    :goto_8
    iget v8, v5, Ld/b/e/i0$a;->b:I

    if-gez v8, :cond_f

    move/from16 v8, p5

    :cond_f
    and-int/lit8 v8, v8, 0x70

    move/from16 v16, v9

    const/16 v9, 0x10

    if-eq v8, v9, :cond_13

    const/16 v9, 0x30

    if-eq v8, v9, :cond_11

    const/16 v9, 0x50

    if-eq v8, v9, :cond_10

    move v8, v2

    goto :goto_9

    :cond_10
    sub-int v8, v4, v15

    .line 48
    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v8, v9

    const/4 v9, -0x1

    if-eq v7, v9, :cond_14

    .line 49
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v9, v7

    const/4 v7, 0x2

    .line 50
    aget v7, v11, v7

    sub-int/2addr v7, v9

    sub-int/2addr v8, v7

    goto :goto_9

    :cond_11
    const/4 v8, -0x1

    .line 51
    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v9, v2

    if-eq v7, v8, :cond_12

    const/4 v8, 0x1

    .line 52
    aget v8, v10, v8

    sub-int/2addr v8, v7

    add-int/2addr v8, v9

    goto :goto_9

    :cond_12
    move v8, v9

    goto :goto_9

    :cond_13
    sub-int v7, v3, v15

    .line 53
    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v2

    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v8, v7, v8

    .line 54
    :cond_14
    :goto_9
    invoke-virtual {v0, v13}, Ld/b/e/i0;->a(I)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 55
    iget v7, v0, Ld/b/e/i0;->I:I

    add-int/2addr v6, v7

    .line 56
    :cond_15
    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    add-int/lit8 v7, v6, 0x0

    add-int v9, v1, v7

    add-int/2addr v15, v8

    .line 57
    invoke-virtual {v14, v7, v8, v9, v15}, Landroid/view/View;->layout(IIII)V

    .line 58
    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v7, 0x0

    invoke-static {v1, v5, v7, v6}, Le/a/a/a/a;->a(IIII)I

    move-result v1

    add-int/lit8 v12, v12, 0x0

    move v6, v1

    goto :goto_b

    :cond_16
    :goto_a
    move/from16 p3, v5

    move/from16 p2, v7

    move/from16 p5, v8

    move/from16 v16, v9

    :goto_b
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, p1

    move/from16 v7, p2

    move/from16 v5, p3

    move/from16 v8, p5

    move/from16 v9, v16

    goto/16 :goto_7

    :cond_17
    return-void
.end method

.method public onMeasure(II)V
    .locals 35

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    .line 1
    iget v0, v6, Ld/b/e/i0;->A:I

    const/4 v1, -0x2

    const/high16 v2, -0x80000000

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v0, v9, :cond_2a

    .line 2
    iput v10, v6, Ld/b/e/i0;->C:I

    .line 3
    invoke-virtual/range {p0 .. p0}, Ld/b/e/i0;->getVirtualChildCount()I

    move-result v9

    .line 4
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 6
    iget v13, v6, Ld/b/e/i0;->y:I

    .line 7
    iget-boolean v14, v6, Ld/b/e/i0;->E:Z

    const/4 v0, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/high16 v15, -0x80000000

    const/16 v17, 0x0

    :goto_0
    if-ge v10, v9, :cond_10

    .line 8
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    if-nez v18, :cond_0

    .line 9
    iget v1, v6, Ld/b/e/i0;->C:I

    add-int/2addr v1, v0

    iput v1, v6, Ld/b/e/i0;->C:I

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    add-int/lit8 v10, v10, 0x0

    :goto_1
    move/from16 v19, v9

    move/from16 v25, v12

    goto/16 :goto_b

    .line 11
    :cond_1
    invoke-virtual {v6, v10}, Ld/b/e/i0;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget v0, v6, Ld/b/e/i0;->C:I

    iget v3, v6, Ld/b/e/i0;->J:I

    add-int/2addr v0, v3

    iput v0, v6, Ld/b/e/i0;->C:I

    .line 13
    :cond_2
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ld/b/e/i0$a;

    .line 14
    iget v0, v3, Ld/b/e/i0$a;->a:F

    add-float v20, v20, v0

    if-ne v12, v5, :cond_3

    .line 15
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez v5, :cond_3

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    .line 16
    iget v0, v6, Ld/b/e/i0;->C:I

    .line 17
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v0

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Ld/b/e/i0;->C:I

    const/16 v21, 0x1

    move/from16 v19, v9

    move/from16 v25, v12

    move-object v12, v3

    goto/16 :goto_4

    .line 18
    :cond_3
    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez v0, :cond_4

    iget v0, v3, Ld/b/e/i0$a;->a:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    .line 19
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v0, 0x0

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    const/high16 v0, -0x80000000

    const/high16 v5, -0x80000000

    :goto_2
    const/16 v19, 0x0

    cmpl-float v0, v20, v4

    if-nez v0, :cond_5

    .line 20
    iget v0, v6, Ld/b/e/i0;->C:I

    move/from16 v24, v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    const/16 v24, 0x0

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v4, v2

    move/from16 v2, p1

    move/from16 v25, v12

    move-object v12, v3

    move/from16 v3, v19

    move/from16 v26, v4

    move/from16 v4, p2

    move/from16 v19, v9

    move v9, v5

    move/from16 v5, v24

    invoke-virtual/range {v0 .. v5}, Ld/b/e/i0;->a(Landroid/view/View;IIII)V

    if-eq v9, v15, :cond_6

    .line 21
    iput v9, v12, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 22
    :cond_6
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 23
    iget v1, v6, Ld/b/e/i0;->C:I

    add-int v2, v1, v0

    .line 24
    iget v3, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Ld/b/e/i0;->C:I

    if-eqz v14, :cond_7

    move/from16 v15, v26

    .line 25
    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_4

    :cond_7
    move/from16 v15, v26

    move v2, v15

    :goto_4
    if-ltz v13, :cond_8

    add-int/lit8 v0, v10, 0x1

    if-ne v13, v0, :cond_8

    .line 26
    iget v0, v6, Ld/b/e/i0;->C:I

    iput v0, v6, Ld/b/e/i0;->z:I

    :cond_8
    if-ge v10, v13, :cond_a

    .line 27
    iget v0, v12, Ld/b/e/i0$a;->a:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_9

    goto :goto_5

    .line 28
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_5
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v11, v0, :cond_b

    .line 29
    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    const/16 v23, 0x1

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    .line 30
    :goto_6
    iget v1, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    .line 31
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 32
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 33
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    .line 34
    invoke-static {v8, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    if-eqz v22, :cond_c

    .line 35
    iget v7, v12, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_c

    const/4 v7, 0x1

    goto :goto_7

    :cond_c
    const/4 v7, 0x0

    .line 36
    :goto_7
    iget v8, v12, Ld/b/e/i0$a;->a:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_e

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    move v1, v3

    :goto_8
    move/from16 v9, v17

    .line 37
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v9, v0

    move/from16 v0, v16

    goto :goto_a

    :cond_e
    move/from16 v9, v17

    if-eqz v0, :cond_f

    goto :goto_9

    :cond_f
    move v1, v3

    :goto_9
    move/from16 v0, v16

    .line 38
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_a
    add-int/lit8 v10, v10, 0x0

    move/from16 v16, v0

    move v8, v5

    move/from16 v22, v7

    move/from16 v17, v9

    move v7, v4

    :goto_b
    add-int/lit8 v10, v10, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x2

    const/high16 v15, -0x80000000

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v9, v19

    move/from16 v12, v25

    goto/16 :goto_0

    :cond_10
    move v15, v2

    move/from16 v19, v9

    move/from16 v25, v12

    move/from16 v0, v16

    move/from16 v9, v17

    .line 39
    iget v1, v6, Ld/b/e/i0;->C:I

    if-lez v1, :cond_11

    move/from16 v1, v19

    invoke-virtual {v6, v1}, Ld/b/e/i0;->a(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 40
    iget v2, v6, Ld/b/e/i0;->C:I

    iget v3, v6, Ld/b/e/i0;->J:I

    add-int/2addr v2, v3

    iput v2, v6, Ld/b/e/i0;->C:I

    goto :goto_c

    :cond_11
    move/from16 v1, v19

    :cond_12
    :goto_c
    if-eqz v14, :cond_16

    const/high16 v2, -0x80000000

    move/from16 v3, v25

    if-eq v3, v2, :cond_13

    if-nez v3, :cond_17

    :cond_13
    const/4 v2, 0x0

    .line 41
    iput v2, v6, Ld/b/e/i0;->C:I

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v1, :cond_17

    .line 42
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_14

    .line 43
    iget v5, v6, Ld/b/e/i0;->C:I

    add-int/2addr v5, v2

    iput v5, v6, Ld/b/e/i0;->C:I

    goto :goto_e

    .line 44
    :cond_14
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v10, 0x8

    if-ne v2, v10, :cond_15

    add-int/lit8 v4, v4, 0x0

    goto :goto_e

    .line 45
    :cond_15
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Ld/b/e/i0$a;

    .line 46
    iget v5, v6, Ld/b/e/i0;->C:I

    add-int v10, v5, v15

    .line 47
    iget v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v10, v12

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v10, v2

    add-int/lit8 v10, v10, 0x0

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v6, Ld/b/e/i0;->C:I

    :goto_e
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    goto :goto_d

    :cond_16
    move/from16 v3, v25

    .line 48
    :cond_17
    iget v2, v6, Ld/b/e/i0;->C:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    iput v5, v6, Ld/b/e/i0;->C:I

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v4, 0x0

    move/from16 v10, p2

    .line 50
    invoke-static {v2, v10, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    const v4, 0xffffff

    and-int/2addr v4, v2

    .line 51
    iget v5, v6, Ld/b/e/i0;->C:I

    sub-int/2addr v4, v5

    if-nez v21, :cond_1c

    if-eqz v4, :cond_18

    const/4 v5, 0x0

    cmpl-float v5, v20, v5

    if-lez v5, :cond_18

    goto :goto_11

    .line 52
    :cond_18
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v14, :cond_1b

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_1b

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_1b

    .line 53
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 54
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v9, 0x8

    if-ne v5, v9, :cond_19

    goto :goto_10

    .line 55
    :cond_19
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Ld/b/e/i0$a;

    .line 56
    iget v5, v5, Ld/b/e/i0$a;->a:F

    const/4 v9, 0x0

    cmpl-float v5, v5, v9

    if-lez v5, :cond_1a

    .line 57
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 58
    invoke-static {v15, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 59
    invoke-virtual {v4, v5, v9}, Landroid/view/View;->measure(II)V

    :cond_1a
    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1b
    move/from16 v4, p1

    goto/16 :goto_1c

    .line 60
    :cond_1c
    :goto_11
    iget v5, v6, Ld/b/e/i0;->D:F

    const/4 v9, 0x0

    cmpl-float v9, v5, v9

    if-lez v9, :cond_1d

    move/from16 v20, v5

    :cond_1d
    const/4 v5, 0x0

    .line 61
    iput v5, v6, Ld/b/e/i0;->C:I

    move/from16 v34, v7

    move v7, v0

    move/from16 v0, v34

    :goto_12
    if-ge v5, v1, :cond_28

    .line 62
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 63
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_1e

    move/from16 v25, v3

    move v13, v4

    move/from16 v4, p1

    goto/16 :goto_1b

    .line 64
    :cond_1e
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Ld/b/e/i0$a;

    .line 65
    iget v13, v12, Ld/b/e/i0$a;->a:F

    const/4 v14, 0x0

    cmpl-float v14, v13, v14

    if-lez v14, :cond_23

    int-to-float v14, v4

    mul-float v14, v14, v13

    div-float v14, v14, v20

    float-to-int v14, v14

    sub-float v20, v20, v13

    sub-int/2addr v4, v14

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v15

    add-int/2addr v15, v13

    iget v13, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v15, v13

    iget v13, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v15, v13

    iget v13, v12, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v16, v4

    move/from16 v4, p1

    .line 67
    invoke-static {v4, v15, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v13

    .line 68
    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez v15, :cond_21

    const/high16 v15, 0x40000000    # 2.0f

    if-eq v3, v15, :cond_1f

    goto :goto_14

    :cond_1f
    if-lez v14, :cond_20

    goto :goto_13

    :cond_20
    const/4 v14, 0x0

    .line 69
    :goto_13
    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 70
    invoke-virtual {v9, v13, v14}, Landroid/view/View;->measure(II)V

    goto :goto_16

    :cond_21
    const/high16 v15, 0x40000000    # 2.0f

    .line 71
    :goto_14
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v17, v17, v14

    if-gez v17, :cond_22

    const/16 v17, 0x0

    const/4 v14, 0x0

    goto :goto_15

    :cond_22
    move/from16 v14, v17

    .line 72
    :goto_15
    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 73
    invoke-virtual {v9, v13, v14}, Landroid/view/View;->measure(II)V

    .line 74
    :goto_16
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    move-result v13

    and-int/lit16 v13, v13, -0x100

    .line 75
    invoke-static {v8, v13}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v8

    move/from16 v13, v16

    goto :goto_17

    :cond_23
    move v13, v4

    move/from16 v4, p1

    .line 76
    :goto_17
    iget v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v14, v15

    .line 77
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v14

    .line 78
    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v16, v0

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v11, v0, :cond_24

    .line 79
    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v25, v3

    const/4 v3, -0x1

    if-ne v0, v3, :cond_25

    const/4 v0, 0x1

    goto :goto_18

    :cond_24
    move/from16 v25, v3

    const/4 v3, -0x1

    :cond_25
    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_26

    goto :goto_19

    :cond_26
    move v14, v15

    .line 80
    :goto_19
    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v22, :cond_27

    .line 81
    iget v7, v12, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v7, v3, :cond_27

    const/4 v3, 0x1

    goto :goto_1a

    :cond_27
    const/4 v3, 0x0

    .line 82
    :goto_1a
    iget v7, v6, Ld/b/e/i0;->C:I

    .line 83
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v7

    iget v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v9, v14

    iget v12, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, 0x0

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v6, Ld/b/e/i0;->C:I

    move v7, v0

    move/from16 v22, v3

    move/from16 v0, v16

    :goto_1b
    add-int/lit8 v5, v5, 0x1

    move v4, v13

    move/from16 v3, v25

    goto/16 :goto_12

    :cond_28
    move/from16 v4, p1

    .line 84
    iget v3, v6, Ld/b/e/i0;->C:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    add-int/2addr v9, v5

    add-int/2addr v9, v3

    iput v9, v6, Ld/b/e/i0;->C:I

    move/from16 v34, v7

    move v7, v0

    move/from16 v0, v34

    :goto_1c
    if-nez v22, :cond_29

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v11, v3, :cond_29

    goto :goto_1d

    :cond_29
    move v0, v7

    .line 85
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v5, v0

    .line 86
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 87
    invoke-static {v0, v4, v8}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v6, v0, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    if-eqz v23, :cond_63

    .line 88
    invoke-virtual {v6, v1, v10}, Ld/b/e/i0;->b(II)V

    goto/16 :goto_43

    :cond_2a
    move v4, v7

    move v10, v8

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 89
    iput v0, v6, Ld/b/e/i0;->C:I

    .line 90
    invoke-virtual/range {p0 .. p0}, Ld/b/e/i0;->getVirtualChildCount()I

    move-result v8

    .line 91
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 92
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 93
    iget-object v0, v6, Ld/b/e/i0;->F:[I

    const/4 v1, 0x4

    if-eqz v0, :cond_2b

    iget-object v0, v6, Ld/b/e/i0;->G:[I

    if-nez v0, :cond_2c

    :cond_2b
    new-array v0, v1, [I

    .line 94
    iput-object v0, v6, Ld/b/e/i0;->F:[I

    new-array v0, v1, [I

    .line 95
    iput-object v0, v6, Ld/b/e/i0;->G:[I

    .line 96
    :cond_2c
    iget-object v12, v6, Ld/b/e/i0;->F:[I

    .line 97
    iget-object v13, v6, Ld/b/e/i0;->G:[I

    const/4 v0, 0x3

    const/4 v1, -0x1

    .line 98
    aput v1, v12, v0

    const/4 v14, 0x2

    aput v1, v12, v14

    aput v1, v12, v7

    const/4 v2, 0x0

    aput v1, v12, v2

    .line 99
    aput v1, v13, v0

    aput v1, v13, v14

    aput v1, v13, v7

    aput v1, v13, v2

    .line 100
    iget-boolean v15, v6, Ld/b/e/i0;->x:Z

    .line 101
    iget-boolean v5, v6, Ld/b/e/i0;->E:Z

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v9, v0, :cond_2d

    const/4 v0, 0x1

    const/16 v16, 0x1

    goto :goto_1e

    :cond_2d
    const/4 v0, 0x0

    const/16 v16, 0x0

    :goto_1e
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    const/16 v27, 0x0

    :goto_1f
    if-ge v0, v8, :cond_41

    move/from16 v19, v5

    .line 102
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_2e

    .line 103
    iget v5, v6, Ld/b/e/i0;->C:I

    add-int/lit8 v5, v5, 0x0

    iput v5, v6, Ld/b/e/i0;->C:I

    move/from16 v23, v2

    move/from16 v24, v3

    goto :goto_20

    :cond_2e
    move/from16 v23, v2

    .line 104
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v2

    move/from16 v24, v3

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2f

    add-int/lit8 v0, v0, 0x0

    :goto_20
    move v10, v4

    move/from16 v2, v23

    move/from16 v3, v24

    goto/16 :goto_2c

    .line 105
    :cond_2f
    invoke-virtual {v6, v0}, Ld/b/e/i0;->a(I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 106
    iget v2, v6, Ld/b/e/i0;->C:I

    iget v3, v6, Ld/b/e/i0;->I:I

    add-int/2addr v2, v3

    iput v2, v6, Ld/b/e/i0;->C:I

    .line 107
    :cond_30
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ld/b/e/i0$a;

    .line 108
    iget v2, v3, Ld/b/e/i0$a;->a:F

    add-float v25, v1, v2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v9, v1, :cond_33

    .line 109
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v1, :cond_33

    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    if-lez v1, :cond_33

    if-eqz v16, :cond_31

    .line 110
    iget v1, v6, Ld/b/e/i0;->C:I

    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v26, v0

    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    iput v2, v6, Ld/b/e/i0;->C:I

    goto :goto_21

    :cond_31
    move/from16 v26, v0

    .line 111
    iget v0, v6, Ld/b/e/i0;->C:I

    .line 112
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Ld/b/e/i0;->C:I

    :goto_21
    if-eqz v15, :cond_32

    const/4 v0, 0x0

    .line 113
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 114
    invoke-virtual {v5, v0, v0}, Landroid/view/View;->measure(II)V

    move-object v2, v3

    move v10, v4

    move/from16 v30, v23

    move/from16 v32, v24

    move-object/from16 v23, v5

    goto/16 :goto_26

    :cond_32
    const/high16 v0, 0x40000000    # 2.0f

    const/16 v20, 0x1

    move-object v2, v3

    move v10, v4

    move/from16 v30, v23

    move/from16 v32, v24

    move-object/from16 v23, v5

    goto/16 :goto_27

    :cond_33
    move/from16 v26, v0

    .line 115
    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v0, :cond_34

    iget v0, v3, Ld/b/e/i0$a;->a:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_35

    const/4 v0, -0x2

    .line 116
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_22

    :cond_34
    const/4 v1, 0x0

    :cond_35
    const/high16 v0, -0x80000000

    const/high16 v2, -0x80000000

    :goto_22
    cmpl-float v0, v25, v1

    if-nez v0, :cond_36

    .line 117
    iget v0, v6, Ld/b/e/i0;->C:I

    move/from16 v28, v0

    goto :goto_23

    :cond_36
    const/4 v0, 0x0

    const/16 v28, 0x0

    :goto_23
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v31, v2

    move/from16 v30, v23

    move/from16 v2, p1

    move-object/from16 v33, v3

    move/from16 v32, v24

    move/from16 v3, v28

    move v10, v4

    move/from16 v4, p2

    move-object/from16 v23, v5

    move/from16 v5, v29

    invoke-virtual/range {v0 .. v5}, Ld/b/e/i0;->a(Landroid/view/View;IIII)V

    const/high16 v0, -0x80000000

    move/from16 v1, v31

    if-eq v1, v0, :cond_37

    move-object/from16 v2, v33

    .line 118
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_24

    :cond_37
    move-object/from16 v2, v33

    .line 119
    :goto_24
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v16, :cond_38

    .line 120
    iget v1, v6, Ld/b/e/i0;->C:I

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v0

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v1}, Le/a/a/a/a;->a(IIII)I

    move-result v1

    .line 121
    iput v1, v6, Ld/b/e/i0;->C:I

    goto :goto_25

    .line 122
    :cond_38
    iget v1, v6, Ld/b/e/i0;->C:I

    add-int v3, v1, v0

    .line 123
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Ld/b/e/i0;->C:I

    :goto_25
    if-eqz v19, :cond_39

    .line 124
    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_39
    :goto_26
    const/high16 v0, 0x40000000    # 2.0f

    :goto_27
    if-eq v11, v0, :cond_3a

    .line 125
    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3a

    const/4 v0, 0x1

    const/16 v22, 0x1

    goto :goto_28

    :cond_3a
    const/4 v0, 0x0

    .line 126
    :goto_28
    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    .line 127
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    .line 128
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    invoke-static {v7, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    if-eqz v15, :cond_3c

    .line 129
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getBaseline()I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3c

    .line 130
    iget v7, v2, Ld/b/e/i0$a;->b:I

    if-gez v7, :cond_3b

    iget v7, v6, Ld/b/e/i0;->B:I

    :cond_3b
    and-int/lit8 v7, v7, 0x70

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, -0x2

    shr-int/lit8 v7, v7, 0x1

    move/from16 v23, v1

    .line 131
    aget v1, v12, v7

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v12, v7

    .line 132
    aget v1, v13, v7

    sub-int v5, v3, v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v13, v7

    goto :goto_29

    :cond_3c
    move/from16 v23, v1

    :goto_29
    move/from16 v5, v30

    .line 133
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v21, :cond_3d

    .line 134
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_3d

    const/4 v5, 0x1

    goto :goto_2a

    :cond_3d
    const/4 v5, 0x0

    .line 135
    :goto_2a
    iget v2, v2, Ld/b/e/i0$a;->a:F

    const/4 v7, 0x0

    cmpl-float v2, v2, v7

    if-lez v2, :cond_3f

    if-eqz v0, :cond_3e

    move/from16 v3, v23

    :cond_3e
    move/from16 v2, v27

    .line 136
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    move/from16 v3, v32

    goto :goto_2b

    :cond_3f
    move/from16 v2, v27

    if-eqz v0, :cond_40

    move/from16 v3, v23

    :cond_40
    move/from16 v0, v32

    .line 137
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v27, v2

    :goto_2b
    add-int/lit8 v0, v26, 0x0

    move v2, v1

    move v7, v4

    move/from16 v21, v5

    move/from16 v1, v25

    :goto_2c
    add-int/lit8 v0, v0, 0x1

    move v4, v10

    move/from16 v5, v19

    move/from16 v10, p2

    goto/16 :goto_1f

    :cond_41
    move v0, v3

    move v10, v4

    move/from16 v19, v5

    move v5, v2

    move/from16 v2, v27

    .line 138
    iget v3, v6, Ld/b/e/i0;->C:I

    if-lez v3, :cond_42

    invoke-virtual {v6, v8}, Ld/b/e/i0;->a(I)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 139
    iget v3, v6, Ld/b/e/i0;->C:I

    iget v4, v6, Ld/b/e/i0;->I:I

    add-int/2addr v3, v4

    iput v3, v6, Ld/b/e/i0;->C:I

    :cond_42
    const/4 v3, 0x1

    .line 140
    aget v4, v12, v3

    const/4 v3, -0x1

    if-ne v4, v3, :cond_44

    const/4 v4, 0x0

    aget v4, v12, v4

    if-ne v4, v3, :cond_44

    move/from16 v23, v7

    const/4 v4, 0x2

    aget v7, v12, v4

    if-ne v7, v3, :cond_45

    const/4 v4, 0x3

    aget v7, v12, v4

    if-eq v7, v3, :cond_43

    goto :goto_2d

    :cond_43
    move v3, v5

    move/from16 v25, v11

    move/from16 v24, v15

    goto :goto_2e

    :cond_44
    move/from16 v23, v7

    :cond_45
    const/4 v4, 0x3

    .line 141
    :goto_2d
    aget v3, v12, v4

    const/4 v4, 0x0

    aget v4, v12, v4

    move/from16 v24, v15

    const/4 v7, 0x1

    aget v15, v12, v7

    const/16 v17, 0x2

    aget v7, v12, v17

    .line 142
    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 143
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 144
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x3

    .line 145
    aget v4, v13, v4

    const/4 v7, 0x0

    aget v7, v13, v7

    move/from16 v25, v11

    const/4 v15, 0x1

    aget v11, v13, v15

    aget v15, v13, v17

    .line 146
    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 147
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 148
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v4, v3

    .line 149
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_2e
    if-eqz v19, :cond_4a

    const/high16 v4, -0x80000000

    if-eq v9, v4, :cond_46

    if-nez v9, :cond_4a

    :cond_46
    const/4 v4, 0x0

    .line 150
    iput v4, v6, Ld/b/e/i0;->C:I

    const/4 v5, 0x0

    :goto_2f
    if-ge v5, v8, :cond_4a

    .line 151
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_47

    .line 152
    iget v7, v6, Ld/b/e/i0;->C:I

    add-int/2addr v7, v4

    iput v7, v6, Ld/b/e/i0;->C:I

    goto :goto_30

    .line 153
    :cond_47
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v11, 0x8

    if-ne v4, v11, :cond_48

    add-int/lit8 v5, v5, 0x0

    goto :goto_30

    .line 154
    :cond_48
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Ld/b/e/i0$a;

    if-eqz v16, :cond_49

    .line 155
    iget v7, v6, Ld/b/e/i0;->C:I

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v11, v14

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v15, 0x0

    invoke-static {v11, v4, v15, v7}, Le/a/a/a/a;->a(IIII)I

    move-result v4

    .line 156
    iput v4, v6, Ld/b/e/i0;->C:I

    goto :goto_30

    .line 157
    :cond_49
    iget v7, v6, Ld/b/e/i0;->C:I

    add-int v11, v7, v14

    .line 158
    iget v15, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v11, v15

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v4

    add-int/lit8 v11, v11, 0x0

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v6, Ld/b/e/i0;->C:I

    :goto_30
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto :goto_2f

    .line 159
    :cond_4a
    iget v4, v6, Ld/b/e/i0;->C:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    add-int/2addr v7, v5

    add-int/2addr v7, v4

    iput v7, v6, Ld/b/e/i0;->C:I

    .line 160
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x0

    .line 161
    invoke-static {v4, v10, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    const v5, 0xffffff

    and-int/2addr v5, v4

    .line 162
    iget v7, v6, Ld/b/e/i0;->C:I

    sub-int/2addr v5, v7

    if-nez v20, :cond_4f

    if-eqz v5, :cond_4b

    const/4 v7, 0x0

    cmpl-float v7, v1, v7

    if-lez v7, :cond_4b

    goto :goto_33

    .line 163
    :cond_4b
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v19, :cond_4e

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v9, v1, :cond_4e

    const/4 v1, 0x0

    :goto_31
    if-ge v1, v8, :cond_4e

    .line 164
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 165
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v7, 0x8

    if-ne v5, v7, :cond_4c

    goto :goto_32

    .line 166
    :cond_4c
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Ld/b/e/i0$a;

    .line 167
    iget v5, v5, Ld/b/e/i0$a;->a:F

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-lez v5, :cond_4d

    const/high16 v5, 0x40000000    # 2.0f

    .line 168
    invoke-static {v14, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 169
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v9, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 170
    invoke-virtual {v2, v7, v5}, Landroid/view/View;->measure(II)V

    :cond_4d
    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_4e
    move/from16 v5, p2

    move/from16 v7, v23

    move/from16 v15, v25

    goto/16 :goto_41

    .line 171
    :cond_4f
    :goto_33
    iget v2, v6, Ld/b/e/i0;->D:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_50

    move v1, v2

    :cond_50
    const/4 v2, 0x3

    const/4 v3, -0x1

    .line 172
    aput v3, v12, v2

    const/4 v7, 0x2

    aput v3, v12, v7

    const/4 v11, 0x1

    aput v3, v12, v11

    const/4 v14, 0x0

    aput v3, v12, v14

    .line 173
    aput v3, v13, v2

    aput v3, v13, v7

    aput v3, v13, v11

    aput v3, v13, v14

    .line 174
    iput v14, v6, Ld/b/e/i0;->C:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    move/from16 v7, v23

    :goto_34
    if-ge v3, v8, :cond_5f

    .line 175
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_5e

    .line 176
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_51

    goto/16 :goto_3e

    .line 177
    :cond_51
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Ld/b/e/i0$a;

    .line 178
    iget v15, v14, Ld/b/e/i0$a;->a:F

    const/16 v19, 0x0

    cmpl-float v19, v15, v19

    if-lez v19, :cond_56

    int-to-float v10, v5

    mul-float v10, v10, v15

    div-float/2addr v10, v1

    float-to-int v10, v10

    sub-float/2addr v1, v15

    sub-int/2addr v5, v10

    .line 179
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v19

    add-int v19, v19, v15

    iget v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v19, v19, v15

    iget v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v15, v19, v15

    move/from16 v19, v1

    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v20, v5

    move/from16 v5, p2

    .line 180
    invoke-static {v5, v15, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 181
    iget v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v15, :cond_54

    const/high16 v15, 0x40000000    # 2.0f

    if-eq v9, v15, :cond_52

    goto :goto_36

    :cond_52
    if-lez v10, :cond_53

    goto :goto_35

    :cond_53
    const/4 v10, 0x0

    .line 182
    :goto_35
    invoke-static {v10, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v11, v10, v1}, Landroid/view/View;->measure(II)V

    goto :goto_38

    :cond_54
    const/high16 v15, 0x40000000    # 2.0f

    .line 183
    :goto_36
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    add-int v23, v23, v10

    if-gez v23, :cond_55

    const/16 v23, 0x0

    const/4 v10, 0x0

    goto :goto_37

    :cond_55
    move/from16 v10, v23

    .line 184
    :goto_37
    invoke-static {v10, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 185
    invoke-virtual {v11, v10, v1}, Landroid/view/View;->measure(II)V

    .line 186
    :goto_38
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    const/high16 v10, -0x1000000

    and-int/2addr v1, v10

    .line 187
    invoke-static {v7, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v7

    move/from16 v1, v19

    goto :goto_39

    :cond_56
    move v10, v5

    move/from16 v5, p2

    move/from16 v20, v10

    :goto_39
    if-eqz v16, :cond_57

    .line 188
    iget v10, v6, Ld/b/e/i0;->C:I

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    move/from16 v19, v1

    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v15, v1

    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v23, v7

    const/4 v7, 0x0

    invoke-static {v15, v1, v7, v10}, Le/a/a/a/a;->a(IIII)I

    move-result v1

    .line 189
    iput v1, v6, Ld/b/e/i0;->C:I

    goto :goto_3a

    :cond_57
    move/from16 v19, v1

    move/from16 v23, v7

    .line 190
    iget v1, v6, Ld/b/e/i0;->C:I

    .line 191
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v1

    iget v10, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v7, v10

    iget v10, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v10

    add-int/lit8 v7, v7, 0x0

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Ld/b/e/i0;->C:I

    :goto_3a
    const/high16 v1, 0x40000000    # 2.0f

    move/from16 v15, v25

    if-eq v15, v1, :cond_58

    .line 192
    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v7, -0x1

    if-ne v1, v7, :cond_58

    const/4 v1, 0x1

    goto :goto_3b

    :cond_58
    const/4 v1, 0x0

    .line 193
    :goto_3b
    iget v7, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v10

    .line 194
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v7

    .line 195
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v1, :cond_59

    goto :goto_3c

    :cond_59
    move v7, v10

    .line 196
    :goto_3c
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v21, :cond_5a

    .line 197
    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v7, -0x1

    if-ne v1, v7, :cond_5b

    const/4 v1, 0x1

    goto :goto_3d

    :cond_5a
    const/4 v7, -0x1

    :cond_5b
    const/4 v1, 0x0

    :goto_3d
    if-eqz v24, :cond_5d

    .line 198
    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    move-result v11

    if-eq v11, v7, :cond_5d

    .line 199
    iget v7, v14, Ld/b/e/i0$a;->b:I

    if-gez v7, :cond_5c

    iget v7, v6, Ld/b/e/i0;->B:I

    :cond_5c
    and-int/lit8 v7, v7, 0x70

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, -0x2

    shr-int/lit8 v7, v7, 0x1

    .line 200
    aget v14, v12, v7

    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v14

    aput v14, v12, v7

    .line 201
    aget v14, v13, v7

    sub-int/2addr v10, v11

    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v13, v7

    :cond_5d
    move/from16 v21, v1

    move/from16 v1, v19

    move/from16 v7, v23

    goto :goto_3f

    :cond_5e
    :goto_3e
    move v10, v5

    move/from16 v15, v25

    move/from16 v5, p2

    move/from16 v20, v10

    :goto_3f
    add-int/lit8 v3, v3, 0x1

    move/from16 v10, p1

    move/from16 v25, v15

    move/from16 v5, v20

    goto/16 :goto_34

    :cond_5f
    move/from16 v5, p2

    move/from16 v15, v25

    .line 202
    iget v1, v6, Ld/b/e/i0;->C:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v9

    add-int/2addr v9, v3

    add-int/2addr v9, v1

    iput v9, v6, Ld/b/e/i0;->C:I

    const/4 v1, 0x1

    .line 203
    aget v3, v12, v1

    const/4 v1, -0x1

    if-ne v3, v1, :cond_61

    const/4 v3, 0x0

    aget v3, v12, v3

    if-ne v3, v1, :cond_61

    const/4 v3, 0x2

    aget v9, v12, v3

    if-ne v9, v1, :cond_61

    const/4 v3, 0x3

    aget v9, v12, v3

    if-eq v9, v1, :cond_60

    goto :goto_40

    :cond_60
    move v3, v2

    goto :goto_41

    :cond_61
    const/4 v3, 0x3

    .line 204
    :goto_40
    aget v1, v12, v3

    const/4 v9, 0x0

    aget v10, v12, v9

    const/4 v11, 0x1

    aget v14, v12, v11

    const/16 v16, 0x2

    aget v12, v12, v16

    .line 205
    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 206
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 207
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 208
    aget v3, v13, v3

    aget v9, v13, v9

    aget v10, v13, v11

    aget v11, v13, v16

    .line 209
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 210
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 211
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v1

    .line 212
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_41
    if-nez v21, :cond_62

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v15, v1, :cond_62

    goto :goto_42

    :cond_62
    move v0, v3

    .line 213
    :goto_42
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    .line 214
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v1, v7

    or-int/2addr v1, v4

    shl-int/lit8 v2, v7, 0x10

    .line 215
    invoke-static {v0, v5, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 216
    invoke-virtual {v6, v1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    if-eqz v22, :cond_63

    move/from16 v0, p1

    .line 217
    invoke-virtual {v6, v8, v0}, Ld/b/e/i0;->a(II)V

    :cond_63
    :goto_43
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ld/b/e/i0;->x:Z

    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iput p1, p0, Ld/b/e/i0;->y:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "base aligned child index out of range (0, "

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/b/e/i0;->H:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Ld/b/e/i0;->H:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Ld/b/e/i0;->I:I

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Ld/b/e/i0;->J:I

    goto :goto_0

    .line 5
    :cond_1
    iput v0, p0, Ld/b/e/i0;->I:I

    .line 6
    iput v0, p0, Ld/b/e/i0;->J:I

    :goto_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 7
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Ld/b/e/i0;->L:I

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 1
    iget v0, p0, Ld/b/e/i0;->B:I

    if-eq v0, p1, :cond_2

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    .line 2
    :cond_1
    iput p1, p0, Ld/b/e/i0;->B:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 2

    const v0, 0x800007

    and-int/2addr p1, v0

    .line 1
    iget v1, p0, Ld/b/e/i0;->B:I

    and-int/2addr v0, v1

    if-eq v0, p1, :cond_0

    const v0, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    .line 2
    iput p1, p0, Ld/b/e/i0;->B:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ld/b/e/i0;->E:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    iget v0, p0, Ld/b/e/i0;->A:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Ld/b/e/i0;->A:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    .line 1
    iget v0, p0, Ld/b/e/i0;->K:I

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3
    :cond_0
    iput p1, p0, Ld/b/e/i0;->K:I

    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2

    and-int/lit8 p1, p1, 0x70

    .line 1
    iget v0, p0, Ld/b/e/i0;->B:I

    and-int/lit8 v1, v0, 0x70

    if-eq v1, p1, :cond_0

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    .line 2
    iput p1, p0, Ld/b/e/i0;->B:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Ld/b/e/i0;->D:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
