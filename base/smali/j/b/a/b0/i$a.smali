.class public final Lj/b/a/b0/i$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/b/a/b0/i;-><init>(Landroid/app/Application;Lj/b/a/b0/h;Lj/a/a/a/a/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj/b/a/b0/i;


# direct methods
.method public constructor <init>(Lj/b/a/b0/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lj/b/a/b0/i$a;->a:Lj/b/a/b0/i;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/32 v1, 0x88b8

    const-string v3, "Thread.currentThread()"

    const-string v4, "Called from thread:  "

    const-string v5, "where"

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eq p1, v7, :cond_1

    if-eq p1, v6, :cond_0

    goto/16 :goto_2

    :cond_0
    new-array p1, v8, [Ljava/lang/Object;

    .line 3
    sget-object v6, Ll/a/a;->d:Ll/a/a$b;

    const-string v9, "MSG_RESTART"

    invoke-virtual {v6, v9, p1}, Ll/a/a$b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lj/b/a/b0/i$a;->a:Lj/b/a/b0/i;

    .line 5
    iget-boolean v6, v6, Lj/b/a/b0/i;->b:Z

    .line 6
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lj/b/a/b0/i$a;->a:Lj/b/a/b0/i;

    .line 7
    iget-object v6, v6, Lj/b/a/b0/i;->a:Lj/b/a/b0/g;

    .line 8
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v6, v8, [Ljava/lang/Object;

    .line 9
    sget-object v9, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v9, p1, v6}, Ll/a/a$b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lj/b/a/b0/i$a;->a:Lj/b/a/b0/i;

    .line 11
    iget-boolean p1, p1, Lj/b/a/b0/i;->b:Z

    if-eqz p1, :cond_6

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {v4, v3}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v8, [Ljava/lang/Object;

    .line 13
    sget-object v4, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v4, p1, v3}, Ll/a/a$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object p1, p0, Lj/b/a/b0/i$a;->a:Lj/b/a/b0/i;

    .line 15
    invoke-virtual {p1}, Lj/b/a/b0/i;->a()V

    .line 16
    iget-object p1, p0, Lj/b/a/b0/i$a;->a:Lj/b/a/b0/i;

    .line 17
    iget-object p1, p1, Lj/b/a/b0/i;->d:Lj/b/a/b0/i$a;

    invoke-virtual {p1, v7, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 18
    sget-object v1, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v1, p1}, Ll/a/a$b;->a(Ljava/lang/Throwable;)V

    .line 19
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "ScanScheduler::handleMsgRestart"

    .line 20
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/crashes/Crashes;->trackError(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/Iterable;)V

    goto/16 :goto_2

    :cond_1
    const-string p1, "MSG_TIMEOUT "

    .line 22
    invoke-static {p1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v7, p0, Lj/b/a/b0/i$a;->a:Lj/b/a/b0/i;

    .line 23
    iget-boolean v7, v7, Lj/b/a/b0/i;->b:Z

    .line 24
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v7, v8, [Ljava/lang/Object;

    .line 25
    sget-object v9, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v9, p1, v7}, Ll/a/a$b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :try_start_1
    iget-object p1, p0, Lj/b/a/b0/i$a;->a:Lj/b/a/b0/i;

    .line 27
    iget-boolean p1, p1, Lj/b/a/b0/i;->b:Z

    if-eqz p1, :cond_6

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {v4, v3}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v8, [Ljava/lang/Object;

    .line 29
    sget-object v4, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v4, p1, v3}, Ll/a/a$b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object p1, p0, Lj/b/a/b0/i$a;->a:Lj/b/a/b0/i;

    .line 31
    iget-object p1, p1, Lj/b/a/b0/i;->a:Lj/b/a/b0/g;

    if-eqz p1, :cond_4

    .line 32
    iget-object p1, p1, Lj/b/a/b0/g;->e:Lj/b/a/b0/j;

    if-eqz p1, :cond_3

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v9, p1, Lj/b/a/b0/j;->a:J

    sub-long/2addr v3, v9

    cmp-long p1, v3, v1

    if-gez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_4

    .line 34
    iget-object p1, p0, Lj/b/a/b0/i$a;->a:Lj/b/a/b0/i;

    .line 35
    iput-boolean v8, p1, Lj/b/a/b0/i;->c:Z

    goto :goto_1

    .line 36
    :cond_3
    throw v0

    .line 37
    :cond_4
    :goto_1
    iget-object p1, p0, Lj/b/a/b0/i$a;->a:Lj/b/a/b0/i;

    .line 38
    invoke-virtual {p1}, Lj/b/a/b0/i;->b()V

    .line 39
    iget-object p1, p0, Lj/b/a/b0/i$a;->a:Lj/b/a/b0/i;

    .line 40
    iget-boolean v1, p1, Lj/b/a/b0/i;->c:Z

    if-nez v1, :cond_5

    .line 41
    iget-object p1, p1, Lj/b/a/b0/i;->d:Lj/b/a/b0/i$a;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {p1, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 42
    :cond_5
    iget-object v1, p1, Lj/b/a/b0/i;->d:Lj/b/a/b0/i$a;

    const-wide/32 v2, 0x57e40

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 43
    iput-boolean v8, p1, Lj/b/a/b0/i;->c:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 44
    sget-object v1, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v1, p1}, Ll/a/a$b;->a(Ljava/lang/Throwable;)V

    .line 45
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "ScanScheduler::handleMsgTimeout"

    .line 46
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/crashes/Crashes;->trackError(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/Iterable;)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    const-string p1, "msg"

    .line 48
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0
.end method
