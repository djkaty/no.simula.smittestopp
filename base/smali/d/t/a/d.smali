.class public Ld/t/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic x:Ljava/util/ArrayList;

.field public final synthetic y:Ld/t/a/k;


# direct methods
.method public constructor <init>(Ld/t/a/k;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/t/a/d;->y:Ld/t/a/k;

    iput-object p2, p0, Ld/t/a/d;->x:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Ld/t/a/d;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/t/a/k$a;

    .line 2
    iget-object v2, p0, Ld/t/a/d;->y:Ld/t/a/k;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 3
    iget-object v4, v1, Ld/t/a/k$a;->a:Ld/t/a/s$x;

    if-nez v4, :cond_1

    move-object v4, v3

    goto :goto_1

    .line 4
    :cond_1
    iget-object v4, v4, Ld/t/a/s$x;->a:Landroid/view/View;

    .line 5
    :goto_1
    iget-object v5, v1, Ld/t/a/k$a;->b:Ld/t/a/s$x;

    if-eqz v5, :cond_2

    .line 6
    iget-object v3, v5, Ld/t/a/s$x;->a:Landroid/view/View;

    :cond_2
    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 7
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 8
    iget-wide v7, v2, Ld/t/a/s$h;->f:J

    .line 9
    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 10
    iget-object v7, v2, Ld/t/a/k;->r:Ljava/util/ArrayList;

    iget-object v8, v1, Ld/t/a/k$a;->a:Ld/t/a/s$x;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget v7, v1, Ld/t/a/k$a;->e:I

    iget v8, v1, Ld/t/a/k$a;->c:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 12
    iget v7, v1, Ld/t/a/k$a;->f:I

    iget v8, v1, Ld/t/a/k$a;->d:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 13
    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v8, Ld/t/a/i;

    invoke-direct {v8, v2, v1, v6, v4}, Ld/t/a/i;-><init>(Ld/t/a/k;Ld/t/a/k$a;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 14
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    if-eqz v3, :cond_0

    .line 15
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 16
    iget-object v6, v2, Ld/t/a/k;->r:Ljava/util/ArrayList;

    iget-object v7, v1, Ld/t/a/k$a;->b:Ld/t/a/s$x;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 18
    iget-wide v6, v2, Ld/t/a/s$h;->f:J

    .line 19
    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    .line 20
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Ld/t/a/j;

    invoke-direct {v6, v2, v1, v4, v3}, Ld/t/a/j;-><init>(Ld/t/a/k;Ld/t/a/k$a;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 22
    :cond_4
    throw v3

    .line 23
    :cond_5
    iget-object v0, p0, Ld/t/a/d;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 24
    iget-object v0, p0, Ld/t/a/d;->y:Ld/t/a/k;

    iget-object v0, v0, Ld/t/a/k;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Ld/t/a/d;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
