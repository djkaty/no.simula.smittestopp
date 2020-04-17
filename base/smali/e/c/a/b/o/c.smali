.class public Le/c/a/b/o/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/c/a/b/g/c;


# direct methods
.method public constructor <init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Le/c/a/b/g/c;)V
    .locals 0

    .line 1
    iput-object p2, p0, Le/c/a/b/o/c;->a:Le/c/a/b/g/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/c/a/b/o/c;->a:Le/c/a/b/g/c;

    invoke-interface {p1}, Le/c/a/b/g/c;->getRevealInfo()Le/c/a/b/g/c$e;

    move-result-object p1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 2
    iput v0, p1, Le/c/a/b/g/c$e;->c:F

    .line 3
    iget-object v0, p0, Le/c/a/b/o/c;->a:Le/c/a/b/g/c;

    invoke-interface {v0, p1}, Le/c/a/b/g/c;->setRevealInfo(Le/c/a/b/g/c$e;)V

    return-void
.end method
