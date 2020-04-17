.class public Ld/s/s/b;
.super Ld/s/s/a;
.source "SourceFile"


# instance fields
.field public final f:Ld/b/a/h;


# direct methods
.method public constructor <init>(Ld/b/a/h;Ld/s/s/c;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ld/b/a/h;->j()Ld/b/a/j;

    move-result-object v0

    check-cast v0, Ld/b/a/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ld/b/a/k;->h()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0, p2}, Ld/s/s/a;-><init>(Landroid/content/Context;Ld/s/s/c;)V

    .line 4
    iput-object p1, p0, Ld/s/s/b;->f:Ld/b/a/h;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/s/s/b;->f:Ld/b/a/h;

    invoke-virtual {v0}, Ld/b/a/h;->k()Ld/b/a/a;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1}, Ld/b/a/a;->c(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ld/b/a/a;->c(Z)V

    .line 4
    iget-object v0, p0, Ld/s/s/b;->f:Ld/b/a/h;

    .line 5
    invoke-virtual {v0}, Ld/b/a/h;->j()Ld/b/a/j;

    move-result-object v0

    check-cast v0, Ld/b/a/k;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Ld/b/a/k;->k()V

    .line 7
    iget-object v0, v0, Ld/b/a/k;->E:Ld/b/a/a;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0, p1}, Ld/b/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 9
    invoke-virtual {v0, p2}, Ld/b/a/a;->a(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 10
    throw p1
.end method
