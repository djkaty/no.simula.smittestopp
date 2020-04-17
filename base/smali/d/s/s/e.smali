.class public final Ld/s/s/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/navigation/NavController$b;


# instance fields
.field public final synthetic a:Ljava/lang/ref/WeakReference;

.field public final synthetic b:Landroidx/navigation/NavController;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Landroidx/navigation/NavController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/s/s/e;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Ld/s/s/e;->b:Landroidx/navigation/NavController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/navigation/NavController;Ld/s/i;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    iget-object p1, p0, Ld/s/s/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Ld/s/s/e;->b:Landroidx/navigation/NavController;

    .line 3
    iget-object p1, p1, Landroidx/navigation/NavController;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_4

    .line 6
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    move-object v4, p2

    .line 8
    :goto_1
    iget v5, v4, Ld/s/i;->z:I

    if-eq v5, v3, :cond_1

    .line 9
    iget-object v5, v4, Ld/s/i;->y:Ld/s/j;

    if-eqz v5, :cond_1

    move-object v4, v5

    goto :goto_1

    .line 10
    :cond_1
    iget v4, v4, Ld/s/i;->z:I

    const/4 v5, 0x1

    if-ne v4, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    .line 11
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
