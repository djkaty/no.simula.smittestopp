.class public final Le/c/a/a/g/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/c/a/a/g/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/c/a/a/g/f<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Le/c/a/a/b/i/k/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/b/i/k/b0<",
            "TTResult;TTContinuationResult;>;"
        }
    .end annotation
.end field

.field public final c:Le/c/a/a/g/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/g/h<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Le/c/a/a/b/i/k/b0;Le/c/a/a/g/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Le/c/a/a/b/i/k/b0<",
            "TTResult;TTContinuationResult;>;",
            "Le/c/a/a/g/h<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/c/a/a/g/d;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Le/c/a/a/g/d;->b:Le/c/a/a/b/i/k/b0;

    .line 4
    iput-object p3, p0, Le/c/a/a/g/d;->c:Le/c/a/a/g/h;

    return-void
.end method


# virtual methods
.method public final a(Le/c/a/a/g/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/a/a/g/h<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/c/a/a/g/d;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Le/c/a/a/g/e;

    invoke-direct {v1, p0, p1}, Le/c/a/a/g/e;-><init>(Le/c/a/a/g/d;Le/c/a/a/g/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
