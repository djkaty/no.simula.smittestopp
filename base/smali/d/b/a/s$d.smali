.class public final Ld/b/a/s$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/b/d/i/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final synthetic x:Ld/b/a/s;


# direct methods
.method public constructor <init>(Ld/b/a/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/b/a/s$d;->x:Ld/b/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/b/d/i/g;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld/b/a/s$d;->x:Ld/b/a/s;

    iget-object v1, v0, Ld/b/a/s;->c:Landroid/view/Window$Callback;

    if-eqz v1, :cond_1

    .line 2
    iget-object v0, v0, Ld/b/a/s;->a:Ld/b/e/d0;

    invoke-interface {v0}, Ld/b/e/d0;->b()Z

    move-result v0

    const/16 v1, 0x6c

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ld/b/a/s$d;->x:Ld/b/a/s;

    iget-object v0, v0, Ld/b/a/s;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ld/b/a/s$d;->x:Ld/b/a/s;

    iget-object v0, v0, Ld/b/a/s;->c:Landroid/view/Window$Callback;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Ld/b/a/s$d;->x:Ld/b/a/s;

    iget-object v0, v0, Ld/b/a/s;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ld/b/d/i/g;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
