.class public Le/c/a/b/c/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final synthetic b:Landroidx/appcompat/widget/ActionMenuView;

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/c/a/b/c/c;->e:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iput-object p2, p0, Le/c/a/b/c/c;->b:Landroidx/appcompat/widget/ActionMenuView;

    iput p3, p0, Le/c/a/b/c/c;->c:I

    iput-boolean p4, p0, Le/c/a/b/c/c;->d:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Le/c/a/b/c/c;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Le/c/a/b/c/c;->a:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Le/c/a/b/c/c;->e:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iget-object v0, p0, Le/c/a/b/c/c;->b:Landroidx/appcompat/widget/ActionMenuView;

    iget v1, p0, Le/c/a/b/c/c;->c:I

    iget-boolean v2, p0, Le/c/a/b/c/c;->d:Z

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V

    :cond_0
    return-void
.end method
