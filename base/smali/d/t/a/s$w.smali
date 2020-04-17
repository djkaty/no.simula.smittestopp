.class public Ld/t/a/s$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/t/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "w"
.end annotation


# instance fields
.field public A:Landroid/view/animation/Interpolator;

.field public B:Z

.field public C:Z

.field public final synthetic D:Ld/t/a/s;

.field public x:I

.field public y:I

.field public z:Landroid/widget/OverScroller;


# direct methods
.method public constructor <init>(Ld/t/a/s;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ld/t/a/s$w;->D:Ld/t/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ld/t/a/s;->b1:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Ld/t/a/s$w;->A:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ld/t/a/s$w;->B:Z

    .line 4
    iput-boolean v0, p0, Ld/t/a/s$w;->C:Z

    .line 5
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Ld/t/a/s;->b1:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Ld/t/a/s$w;->z:Landroid/widget/OverScroller;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld/t/a/s$w;->B:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ld/t/a/s$w;->C:Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ld/t/a/s$w;->D:Ld/t/a/s;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v0, p0, Ld/t/a/s$w;->D:Ld/t/a/s;

    invoke-static {v0, p0}, Ld/i/i/n;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ld/t/a/s$w;->D:Ld/t/a/s;

    iget-object v2, v1, Ld/t/a/s;->I:Ld/t/a/s$k;

    if-nez v2, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v1, v0, Ld/t/a/s$w;->z:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v0, Ld/t/a/s$w;->C:Z

    const/4 v3, 0x1

    .line 5
    iput-boolean v3, v0, Ld/t/a/s$w;->B:Z

    .line 6
    invoke-virtual {v1}, Ld/t/a/s;->b()V

    .line 7
    iget-object v1, v0, Ld/t/a/s$w;->z:Landroid/widget/OverScroller;

    .line 8
    iget-object v4, v0, Ld/t/a/s$w;->D:Ld/t/a/s;

    iget-object v4, v4, Ld/t/a/s;->I:Ld/t/a/s$k;

    .line 9
    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 10
    iget-object v4, v0, Ld/t/a/s$w;->D:Ld/t/a/s;

    iget-object v4, v4, Ld/t/a/s;->O0:[I

    .line 11
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v5

    .line 12
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v6

    .line 13
    iget v7, v0, Ld/t/a/s$w;->x:I

    sub-int v11, v5, v7

    .line 14
    iget v7, v0, Ld/t/a/s$w;->y:I

    sub-int v12, v6, v7

    .line 15
    iput v5, v0, Ld/t/a/s$w;->x:I

    .line 16
    iput v6, v0, Ld/t/a/s$w;->y:I

    .line 17
    iget-object v5, v0, Ld/t/a/s$w;->D:Ld/t/a/s;

    const/4 v9, 0x0

    const/4 v10, 0x1

    move v6, v11

    move v7, v12

    move-object v8, v4

    invoke-virtual/range {v5 .. v10}, Ld/t/a/s;->a(II[I[II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 18
    aget v5, v4, v2

    sub-int/2addr v11, v5

    .line 19
    aget v4, v4, v3

    sub-int/2addr v12, v4

    .line 20
    :cond_1
    iget-object v4, v0, Ld/t/a/s$w;->D:Ld/t/a/s;

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    .line 21
    iget-object v4, v4, Ld/t/a/s;->K:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 22
    iget-object v4, v0, Ld/t/a/s$w;->D:Ld/t/a/s;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    .line 23
    :cond_2
    iget-object v4, v0, Ld/t/a/s$w;->D:Ld/t/a/s;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 24
    iget-object v4, v0, Ld/t/a/s$w;->D:Ld/t/a/s;

    invoke-virtual {v4, v11, v12}, Ld/t/a/s;->a(II)V

    .line 25
    :cond_3
    iget-object v13, v0, Ld/t/a/s$w;->D:Ld/t/a/s;

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-virtual/range {v13 .. v19}, Ld/t/a/s;->a(IIII[II)Z

    .line 26
    iget-object v4, v0, Ld/t/a/s$w;->D:Ld/t/a/s;

    invoke-static {v4}, Ld/t/a/s;->a(Ld/t/a/s;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 27
    iget-object v4, v0, Ld/t/a/s$w;->D:Ld/t/a/s;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    :cond_4
    if-eqz v12, :cond_5

    .line 28
    iget-object v4, v0, Ld/t/a/s$w;->D:Ld/t/a/s;

    iget-object v4, v4, Ld/t/a/s;->I:Ld/t/a/s$k;

    invoke-virtual {v4}, Ld/t/a/s$k;->b()Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v12, :cond_5

    const/4 v4, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_0
    if-eqz v11, :cond_6

    .line 29
    iget-object v5, v0, Ld/t/a/s$w;->D:Ld/t/a/s;

    iget-object v5, v5, Ld/t/a/s;->I:Ld/t/a/s$k;

    invoke-virtual {v5}, Ld/t/a/s$k;->a()Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v11, :cond_6

    const/4 v5, 0x1

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    :goto_1
    if-nez v11, :cond_7

    if-eqz v12, :cond_9

    :cond_7
    if-nez v5, :cond_9

    if-eqz v4, :cond_8

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v4, 0x1

    .line 30
    :goto_3
    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_b

    if-nez v4, :cond_a

    iget-object v1, v0, Ld/t/a/s$w;->D:Ld/t/a/s;

    .line 31
    invoke-virtual {v1, v3}, Ld/t/a/s;->b(I)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4

    .line 32
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ld/t/a/s$w;->a()V

    .line 33
    iget-object v1, v0, Ld/t/a/s$w;->D:Ld/t/a/s;

    iget-object v3, v1, Ld/t/a/s;->A0:Ld/t/a/m;

    if-eqz v3, :cond_e

    .line 34
    invoke-virtual {v3, v1, v11, v12}, Ld/t/a/m;->a(Ld/t/a/s;II)V

    goto :goto_5

    .line 35
    :cond_b
    :goto_4
    iget-object v1, v0, Ld/t/a/s$w;->D:Ld/t/a/s;

    invoke-virtual {v1, v2}, Ld/t/a/s;->setScrollState(I)V

    .line 36
    sget-boolean v1, Ld/t/a/s;->X0:Z

    if-eqz v1, :cond_d

    .line 37
    iget-object v1, v0, Ld/t/a/s$w;->D:Ld/t/a/s;

    iget-object v1, v1, Ld/t/a/s;->B0:Ld/t/a/m$b;

    .line 38
    iget-object v4, v1, Ld/t/a/m$b;->c:[I

    if-eqz v4, :cond_c

    const/4 v5, -0x1

    .line 39
    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    .line 40
    :cond_c
    iput v2, v1, Ld/t/a/m$b;->d:I

    .line 41
    :cond_d
    iget-object v1, v0, Ld/t/a/s$w;->D:Ld/t/a/s;

    invoke-virtual {v1, v3}, Ld/t/a/s;->a(I)V

    .line 42
    :cond_e
    :goto_5
    iput-boolean v2, v0, Ld/t/a/s$w;->B:Z

    .line 43
    iget-boolean v1, v0, Ld/t/a/s$w;->C:Z

    if-eqz v1, :cond_f

    .line 44
    invoke-virtual/range {p0 .. p0}, Ld/t/a/s$w;->a()V

    :cond_f
    return-void
.end method
