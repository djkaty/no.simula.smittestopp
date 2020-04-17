.class public Ld/b/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/i/i/k;


# instance fields
.field public final synthetic a:Ld/b/a/k;


# direct methods
.method public constructor <init>(Ld/b/a/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/b/a/l;->a:Ld/b/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ld/i/i/w;)Ld/i/i/w;
    .locals 5

    .line 1
    invoke-virtual {p2}, Ld/i/i/w;->d()I

    move-result v0

    .line 2
    iget-object v1, p0, Ld/b/a/l;->a:Ld/b/a/k;

    invoke-virtual {v1, v0}, Ld/b/a/k;->f(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p2}, Ld/i/i/w;->b()I

    move-result v0

    .line 4
    invoke-virtual {p2}, Ld/i/i/w;->c()I

    move-result v2

    .line 5
    invoke-virtual {p2}, Ld/i/i/w;->a()I

    move-result v3

    .line 6
    new-instance v4, Ld/i/i/w;

    iget-object p2, p2, Ld/i/i/w;->a:Ljava/lang/Object;

    check-cast p2, Landroid/view/WindowInsets;

    .line 7
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p2

    invoke-direct {v4, p2}, Ld/i/i/w;-><init>(Ljava/lang/Object;)V

    move-object p2, v4

    .line 8
    :cond_0
    invoke-static {p1, p2}, Ld/i/i/n;->a(Landroid/view/View;Ld/i/i/w;)Ld/i/i/w;

    move-result-object p1

    return-object p1
.end method
