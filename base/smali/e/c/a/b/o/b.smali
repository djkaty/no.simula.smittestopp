.class public Le/c/a/b/o/b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/c/a/b/g/c;

.field public final synthetic b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Le/c/a/b/g/c;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p2, p0, Le/c/a/b/o/b;->a:Le/c/a/b/g/c;

    iput-object p3, p0, Le/c/a/b/o/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/c/a/b/o/b;->a:Le/c/a/b/g/c;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Le/c/a/b/g/c;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/c/a/b/o/b;->a:Le/c/a/b/g/c;

    iget-object v0, p0, Le/c/a/b/o/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v0}, Le/c/a/b/g/c;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
