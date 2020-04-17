.class public abstract Lcom/google/android/material/transformation/FabTransformationBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "SourceFile"


# instance fields
.field public final c:Landroid/graphics/Rect;

.field public final d:Landroid/graphics/RectF;

.field public final e:Landroid/graphics/RectF;

.field public final f:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->f:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    .line 8
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 9
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 10
    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->f:[I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/View;Le/c/a/b/a/i;)F
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 10
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 12
    invoke-virtual {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 13
    iget p1, p3, Le/c/a/b/a/i;->a:I

    and-int/lit8 p1, p1, 0x7

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 14
    :cond_0
    iget p1, v1, Landroid/graphics/RectF;->right:F

    iget p2, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 15
    :cond_1
    iget p1, v1, Landroid/graphics/RectF;->left:F

    iget p2, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    :goto_0
    sub-float/2addr p1, p2

    .line 17
    :goto_1
    iget p2, p3, Le/c/a/b/a/i;->b:F

    add-float/2addr p1, p2

    return p1
.end method

.method public final a(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1

    .line 23
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 24
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 3

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 19
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->f:[I

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    .line 21
    aget v1, v0, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;)V
    .locals 1

    .line 7
    iget v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->h:I

    if-nez v0, :cond_0

    const/16 v0, 0x50

    .line 8
    iput v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->h:I

    :cond_0
    return-void
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    .line 2
    instance-of p1, p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    check-cast p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 4
    invoke-virtual {p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getExpandedComponentIdHint()I

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Landroid/view/View;Landroid/view/View;Le/c/a/b/a/i;)F
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 161
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    .line 162
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 163
    invoke-virtual {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 164
    iget p1, p3, Le/c/a/b/a/i;->a:I

    and-int/lit8 p1, p1, 0x70

    const/16 p2, 0x10

    if-eq p1, p2, :cond_2

    const/16 p2, 0x30

    if-eq p1, p2, :cond_1

    const/16 p2, 0x50

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 165
    :cond_0
    iget p1, v1, Landroid/graphics/RectF;->bottom:F

    iget p2, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 166
    :cond_1
    iget p1, v1, Landroid/graphics/RectF;->top:F

    iget p2, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    :goto_0
    sub-float/2addr p1, p2

    .line 168
    :goto_1
    iget p2, p3, Le/c/a/b/a/i;->c:F

    add-float/2addr p1, p2

    return p1
.end method

.method public b(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v3, :cond_0

    .line 2
    sget v5, Lcom/google/android/material/R$animator;->mtrl_fab_transformation_sheet_expand_spec:I

    goto :goto_0

    .line 3
    :cond_0
    sget v5, Lcom/google/android/material/R$animator;->mtrl_fab_transformation_sheet_collapse_spec:I

    .line 4
    :goto_0
    invoke-static {v4, v5}, Le/c/a/b/a/g;->a(Landroid/content/Context;I)Le/c/a/b/a/g;

    move-result-object v4

    .line 5
    new-instance v5, Le/c/a/b/a/i;

    const/16 v6, 0x11

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v7}, Le/c/a/b/a/i;-><init>(IFF)V

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-static/range {p2 .. p2}, Ld/i/i/n;->f(Landroid/view/View;)F

    move-result v9

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getElevation()F

    move-result v10

    sub-float/2addr v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_2

    if-nez p4, :cond_1

    neg-float v9, v9

    .line 10
    invoke-virtual {v2, v9}, Landroid/view/View;->setTranslationZ(F)V

    .line 11
    :cond_1
    sget-object v9, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v12, v10, [F

    aput v7, v12, v11

    invoke-static {v2, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    goto :goto_1

    .line 12
    :cond_2
    sget-object v12, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v13, v10, [F

    neg-float v9, v9

    aput v9, v13, v11

    invoke-static {v2, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    :goto_1
    const-string v12, "elevation"

    .line 13
    invoke-virtual {v4, v12}, Le/c/a/b/a/g;->a(Ljava/lang/String;)Le/c/a/b/a/h;

    move-result-object v12

    .line 14
    invoke-virtual {v12, v9}, Le/c/a/b/a/h;->a(Landroid/animation/Animator;)V

    .line 15
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v9, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 17
    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/view/View;Le/c/a/b/a/i;)F

    move-result v12

    .line 18
    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/material/transformation/FabTransformationBehavior;->b(Landroid/view/View;Landroid/view/View;Le/c/a/b/a/i;)F

    move-result v13

    cmpl-float v14, v12, v7

    if-eqz v14, :cond_7

    cmpl-float v14, v13, v7

    if-nez v14, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    cmpg-float v15, v13, v7

    if-ltz v15, :cond_5

    :cond_4
    if-nez v3, :cond_6

    if-lez v14, :cond_6

    :cond_5
    const-string v14, "translationXCurveUpwards"

    .line 19
    invoke-virtual {v4, v14}, Le/c/a/b/a/g;->a(Ljava/lang/String;)Le/c/a/b/a/h;

    move-result-object v14

    const-string v15, "translationYCurveUpwards"

    .line 20
    invoke-virtual {v4, v15}, Le/c/a/b/a/g;->a(Ljava/lang/String;)Le/c/a/b/a/h;

    move-result-object v15

    goto :goto_3

    :cond_6
    const-string v14, "translationXCurveDownwards"

    .line 21
    invoke-virtual {v4, v14}, Le/c/a/b/a/g;->a(Ljava/lang/String;)Le/c/a/b/a/h;

    move-result-object v14

    const-string v15, "translationYCurveDownwards"

    .line 22
    invoke-virtual {v4, v15}, Le/c/a/b/a/g;->a(Ljava/lang/String;)Le/c/a/b/a/h;

    move-result-object v15

    goto :goto_3

    :cond_7
    :goto_2
    const-string v14, "translationXLinear"

    .line 23
    invoke-virtual {v4, v14}, Le/c/a/b/a/g;->a(Ljava/lang/String;)Le/c/a/b/a/h;

    move-result-object v14

    const-string v15, "translationYLinear"

    .line 24
    invoke-virtual {v4, v15}, Le/c/a/b/a/g;->a(Ljava/lang/String;)Le/c/a/b/a/h;

    move-result-object v15

    :goto_3
    const-string v7, "expansion"

    if-eqz v3, :cond_9

    if-nez p4, :cond_8

    neg-float v11, v12

    .line 25
    invoke-virtual {v2, v11}, Landroid/view/View;->setTranslationX(F)V

    neg-float v11, v13

    .line 26
    invoke-virtual {v2, v11}, Landroid/view/View;->setTranslationY(F)V

    .line 27
    :cond_8
    sget-object v11, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    move-object/from16 v18, v5

    new-array v5, v10, [F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v16, v5, v17

    invoke-static {v2, v11, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 28
    sget-object v11, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    move-object/from16 v19, v5

    new-array v5, v10, [F

    aput v16, v5, v17

    invoke-static {v2, v11, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    neg-float v11, v12

    neg-float v12, v13

    move/from16 v20, v11

    .line 29
    iget-wide v10, v14, Le/c/a/b/a/h;->a:J

    move-object/from16 v22, v5

    move-object/from16 v21, v6

    .line 30
    iget-wide v5, v14, Le/c/a/b/a/h;->b:J

    .line 31
    invoke-virtual {v4, v7}, Le/c/a/b/a/g;->a(Ljava/lang/String;)Le/c/a/b/a/h;

    move-result-object v13

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    .line 32
    iget-wide v8, v13, Le/c/a/b/a/h;->a:J

    .line 33
    iget-wide v1, v13, Le/c/a/b/a/h;->b:J

    add-long/2addr v8, v1

    const-wide/16 v1, 0x11

    add-long/2addr v8, v1

    sub-long/2addr v8, v10

    long-to-float v8, v8

    long-to-float v5, v5

    div-float/2addr v8, v5

    .line 34
    invoke-virtual {v14}, Le/c/a/b/a/h;->a()Landroid/animation/TimeInterpolator;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v5

    move/from16 v6, v20

    const/4 v8, 0x0

    .line 35
    invoke-static {v6, v8, v5}, Le/c/a/b/a/a;->a(FFF)F

    move-result v5

    .line 36
    iget-wide v8, v15, Le/c/a/b/a/h;->a:J

    .line 37
    iget-wide v10, v15, Le/c/a/b/a/h;->b:J

    .line 38
    invoke-virtual {v4, v7}, Le/c/a/b/a/g;->a(Ljava/lang/String;)Le/c/a/b/a/h;

    move-result-object v6

    .line 39
    iget-wide v1, v6, Le/c/a/b/a/h;->a:J

    move-object/from16 v20, v7

    .line 40
    iget-wide v6, v6, Le/c/a/b/a/h;->b:J

    add-long/2addr v1, v6

    const-wide/16 v6, 0x11

    add-long/2addr v1, v6

    sub-long/2addr v1, v8

    long-to-float v1, v1

    long-to-float v2, v10

    div-float/2addr v1, v2

    .line 41
    invoke-virtual {v15}, Le/c/a/b/a/h;->a()Landroid/animation/TimeInterpolator;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    const/4 v2, 0x0

    .line 42
    invoke-static {v12, v2, v1}, Le/c/a/b/a/a;->a(FFF)F

    move-result v1

    .line 43
    iget-object v2, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    move-object/from16 v6, p2

    .line 44
    invoke-virtual {v6, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 45
    iget-object v7, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 46
    invoke-virtual {v7, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 47
    iget-object v2, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    .line 48
    invoke-virtual {v0, v6, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 49
    invoke-virtual {v2, v5, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 50
    invoke-virtual {v2, v7}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-object/from16 v1, v24

    .line 51
    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    move-object/from16 v5, v19

    move-object/from16 v2, v22

    goto :goto_4

    :cond_9
    move-object/from16 v18, v5

    move-object/from16 v21, v6

    move-object/from16 v20, v7

    move-object/from16 v23, v8

    move-object v1, v9

    move-object v6, v2

    .line 52
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v7, v5, [F

    neg-float v8, v12

    const/4 v9, 0x0

    aput v8, v7, v9

    invoke-static {v6, v2, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 53
    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v5, [F

    neg-float v5, v13

    aput v5, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    move-object/from16 v25, v5

    move-object v5, v2

    move-object/from16 v2, v25

    .line 54
    :goto_4
    invoke-virtual {v14, v5}, Le/c/a/b/a/h;->a(Landroid/animation/Animator;)V

    .line 55
    invoke-virtual {v15, v2}, Le/c/a/b/a/h;->a(Landroid/animation/Animator;)V

    move-object/from16 v7, v21

    .line 56
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 59
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 60
    instance-of v5, v6, Le/c/a/b/g/c;

    move-object/from16 v8, p1

    if-eqz v5, :cond_e

    instance-of v9, v8, Landroid/widget/ImageView;

    if-nez v9, :cond_a

    goto :goto_5

    .line 61
    :cond_a
    move-object v9, v6

    check-cast v9, Le/c/a/b/g/c;

    .line 62
    move-object v10, v8

    check-cast v10, Landroid/widget/ImageView;

    .line 63
    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-nez v10, :cond_b

    :goto_5
    goto :goto_7

    .line 64
    :cond_b
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/16 v11, 0xff

    if-eqz v3, :cond_d

    if-nez p4, :cond_c

    .line 65
    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 66
    :cond_c
    sget-object v11, Le/c/a/b/a/d;->b:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v13, v12, [I

    const/4 v14, 0x0

    aput v14, v13, v14

    invoke-static {v10, v11, v13}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v11

    goto :goto_6

    :cond_d
    const/4 v12, 0x1

    const/4 v14, 0x0

    .line 67
    sget-object v13, Le/c/a/b/a/d;->b:Landroid/util/Property;

    new-array v15, v12, [I

    aput v11, v15, v14

    invoke-static {v10, v13, v15}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 68
    :goto_6
    new-instance v12, Le/c/a/b/o/a;

    invoke-direct {v12, v0, v6}, Le/c/a/b/o/a;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Landroid/view/View;)V

    invoke-virtual {v11, v12}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v12, "iconFade"

    .line 69
    invoke-virtual {v4, v12}, Le/c/a/b/a/g;->a(Ljava/lang/String;)Le/c/a/b/a/h;

    move-result-object v12

    .line 70
    invoke-virtual {v12, v11}, Le/c/a/b/a/h;->a(Landroid/animation/Animator;)V

    .line 71
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v11, Le/c/a/b/o/b;

    invoke-direct {v11, v0, v9, v10}, Le/c/a/b/o/b;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Le/c/a/b/g/c;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v9, v23

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    :goto_7
    move-object/from16 v9, v23

    :goto_8
    if-nez v5, :cond_f

    move-object/from16 v22, v4

    move/from16 v24, v5

    move-object v0, v6

    move-object v2, v9

    goto/16 :goto_d

    .line 73
    :cond_f
    move-object v10, v6

    check-cast v10, Le/c/a/b/g/c;

    .line 74
    iget-object v11, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 75
    iget-object v12, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    .line 76
    invoke-virtual {v0, v8, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 77
    invoke-virtual {v0, v6, v12}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    move-object/from16 v13, v18

    .line 78
    invoke-virtual {v0, v8, v6, v13}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/view/View;Le/c/a/b/a/i;)F

    move-result v14

    neg-float v14, v14

    const/4 v15, 0x0

    .line 79
    invoke-virtual {v12, v14, v15}, Landroid/graphics/RectF;->offset(FF)V

    .line 80
    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    iget v12, v12, Landroid/graphics/RectF;->left:F

    sub-float/2addr v11, v12

    .line 81
    iget-object v12, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 82
    iget-object v14, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    .line 83
    invoke-virtual {v0, v8, v12}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 84
    invoke-virtual {v0, v6, v14}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 85
    invoke-virtual {v0, v8, v6, v13}, Lcom/google/android/material/transformation/FabTransformationBehavior;->b(Landroid/view/View;Landroid/view/View;Le/c/a/b/a/i;)F

    move-result v13

    neg-float v13, v13

    .line 86
    invoke-virtual {v14, v15, v13}, Landroid/graphics/RectF;->offset(FF)V

    .line 87
    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    iget v13, v14, Landroid/graphics/RectF;->top:F

    sub-float/2addr v12, v13

    .line 88
    move-object v13, v8

    check-cast v13, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v14, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(Landroid/graphics/Rect;)Z

    .line 89
    iget-object v13, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    move-object/from16 v14, v20

    .line 90
    invoke-virtual {v4, v14}, Le/c/a/b/a/g;->a(Ljava/lang/String;)Le/c/a/b/a/h;

    move-result-object v14

    move-object/from16 v23, v9

    if-eqz v3, :cond_16

    if-nez p4, :cond_10

    .line 91
    new-instance v15, Le/c/a/b/g/c$e;

    invoke-direct {v15, v11, v12, v13}, Le/c/a/b/g/c$e;-><init>(FFF)V

    invoke-interface {v10, v15}, Le/c/a/b/g/c;->setRevealInfo(Le/c/a/b/g/c$e;)V

    :cond_10
    if-eqz p4, :cond_11

    .line 92
    invoke-interface {v10}, Le/c/a/b/g/c;->getRevealInfo()Le/c/a/b/g/c$e;

    move-result-object v13

    iget v13, v13, Le/c/a/b/g/c$e;->c:F

    :cond_11
    const/4 v15, 0x0

    .line 93
    invoke-static {v11, v12, v15, v15}, Le/c/a/a/b/l/c;->a(FFFF)F

    move-result v18

    .line 94
    invoke-static {v11, v12, v2, v15}, Le/c/a/a/b/l/c;->a(FFFF)F

    move-result v19

    .line 95
    invoke-static {v11, v12, v2, v1}, Le/c/a/a/b/l/c;->a(FFFF)F

    move-result v2

    .line 96
    invoke-static {v11, v12, v15, v1}, Le/c/a/a/b/l/c;->a(FFFF)F

    move-result v1

    cmpl-float v15, v18, v19

    if-lez v15, :cond_12

    cmpl-float v15, v18, v2

    if-lez v15, :cond_12

    cmpl-float v15, v18, v1

    if-lez v15, :cond_12

    move/from16 v1, v18

    goto :goto_9

    :cond_12
    cmpl-float v15, v19, v2

    if-lez v15, :cond_13

    cmpl-float v15, v19, v1

    if-lez v15, :cond_13

    move/from16 v1, v19

    goto :goto_9

    :cond_13
    cmpl-float v15, v2, v1

    if-lez v15, :cond_14

    move v1, v2

    .line 97
    :cond_14
    :goto_9
    invoke-static {v10, v11, v12, v1}, Le/c/a/a/b/l/c;->a(Le/c/a/b/g/c;FFF)Landroid/animation/Animator;

    move-result-object v1

    .line 98
    new-instance v2, Le/c/a/b/o/c;

    invoke-direct {v2, v0, v10}, Le/c/a/b/o/c;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Le/c/a/b/g/c;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 99
    iget-wide v8, v14, Le/c/a/b/a/h;->a:J

    float-to-int v2, v11

    float-to-int v11, v12

    move-object v15, v1

    const-wide/16 v0, 0x0

    cmp-long v12, v8, v0

    if-lez v12, :cond_15

    .line 100
    invoke-static {v6, v2, v11, v13, v13}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v2

    .line 101
    invoke-virtual {v2, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 102
    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 103
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    move-object/from16 v22, v4

    move/from16 v24, v5

    move-object v0, v6

    move-object v2, v14

    move-object v1, v15

    goto/16 :goto_c

    .line 104
    :cond_16
    invoke-interface {v10}, Le/c/a/b/g/c;->getRevealInfo()Le/c/a/b/g/c$e;

    move-result-object v0

    iget v0, v0, Le/c/a/b/g/c$e;->c:F

    .line 105
    invoke-static {v10, v11, v12, v13}, Le/c/a/a/b/l/c;->a(Le/c/a/b/g/c;FFF)Landroid/animation/Animator;

    move-result-object v1

    .line 106
    iget-wide v8, v14, Le/c/a/b/a/h;->a:J

    float-to-int v2, v11

    float-to-int v11, v12

    move v15, v13

    const-wide/16 v12, 0x0

    cmp-long v18, v8, v12

    if-lez v18, :cond_17

    .line 107
    invoke-static {v6, v2, v11, v0, v0}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v12, v13}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 109
    invoke-virtual {v0, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 110
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_17
    iget-wide v8, v14, Le/c/a/b/a/h;->a:J

    .line 112
    iget-wide v12, v14, Le/c/a/b/a/h;->b:J

    .line 113
    iget-object v0, v4, Le/c/a/b/a/g;->a:Ld/f/h;

    .line 114
    iget v0, v0, Ld/f/h;->z:I

    move-object/from16 v18, v1

    move-object/from16 v20, v14

    move/from16 v21, v15

    const/4 v1, 0x0

    const-wide/16 v14, 0x0

    :goto_a
    if-ge v1, v0, :cond_18

    move/from16 v19, v0

    .line 115
    iget-object v0, v4, Le/c/a/b/a/g;->a:Ld/f/h;

    invoke-virtual {v0, v1}, Ld/f/h;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/a/b/a/h;

    move-object/from16 v22, v4

    .line 116
    iget-wide v3, v0, Le/c/a/b/a/h;->a:J

    move/from16 v24, v5

    .line 117
    iget-wide v5, v0, Le/c/a/b/a/h;->b:J

    add-long/2addr v3, v5

    .line 118
    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v6, p2

    move/from16 v3, p3

    move/from16 v0, v19

    move-object/from16 v4, v22

    move/from16 v5, v24

    goto :goto_a

    :cond_18
    move-object/from16 v22, v4

    move/from16 v24, v5

    add-long/2addr v8, v12

    cmp-long v0, v8, v14

    if-gez v0, :cond_19

    move-object/from16 v0, p2

    move/from16 v13, v21

    .line 119
    invoke-static {v0, v2, v11, v13, v13}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

    .line 120
    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    sub-long/2addr v14, v8

    .line 121
    invoke-virtual {v1, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 122
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_19
    move-object/from16 v0, p2

    :goto_b
    move-object/from16 v1, v18

    move-object/from16 v2, v20

    .line 123
    :goto_c
    invoke-virtual {v2, v1}, Le/c/a/b/a/h;->a(Landroid/animation/Animator;)V

    .line 124
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v1, Le/c/a/b/g/a;

    invoke-direct {v1, v10}, Le/c/a/b/g/a;-><init>(Le/c/a/b/g/c;)V

    move-object/from16 v2, v23

    .line 126
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_d
    if-nez v24, :cond_1a

    move/from16 v5, p3

    move-object/from16 v4, v22

    goto :goto_10

    .line 127
    :cond_1a
    move-object v1, v0

    check-cast v1, Le/c/a/b/g/c;

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_e

    :cond_1b
    const/4 v3, 0x0

    :goto_e
    const v4, 0xffffff

    and-int/2addr v4, v3

    move/from16 v5, p3

    if-eqz v5, :cond_1d

    if-nez p4, :cond_1c

    .line 130
    invoke-interface {v1, v3}, Le/c/a/b/g/c;->setCircularRevealScrimColor(I)V

    .line 131
    :cond_1c
    sget-object v3, Le/c/a/b/g/c$d;->a:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v8, v6, [I

    const/4 v9, 0x0

    aput v4, v8, v9

    .line 132
    invoke-static {v1, v3, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_f

    :cond_1d
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 133
    sget-object v4, Le/c/a/b/g/c$d;->a:Landroid/util/Property;

    new-array v8, v6, [I

    aput v3, v8, v9

    .line 134
    invoke-static {v1, v4, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 135
    :goto_f
    sget-object v3, Le/c/a/b/a/b;->a:Le/c/a/b/a/b;

    .line 136
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    const-string v3, "color"

    move-object/from16 v4, v22

    .line 137
    invoke-virtual {v4, v3}, Le/c/a/b/a/g;->a(Ljava/lang/String;)Le/c/a/b/a/h;

    move-result-object v3

    .line 138
    invoke-virtual {v3, v1}, Le/c/a/b/a/h;->a(Landroid/animation/Animator;)V

    .line 139
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :goto_10
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_1e

    const/4 v10, 0x0

    move-object/from16 v3, p0

    goto :goto_14

    .line 141
    :cond_1e
    sget v1, Lcom/google/android/material/R$id;->mtrl_child_content_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1f

    move-object/from16 v3, p0

    .line 142
    invoke-virtual {v3, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    goto :goto_12

    :cond_1f
    move-object/from16 v3, p0

    .line 143
    instance-of v1, v0, Le/c/a/b/o/e;

    if-nez v1, :cond_21

    instance-of v1, v0, Le/c/a/b/o/d;

    if-eqz v1, :cond_20

    goto :goto_11

    .line 144
    :cond_20
    invoke-virtual {v3, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    goto :goto_12

    .line 145
    :cond_21
    :goto_11
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 146
    invoke-virtual {v3, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    :goto_12
    if-nez v1, :cond_22

    const/4 v10, 0x0

    goto :goto_14

    :cond_22
    if-eqz v5, :cond_24

    if-nez p4, :cond_23

    .line 147
    sget-object v6, Le/c/a/b/a/c;->a:Landroid/util/Property;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v1, v8}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    :cond_23
    sget-object v6, Le/c/a/b/a/c;->a:Landroid/util/Property;

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    aput v9, v8, v10

    .line 149
    invoke-static {v1, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_13

    :cond_24
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 150
    sget-object v6, Le/c/a/b/a/c;->a:Landroid/util/Property;

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v9, v8, v10

    .line 151
    invoke-static {v1, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    :goto_13
    const-string v6, "contentFade"

    .line 152
    invoke-virtual {v4, v6}, Le/c/a/b/a/g;->a(Ljava/lang/String;)Le/c/a/b/a/h;

    move-result-object v4

    .line 153
    invoke-virtual {v4, v1}, Le/c/a/b/a/h;->a(Landroid/animation/Animator;)V

    .line 154
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :goto_14
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 156
    invoke-static {v1, v7}, Le/c/a/a/b/l/c;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 157
    new-instance v4, Lcom/google/android/material/transformation/FabTransformationBehavior$a;

    move-object/from16 v6, p1

    invoke-direct {v4, v3, v5, v0, v6}, Lcom/google/android/material/transformation/FabTransformationBehavior$a;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;ZLandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v11, 0x0

    :goto_15
    if-ge v11, v0, :cond_25

    .line 159
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    :cond_25
    return-object v1
.end method
