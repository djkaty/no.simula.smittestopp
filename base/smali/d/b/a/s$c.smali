.class public final Ld/b/a/s$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/b/d/i/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public x:Z

.field public final synthetic y:Ld/b/a/s;


# direct methods
.method public constructor <init>(Ld/b/a/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/b/a/s$c;->y:Ld/b/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/b/d/i/g;Z)V
    .locals 1

    .line 3
    iget-boolean p2, p0, Ld/b/a/s$c;->x:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Ld/b/a/s$c;->x:Z

    .line 5
    iget-object p2, p0, Ld/b/a/s$c;->y:Ld/b/a/s;

    iget-object p2, p2, Ld/b/a/s;->a:Ld/b/e/d0;

    invoke-interface {p2}, Ld/b/e/d0;->g()V

    .line 6
    iget-object p2, p0, Ld/b/a/s$c;->y:Ld/b/a/s;

    iget-object p2, p2, Ld/b/a/s;->c:Landroid/view/Window$Callback;

    if-eqz p2, :cond_1

    const/16 v0, 0x6c

    .line 7
    invoke-interface {p2, v0, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Ld/b/a/s$c;->x:Z

    return-void
.end method

.method public a(Ld/b/d/i/g;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ld/b/a/s$c;->y:Ld/b/a/s;

    iget-object v0, v0, Ld/b/a/s;->c:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    const/16 v1, 0x6c

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
