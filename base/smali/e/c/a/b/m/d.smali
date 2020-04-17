.class public Le/c/a/b/m/d;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public A:Le/c/a/b/m/b;

.field public final x:Landroid/view/accessibility/AccessibilityManager;

.field public final y:Ld/i/i/x/b;

.field public z:Le/c/a/b/m/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Le/c/a/b/m/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    sget-object v0, Lcom/google/android/material/R$styleable;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 4
    sget v0, Lcom/google/android/material/R$styleable;->SnackbarLayout_elevation:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget v0, Lcom/google/android/material/R$styleable;->SnackbarLayout_elevation:I

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    .line 7
    invoke-static {p0, v0}, Ld/i/i/n;->a(Landroid/view/View;F)V

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const-string p2, "accessibility"

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Le/c/a/b/m/d;->x:Landroid/view/accessibility/AccessibilityManager;

    .line 10
    new-instance p1, Le/c/a/b/m/d$a;

    invoke-direct {p1, p0}, Le/c/a/b/m/d$a;-><init>(Le/c/a/b/m/d;)V

    iput-object p1, p0, Le/c/a/b/m/d;->y:Ld/i/i/x/b;

    .line 11
    iget-object p2, p0, Le/c/a/b/m/d;->x:Landroid/view/accessibility/AccessibilityManager;

    .line 12
    new-instance v0, Ld/i/i/x/c;

    invoke-direct {v0, p1}, Ld/i/i/x/c;-><init>(Ld/i/i/x/b;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 13
    iget-object p1, p0, Le/c/a/b/m/d;->x:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Le/c/a/b/m/d;->setClickableOrFocusableBasedOnAccessibility(Z)V

    return-void
.end method

.method public static synthetic a(Le/c/a/b/m/d;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/c/a/b/m/d;->setClickableOrFocusableBasedOnAccessibility(Z)V

    return-void
.end method

.method private setClickableOrFocusableBasedOnAccessibility(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Le/c/a/b/m/d;->A:Le/c/a/b/m/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Le/c/a/b/m/b;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Ld/i/i/n;->y(Landroid/view/View;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Le/c/a/b/m/d;->A:Le/c/a/b/m/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Le/c/a/b/m/b;->onViewDetachedFromWindow(Landroid/view/View;)V

    .line 4
    :cond_0
    iget-object v0, p0, Le/c/a/b/m/d;->x:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Le/c/a/b/m/d;->y:Ld/i/i/x/b;

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v2, Ld/i/i/x/c;

    invoke-direct {v2, v1}, Ld/i/i/x/c;-><init>(Ld/i/i/x/b;)V

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :goto_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget-object v0, p0, Le/c/a/b/m/d;->z:Le/c/a/b/m/c;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 3
    invoke-interface/range {v0 .. v5}, Le/c/a/b/m/c;->a(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method public setOnAttachStateChangeListener(Le/c/a/b/m/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/c/a/b/m/d;->A:Le/c/a/b/m/b;

    return-void
.end method

.method public setOnLayoutChangeListener(Le/c/a/b/m/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/c/a/b/m/d;->z:Le/c/a/b/m/c;

    return-void
.end method
