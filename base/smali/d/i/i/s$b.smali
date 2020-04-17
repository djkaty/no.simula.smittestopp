.class public Ld/i/i/s$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/i/i/s;->a(Ld/i/i/v;)Ld/i/i/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/i/i/v;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Ld/i/i/s;Ld/i/i/v;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ld/i/i/s$b;->a:Ld/i/i/v;

    iput-object p3, p0, Ld/i/i/s$b;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ld/i/i/s$b;->a:Ld/i/i/v;

    check-cast p1, Ld/b/a/v$c;

    .line 2
    iget-object p1, p1, Ld/b/a/v$c;->a:Ld/b/a/v;

    iget-object p1, p1, Ld/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 3
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
