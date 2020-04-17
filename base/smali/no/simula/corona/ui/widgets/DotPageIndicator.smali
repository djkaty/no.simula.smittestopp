.class public final Lno/simula/corona/ui/widgets/DotPageIndicator;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:Landroid/graphics/Paint;

.field public C:Landroid/graphics/Paint;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lno/simula/corona/ui/widgets/DotPageIndicator;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p2, p1}, Lno/simula/corona/ui/widgets/DotPageIndicator;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0, p2, p3}, Lno/simula/corona/ui/widgets/DotPageIndicator;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    sget-object v1, Lno/simula/corona/R$styleable;->DotPageIndicator:[I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f060092

    invoke-static {p2, v0}, Ld/i/b/a;->a(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lno/simula/corona/ui/widgets/DotPageIndicator;->z:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f06009b

    invoke-static {p2, v0}, Ld/i/b/a;->a(Landroid/content/Context;I)I

    move-result p2

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lno/simula/corona/ui/widgets/DotPageIndicator;->A:I

    const/4 p2, 0x1

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lno/simula/corona/ui/widgets/DotPageIndicator;->y:I

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lno/simula/corona/ui/widgets/DotPageIndicator;->B:Landroid/graphics/Paint;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 9
    iget v1, p0, Lno/simula/corona/ui/widgets/DotPageIndicator;->z:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lno/simula/corona/ui/widgets/DotPageIndicator;->C:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    .line 11
    iget p2, p0, Lno/simula/corona/ui/widgets/DotPageIndicator;->A:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_0
    invoke-static {}, Lh/k/b/g;->a()V

    throw v0

    .line 12
    :cond_1
    invoke-static {}, Lh/k/b/g;->a()V

    throw v0
.end method

.method public final getSelected()I
    .locals 1

    .line 1
    iget v0, p0, Lno/simula/corona/ui/widgets/DotPageIndicator;->x:I

    return v0
.end method

.method public final getSelectedColor()I
    .locals 1

    .line 1
    iget v0, p0, Lno/simula/corona/ui/widgets/DotPageIndicator;->z:I

    return v0
.end method

.method public final getSelectedPaint()Landroid/graphics/Paint;
    .locals 1

    .line 1
    iget-object v0, p0, Lno/simula/corona/ui/widgets/DotPageIndicator;->B:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getTotalDots()I
    .locals 1

    .line 1
    iget v0, p0, Lno/simula/corona/ui/widgets/DotPageIndicator;->y:I

    return v0
.end method

.method public final getUnSelectedColor()I
    .locals 1

    .line 1
    iget v0, p0, Lno/simula/corona/ui/widgets/DotPageIndicator;->A:I

    return v0
.end method

.method public final getUnSelectedPaint()Landroid/graphics/Paint;
    .locals 1

    .line 1
    iget-object v0, p0, Lno/simula/corona/ui/widgets/DotPageIndicator;->C:Landroid/graphics/Paint;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 3
    div-int/lit8 v2, v1, 0x2

    .line 4
    div-int/lit8 v1, v1, 0x4

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lno/simula/corona/ui/widgets/DotPageIndicator;->y:I

    div-int/2addr v3, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    .line 6
    div-int/lit8 v6, v3, 0x2

    mul-int v7, v3, v5

    add-int/2addr v7, v6

    .line 7
    iget v6, p0, Lno/simula/corona/ui/widgets/DotPageIndicator;->x:I

    if-ne v5, v6, :cond_1

    int-to-float v6, v7

    int-to-float v7, v2

    int-to-float v8, v1

    .line 8
    iget-object v9, p0, Lno/simula/corona/ui/widgets/DotPageIndicator;->B:Landroid/graphics/Paint;

    if-eqz v9, :cond_0

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lh/k/b/g;->a()V

    throw v0

    :cond_1
    int-to-float v6, v7

    int-to-float v7, v2

    int-to-float v8, v1

    .line 9
    iget-object v9, p0, Lno/simula/corona/ui/widgets/DotPageIndicator;->C:Landroid/graphics/Paint;

    if-eqz v9, :cond_2

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lh/k/b/g;->a()V

    throw v0

    :cond_3
    return-void

    :cond_4
    const-string p1, "canvas"

    .line 10
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0
.end method

.method public final setSelected(I)V
    .locals 0

    .line 1
    iput p1, p0, Lno/simula/corona/ui/widgets/DotPageIndicator;->x:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setSelectedColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lno/simula/corona/ui/widgets/DotPageIndicator;->z:I

    return-void
.end method

.method public final setSelectedPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lno/simula/corona/ui/widgets/DotPageIndicator;->B:Landroid/graphics/Paint;

    return-void
.end method

.method public final setTotalDots(I)V
    .locals 0

    .line 1
    iput p1, p0, Lno/simula/corona/ui/widgets/DotPageIndicator;->y:I

    return-void
.end method

.method public final setUnSelectedColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lno/simula/corona/ui/widgets/DotPageIndicator;->A:I

    return-void
.end method

.method public final setUnSelectedPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lno/simula/corona/ui/widgets/DotPageIndicator;->C:Landroid/graphics/Paint;

    return-void
.end method
