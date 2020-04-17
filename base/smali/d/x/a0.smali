.class public Ld/x/a0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ld/x/s;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Ld/x/b0;Ld/x/s;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ld/x/a0;->a:Ld/x/s;

    iput-object p3, p0, Ld/x/a0;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ld/x/a0;->a:Ld/x/s;

    iget-object v0, p0, Ld/x/a0;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Ld/x/s;->a(Landroid/view/View;)V

    return-void
.end method
