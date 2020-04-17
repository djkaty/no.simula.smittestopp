.class public final Ld/m/a/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A:Ld/m/a/f0$b;

.field public final synthetic B:Ljava/util/ArrayList;

.field public final synthetic C:Landroid/view/View;

.field public final synthetic D:Landroidx/fragment/app/Fragment;

.field public final synthetic E:Landroidx/fragment/app/Fragment;

.field public final synthetic F:Z

.field public final synthetic G:Ljava/util/ArrayList;

.field public final synthetic H:Ljava/lang/Object;

.field public final synthetic I:Landroid/graphics/Rect;

.field public final synthetic x:Ld/m/a/k0;

.field public final synthetic y:Ld/f/a;

.field public final synthetic z:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ld/m/a/k0;Ld/f/a;Ljava/lang/Object;Ld/m/a/f0$b;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/m/a/e0;->x:Ld/m/a/k0;

    iput-object p2, p0, Ld/m/a/e0;->y:Ld/f/a;

    iput-object p3, p0, Ld/m/a/e0;->z:Ljava/lang/Object;

    iput-object p4, p0, Ld/m/a/e0;->A:Ld/m/a/f0$b;

    iput-object p5, p0, Ld/m/a/e0;->B:Ljava/util/ArrayList;

    iput-object p6, p0, Ld/m/a/e0;->C:Landroid/view/View;

    iput-object p7, p0, Ld/m/a/e0;->D:Landroidx/fragment/app/Fragment;

    iput-object p8, p0, Ld/m/a/e0;->E:Landroidx/fragment/app/Fragment;

    iput-boolean p9, p0, Ld/m/a/e0;->F:Z

    iput-object p10, p0, Ld/m/a/e0;->G:Ljava/util/ArrayList;

    iput-object p11, p0, Ld/m/a/e0;->H:Ljava/lang/Object;

    iput-object p12, p0, Ld/m/a/e0;->I:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Ld/m/a/e0;->x:Ld/m/a/k0;

    iget-object v1, p0, Ld/m/a/e0;->y:Ld/f/a;

    iget-object v2, p0, Ld/m/a/e0;->z:Ljava/lang/Object;

    iget-object v3, p0, Ld/m/a/e0;->A:Ld/m/a/f0$b;

    invoke-static {v0, v1, v2, v3}, Ld/m/a/f0;->a(Ld/m/a/k0;Ld/f/a;Ljava/lang/Object;Ld/m/a/f0$b;)Ld/f/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Ld/m/a/e0;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ld/f/a;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v1, p0, Ld/m/a/e0;->B:Ljava/util/ArrayList;

    iget-object v2, p0, Ld/m/a/e0;->C:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v1, p0, Ld/m/a/e0;->D:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Ld/m/a/e0;->E:Landroidx/fragment/app/Fragment;

    iget-boolean v3, p0, Ld/m/a/e0;->F:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Ld/m/a/f0;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLd/f/a;Z)V

    .line 5
    iget-object v1, p0, Ld/m/a/e0;->z:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, p0, Ld/m/a/e0;->x:Ld/m/a/k0;

    iget-object v3, p0, Ld/m/a/e0;->G:Ljava/util/ArrayList;

    iget-object v4, p0, Ld/m/a/e0;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3, v4}, Ld/m/a/k0;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 7
    iget-object v1, p0, Ld/m/a/e0;->A:Ld/m/a/f0$b;

    iget-object v2, p0, Ld/m/a/e0;->H:Ljava/lang/Object;

    iget-boolean v3, p0, Ld/m/a/e0;->F:Z

    invoke-static {v0, v1, v2, v3}, Ld/m/a/f0;->a(Ld/f/a;Ld/m/a/f0$b;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Ld/m/a/e0;->x:Ld/m/a/k0;

    iget-object v2, p0, Ld/m/a/e0;->I:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Ld/m/a/k0;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
