.class public Le/c/a/b/i/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Le/c/a/b/i/e$d;

.field public final synthetic c:Le/c/a/b/i/e;


# direct methods
.method public constructor <init>(Le/c/a/b/i/e;ZLe/c/a/b/i/e$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/c/a/b/i/c;->c:Le/c/a/b/i/e;

    iput-boolean p2, p0, Le/c/a/b/i/c;->a:Z

    iput-object p3, p0, Le/c/a/b/i/c;->b:Le/c/a/b/i/e$d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/c/a/b/i/c;->c:Le/c/a/b/i/e;

    const/4 v0, 0x0

    iput v0, p1, Le/c/a/b/i/e;->a:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Le/c/a/b/i/e;->b:Landroid/animation/Animator;

    .line 3
    iget-object p1, p0, Le/c/a/b/i/c;->b:Le/c/a/b/i/e$d;

    if-eqz p1, :cond_0

    .line 4
    check-cast p1, Le/c/a/b/i/a;

    .line 5
    throw v0

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/c/a/b/i/c;->c:Le/c/a/b/i/e;

    iget-object v0, v0, Le/c/a/b/i/e;->o:Le/c/a/b/j/f;

    iget-boolean v1, p0, Le/c/a/b/i/c;->a:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Le/c/a/b/j/f;->a(IZ)V

    .line 2
    iget-object v0, p0, Le/c/a/b/i/c;->c:Le/c/a/b/i/e;

    const/4 v1, 0x2

    iput v1, v0, Le/c/a/b/i/e;->a:I

    .line 3
    iput-object p1, v0, Le/c/a/b/i/e;->b:Landroid/animation/Animator;

    return-void
.end method
