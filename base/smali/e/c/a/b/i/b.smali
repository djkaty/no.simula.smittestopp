.class public Le/c/a/b/i/b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final synthetic b:Z

.field public final synthetic c:Le/c/a/b/i/e$d;

.field public final synthetic d:Le/c/a/b/i/e;


# direct methods
.method public constructor <init>(Le/c/a/b/i/e;ZLe/c/a/b/i/e$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/c/a/b/i/b;->d:Le/c/a/b/i/e;

    iput-boolean p2, p0, Le/c/a/b/i/b;->b:Z

    iput-object p3, p0, Le/c/a/b/i/b;->c:Le/c/a/b/i/e$d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Le/c/a/b/i/b;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/c/a/b/i/b;->d:Le/c/a/b/i/e;

    const/4 v0, 0x0

    iput v0, p1, Le/c/a/b/i/e;->a:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Le/c/a/b/i/e;->b:Landroid/animation/Animator;

    .line 3
    iget-boolean v1, p0, Le/c/a/b/i/b;->a:Z

    if-nez v1, :cond_1

    .line 4
    iget-object p1, p1, Le/c/a/b/i/e;->o:Le/c/a/b/j/f;

    iget-boolean v1, p0, Le/c/a/b/i/b;->b:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    iget-boolean v2, p0, Le/c/a/b/i/b;->b:Z

    invoke-virtual {p1, v1, v2}, Le/c/a/b/j/f;->a(IZ)V

    .line 5
    iget-object p1, p0, Le/c/a/b/i/b;->c:Le/c/a/b/i/e$d;

    if-eqz p1, :cond_1

    .line 6
    check-cast p1, Le/c/a/b/i/a;

    .line 7
    throw v0

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/c/a/b/i/b;->d:Le/c/a/b/i/e;

    iget-object v0, v0, Le/c/a/b/i/e;->o:Le/c/a/b/j/f;

    iget-boolean v1, p0, Le/c/a/b/i/b;->b:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Le/c/a/b/j/f;->a(IZ)V

    .line 2
    iget-object v0, p0, Le/c/a/b/i/b;->d:Le/c/a/b/i/e;

    const/4 v1, 0x1

    iput v1, v0, Le/c/a/b/i/e;->a:I

    .line 3
    iput-object p1, v0, Le/c/a/b/i/e;->b:Landroid/animation/Animator;

    .line 4
    iput-boolean v2, p0, Le/c/a/b/i/b;->a:Z

    return-void
.end method
