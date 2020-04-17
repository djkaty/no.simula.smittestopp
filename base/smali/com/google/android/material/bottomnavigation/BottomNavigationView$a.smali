.class public Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/b/d/i/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic x:Lcom/google/android/material/bottomnavigation/BottomNavigationView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;->x:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/b/d/i/g;)V
    .locals 0

    return-void
.end method

.method public a(Ld/b/d/i/g;Landroid/view/MenuItem;)Z
    .locals 11

    .line 1
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;->x:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 2
    iget-object p1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->C:Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;->x:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getSelectedItemId()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;->x:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 5
    iget-object p1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->C:Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;

    .line 6
    invoke-interface {p1, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;->a(Landroid/view/MenuItem;)V

    return v0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;->x:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 8
    iget-object p1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->B:Lcom/google/android/material/bottomnavigation/BottomNavigationView$c;

    if-eqz p1, :cond_4

    .line 9
    check-cast p1, Ld/s/s/d;

    .line 10
    iget-object p1, p1, Ld/s/s/d;->a:Landroidx/navigation/NavController;

    const/4 v2, 0x1

    .line 11
    sget v5, Landroidx/navigation/ui/R$anim;->nav_default_enter_anim:I

    .line 12
    sget v6, Landroidx/navigation/ui/R$anim;->nav_default_exit_anim:I

    .line 13
    sget v7, Landroidx/navigation/ui/R$anim;->nav_default_pop_enter_anim:I

    .line 14
    sget v8, Landroidx/navigation/ui/R$anim;->nav_default_pop_exit_anim:I

    .line 15
    invoke-interface {p2}, Landroid/view/MenuItem;->getOrder()I

    move-result v1

    const/high16 v3, 0x30000

    and-int/2addr v1, v3

    if-nez v1, :cond_3

    .line 16
    iget-object v1, p1, Landroidx/navigation/NavController;->d:Ld/s/j;

    if-eqz v1, :cond_2

    .line 17
    :goto_0
    instance-of v3, v1, Ld/s/j;

    if-eqz v3, :cond_1

    .line 18
    check-cast v1, Ld/s/j;

    .line 19
    iget v3, v1, Ld/s/j;->G:I

    .line 20
    invoke-virtual {v1, v3}, Ld/s/j;->b(I)Ld/s/i;

    move-result-object v1

    goto :goto_0

    .line 21
    :cond_1
    iget v1, v1, Ld/s/i;->z:I

    move v3, v1

    goto :goto_1

    .line 22
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You must call setGraph() before calling getGraph()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v1, -0x1

    const/4 v3, -0x1

    .line 23
    :goto_1
    new-instance v9, Ld/s/n;

    const/4 v10, 0x0

    move-object v1, v9

    move v4, v10

    invoke-direct/range {v1 .. v8}, Ld/s/n;-><init>(ZIZIIII)V

    .line 24
    :try_start_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v9}, Landroidx/navigation/NavController;->a(ILandroid/os/Bundle;Ld/s/n;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x1

    goto :goto_2

    :catch_0
    nop

    :goto_2
    if-nez v10, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    return v0
.end method
