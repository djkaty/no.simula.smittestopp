.class public final Le/c/a/b/j/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/a/b/j/c$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/c/a/b/j/c$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Le/c/a/b/j/c$b;

.field public c:Landroid/animation/ValueAnimator;

.field public final d:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/c/a/b/j/c;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/c/a/b/j/c;->b:Le/c/a/b/j/c$b;

    .line 4
    iput-object v0, p0, Le/c/a/b/j/c;->c:Landroid/animation/ValueAnimator;

    .line 5
    new-instance v0, Le/c/a/b/j/c$a;

    invoke-direct {v0, p0}, Le/c/a/b/j/c$a;-><init>(Le/c/a/b/j/c;)V

    iput-object v0, p0, Le/c/a/b/j/c;->d:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method


# virtual methods
.method public a([ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    new-instance v0, Le/c/a/b/j/c$b;

    invoke-direct {v0, p1, p2}, Le/c/a/b/j/c$b;-><init>([ILandroid/animation/ValueAnimator;)V

    .line 2
    iget-object p1, p0, Le/c/a/b/j/c;->d:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3
    iget-object p1, p0, Le/c/a/b/j/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
