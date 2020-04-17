.class public final Le/c/a/a/g/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic x:Le/c/a/a/g/h;

.field public final synthetic y:Le/c/a/a/g/d;


# direct methods
.method public constructor <init>(Le/c/a/a/g/d;Le/c/a/a/g/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/c/a/a/g/e;->y:Le/c/a/a/g/d;

    iput-object p2, p0, Le/c/a/a/g/e;->x:Le/c/a/a/g/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/c/a/a/g/e;->x:Le/c/a/a/g/h;

    .line 2
    iget-boolean v0, v0, Le/c/a/a/g/h;->d:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/c/a/a/g/e;->y:Le/c/a/a/g/d;

    .line 4
    iget-object v0, v0, Le/c/a/a/g/d;->c:Le/c/a/a/g/h;

    .line 5
    invoke-virtual {v0}, Le/c/a/a/g/h;->b()Z

    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Le/c/a/a/g/e;->y:Le/c/a/a/g/d;

    .line 7
    iget-object v0, v0, Le/c/a/a/g/d;->b:Le/c/a/a/b/i/k/b0;

    .line 8
    iget-object v1, p0, Le/c/a/a/g/e;->x:Le/c/a/a/g/h;

    invoke-virtual {v0, v1}, Le/c/a/a/b/i/k/b0;->a(Le/c/a/a/g/h;)Ljava/lang/Object;
    :try_end_0
    .catch Le/c/a/a/g/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 9
    iget-object v1, p0, Le/c/a/a/g/e;->y:Le/c/a/a/g/d;

    .line 10
    iget-object v1, v1, Le/c/a/a/g/d;->c:Le/c/a/a/g/h;

    .line 11
    invoke-virtual {v1, v0}, Le/c/a/a/g/h;->a(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    .line 12
    iget-object v1, p0, Le/c/a/a/g/e;->y:Le/c/a/a/g/d;

    .line 13
    iget-object v1, v1, Le/c/a/a/g/d;->c:Le/c/a/a/g/h;

    .line 14
    invoke-virtual {v1, v0}, Le/c/a/a/g/h;->a(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 16
    iget-object v1, p0, Le/c/a/a/g/e;->y:Le/c/a/a/g/d;

    .line 17
    iget-object v1, v1, Le/c/a/a/g/d;->c:Le/c/a/a/g/h;

    .line 18
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Le/c/a/a/g/h;->a(Ljava/lang/Exception;)V

    return-void

    .line 19
    :cond_1
    iget-object v1, p0, Le/c/a/a/g/e;->y:Le/c/a/a/g/d;

    .line 20
    iget-object v1, v1, Le/c/a/a/g/d;->c:Le/c/a/a/g/h;

    .line 21
    invoke-virtual {v1, v0}, Le/c/a/a/g/h;->a(Ljava/lang/Exception;)V

    return-void
.end method
