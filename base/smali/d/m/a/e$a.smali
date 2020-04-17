.class public Ld/m/a/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/m/a/e;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic x:Ld/m/a/e;


# direct methods
.method public constructor <init>(Ld/m/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/m/a/e$a;->x:Ld/m/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld/m/a/e$a;->x:Ld/m/a/e;

    iget-object v0, v0, Ld/m/a/e;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ld/m/a/e$a;->x:Ld/m/a/e;

    iget-object v0, v0, Ld/m/a/e;->b:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Ld/m/a/e$a;->x:Ld/m/a/e;

    iget-object v1, v0, Ld/m/a/e;->c:Ld/m/a/f0$a;

    iget-object v2, v0, Ld/m/a/e;->b:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Ld/m/a/e;->d:Ld/i/e/a;

    check-cast v1, Ld/m/a/p$b;

    invoke-virtual {v1, v2, v0}, Ld/m/a/p$b;->a(Landroidx/fragment/app/Fragment;Ld/i/e/a;)V

    :cond_0
    return-void
.end method
