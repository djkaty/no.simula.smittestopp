.class public Ld/b/d/i/j$b;
.super Ld/b/d/i/j$a;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/d/i/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public d:Ld/i/i/b$a;


# direct methods
.method public constructor <init>(Ld/b/d/i/j;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ld/b/d/i/j$a;-><init>(Ld/b/d/i/j;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/d/i/j$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Ld/i/i/b$a;)V
    .locals 1

    .line 3
    iput-object p1, p0, Ld/b/d/i/j$b;->d:Ld/i/i/b$a;

    .line 4
    iget-object v0, p0, Ld/b/d/i/j$a;->b:Landroid/view/ActionProvider;

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 2
    iget-object v0, p0, Ld/b/d/i/j$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/d/i/j$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    return v0
.end method

.method public onActionProviderVisibilityChanged(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Ld/b/d/i/j$b;->d:Ld/i/i/b$a;

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Ld/b/d/i/i$a;

    .line 3
    iget-object p1, p1, Ld/b/d/i/i$a;->a:Ld/b/d/i/i;

    iget-object p1, p1, Ld/b/d/i/i;->n:Ld/b/d/i/g;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Ld/b/d/i/g;->h:Z

    .line 5
    invoke-virtual {p1, v0}, Ld/b/d/i/g;->b(Z)V

    :cond_0
    return-void
.end method
