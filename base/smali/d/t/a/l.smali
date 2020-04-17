.class public Ld/t/a/l;
.super Ld/t/a/s$j;
.source "SourceFile"

# interfaces
.implements Ld/t/a/s$n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/t/a/l$d;,
        Ld/t/a/l$c;
    }
.end annotation


# static fields
.field public static final D:[I

.field public static final E:[I


# instance fields
.field public A:I

.field public final B:Ljava/lang/Runnable;

.field public final C:Ld/t/a/s$o;

.field public final a:I

.field public final b:I

.field public final c:Landroid/graphics/drawable/StateListDrawable;

.field public final d:Landroid/graphics/drawable/Drawable;

.field public final e:I

.field public final f:I

.field public final g:Landroid/graphics/drawable/StateListDrawable;

.field public final h:Landroid/graphics/drawable/Drawable;

.field public final i:I

.field public final j:I

.field public k:I

.field public l:I

.field public m:F

.field public n:I

.field public o:I

.field public p:F

.field public q:I

.field public r:I

.field public s:Ld/t/a/s;

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public final x:[I

.field public final y:[I

.field public final z:Landroid/animation/ValueAnimator;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1
    sput-object v0, Ld/t/a/l;->D:[I

    new-array v0, v2, [I

    .line 2
    sput-object v0, Ld/t/a/l;->E:[I

    return-void
.end method

.method public constructor <init>(Ld/t/a/s;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ld/t/a/s$j;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ld/t/a/l;->q:I

    .line 3
    iput v0, p0, Ld/t/a/l;->r:I

    .line 4
    iput-boolean v0, p0, Ld/t/a/l;->t:Z

    .line 5
    iput-boolean v0, p0, Ld/t/a/l;->u:Z

    .line 6
    iput v0, p0, Ld/t/a/l;->v:I

    .line 7
    iput v0, p0, Ld/t/a/l;->w:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 8
    iput-object v2, p0, Ld/t/a/l;->x:[I

    new-array v2, v1, [I

    .line 9
    iput-object v2, p0, Ld/t/a/l;->y:[I

    new-array v2, v1, [F

    .line 10
    fill-array-data v2, :array_0

    .line 11
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Ld/t/a/l;->z:Landroid/animation/ValueAnimator;

    .line 12
    iput v0, p0, Ld/t/a/l;->A:I

    .line 13
    new-instance v2, Ld/t/a/l$a;

    invoke-direct {v2, p0}, Ld/t/a/l$a;-><init>(Ld/t/a/l;)V

    iput-object v2, p0, Ld/t/a/l;->B:Ljava/lang/Runnable;

    .line 14
    new-instance v2, Ld/t/a/l$b;

    invoke-direct {v2, p0}, Ld/t/a/l$b;-><init>(Ld/t/a/l;)V

    iput-object v2, p0, Ld/t/a/l;->C:Ld/t/a/s$o;

    .line 15
    iput-object p2, p0, Ld/t/a/l;->c:Landroid/graphics/drawable/StateListDrawable;

    .line 16
    iput-object p3, p0, Ld/t/a/l;->d:Landroid/graphics/drawable/Drawable;

    .line 17
    iput-object p4, p0, Ld/t/a/l;->g:Landroid/graphics/drawable/StateListDrawable;

    .line 18
    iput-object p5, p0, Ld/t/a/l;->h:Landroid/graphics/drawable/Drawable;

    .line 19
    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Ld/t/a/l;->e:I

    .line 20
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Ld/t/a/l;->f:I

    .line 21
    invoke-virtual {p4}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Ld/t/a/l;->i:I

    .line 22
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Ld/t/a/l;->j:I

    .line 23
    iput p7, p0, Ld/t/a/l;->a:I

    .line 24
    iput p8, p0, Ld/t/a/l;->b:I

    .line 25
    iget-object p2, p0, Ld/t/a/l;->c:Landroid/graphics/drawable/StateListDrawable;

    const/16 p3, 0xff

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 26
    iget-object p2, p0, Ld/t/a/l;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 27
    iget-object p2, p0, Ld/t/a/l;->z:Landroid/animation/ValueAnimator;

    new-instance p3, Ld/t/a/l$c;

    invoke-direct {p3, p0}, Ld/t/a/l$c;-><init>(Ld/t/a/l;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 28
    iget-object p2, p0, Ld/t/a/l;->z:Landroid/animation/ValueAnimator;

    new-instance p3, Ld/t/a/l$d;

    invoke-direct {p3, p0}, Ld/t/a/l$d;-><init>(Ld/t/a/l;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 29
    iget-object p2, p0, Ld/t/a/l;->s:Ld/t/a/s;

    if-ne p2, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p2, :cond_6

    .line 30
    iget-object p3, p2, Ld/t/a/s;->I:Ld/t/a/s$k;

    if-eqz p3, :cond_1

    const-string p4, "Cannot remove item decoration during a scroll  or layout"

    .line 31
    invoke-virtual {p3, p4}, Ld/t/a/s$k;->a(Ljava/lang/String;)V

    .line 32
    :cond_1
    iget-object p3, p2, Ld/t/a/s;->K:Ljava/util/ArrayList;

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 33
    iget-object p3, p2, Ld/t/a/s;->K:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 34
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result p3

    if-ne p3, v1, :cond_2

    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 35
    :cond_3
    invoke-virtual {p2}, Ld/t/a/s;->l()V

    .line 36
    invoke-virtual {p2}, Ld/t/a/s;->requestLayout()V

    .line 37
    iget-object p2, p0, Ld/t/a/l;->s:Ld/t/a/s;

    .line 38
    iget-object p3, p2, Ld/t/a/s;->L:Ljava/util/ArrayList;

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 39
    iget-object p3, p2, Ld/t/a/s;->M:Ld/t/a/s$n;

    if-ne p3, p0, :cond_4

    const/4 p3, 0x0

    .line 40
    iput-object p3, p2, Ld/t/a/s;->M:Ld/t/a/s$n;

    .line 41
    :cond_4
    iget-object p2, p0, Ld/t/a/l;->s:Ld/t/a/s;

    iget-object p3, p0, Ld/t/a/l;->C:Ld/t/a/s$o;

    .line 42
    iget-object p2, p2, Ld/t/a/s;->E0:Ljava/util/List;

    if-eqz p2, :cond_5

    .line 43
    invoke-interface {p2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 44
    :cond_5
    invoke-virtual {p0}, Ld/t/a/l;->a()V

    .line 45
    :cond_6
    iput-object p1, p0, Ld/t/a/l;->s:Ld/t/a/s;

    if-eqz p1, :cond_a

    .line 46
    iget-object p2, p1, Ld/t/a/s;->I:Ld/t/a/s$k;

    if-eqz p2, :cond_7

    const-string p3, "Cannot add item decoration during a scroll  or layout"

    .line 47
    invoke-virtual {p2, p3}, Ld/t/a/s$k;->a(Ljava/lang/String;)V

    .line 48
    :cond_7
    iget-object p2, p1, Ld/t/a/s;->K:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 50
    :cond_8
    iget-object p2, p1, Ld/t/a/s;->K:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {p1}, Ld/t/a/s;->l()V

    .line 52
    invoke-virtual {p1}, Ld/t/a/s;->requestLayout()V

    .line 53
    iget-object p1, p0, Ld/t/a/l;->s:Ld/t/a/s;

    .line 54
    iget-object p1, p1, Ld/t/a/s;->L:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object p1, p0, Ld/t/a/l;->s:Ld/t/a/s;

    iget-object p2, p0, Ld/t/a/l;->C:Ld/t/a/s$o;

    .line 56
    iget-object p3, p1, Ld/t/a/s;->E0:Ljava/util/List;

    if-nez p3, :cond_9

    .line 57
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p1, Ld/t/a/s;->E0:Ljava/util/List;

    .line 58
    :cond_9
    iget-object p1, p1, Ld/t/a/s;->E0:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a(FF[IIII)I
    .locals 2

    const/4 v0, 0x1

    .line 23
    aget v0, p3, v0

    const/4 v1, 0x0

    aget p3, p3, v1

    sub-int/2addr v0, p3

    if-nez v0, :cond_0

    return v1

    :cond_0
    sub-float/2addr p2, p1

    int-to-float p1, v0

    div-float/2addr p2, p1

    sub-int/2addr p4, p6

    int-to-float p1, p4

    mul-float p2, p2, p1

    float-to-int p1, p2

    add-int/2addr p5, p1

    if-ge p5, p4, :cond_1

    if-ltz p5, :cond_1

    return p1

    :cond_1
    return v1
.end method

.method public final a()V
    .locals 2

    .line 13
    iget-object v0, p0, Ld/t/a/l;->s:Ld/t/a/s;

    iget-object v1, p0, Ld/t/a/l;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(I)V
    .locals 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    iget v1, p0, Ld/t/a/l;->v:I

    if-eq v1, v0, :cond_0

    .line 2
    iget-object v1, p0, Ld/t/a/l;->c:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Ld/t/a/l;->D:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 3
    invoke-virtual {p0}, Ld/t/a/l;->a()V

    :cond_0
    if-nez p1, :cond_1

    .line 4
    iget-object v1, p0, Ld/t/a/l;->s:Ld/t/a/s;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Ld/t/a/l;->b()V

    .line 6
    :goto_0
    iget v1, p0, Ld/t/a/l;->v:I

    if-ne v1, v0, :cond_2

    if-eq p1, v0, :cond_2

    .line 7
    iget-object v0, p0, Ld/t/a/l;->c:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Ld/t/a/l;->E:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    const/16 v0, 0x4b0

    .line 8
    invoke-virtual {p0}, Ld/t/a/l;->a()V

    .line 9
    iget-object v1, p0, Ld/t/a/l;->s:Ld/t/a/s;

    iget-object v2, p0, Ld/t/a/l;->B:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/16 v0, 0x5dc

    .line 10
    invoke-virtual {p0}, Ld/t/a/l;->a()V

    .line 11
    iget-object v1, p0, Ld/t/a/l;->s:Ld/t/a/s;

    iget-object v2, p0, Ld/t/a/l;->B:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12
    :cond_3
    :goto_1
    iput p1, p0, Ld/t/a/l;->v:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(FF)Z
    .locals 2

    .line 24
    iget v0, p0, Ld/t/a/l;->r:I

    iget v1, p0, Ld/t/a/l;->i:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    iget p2, p0, Ld/t/a/l;->o:I

    iget v0, p0, Ld/t/a/l;->n:I

    div-int/lit8 v1, v0, 0x2

    sub-int v1, p2, v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    int-to-float p2, v0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Ld/t/a/s;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 14
    iget p1, p0, Ld/t/a/l;->v:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, p1, v3}, Ld/t/a/l;->b(FF)Z

    move-result p1

    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Ld/t/a/l;->a(FF)Z

    move-result v3

    .line 17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    if-nez p1, :cond_0

    if-eqz v3, :cond_4

    :cond_0
    if-eqz v3, :cond_1

    .line 18
    iput v2, p0, Ld/t/a/l;->w:I

    .line 19
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Ld/t/a/l;->p:F

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 20
    iput v1, p0, Ld/t/a/l;->w:I

    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Ld/t/a/l;->m:F

    .line 22
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Ld/t/a/l;->a(I)V

    goto :goto_1

    :cond_3
    if-ne p1, v1, :cond_4

    :goto_1
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public b()V
    .locals 5

    .line 3
    iget v0, p0, Ld/t/a/l;->A:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ld/t/a/l;->z:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Ld/t/a/l;->A:I

    .line 6
    iget-object v1, p0, Ld/t/a/l;->z:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 7
    iget-object v0, p0, Ld/t/a/l;->z:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8
    iget-object v0, p0, Ld/t/a/l;->z:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 9
    iget-object v0, p0, Ld/t/a/l;->z:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method public b(Ld/t/a/s;Landroid/view/MotionEvent;)V
    .locals 11

    .line 10
    iget p1, p0, Ld/t/a/l;->v:I

    if-nez p1, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_4

    .line 12
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, p1, v2}, Ld/t/a/l;->b(FF)Z

    move-result p1

    .line 13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Ld/t/a/l;->a(FF)Z

    move-result v2

    if-nez p1, :cond_1

    if-eqz v2, :cond_b

    :cond_1
    if-eqz v2, :cond_2

    .line 14
    iput v1, p0, Ld/t/a/l;->w:I

    .line 15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Ld/t/a/l;->p:F

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 16
    iput v0, p0, Ld/t/a/l;->w:I

    .line 17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Ld/t/a/l;->m:F

    .line 18
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Ld/t/a/l;->a(I)V

    goto/16 :goto_2

    .line 19
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_5

    iget p1, p0, Ld/t/a/l;->v:I

    if-ne p1, v0, :cond_5

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Ld/t/a/l;->m:F

    .line 21
    iput p1, p0, Ld/t/a/l;->p:F

    .line 22
    invoke-virtual {p0, v1}, Ld/t/a/l;->a(I)V

    .line 23
    iput v2, p0, Ld/t/a/l;->w:I

    goto/16 :goto_2

    .line 24
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_b

    iget p1, p0, Ld/t/a/l;->v:I

    if-ne p1, v0, :cond_b

    .line 25
    invoke-virtual {p0}, Ld/t/a/l;->b()V

    .line 26
    iget p1, p0, Ld/t/a/l;->w:I

    const/high16 v3, 0x40000000    # 2.0f

    if-ne p1, v1, :cond_8

    .line 27
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 28
    iget-object v7, p0, Ld/t/a/l;->y:[I

    iget v4, p0, Ld/t/a/l;->b:I

    aput v4, v7, v2

    .line 29
    iget v5, p0, Ld/t/a/l;->q:I

    sub-int/2addr v5, v4

    aput v5, v7, v1

    .line 30
    aget v4, v7, v2

    int-to-float v4, v4

    aget v5, v7, v1

    int-to-float v5, v5

    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 31
    iget v4, p0, Ld/t/a/l;->o:I

    int-to-float v4, v4

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v3

    if-gez v4, :cond_6

    goto :goto_1

    .line 32
    :cond_6
    iget v5, p0, Ld/t/a/l;->p:F

    iget-object v4, p0, Ld/t/a/l;->s:Ld/t/a/s;

    .line 33
    invoke-virtual {v4}, Ld/t/a/s;->computeHorizontalScrollRange()I

    move-result v8

    iget-object v4, p0, Ld/t/a/l;->s:Ld/t/a/s;

    .line 34
    invoke-virtual {v4}, Ld/t/a/s;->computeHorizontalScrollOffset()I

    move-result v9

    iget v10, p0, Ld/t/a/l;->q:I

    move-object v4, p0

    move v6, p1

    .line 35
    invoke-virtual/range {v4 .. v10}, Ld/t/a/l;->a(FF[IIII)I

    move-result v4

    if-eqz v4, :cond_7

    .line 36
    iget-object v5, p0, Ld/t/a/l;->s:Ld/t/a/s;

    invoke-virtual {v5, v4, v2}, Ld/t/a/s;->scrollBy(II)V

    .line 37
    :cond_7
    iput p1, p0, Ld/t/a/l;->p:F

    .line 38
    :cond_8
    :goto_1
    iget p1, p0, Ld/t/a/l;->w:I

    if-ne p1, v0, :cond_b

    .line 39
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 40
    iget-object v7, p0, Ld/t/a/l;->x:[I

    iget p2, p0, Ld/t/a/l;->b:I

    aput p2, v7, v2

    .line 41
    iget v0, p0, Ld/t/a/l;->r:I

    sub-int/2addr v0, p2

    aput v0, v7, v1

    .line 42
    aget p2, v7, v2

    int-to-float p2, p2

    aget v0, v7, v1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 43
    iget p2, p0, Ld/t/a/l;->l:I

    int-to-float p2, p2

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p2, v3

    if-gez p2, :cond_9

    goto :goto_2

    .line 44
    :cond_9
    iget v5, p0, Ld/t/a/l;->m:F

    iget-object p2, p0, Ld/t/a/l;->s:Ld/t/a/s;

    .line 45
    invoke-virtual {p2}, Ld/t/a/s;->computeVerticalScrollRange()I

    move-result v8

    iget-object p2, p0, Ld/t/a/l;->s:Ld/t/a/s;

    .line 46
    invoke-virtual {p2}, Ld/t/a/s;->computeVerticalScrollOffset()I

    move-result v9

    iget v10, p0, Ld/t/a/l;->r:I

    move-object v4, p0

    move v6, p1

    .line 47
    invoke-virtual/range {v4 .. v10}, Ld/t/a/l;->a(FF[IIII)I

    move-result p2

    if-eqz p2, :cond_a

    .line 48
    iget-object v0, p0, Ld/t/a/l;->s:Ld/t/a/s;

    invoke-virtual {v0, v2, p2}, Ld/t/a/s;->scrollBy(II)V

    .line 49
    :cond_a
    iput p1, p0, Ld/t/a/l;->m:F

    :cond_b
    :goto_2
    return-void
.end method

.method public b(FF)Z
    .locals 4

    .line 1
    iget-object v0, p0, Ld/t/a/l;->s:Ld/t/a/s;

    invoke-static {v0}, Ld/i/i/n;->i(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Ld/t/a/l;->e:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    goto :goto_1

    :cond_1
    iget v0, p0, Ld/t/a/l;->q:I

    iget v3, p0, Ld/t/a/l;->e:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    :goto_1
    iget p1, p0, Ld/t/a/l;->l:I

    iget v0, p0, Ld/t/a/l;->k:I

    div-int/lit8 v0, v0, 0x2

    sub-int v3, p1, v0

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_2

    add-int/2addr v0, p1

    int-to-float p1, v0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
