.class public Ld/i/i/s$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/i/i/s;->a(Landroid/view/View;Ld/i/i/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/i/i/t;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Ld/i/i/s;Ld/i/i/t;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ld/i/i/s$a;->a:Ld/i/i/t;

    iput-object p3, p0, Ld/i/i/s$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ld/i/i/s$a;->a:Ld/i/i/t;

    iget-object v0, p0, Ld/i/i/s$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Ld/i/i/t;->c(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ld/i/i/s$a;->a:Ld/i/i/t;

    iget-object v0, p0, Ld/i/i/s$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Ld/i/i/t;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ld/i/i/s$a;->a:Ld/i/i/t;

    iget-object v0, p0, Ld/i/i/s$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Ld/i/i/t;->b(Landroid/view/View;)V

    return-void
.end method
