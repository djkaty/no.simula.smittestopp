.class public Lk/c/a/a/a/r$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/c/a/a/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic x:Lk/c/a/a/a/r;


# direct methods
.method public synthetic constructor <init>(Lk/c/a/a/a/r;Lk/c/a/a/a/r$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/c/a/a/a/r$a;->x:Lk/c/a/a/a/r;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/r$a;->x:Lk/c/a/a/a/r;

    .line 2
    iget-object v0, v0, Lk/c/a/a/a/r;->a:Lk/c/a/a/a/t/b;

    const-string v1, "k.c.a.a.a.r"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "PingTask.run"

    const-string v4, "660"

    invoke-interface {v0, v1, v3, v4, v2}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lk/c/a/a/a/r$a;->x:Lk/c/a/a/a/r;

    .line 5
    iget-object v0, v0, Lk/c/a/a/a/r;->b:Lk/c/a/a/a/s/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    iget-object v2, v0, Lk/c/a/a/a/s/a;->i:Lk/c/a/a/a/s/b;

    invoke-virtual {v2, v1}, Lk/c/a/a/a/s/b;->a(Lk/c/a/a/a/a;)Lk/c/a/a/a/q;
    :try_end_0
    .catch Lk/c/a/a/a/k; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    invoke-virtual {v0, v1}, Lk/c/a/a/a/s/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 8
    invoke-virtual {v0, v1}, Lk/c/a/a/a/s/a;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void

    .line 9
    :cond_0
    throw v1
.end method
