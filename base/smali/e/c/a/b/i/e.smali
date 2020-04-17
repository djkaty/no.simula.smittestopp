.class public Le/c/a/b/i/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/a/b/i/e$a;,
        Le/c/a/b/i/e$c;,
        Le/c/a/b/i/e$b;,
        Le/c/a/b/i/e$e;,
        Le/c/a/b/i/e$f;,
        Le/c/a/b/i/e$d;
    }
.end annotation


# static fields
.field public static final A:[I

.field public static final B:[I

.field public static final v:Landroid/animation/TimeInterpolator;

.field public static final w:[I

.field public static final x:[I

.field public static final y:[I

.field public static final z:[I


# instance fields
.field public a:I

.field public b:Landroid/animation/Animator;

.field public c:Le/c/a/b/a/g;

.field public d:Le/c/a/b/a/g;

.field public e:Le/c/a/b/a/g;

.field public f:Le/c/a/b/a/g;

.field public final g:Le/c/a/b/j/c;

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Le/c/a/b/j/f;

.field public final p:Le/c/a/b/l/b;

.field public final q:Landroid/graphics/Rect;

.field public final r:Landroid/graphics/RectF;

.field public final s:Landroid/graphics/RectF;

.field public final t:Landroid/graphics/Matrix;

.field public u:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Le/c/a/b/a/a;->b:Landroid/animation/TimeInterpolator;

    sput-object v0, Le/c/a/b/i/e;->v:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    sput-object v1, Le/c/a/b/i/e;->w:[I

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 3
    fill-array-data v1, :array_1

    sput-object v1, Le/c/a/b/i/e;->x:[I

    new-array v1, v0, [I

    .line 4
    fill-array-data v1, :array_2

    sput-object v1, Le/c/a/b/i/e;->y:[I

    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_3

    sput-object v0, Le/c/a/b/i/e;->z:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009e

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 6
    sput-object v0, Le/c/a/b/i/e;->A:[I

    new-array v0, v2, [I

    .line 7
    sput-object v0, Le/c/a/b/i/e;->B:[I

    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x1010367
        0x101009c
        0x101009e
    .end array-data

    :array_2
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    :array_3
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method public constructor <init>(Le/c/a/b/j/f;Le/c/a/b/l/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le/c/a/b/i/e;->a:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Le/c/a/b/i/e;->l:F

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Le/c/a/b/i/e;->q:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Le/c/a/b/i/e;->r:Landroid/graphics/RectF;

    .line 6
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Le/c/a/b/i/e;->s:Landroid/graphics/RectF;

    .line 7
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Le/c/a/b/i/e;->t:Landroid/graphics/Matrix;

    .line 8
    iput-object p1, p0, Le/c/a/b/i/e;->o:Le/c/a/b/j/f;

    .line 9
    iput-object p2, p0, Le/c/a/b/i/e;->p:Le/c/a/b/l/b;

    .line 10
    new-instance p1, Le/c/a/b/j/c;

    invoke-direct {p1}, Le/c/a/b/j/c;-><init>()V

    iput-object p1, p0, Le/c/a/b/i/e;->g:Le/c/a/b/j/c;

    .line 11
    sget-object p2, Le/c/a/b/i/e;->w:[I

    new-instance v0, Le/c/a/b/i/e$c;

    invoke-direct {v0, p0}, Le/c/a/b/i/e$c;-><init>(Le/c/a/b/i/e;)V

    .line 12
    invoke-virtual {p0, v0}, Le/c/a/b/i/e;->a(Le/c/a/b/i/e$f;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 13
    invoke-virtual {p1, p2, v0}, Le/c/a/b/j/c;->a([ILandroid/animation/ValueAnimator;)V

    .line 14
    iget-object p1, p0, Le/c/a/b/i/e;->g:Le/c/a/b/j/c;

    sget-object p2, Le/c/a/b/i/e;->x:[I

    new-instance v0, Le/c/a/b/i/e$b;

    invoke-direct {v0, p0}, Le/c/a/b/i/e$b;-><init>(Le/c/a/b/i/e;)V

    .line 15
    invoke-virtual {p0, v0}, Le/c/a/b/i/e;->a(Le/c/a/b/i/e$f;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 16
    invoke-virtual {p1, p2, v0}, Le/c/a/b/j/c;->a([ILandroid/animation/ValueAnimator;)V

    .line 17
    iget-object p1, p0, Le/c/a/b/i/e;->g:Le/c/a/b/j/c;

    sget-object p2, Le/c/a/b/i/e;->y:[I

    new-instance v0, Le/c/a/b/i/e$b;

    invoke-direct {v0, p0}, Le/c/a/b/i/e$b;-><init>(Le/c/a/b/i/e;)V

    .line 18
    invoke-virtual {p0, v0}, Le/c/a/b/i/e;->a(Le/c/a/b/i/e$f;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 19
    invoke-virtual {p1, p2, v0}, Le/c/a/b/j/c;->a([ILandroid/animation/ValueAnimator;)V

    .line 20
    iget-object p1, p0, Le/c/a/b/i/e;->g:Le/c/a/b/j/c;

    sget-object p2, Le/c/a/b/i/e;->z:[I

    new-instance v0, Le/c/a/b/i/e$b;

    invoke-direct {v0, p0}, Le/c/a/b/i/e$b;-><init>(Le/c/a/b/i/e;)V

    .line 21
    invoke-virtual {p0, v0}, Le/c/a/b/i/e;->a(Le/c/a/b/i/e$f;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 22
    invoke-virtual {p1, p2, v0}, Le/c/a/b/j/c;->a([ILandroid/animation/ValueAnimator;)V

    .line 23
    iget-object p1, p0, Le/c/a/b/i/e;->g:Le/c/a/b/j/c;

    sget-object p2, Le/c/a/b/i/e;->A:[I

    new-instance v0, Le/c/a/b/i/e$e;

    invoke-direct {v0, p0}, Le/c/a/b/i/e$e;-><init>(Le/c/a/b/i/e;)V

    .line 24
    invoke-virtual {p0, v0}, Le/c/a/b/i/e;->a(Le/c/a/b/i/e$f;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 25
    invoke-virtual {p1, p2, v0}, Le/c/a/b/j/c;->a([ILandroid/animation/ValueAnimator;)V

    .line 26
    iget-object p1, p0, Le/c/a/b/i/e;->g:Le/c/a/b/j/c;

    sget-object p2, Le/c/a/b/i/e;->B:[I

    new-instance v0, Le/c/a/b/i/e$a;

    invoke-direct {v0, p0}, Le/c/a/b/i/e$a;-><init>(Le/c/a/b/i/e;)V

    .line 27
    invoke-virtual {p0, v0}, Le/c/a/b/i/e;->a(Le/c/a/b/i/e$f;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 28
    invoke-virtual {p1, p2, v0}, Le/c/a/b/j/c;->a([ILandroid/animation/ValueAnimator;)V

    .line 29
    iget-object p1, p0, Le/c/a/b/i/e;->o:Le/c/a/b/j/f;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getRotation()F

    move-result p1

    iput p1, p0, Le/c/a/b/i/e;->h:F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public final a(Le/c/a/b/a/g;FFF)Landroid/animation/AnimatorSet;
    .locals 5

    .line 6
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v0, p0, Le/c/a/b/i/e;->o:Le/c/a/b/j/f;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p2, v3, v4

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v0, "opacity"

    .line 8
    invoke-virtual {p1, v0}, Le/c/a/b/a/g;->a(Ljava/lang/String;)Le/c/a/b/a/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Le/c/a/b/a/h;->a(Landroid/animation/Animator;)V

    .line 9
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p2, p0, Le/c/a/b/i/e;->o:Le/c/a/b/j/f;

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v2, [F

    aput p3, v1, v4

    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v0, "scale"

    .line 11
    invoke-virtual {p1, v0}, Le/c/a/b/a/g;->a(Ljava/lang/String;)Le/c/a/b/a/h;

    move-result-object v1

    invoke-virtual {v1, p2}, Le/c/a/b/a/h;->a(Landroid/animation/Animator;)V

    .line 12
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p2, p0, Le/c/a/b/i/e;->o:Le/c/a/b/j/f;

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v2, [F

    aput p3, v3, v4

    invoke-static {p2, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 14
    invoke-virtual {p1, v0}, Le/c/a/b/a/g;->a(Ljava/lang/String;)Le/c/a/b/a/h;

    move-result-object p3

    invoke-virtual {p3, p2}, Le/c/a/b/a/h;->a(Landroid/animation/Animator;)V

    .line 15
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p2, p0, Le/c/a/b/i/e;->t:Landroid/graphics/Matrix;

    .line 17
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 18
    iget-object p2, p0, Le/c/a/b/i/e;->o:Le/c/a/b/j/f;

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 19
    iget-object p2, p0, Le/c/a/b/i/e;->o:Le/c/a/b/j/f;

    new-instance p3, Le/c/a/b/a/e;

    invoke-direct {p3}, Le/c/a/b/a/e;-><init>()V

    new-instance v0, Le/c/a/b/a/f;

    invoke-direct {v0}, Le/c/a/b/a/f;-><init>()V

    new-array v1, v2, [Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Le/c/a/b/i/e;->t:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v2, v1, v4

    .line 20
    invoke-static {p2, p3, v0, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string p3, "iconScale"

    .line 21
    invoke-virtual {p1, p3}, Le/c/a/b/a/g;->a(Ljava/lang/String;)Le/c/a/b/a/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Le/c/a/b/a/h;->a(Landroid/animation/Animator;)V

    .line 22
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 24
    invoke-static {p1, p4}, Le/c/a/a/b/l/c;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object p1
.end method

.method public final a(Le/c/a/b/i/e$f;)Landroid/animation/ValueAnimator;
    .locals 3

    .line 25
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 26
    sget-object v1, Le/c/a/b/i/e;->v:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x64

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 28
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 29
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 30
    fill-array-data p1, :array_0

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final a(F)V
    .locals 1

    .line 1
    iput p1, p0, Le/c/a/b/i/e;->l:F

    .line 2
    iget-object p1, p0, Le/c/a/b/i/e;->t:Landroid/graphics/Matrix;

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 4
    iget-object v0, p0, Le/c/a/b/i/e;->o:Le/c/a/b/j/f;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 5
    iget-object v0, p0, Le/c/a/b/i/e;->o:Le/c/a/b/j/f;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public a(FFF)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public a([I)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public b(Landroid/graphics/Rect;)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public b()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/c/a/b/i/e;->o:Le/c/a/b/j/f;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Le/c/a/b/i/e;->a:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 3
    :cond_1
    iget v0, p0, Le/c/a/b/i/e;->a:I

    if-eq v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public c()V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public d()V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public e()Z
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/c/a/b/i/e;->o:Le/c/a/b/j/f;

    invoke-static {v0}, Ld/i/i/n;->t(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/c/a/b/i/e;->o:Le/c/a/b/j/f;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/c/a/b/i/e;->q:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p0, v0}, Le/c/a/b/i/e;->a(Landroid/graphics/Rect;)V

    .line 3
    invoke-virtual {p0, v0}, Le/c/a/b/i/e;->b(Landroid/graphics/Rect;)V

    .line 4
    iget-object v1, p0, Le/c/a/b/i/e;->p:Le/c/a/b/l/b;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;

    .line 5
    iget-object v5, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v5, v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->H:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 6
    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 7
    iget v5, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->F:I

    add-int/2addr v2, v5

    add-int/2addr v3, v5

    add-int/2addr v4, v5

    add-int/2addr v0, v5

    .line 8
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/ImageButton;->setPadding(IIII)V

    return-void
.end method
