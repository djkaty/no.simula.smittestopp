.class public Ld/b/d/e;
.super Landroid/view/ActionMode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/b/d/e$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ld/b/d/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ld/b/d/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 2
    iput-object p1, p0, Ld/b/d/e;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Ld/b/d/e;->b:Ld/b/d/a;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/d/e;->b:Ld/b/d/a;

    invoke-virtual {v0}, Ld/b/d/a;->a()V

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/d/e;->b:Ld/b/d/a;

    invoke-virtual {v0}, Ld/b/d/a;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 3

    .line 1
    new-instance v0, Ld/b/d/i/o;

    iget-object v1, p0, Ld/b/d/e;->a:Landroid/content/Context;

    iget-object v2, p0, Ld/b/d/e;->b:Ld/b/d/a;

    invoke-virtual {v2}, Ld/b/d/a;->c()Landroid/view/Menu;

    move-result-object v2

    check-cast v2, Ld/i/d/a/a;

    invoke-direct {v0, v1, v2}, Ld/b/d/i/o;-><init>(Landroid/content/Context;Ld/i/d/a/a;)V

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/d/e;->b:Ld/b/d/a;

    invoke-virtual {v0}, Ld/b/d/a;->d()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/d/e;->b:Ld/b/d/a;

    invoke-virtual {v0}, Ld/b/d/a;->e()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/d/e;->b:Ld/b/d/a;

    .line 2
    iget-object v0, v0, Ld/b/d/a;->x:Ljava/lang/Object;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/d/e;->b:Ld/b/d/a;

    invoke-virtual {v0}, Ld/b/d/a;->f()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleOptionalHint()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/d/e;->b:Ld/b/d/a;

    .line 2
    iget-boolean v0, v0, Ld/b/d/a;->y:Z

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/d/e;->b:Ld/b/d/a;

    invoke-virtual {v0}, Ld/b/d/a;->g()V

    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/d/e;->b:Ld/b/d/a;

    invoke-virtual {v0}, Ld/b/d/a;->h()Z

    move-result v0

    return v0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/d/e;->b:Ld/b/d/a;

    invoke-virtual {v0, p1}, Ld/b/d/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Ld/b/d/e;->b:Ld/b/d/a;

    invoke-virtual {v0, p1}, Ld/b/d/a;->a(I)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/d/e;->b:Ld/b/d/a;

    invoke-virtual {v0, p1}, Ld/b/d/a;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/d/e;->b:Ld/b/d/a;

    .line 2
    iput-object p1, v0, Ld/b/d/a;->x:Ljava/lang/Object;

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Ld/b/d/e;->b:Ld/b/d/a;

    invoke-virtual {v0, p1}, Ld/b/d/a;->b(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/d/e;->b:Ld/b/d/a;

    invoke-virtual {v0, p1}, Ld/b/d/a;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/d/e;->b:Ld/b/d/a;

    invoke-virtual {v0, p1}, Ld/b/d/a;->a(Z)V

    return-void
.end method
