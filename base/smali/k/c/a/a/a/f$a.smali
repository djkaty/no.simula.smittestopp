.class public Lk/c/a/a/a/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/c/a/a/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/c/a/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final synthetic b:Lk/c/a/a/a/f;


# direct methods
.method public constructor <init>(Lk/c/a/a/a/f;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/c/a/a/a/f$a;->b:Lk/c/a/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lk/c/a/a/a/f$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/c/a/a/a/f$a;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":rescheduleReconnectCycle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lk/c/a/a/a/f$a;->b:Lk/c/a/a/a/f;

    .line 31
    iget-object v2, v1, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    .line 32
    sget-object v3, Lk/c/a/a/a/f;->I:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 33
    iget-object v1, v1, Lk/c/a/a/a/f;->y:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 34
    sget v1, Lk/c/a/a/a/f;->J:I

    .line 35
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const-string v1, "505"

    .line 36
    invoke-interface {v2, v3, v0, v1, v4}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    sget-object v0, Lk/c/a/a/a/f;->K:Ljava/lang/Object;

    .line 38
    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lk/c/a/a/a/f$a;->b:Lk/c/a/a/a/f;

    .line 40
    iget-object v1, v1, Lk/c/a/a/a/f;->D:Lk/c/a/a/a/i;

    .line 41
    iget-boolean v1, v1, Lk/c/a/a/a/i;->o:Z

    if-eqz v1, :cond_1

    .line 42
    iget-object v1, p0, Lk/c/a/a/a/f$a;->b:Lk/c/a/a/a/f;

    .line 43
    iget-object v1, v1, Lk/c/a/a/a/f;->F:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lk/c/a/a/a/f$a;->b:Lk/c/a/a/a/f;

    .line 45
    iget-object v1, v1, Lk/c/a/a/a/f;->F:Ljava/util/Timer;

    .line 46
    new-instance v2, Lk/c/a/a/a/f$c;

    iget-object v3, p0, Lk/c/a/a/a/f$a;->b:Lk/c/a/a/a/f;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lk/c/a/a/a/f$c;-><init>(Lk/c/a/a/a/f;Lk/c/a/a/a/f$c;)V

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 47
    :cond_0
    sput p1, Lk/c/a/a/a/f;->J:I

    .line 48
    iget-object p1, p0, Lk/c/a/a/a/f$a;->b:Lk/c/a/a/a/f;

    invoke-static {p1}, Lk/c/a/a/a/f;->a(Lk/c/a/a/a/f;)V

    .line 49
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lk/c/a/a/a/e;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/f$a;->b:Lk/c/a/a/a/f;

    .line 2
    iget-object v0, v0, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    .line 3
    sget-object v1, Lk/c/a/a/a/f;->I:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lk/c/a/a/a/f$a;->a:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    check-cast p1, Lk/c/a/a/a/q;

    .line 5
    iget-object p1, p1, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    .line 6
    iget-object p1, p1, Lk/c/a/a/a/s/p;->k:Lk/c/a/a/a/b;

    .line 7
    check-cast p1, Lk/c/a/a/a/f;

    .line 8
    iget-object p1, p1, Lk/c/a/a/a/f;->y:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "501"

    .line 9
    invoke-interface {v0, v1, v2, p1, v3}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lk/c/a/a/a/f$a;->b:Lk/c/a/a/a/f;

    iget-object v0, p1, Lk/c/a/a/a/f;->A:Lk/c/a/a/a/s/a;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p1}, Lk/c/a/a/a/f;->c()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 12
    throw p1
.end method

.method public a(Lk/c/a/a/a/e;Ljava/lang/Throwable;)V
    .locals 4

    .line 13
    iget-object p2, p0, Lk/c/a/a/a/f$a;->b:Lk/c/a/a/a/f;

    .line 14
    iget-object p2, p2, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    .line 15
    sget-object v0, Lk/c/a/a/a/f;->I:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Lk/c/a/a/a/f$a;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    check-cast p1, Lk/c/a/a/a/q;

    .line 17
    iget-object p1, p1, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    .line 18
    iget-object p1, p1, Lk/c/a/a/a/s/p;->k:Lk/c/a/a/a/b;

    .line 19
    check-cast p1, Lk/c/a/a/a/f;

    .line 20
    iget-object p1, p1, Lk/c/a/a/a/f;->y:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "502"

    .line 21
    invoke-interface {p2, v0, v1, p1, v2}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    sget p1, Lk/c/a/a/a/f;->J:I

    .line 23
    iget-object p2, p0, Lk/c/a/a/a/f$a;->b:Lk/c/a/a/a/f;

    .line 24
    iget-object p2, p2, Lk/c/a/a/a/f;->D:Lk/c/a/a/a/i;

    .line 25
    iget p2, p2, Lk/c/a/a/a/i;->p:I

    if-ge p1, p2, :cond_0

    mul-int/lit8 p1, p1, 0x2

    .line 26
    sput p1, Lk/c/a/a/a/f;->J:I

    .line 27
    :cond_0
    sget p1, Lk/c/a/a/a/f;->J:I

    .line 28
    invoke-virtual {p0, p1}, Lk/c/a/a/a/f$a;->a(I)V

    return-void
.end method
