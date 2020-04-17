.class public Ld/t/a/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/t/a/b$b;


# instance fields
.field public final synthetic a:Ld/t/a/s;


# direct methods
.method public constructor <init>(Ld/t/a/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/t/a/t;->a:Ld/t/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/t;->a:Ld/t/a/s;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public a(I)Landroid/view/View;
    .locals 1

    .line 2
    iget-object v0, p0, Ld/t/a/t;->a:Ld/t/a/s;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/t/a/t;->a:Ld/t/a/s;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Ld/t/a/t;->a:Ld/t/a/s;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Ld/t/a/s;->b(Landroid/view/View;)Ld/t/a/s$x;

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Ld/t/a/t;->a:Ld/t/a/s;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method
