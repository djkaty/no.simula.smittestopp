.class public Ld/t/a/h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ld/t/a/s$x;

.field public final synthetic b:I

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:I

.field public final synthetic e:Landroid/view/ViewPropertyAnimator;

.field public final synthetic f:Ld/t/a/k;


# direct methods
.method public constructor <init>(Ld/t/a/k;Ld/t/a/s$x;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/t/a/h;->f:Ld/t/a/k;

    iput-object p2, p0, Ld/t/a/h;->a:Ld/t/a/s$x;

    iput p3, p0, Ld/t/a/h;->b:I

    iput-object p4, p0, Ld/t/a/h;->c:Landroid/view/View;

    iput p5, p0, Ld/t/a/h;->d:I

    iput-object p6, p0, Ld/t/a/h;->e:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, Ld/t/a/h;->b:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ld/t/a/h;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 3
    :cond_0
    iget p1, p0, Ld/t/a/h;->d:I

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Ld/t/a/h;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ld/t/a/h;->e:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2
    iget-object p1, p0, Ld/t/a/h;->f:Ld/t/a/k;

    iget-object v0, p0, Ld/t/a/h;->a:Ld/t/a/s$x;

    .line 3
    invoke-virtual {p1, v0}, Ld/t/a/s$h;->a(Ld/t/a/s$x;)V

    .line 4
    iget-object p1, p0, Ld/t/a/h;->f:Ld/t/a/k;

    iget-object p1, p1, Ld/t/a/k;->p:Ljava/util/ArrayList;

    iget-object v0, p0, Ld/t/a/h;->a:Ld/t/a/s$x;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Ld/t/a/h;->f:Ld/t/a/k;

    invoke-virtual {p1}, Ld/t/a/k;->d()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ld/t/a/h;->f:Ld/t/a/k;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
