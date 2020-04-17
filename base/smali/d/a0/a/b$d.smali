.class public Ld/a0/a/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/i/i/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/a0/a/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final synthetic b:Ld/a0/a/b;


# direct methods
.method public constructor <init>(Ld/a0/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/a0/a/b$d;->b:Ld/a0/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ld/a0/a/b$d;->a:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ld/i/i/w;)Ld/i/i/w;
    .locals 5

    .line 1
    invoke-static {p1, p2}, Ld/i/i/n;->a(Landroid/view/View;Ld/i/i/w;)Ld/i/i/w;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ld/i/i/w;->e()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 3
    :cond_0
    iget-object p2, p0, Ld/a0/a/b$d;->a:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {p1}, Ld/i/i/w;->b()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 5
    invoke-virtual {p1}, Ld/i/i/w;->d()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 6
    invoke-virtual {p1}, Ld/i/i/w;->c()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 7
    invoke-virtual {p1}, Ld/i/i/w;->a()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v0, 0x0

    .line 8
    iget-object v1, p0, Ld/a0/a/b$d;->b:Ld/a0/a/b;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 9
    iget-object v2, p0, Ld/a0/a/b$d;->b:Ld/a0/a/b;

    .line 10
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 11
    iget-object v3, p1, Ld/i/i/w;->a:Ljava/lang/Object;

    check-cast v3, Landroid/view/WindowInsets;

    .line 12
    invoke-virtual {v2, v3}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v2

    .line 13
    invoke-virtual {v2, v3}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 14
    new-instance v3, Landroid/view/WindowInsets;

    invoke-direct {v3, v2}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 15
    :cond_1
    invoke-static {v3}, Ld/i/i/w;->a(Landroid/view/WindowInsets;)Ld/i/i/w;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ld/i/i/w;->b()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->left:I

    .line 17
    invoke-virtual {v2}, Ld/i/i/w;->d()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->top:I

    .line 18
    invoke-virtual {v2}, Ld/i/i/w;->c()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->right:I

    .line 19
    invoke-virtual {v2}, Ld/i/i/w;->a()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    :cond_2
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 21
    new-instance v3, Ld/i/i/w;

    iget-object p1, p1, Ld/i/i/w;->a:Ljava/lang/Object;

    check-cast p1, Landroid/view/WindowInsets;

    .line 22
    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-direct {v3, p1}, Ld/i/i/w;-><init>(Ljava/lang/Object;)V

    return-object v3
.end method
