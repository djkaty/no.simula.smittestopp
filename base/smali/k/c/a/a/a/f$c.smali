.class public Lk/c/a/a/a/f$c;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/c/a/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic x:Lk/c/a/a/a/f;


# direct methods
.method public synthetic constructor <init>(Lk/c/a/a/a/f;Lk/c/a/a/a/f$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/c/a/a/a/f$c;->x:Lk/c/a/a/a/f;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/f$c;->x:Lk/c/a/a/a/f;

    .line 2
    iget-object v0, v0, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    .line 3
    sget-object v1, Lk/c/a/a/a/f;->I:Ljava/lang/String;

    const-string v2, "ReconnectTask.run"

    const-string v3, "506"

    .line 4
    invoke-interface {v0, v1, v2, v3}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lk/c/a/a/a/f$c;->x:Lk/c/a/a/a/f;

    .line 6
    iget-object v1, v0, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    sget-object v2, Lk/c/a/a/a/f;->I:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lk/c/a/a/a/f;->y:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "attemptReconnect"

    const-string v5, "500"

    invoke-interface {v1, v2, v4, v5, v3}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :try_start_0
    iget-object v1, v0, Lk/c/a/a/a/f;->D:Lk/c/a/a/a/i;

    iget-object v2, v0, Lk/c/a/a/a/f;->E:Ljava/lang/Object;

    new-instance v3, Lk/c/a/a/a/f$a;

    invoke-direct {v3, v0, v4}, Lk/c/a/a/a/f$a;-><init>(Lk/c/a/a/a/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lk/c/a/a/a/f;->a(Lk/c/a/a/a/i;Ljava/lang/Object;Lk/c/a/a/a/a;)Lk/c/a/a/a/e;
    :try_end_0
    .catch Lk/c/a/a/a/p; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lk/c/a/a/a/k; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v7, v1

    .line 8
    iget-object v2, v0, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    sget-object v3, Lk/c/a/a/a/f;->I:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v4, "attemptReconnect"

    const-string v5, "804"

    invoke-interface/range {v2 .. v7}, Lk/c/a/a/a/t/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v7, v1

    .line 9
    iget-object v2, v0, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    sget-object v3, Lk/c/a/a/a/f;->I:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v4, "attemptReconnect"

    const-string v5, "804"

    invoke-interface/range {v2 .. v7}, Lk/c/a/a/a/t/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
