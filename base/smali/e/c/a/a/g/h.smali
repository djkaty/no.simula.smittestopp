.class public final Le/c/a/a/g/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Le/c/a/a/g/h<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Le/c/a/a/g/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/g/g<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field public c:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field public volatile d:Z

.field public e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field public f:Ljava/lang/Exception;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/c/a/a/g/h;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Le/c/a/a/g/g;

    invoke-direct {v0}, Le/c/a/a/g/g;-><init>()V

    iput-object v0, p0, Le/c/a/a/g/h;->b:Le/c/a/a/g/g;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/c/a/a/g/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Le/c/a/a/g/h;->c:Z

    const-string v2, "Task is not yet complete"

    invoke-static {v1, v2}, Ld/b/a/r;->a(ZLjava/lang/Object;)V

    .line 3
    iget-boolean v1, p0, Le/c/a/a/g/h;->d:Z

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Le/c/a/a/g/h;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Le/c/a/a/g/h;->e:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    .line 6
    :cond_0
    new-instance v1, Le/c/a/a/g/a;

    iget-object v2, p0, Le/c/a/a/g/h;->f:Ljava/lang/Exception;

    invoke-direct {v1, v2}, Le/c/a/a/g/a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 7
    :cond_1
    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Task is already canceled."

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :catchall_0
    move-exception v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "Exception must not be null"

    .line 16
    invoke-static {p1, v0}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Le/c/a/a/g/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 18
    :try_start_0
    iget-boolean v1, p0, Le/c/a/a/g/h;->c:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Task is already complete"

    invoke-static {v1, v3}, Ld/b/a/r;->a(ZLjava/lang/Object;)V

    .line 19
    iput-boolean v2, p0, Le/c/a/a/g/h;->c:Z

    .line 20
    iput-object p1, p0, Le/c/a/a/g/h;->f:Ljava/lang/Exception;

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object p1, p0, Le/c/a/a/g/h;->b:Le/c/a/a/g/g;

    invoke-virtual {p1, p0}, Le/c/a/a/g/g;->a(Le/c/a/a/g/h;)V

    return-void

    :catchall_0
    move-exception p1

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Le/c/a/a/g/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-boolean v1, p0, Le/c/a/a/g/h;->c:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Task is already complete"

    invoke-static {v1, v3}, Ld/b/a/r;->a(ZLjava/lang/Object;)V

    .line 11
    iput-boolean v2, p0, Le/c/a/a/g/h;->c:Z

    .line 12
    iput-object p1, p0, Le/c/a/a/g/h;->e:Ljava/lang/Object;

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object p1, p0, Le/c/a/a/g/h;->b:Le/c/a/a/g/g;

    invoke-virtual {p1, p0}, Le/c/a/a/g/g;->a(Le/c/a/a/g/h;)V

    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()Z
    .locals 2

    .line 18
    iget-object v0, p0, Le/c/a/a/g/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 19
    :try_start_0
    iget-boolean v1, p0, Le/c/a/a/g/h;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 20
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Le/c/a/a/g/h;->c:Z

    .line 22
    iput-boolean v1, p0, Le/c/a/a/g/h;->d:Z

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget-object v0, p0, Le/c/a/a/g/h;->b:Le/c/a/a/g/g;

    invoke-virtual {v0, p0}, Le/c/a/a/g/g;->a(Le/c/a/a/g/h;)V

    return v1

    :catchall_0
    move-exception v1

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final b(Ljava/lang/Exception;)Z
    .locals 2

    const-string v0, "Exception must not be null"

    .line 9
    invoke-static {p1, v0}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Le/c/a/a/g/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-boolean v1, p0, Le/c/a/a/g/h;->c:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 12
    monitor-exit v0

    return p1

    :cond_0
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Le/c/a/a/g/h;->c:Z

    .line 14
    iput-object p1, p0, Le/c/a/a/g/h;->f:Ljava/lang/Exception;

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object p1, p0, Le/c/a/a/g/h;->b:Le/c/a/a/g/g;

    invoke-virtual {p1, p0}, Le/c/a/a/g/g;->a(Le/c/a/a/g/h;)V

    return v1

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/c/a/a/g/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Le/c/a/a/g/h;->c:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 3
    monitor-exit v0

    return p1

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Le/c/a/a/g/h;->c:Z

    .line 5
    iput-object p1, p0, Le/c/a/a/g/h;->e:Ljava/lang/Object;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Le/c/a/a/g/h;->b:Le/c/a/a/g/g;

    invoke-virtual {p1, p0}, Le/c/a/a/g/g;->a(Le/c/a/a/g/h;)V

    return v1

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/c/a/a/g/h;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Le/c/a/a/g/h;->c:Z

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Le/c/a/a/g/h;->b:Le/c/a/a/g/g;

    invoke-virtual {v0, p0}, Le/c/a/a/g/g;->a(Le/c/a/a/g/h;)V

    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
