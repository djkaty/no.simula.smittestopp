.class public Ld/x/b$i;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/x/b;->a(Landroid/view/ViewGroup;Ld/x/p;Ld/x/p;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/graphics/Rect;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Ld/x/b;Landroid/view/View;Landroid/graphics/Rect;IIII)V
    .locals 0

    .line 1
    iput-object p2, p0, Ld/x/b$i;->b:Landroid/view/View;

    iput-object p3, p0, Ld/x/b$i;->c:Landroid/graphics/Rect;

    iput p4, p0, Ld/x/b$i;->d:I

    iput p5, p0, Ld/x/b$i;->e:I

    iput p6, p0, Ld/x/b$i;->f:I

    iput p7, p0, Ld/x/b$i;->g:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Ld/x/b$i;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Ld/x/b$i;->a:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Ld/x/b$i;->b:Landroid/view/View;

    iget-object v0, p0, Ld/x/b$i;->c:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Ld/i/i/n;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3
    iget-object p1, p0, Ld/x/b$i;->b:Landroid/view/View;

    iget v0, p0, Ld/x/b$i;->d:I

    iget v1, p0, Ld/x/b$i;->e:I

    iget v2, p0, Ld/x/b$i;->f:I

    iget v3, p0, Ld/x/b$i;->g:I

    invoke-static {p1, v0, v1, v2, v3}, Ld/x/v;->a(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method
