.class public Ld/t/a/g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ld/t/a/s$x;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/ViewPropertyAnimator;

.field public final synthetic d:Ld/t/a/k;


# direct methods
.method public constructor <init>(Ld/t/a/k;Ld/t/a/s$x;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/t/a/g;->d:Ld/t/a/k;

    iput-object p2, p0, Ld/t/a/g;->a:Ld/t/a/s$x;

    iput-object p3, p0, Ld/t/a/g;->b:Landroid/view/View;

    iput-object p4, p0, Ld/t/a/g;->c:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ld/t/a/g;->b:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ld/t/a/g;->c:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2
    iget-object p1, p0, Ld/t/a/g;->d:Ld/t/a/k;

    iget-object v0, p0, Ld/t/a/g;->a:Ld/t/a/s$x;

    .line 3
    invoke-virtual {p1, v0}, Ld/t/a/s$h;->a(Ld/t/a/s$x;)V

    .line 4
    iget-object p1, p0, Ld/t/a/g;->d:Ld/t/a/k;

    iget-object p1, p1, Ld/t/a/k;->o:Ljava/util/ArrayList;

    iget-object v0, p0, Ld/t/a/g;->a:Ld/t/a/s$x;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Ld/t/a/g;->d:Ld/t/a/k;

    invoke-virtual {p1}, Ld/t/a/k;->d()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ld/t/a/g;->d:Ld/t/a/k;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
