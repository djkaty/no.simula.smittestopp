.class public final Ld/b/a/k$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/b/d/i/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "k"
.end annotation


# instance fields
.field public final synthetic x:Ld/b/a/k;


# direct methods
.method public constructor <init>(Ld/b/a/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/b/a/k$k;->x:Ld/b/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/b/d/i/g;Z)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ld/b/d/i/g;->c()Ld/b/d/i/g;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Ld/b/a/k$k;->x:Ld/b/a/k;

    if-eqz v2, :cond_1

    move-object p1, v0

    :cond_1
    invoke-virtual {v3, p1}, Ld/b/a/k;->a(Landroid/view/Menu;)Ld/b/a/k$j;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz v2, :cond_2

    .line 3
    iget-object p2, p0, Ld/b/a/k$k;->x:Ld/b/a/k;

    iget v2, p1, Ld/b/a/k$j;->a:I

    invoke-virtual {p2, v2, p1, v0}, Ld/b/a/k;->a(ILd/b/a/k$j;Landroid/view/Menu;)V

    .line 4
    iget-object p2, p0, Ld/b/a/k$k;->x:Ld/b/a/k;

    invoke-virtual {p2, p1, v1}, Ld/b/a/k;->a(Ld/b/a/k$j;Z)V

    goto :goto_1

    .line 5
    :cond_2
    iget-object v0, p0, Ld/b/a/k$k;->x:Ld/b/a/k;

    invoke-virtual {v0, p1, p2}, Ld/b/a/k;->a(Ld/b/a/k$j;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Ld/b/d/i/g;)Z
    .locals 2

    if-nez p1, :cond_0

    .line 6
    iget-object v0, p0, Ld/b/a/k$k;->x:Ld/b/a/k;

    iget-boolean v1, v0, Ld/b/a/k;->W:Z

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Ld/b/a/k;->j()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Ld/b/a/k$k;->x:Ld/b/a/k;

    iget-boolean v1, v1, Ld/b/a/k;->i0:Z

    if-nez v1, :cond_0

    const/16 v1, 0x6c

    .line 9
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
