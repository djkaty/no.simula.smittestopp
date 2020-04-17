.class public Lk/c/a/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/c/a/a/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/c/a/a/a/f$a;,
        Lk/c/a/a/a/f$b;,
        Lk/c/a/a/a/f$c;
    }
.end annotation


# static fields
.field public static final I:Ljava/lang/String;

.field public static J:I

.field public static final K:Ljava/lang/Object;


# instance fields
.field public A:Lk/c/a/a/a/s/a;

.field public B:Lk/c/a/a/a/u/a;

.field public C:Lk/c/a/a/a/g;

.field public D:Lk/c/a/a/a/i;

.field public E:Ljava/lang/Object;

.field public F:Ljava/util/Timer;

.field public G:Z

.field public H:Ljava/util/concurrent/ScheduledExecutorService;

.field public x:Lk/c/a/a/a/t/b;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lk/c/a/a/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk/c/a/a/a/f;->I:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 2
    sput v0, Lk/c/a/a/a/f;->J:I

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lk/c/a/a/a/f;->K:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lk/c/a/a/a/u/a;)V
    .locals 7

    .line 1
    new-instance v0, Lk/c/a/a/a/r;

    invoke-direct {v0}, Lk/c/a/a/a/r;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v1, Lk/c/a/a/a/f;->I:Ljava/lang/String;

    const-string v2, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    invoke-static {v2, v1}, Lk/c/a/a/a/t/c;->a(Ljava/lang/String;Ljava/lang/String;)Lk/c/a/a/a/t/b;

    move-result-object v1

    iput-object v1, p0, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, p0, Lk/c/a/a/a/f;->G:Z

    .line 5
    invoke-interface {v1, p2}, Lk/c/a/a/a/t/b;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_5

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 6
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-lt v1, v4, :cond_2

    const v1, 0xffff

    if-gt v3, v1, :cond_1

    .line 7
    invoke-static {p1}, Lk/c/a/a/a/s/j;->a(Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lk/c/a/a/a/f;->z:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lk/c/a/a/a/f;->y:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lk/c/a/a/a/f;->B:Lk/c/a/a/a/u/a;

    if-nez p3, :cond_0

    .line 11
    new-instance v1, Lk/c/a/a/a/u/a;

    invoke-direct {v1}, Lk/c/a/a/a/u/a;-><init>()V

    iput-object v1, p0, Lk/c/a/a/a/f;->B:Lk/c/a/a/a/u/a;

    :cond_0
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lk/c/a/a/a/f;->H:Ljava/util/concurrent/ScheduledExecutorService;

    .line 13
    iget-object v1, p0, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    sget-object v3, Lk/c/a/a/a/f;->I:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v2

    aput-object p1, v4, v5

    const/4 p1, 0x2

    aput-object p3, v4, p1

    const-string p1, "MqttAsyncClient"

    const-string p2, "101"

    invoke-interface {v1, v3, p1, p2, v4}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object p1, p0, Lk/c/a/a/a/f;->B:Lk/c/a/a/a/u/a;

    invoke-virtual {p1}, Lk/c/a/a/a/u/a;->b()V

    .line 15
    new-instance p1, Lk/c/a/a/a/s/a;

    iget-object p2, p0, Lk/c/a/a/a/f;->B:Lk/c/a/a/a/u/a;

    iget-object p3, p0, Lk/c/a/a/a/f;->H:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p1, p0, p2, v0, p3}, Lk/c/a/a/a/s/a;-><init>(Lk/c/a/a/a/b;Lk/c/a/a/a/u/a;Lk/c/a/a/a/o;Ljava/util/concurrent/ExecutorService;)V

    iput-object p1, p0, Lk/c/a/a/a/f;->A:Lk/c/a/a/a/s/a;

    .line 16
    iget-object p1, p0, Lk/c/a/a/a/f;->B:Lk/c/a/a/a/u/a;

    invoke-virtual {p1}, Lk/c/a/a/a/u/a;->close()V

    .line 17
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    return-void

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ClientId longer than 65535 characters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v6, 0xd800

    if-lt v4, v6, :cond_3

    const v6, 0xdbff

    if-gt v4, v6, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v5

    goto :goto_0

    .line 20
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null clientId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(Lk/c/a/a/a/f;)V
    .locals 5

    .line 143
    iget-object v0, p0, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    sget-object v1, Lk/c/a/a/a/f;->I:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lk/c/a/a/a/f;->y:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget v3, Lk/c/a/a/a/f;->J:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "startReconnectCycle"

    const-string v4, "503"

    invoke-interface {v0, v1, v3, v4, v2}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    new-instance v0, Ljava/util/Timer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MQTT Reconnect: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lk/c/a/a/a/f;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lk/c/a/a/a/f;->F:Ljava/util/Timer;

    .line 145
    new-instance v1, Lk/c/a/a/a/f$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lk/c/a/a/a/f$c;-><init>(Lk/c/a/a/a/f;Lk/c/a/a/a/f$c;)V

    sget p0, Lk/c/a/a/a/f;->J:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lk/c/a/a/a/l;)Lk/c/a/a/a/c;
    .locals 8

    .line 131
    iget-object v0, p0, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    sget-object v1, Lk/c/a/a/a/f;->I:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v2, v4

    const/4 v6, 0x2

    aput-object v5, v2, v6

    const-string v6, "publish"

    const-string v7, "111"

    invoke-interface {v0, v1, v6, v7, v2}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    invoke-static {p1, v3}, Lk/b/c/e/a;->a(Ljava/lang/String;Z)V

    .line 133
    new-instance v0, Lk/c/a/a/a/j;

    .line 134
    iget-object v1, p0, Lk/c/a/a/a/f;->y:Ljava/lang/String;

    .line 135
    invoke-direct {v0, v1}, Lk/c/a/a/a/j;-><init>(Ljava/lang/String;)V

    .line 136
    iget-object v1, v0, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    .line 137
    iput-object v5, v1, Lk/c/a/a/a/s/p;->l:Lk/c/a/a/a/a;

    .line 138
    iput-object v5, v1, Lk/c/a/a/a/s/p;->m:Ljava/lang/Object;

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v3

    .line 139
    invoke-virtual {v1, v2}, Lk/c/a/a/a/s/p;->a([Ljava/lang/String;)V

    .line 140
    new-instance v1, Lk/c/a/a/a/s/s/o;

    invoke-direct {v1, p1, p2}, Lk/c/a/a/a/s/s/o;-><init>(Ljava/lang/String;Lk/c/a/a/a/l;)V

    .line 141
    iget-object p1, p0, Lk/c/a/a/a/f;->A:Lk/c/a/a/a/s/a;

    invoke-virtual {p1, v1, v0}, Lk/c/a/a/a/s/a;->b(Lk/c/a/a/a/s/s/u;Lk/c/a/a/a/q;)V

    .line 142
    iget-object p1, p0, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    sget-object p2, Lk/c/a/a/a/f;->I:Ljava/lang/String;

    const-string v1, "112"

    invoke-interface {p1, p2, v6, v1}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a()Lk/c/a/a/a/e;
    .locals 8

    .line 55
    iget-object v0, p0, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    sget-object v1, Lk/c/a/a/a/f;->I:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-wide/16 v3, 0x7530

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v2, v5

    const/4 v5, 0x2

    aput-object v6, v2, v5

    const-string v5, "disconnect"

    const-string v7, "104"

    invoke-interface {v0, v1, v5, v7, v2}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    new-instance v0, Lk/c/a/a/a/q;

    .line 57
    iget-object v1, p0, Lk/c/a/a/a/f;->y:Ljava/lang/String;

    .line 58
    invoke-direct {v0, v1}, Lk/c/a/a/a/q;-><init>(Ljava/lang/String;)V

    .line 59
    iget-object v1, v0, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    .line 60
    iput-object v6, v1, Lk/c/a/a/a/s/p;->l:Lk/c/a/a/a/a;

    .line 61
    iput-object v6, v1, Lk/c/a/a/a/s/p;->m:Ljava/lang/Object;

    .line 62
    new-instance v1, Lk/c/a/a/a/s/s/e;

    invoke-direct {v1}, Lk/c/a/a/a/s/s/e;-><init>()V

    .line 63
    :try_start_0
    iget-object v2, p0, Lk/c/a/a/a/f;->A:Lk/c/a/a/a/s/a;

    invoke-virtual {v2, v1, v3, v4, v0}, Lk/c/a/a/a/s/a;->a(Lk/c/a/a/a/s/s/e;JLk/c/a/a/a/q;)V
    :try_end_0
    .catch Lk/c/a/a/a/k; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    iget-object v1, p0, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    sget-object v2, Lk/c/a/a/a/f;->I:Ljava/lang/String;

    const-string v3, "108"

    invoke-interface {v1, v2, v5, v3}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v0

    .line 65
    iget-object v1, p0, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    sget-object v2, Lk/c/a/a/a/f;->I:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "disconnect"

    const-string v4, "105"

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lk/c/a/a/a/t/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 66
    throw v0
.end method

.method public a(Ljava/lang/String;)Lk/c/a/a/a/e;
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 87
    iget-object p1, p0, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Lk/c/a/a/a/t/b;->a(I)Z

    move-result p1

    const-string v3, "unsubscribe"

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    const-string p1, ""

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v0, :cond_0

    .line 88
    iget-object v5, p0, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    sget-object v6, Lk/c/a/a/a/f;->I:Ljava/lang/String;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v2

    aput-object v4, v7, v0

    const/4 p1, 0x2

    aput-object v4, v7, p1

    const-string p1, "107"

    invoke-interface {v5, v6, v3, p1, v7}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-lez v5, :cond_1

    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ", "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 90
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p1, v1, v5

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-lt p1, v0, :cond_4

    :goto_3
    if-lt v2, v0, :cond_3

    .line 91
    new-instance p1, Lk/c/a/a/a/q;

    .line 92
    iget-object v0, p0, Lk/c/a/a/a/f;->y:Ljava/lang/String;

    .line 93
    invoke-direct {p1, v0}, Lk/c/a/a/a/q;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v0, p1, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    .line 95
    iput-object v4, v0, Lk/c/a/a/a/s/p;->l:Lk/c/a/a/a/a;

    .line 96
    iput-object v4, v0, Lk/c/a/a/a/s/p;->m:Ljava/lang/Object;

    .line 97
    invoke-virtual {v0, v1}, Lk/c/a/a/a/s/p;->a([Ljava/lang/String;)V

    .line 98
    new-instance v0, Lk/c/a/a/a/s/s/t;

    invoke-direct {v0, v1}, Lk/c/a/a/a/s/s/t;-><init>([Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lk/c/a/a/a/f;->A:Lk/c/a/a/a/s/a;

    invoke-virtual {v1, v0, p1}, Lk/c/a/a/a/s/a;->b(Lk/c/a/a/a/s/s/u;Lk/c/a/a/a/q;)V

    .line 100
    iget-object v0, p0, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    sget-object v1, Lk/c/a/a/a/f;->I:Ljava/lang/String;

    const-string v2, "110"

    invoke-interface {v0, v1, v3, v2}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 101
    :cond_3
    aget-object p1, v1, v2

    .line 102
    iget-object v5, p0, Lk/c/a/a/a/f;->A:Lk/c/a/a/a/s/a;

    .line 103
    iget-object v5, v5, Lk/c/a/a/a/s/a;->h:Lk/c/a/a/a/s/c;

    .line 104
    iget-object v5, v5, Lk/c/a/a/a/s/c;->A:Ljava/util/Hashtable;

    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 105
    :cond_4
    aget-object v5, v1, p1

    .line 106
    invoke-static {v5, v0}, Lk/b/c/e/a;->a(Ljava/lang/String;Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2
.end method

.method public a(Ljava/lang/String;I)Lk/c/a/a/a/e;
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [I

    aput p2, p1, v2

    const/4 p2, 0x0

    :goto_0
    if-lt p2, v0, :cond_3

    .line 67
    iget-object p2, p0, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    const/4 v3, 0x5

    invoke-interface {p2, v3}, Lk/c/a/a/a/t/b;->a(I)Z

    move-result p2

    const-string v3, "subscribe"

    const/4 v4, 0x0

    if-eqz p2, :cond_2

    .line 68
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v0, :cond_0

    .line 69
    iget-object v5, p0, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    sget-object v6, Lk/c/a/a/a/f;->I:Ljava/lang/String;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v7, v2

    aput-object v4, v7, v0

    const/4 p2, 0x2

    aput-object v4, v7, p2

    const-string p2, "106"

    invoke-interface {v5, v6, v3, p2, v7}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    if-lez v5, :cond_1

    const-string v6, ", "

    .line 70
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v6, "topic="

    .line 71
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v6, v1, v5

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " qos="

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget v6, p1, v5

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 72
    :cond_2
    :goto_2
    new-instance p2, Lk/c/a/a/a/q;

    .line 73
    iget-object v0, p0, Lk/c/a/a/a/f;->y:Ljava/lang/String;

    .line 74
    invoke-direct {p2, v0}, Lk/c/a/a/a/q;-><init>(Ljava/lang/String;)V

    .line 75
    iget-object v0, p2, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    .line 76
    iput-object v4, v0, Lk/c/a/a/a/s/p;->l:Lk/c/a/a/a/a;

    .line 77
    iput-object v4, v0, Lk/c/a/a/a/s/p;->m:Ljava/lang/Object;

    .line 78
    invoke-virtual {v0, v1}, Lk/c/a/a/a/s/p;->a([Ljava/lang/String;)V

    .line 79
    new-instance v0, Lk/c/a/a/a/s/s/r;

    invoke-direct {v0, v1, p1}, Lk/c/a/a/a/s/s/r;-><init>([Ljava/lang/String;[I)V

    .line 80
    iget-object p1, p0, Lk/c/a/a/a/f;->A:Lk/c/a/a/a/s/a;

    invoke-virtual {p1, v0, p2}, Lk/c/a/a/a/s/a;->b(Lk/c/a/a/a/s/s/u;Lk/c/a/a/a/q;)V

    .line 81
    iget-object p1, p0, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    sget-object v0, Lk/c/a/a/a/f;->I:Ljava/lang/String;

    const-string v1, "109"

    invoke-interface {p1, v0, v3, v1}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 82
    :cond_3
    aget-object v3, v1, p2

    .line 83
    invoke-static {v3, v0}, Lk/b/c/e/a;->a(Ljava/lang/String;Z)V

    .line 84
    iget-object v4, p0, Lk/c/a/a/a/f;->A:Lk/c/a/a/a/s/a;

    .line 85
    iget-object v4, v4, Lk/c/a/a/a/s/a;->h:Lk/c/a/a/a/s/c;

    .line 86
    iget-object v4, v4, Lk/c/a/a/a/s/c;->A:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0
.end method

.method public a(Lk/c/a/a/a/i;Ljava/lang/Object;Lk/c/a/a/a/a;)Lk/c/a/a/a/e;
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v6, p2

    .line 1
    iget-object v0, v9, Lk/c/a/a/a/f;->A:Lk/c/a/a/a/s/a;

    invoke-virtual {v0}, Lk/c/a/a/a/s/a;->b()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    iget-object v0, v9, Lk/c/a/a/a/f;->A:Lk/c/a/a/a/s/a;

    invoke-virtual {v0}, Lk/c/a/a/a/s/a;->c()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3
    iget-object v0, v9, Lk/c/a/a/a/f;->A:Lk/c/a/a/a/s/a;

    invoke-virtual {v0}, Lk/c/a/a/a/s/a;->e()Z

    move-result v0

    if-nez v0, :cond_9

    .line 4
    iget-object v0, v9, Lk/c/a/a/a/f;->A:Lk/c/a/a/a/s/a;

    invoke-virtual {v0}, Lk/c/a/a/a/s/a;->a()Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p1, :cond_0

    .line 5
    new-instance v0, Lk/c/a/a/a/i;

    invoke-direct {v0}, Lk/c/a/a/a/i;-><init>()V

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    .line 6
    :goto_0
    iput-object v4, v9, Lk/c/a/a/a/f;->D:Lk/c/a/a/a/i;

    .line 7
    iput-object v6, v9, Lk/c/a/a/a/f;->E:Ljava/lang/Object;

    .line 8
    iget-boolean v0, v4, Lk/c/a/a/a/i;->o:Z

    .line 9
    iget-object v1, v9, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    sget-object v2, Lk/c/a/a/a/f;->I:Ljava/lang/String;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    .line 10
    iget-boolean v5, v4, Lk/c/a/a/a/i;->k:Z

    .line 11
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v10, 0x0

    aput-object v5, v3, v10

    .line 12
    iget v5, v4, Lk/c/a/a/a/i;->l:I

    .line 13
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v3, v7

    const/4 v5, 0x2

    .line 14
    iget v8, v4, Lk/c/a/a/a/i;->a:I

    .line 15
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v5

    const/4 v5, 0x3

    .line 16
    iget-object v8, v4, Lk/c/a/a/a/i;->e:Ljava/lang/String;

    aput-object v8, v3, v5

    const/4 v5, 0x4

    .line 17
    iget-object v8, v4, Lk/c/a/a/a/i;->f:[C

    const-string v11, "[null]"

    const-string v12, "[notnull]"

    if-nez v8, :cond_1

    move-object v8, v11

    goto :goto_1

    :cond_1
    move-object v8, v12

    :goto_1
    aput-object v8, v3, v5

    const/4 v5, 0x5

    .line 18
    iget-object v8, v4, Lk/c/a/a/a/i;->d:Lk/c/a/a/a/l;

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    move-object v11, v12

    :goto_2
    aput-object v11, v3, v5

    const/4 v5, 0x6

    aput-object v6, v3, v5

    const/4 v5, 0x7

    aput-object p3, v3, v5

    const-string v5, "connect"

    const-string v8, "103"

    .line 19
    invoke-interface {v1, v2, v5, v8, v3}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object v1, v9, Lk/c/a/a/a/f;->A:Lk/c/a/a/a/s/a;

    iget-object v2, v9, Lk/c/a/a/a/f;->z:Ljava/lang/String;

    .line 21
    iget-object v3, v9, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    sget-object v5, Lk/c/a/a/a/f;->I:Ljava/lang/String;

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v2, v8, v10

    const-string v11, "createNetworkModules"

    const-string v12, "116"

    invoke-interface {v3, v5, v11, v12, v8}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    iget-object v3, v4, Lk/c/a/a/a/i;->m:[Ljava/lang/String;

    if-nez v3, :cond_3

    new-array v3, v7, [Ljava/lang/String;

    aput-object v2, v3, v10

    goto :goto_3

    .line 23
    :cond_3
    array-length v5, v3

    if-nez v5, :cond_4

    new-array v3, v7, [Ljava/lang/String;

    aput-object v2, v3, v10

    .line 24
    :cond_4
    :goto_3
    array-length v2, v3

    new-array v2, v2, [Lk/c/a/a/a/s/i;

    const/4 v5, 0x0

    .line 25
    :goto_4
    array-length v8, v3

    if-lt v5, v8, :cond_7

    .line 26
    iget-object v3, v9, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    sget-object v5, Lk/c/a/a/a/f;->I:Ljava/lang/String;

    const-string v7, "108"

    invoke-interface {v3, v5, v11, v7}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    .line 27
    invoke-virtual {v2}, [Lk/c/a/a/a/s/i;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lk/c/a/a/a/s/i;

    iput-object v2, v1, Lk/c/a/a/a/s/a;->e:[Lk/c/a/a/a/s/i;

    .line 28
    iget-object v1, v9, Lk/c/a/a/a/f;->A:Lk/c/a/a/a/s/a;

    new-instance v2, Lk/c/a/a/a/f$b;

    invoke-direct {v2, v9, v0}, Lk/c/a/a/a/f$b;-><init>(Lk/c/a/a/a/f;Z)V

    .line 29
    iget-object v0, v1, Lk/c/a/a/a/s/a;->h:Lk/c/a/a/a/s/c;

    .line 30
    iput-object v2, v0, Lk/c/a/a/a/s/c;->z:Lk/c/a/a/a/h;

    .line 31
    new-instance v11, Lk/c/a/a/a/q;

    .line 32
    iget-object v0, v9, Lk/c/a/a/a/f;->y:Ljava/lang/String;

    .line 33
    invoke-direct {v11, v0}, Lk/c/a/a/a/q;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v12, Lk/c/a/a/a/s/g;

    iget-object v2, v9, Lk/c/a/a/a/f;->B:Lk/c/a/a/a/u/a;

    iget-object v3, v9, Lk/c/a/a/a/f;->A:Lk/c/a/a/a/s/a;

    .line 35
    iget-boolean v8, v9, Lk/c/a/a/a/f;->G:Z

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v5, v11

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 36
    invoke-direct/range {v0 .. v8}, Lk/c/a/a/a/s/g;-><init>(Lk/c/a/a/a/f;Lk/c/a/a/a/u/a;Lk/c/a/a/a/s/a;Lk/c/a/a/a/i;Lk/c/a/a/a/q;Ljava/lang/Object;Lk/c/a/a/a/a;Z)V

    .line 37
    iget-object v0, v11, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    .line 38
    iput-object v12, v0, Lk/c/a/a/a/s/p;->l:Lk/c/a/a/a/a;

    .line 39
    iput-object v9, v0, Lk/c/a/a/a/s/p;->m:Ljava/lang/Object;

    .line 40
    iget-object v0, v9, Lk/c/a/a/a/f;->C:Lk/c/a/a/a/g;

    instance-of v1, v0, Lk/c/a/a/a/h;

    if-eqz v1, :cond_5

    .line 41
    check-cast v0, Lk/c/a/a/a/h;

    .line 42
    iput-object v0, v12, Lk/c/a/a/a/s/g;->i:Lk/c/a/a/a/h;

    .line 43
    :cond_5
    iget-object v0, v9, Lk/c/a/a/a/f;->A:Lk/c/a/a/a/s/a;

    .line 44
    iput v10, v0, Lk/c/a/a/a/s/a;->d:I

    .line 45
    invoke-virtual {v12}, Lk/c/a/a/a/s/g;->a()V

    return-object v11

    :cond_6
    const/4 v0, 0x0

    .line 46
    throw v0

    .line 47
    :cond_7
    aget-object v8, v3, v5

    .line 48
    iget-object v12, v9, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    sget-object v13, Lk/c/a/a/a/f;->I:Ljava/lang/String;

    new-array v14, v7, [Ljava/lang/Object;

    aput-object v8, v14, v10

    const-string v15, "createNetworkModule"

    const-string v7, "115"

    invoke-interface {v12, v13, v15, v7, v14}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-object v7, v9, Lk/c/a/a/a/f;->y:Ljava/lang/String;

    invoke-static {v8, v4, v7}, Lk/c/a/a/a/s/j;->a(Ljava/lang/String;Lk/c/a/a/a/i;Ljava/lang/String;)Lk/c/a/a/a/s/i;

    move-result-object v7

    .line 50
    aput-object v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x1

    goto :goto_4

    .line 51
    :cond_8
    new-instance v0, Lk/c/a/a/a/k;

    const/16 v1, 0x7d6f

    invoke-direct {v0, v1}, Lk/c/a/a/a/k;-><init>(I)V

    throw v0

    .line 52
    :cond_9
    new-instance v0, Lk/c/a/a/a/k;

    const/16 v1, 0x7d66

    invoke-direct {v0, v1}, Lk/c/a/a/a/k;-><init>(I)V

    throw v0

    .line 53
    :cond_a
    new-instance v0, Lk/c/a/a/a/k;

    const/16 v1, 0x7d6e

    invoke-direct {v0, v1}, Lk/c/a/a/a/k;-><init>(I)V

    throw v0

    :cond_b
    const/16 v0, 0x7d64

    .line 54
    invoke-static {v0}, Lk/b/c/e/a;->a(I)Lk/c/a/a/a/k;

    move-result-object v0

    throw v0
.end method

.method public a(II)V
    .locals 6

    .line 107
    iget-object v0, p0, Lk/c/a/a/a/f;->A:Lk/c/a/a/a/s/a;

    .line 108
    iget-object v0, v0, Lk/c/a/a/a/s/a;->h:Lk/c/a/a/a/s/c;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 109
    iget-object p2, v0, Lk/c/a/a/a/s/c;->B:Lk/c/a/a/a/s/a;

    new-instance v1, Lk/c/a/a/a/s/s/k;

    invoke-direct {v1, p1}, Lk/c/a/a/a/s/s/k;-><init>(I)V

    .line 110
    new-instance p1, Lk/c/a/a/a/q;

    iget-object v0, v0, Lk/c/a/a/a/s/c;->B:Lk/c/a/a/a/s/a;

    .line 111
    iget-object v0, v0, Lk/c/a/a/a/s/a;->c:Lk/c/a/a/a/b;

    .line 112
    check-cast v0, Lk/c/a/a/a/f;

    .line 113
    iget-object v0, v0, Lk/c/a/a/a/f;->y:Ljava/lang/String;

    .line 114
    invoke-direct {p1, v0}, Lk/c/a/a/a/q;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2, v1, p1}, Lk/c/a/a/a/s/a;->a(Lk/c/a/a/a/s/s/u;Lk/c/a/a/a/q;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 116
    iget-object p2, v0, Lk/c/a/a/a/s/c;->B:Lk/c/a/a/a/s/a;

    .line 117
    iget-object p2, p2, Lk/c/a/a/a/s/a;->i:Lk/c/a/a/a/s/b;

    .line 118
    iget-object v2, p2, Lk/c/a/a/a/s/b;->a:Lk/c/a/a/a/t/b;

    const-string v3, "k.c.a.a.a.s.b"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    const-string v4, "deliveryComplete"

    const-string v5, "641"

    invoke-interface {v2, v3, v4, v5, v1}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-object v1, p2, Lk/c/a/a/a/s/b;->k:Lk/c/a/a/a/u/a;

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "r-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v1, v2}, Lk/c/a/a/a/u/a;->a(Ljava/lang/String;)V

    .line 122
    iget-object p2, p2, Lk/c/a/a/a/s/b;->B:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance p2, Lk/c/a/a/a/s/s/l;

    invoke-direct {p2, p1}, Lk/c/a/a/a/s/s/l;-><init>(I)V

    .line 124
    iget-object p1, v0, Lk/c/a/a/a/s/c;->B:Lk/c/a/a/a/s/a;

    new-instance v0, Lk/c/a/a/a/q;

    .line 125
    iget-object v1, p1, Lk/c/a/a/a/s/a;->c:Lk/c/a/a/a/b;

    .line 126
    check-cast v1, Lk/c/a/a/a/f;

    .line 127
    iget-object v1, v1, Lk/c/a/a/a/f;->y:Ljava/lang/String;

    .line 128
    invoke-direct {v0, v1}, Lk/c/a/a/a/q;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1, p2, v0}, Lk/c/a/a/a/s/a;->a(Lk/c/a/a/a/s/s/u;Lk/c/a/a/a/q;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 130
    throw p1
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/f;->A:Lk/c/a/a/a/s/a;

    invoke-virtual {v0}, Lk/c/a/a/a/s/a;->b()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    sget-object v1, Lk/c/a/a/a/f;->I:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lk/c/a/a/a/f;->y:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "stopReconnectCycle"

    const-string v4, "504"

    invoke-interface {v0, v1, v3, v4, v2}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lk/c/a/a/a/f;->K:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lk/c/a/a/a/f;->D:Lk/c/a/a/a/i;

    .line 4
    iget-boolean v1, v1, Lk/c/a/a/a/i;->o:Z

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lk/c/a/a/a/f;->F:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lk/c/a/a/a/f;->F:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lk/c/a/a/a/f;->F:Ljava/util/Timer;

    :cond_0
    const/16 v1, 0x3e8

    .line 8
    sput v1, Lk/c/a/a/a/f;->J:I

    .line 9
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    sget-object v1, Lk/c/a/a/a/f;->I:Ljava/lang/String;

    const-string v2, "close"

    const-string v3, "113"

    invoke-interface {v0, v1, v2, v3}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lk/c/a/a/a/f;->A:Lk/c/a/a/a/s/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lk/c/a/a/a/s/a;->a(Z)V

    .line 3
    iget-object v0, p0, Lk/c/a/a/a/f;->x:Lk/c/a/a/a/t/b;

    sget-object v1, Lk/c/a/a/a/f;->I:Ljava/lang/String;

    const-string v3, "114"

    invoke-interface {v0, v1, v2, v3}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
