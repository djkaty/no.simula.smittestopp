.class public final Ld/m/a/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A:Ld/f/a;

.field public final synthetic B:Landroid/view/View;

.field public final synthetic C:Ld/m/a/k0;

.field public final synthetic D:Landroid/graphics/Rect;

.field public final synthetic x:Landroidx/fragment/app/Fragment;

.field public final synthetic y:Landroidx/fragment/app/Fragment;

.field public final synthetic z:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLd/f/a;Landroid/view/View;Ld/m/a/k0;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/m/a/d0;->x:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Ld/m/a/d0;->y:Landroidx/fragment/app/Fragment;

    iput-boolean p3, p0, Ld/m/a/d0;->z:Z

    iput-object p4, p0, Ld/m/a/d0;->A:Ld/f/a;

    iput-object p5, p0, Ld/m/a/d0;->B:Landroid/view/View;

    iput-object p6, p0, Ld/m/a/d0;->C:Ld/m/a/k0;

    iput-object p7, p0, Ld/m/a/d0;->D:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Ld/m/a/d0;->x:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Ld/m/a/d0;->y:Landroidx/fragment/app/Fragment;

    iget-boolean v2, p0, Ld/m/a/d0;->z:Z

    iget-object v3, p0, Ld/m/a/d0;->A:Ld/f/a;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Ld/m/a/f0;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLd/f/a;Z)V

    .line 2
    iget-object v0, p0, Ld/m/a/d0;->B:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Ld/m/a/d0;->C:Ld/m/a/k0;

    iget-object v2, p0, Ld/m/a/d0;->D:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Ld/m/a/k0;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
