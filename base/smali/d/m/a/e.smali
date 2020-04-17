.class public final Ld/m/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroidx/fragment/app/Fragment;

.field public final synthetic c:Ld/m/a/f0$a;

.field public final synthetic d:Ld/i/e/a;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Ld/m/a/f0$a;Ld/i/e/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/m/a/e;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Ld/m/a/e;->b:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Ld/m/a/e;->c:Ld/m/a/f0$a;

    iput-object p4, p0, Ld/m/a/e;->d:Ld/i/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ld/m/a/e;->a:Landroid/view/ViewGroup;

    new-instance v0, Ld/m/a/e$a;

    invoke-direct {v0, p0}, Ld/m/a/e$a;-><init>(Ld/m/a/e;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
