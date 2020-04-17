.class public Lk/c/a/a/a/s/r/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final E:Ljava/lang/String;


# instance fields
.field public final A:Ljava/lang/Object;

.field public B:Ljava/io/InputStream;

.field public C:Ljava/lang/Thread;

.field public D:Ljava/io/PipedOutputStream;

.field public x:Lk/c/a/a/a/t/b;

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lk/c/a/a/a/s/r/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk/c/a/a/a/s/r/h;->E:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/PipedInputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lk/c/a/a/a/s/r/h;->E:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    invoke-static {v1, v0}, Lk/c/a/a/a/t/c;->a(Ljava/lang/String;Ljava/lang/String;)Lk/c/a/a/a/t/b;

    move-result-object v0

    iput-object v0, p0, Lk/c/a/a/a/s/r/h;->x:Lk/c/a/a/a/t/b;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lk/c/a/a/a/s/r/h;->y:Z

    .line 4
    iput-boolean v0, p0, Lk/c/a/a/a/s/r/h;->z:Z

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lk/c/a/a/a/s/r/h;->A:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lk/c/a/a/a/s/r/h;->C:Ljava/lang/Thread;

    .line 7
    iput-object p1, p0, Lk/c/a/a/a/s/r/h;->B:Ljava/io/InputStream;

    .line 8
    new-instance p1, Ljava/io/PipedOutputStream;

    invoke-direct {p1}, Ljava/io/PipedOutputStream;-><init>()V

    iput-object p1, p0, Lk/c/a/a/a/s/r/h;->D:Ljava/io/PipedOutputStream;

    .line 9
    invoke-virtual {p2, p1}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lk/c/a/a/a/s/r/h;->z:Z

    .line 9
    iget-object v1, p0, Lk/c/a/a/a/s/r/h;->A:Ljava/lang/Object;

    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Lk/c/a/a/a/s/r/h;->x:Lk/c/a/a/a/t/b;

    sget-object v3, Lk/c/a/a/a/s/r/h;->E:Ljava/lang/String;

    const-string v4, "stop"

    const-string v5, "850"

    invoke-interface {v2, v3, v4, v5}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-boolean v2, p0, Lk/c/a/a/a/s/r/h;->y:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 12
    iput-boolean v3, p0, Lk/c/a/a/a/s/r/h;->y:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    iget-object v2, p0, Lk/c/a/a/a/s/r/h;->D:Ljava/io/PipedOutputStream;

    invoke-virtual {v2}, Ljava/io/PipedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 14
    :catch_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lk/c/a/a/a/s/r/h;->C:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lk/c/a/a/a/s/r/h;->C:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 16
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_1
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lk/c/a/a/a/s/r/h;->C:Ljava/lang/Thread;

    .line 18
    iget-object v0, p0, Lk/c/a/a/a/s/r/h;->x:Lk/c/a/a/a/t/b;

    sget-object v1, Lk/c/a/a/a/s/r/h;->E:Ljava/lang/String;

    const-string v2, "stop"

    const-string v3, "851"

    invoke-interface {v0, v1, v2, v3}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 19
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/s/r/h;->x:Lk/c/a/a/a/t/b;

    sget-object v1, Lk/c/a/a/a/s/r/h;->E:Ljava/lang/String;

    const-string v2, "start"

    const-string v3, "855"

    invoke-interface {v0, v1, v2, v3}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lk/c/a/a/a/s/r/h;->A:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lk/c/a/a/a/s/r/h;->y:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lk/c/a/a/a/s/r/h;->y:Z

    .line 5
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lk/c/a/a/a/s/r/h;->C:Ljava/lang/Thread;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 9

    .line 1
    :goto_0
    iget-boolean v0, p0, Lk/c/a/a/a/s/r/h;->y:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lk/c/a/a/a/s/r/h;->B:Ljava/io/InputStream;

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lk/c/a/a/a/s/r/h;->x:Lk/c/a/a/a/t/b;

    sget-object v1, Lk/c/a/a/a/s/r/h;->E:Ljava/lang/String;

    const-string v2, "run"

    const-string v3, "852"

    invoke-interface {v0, v1, v2, v3}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lk/c/a/a/a/s/r/h;->B:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 4
    iget-object v0, p0, Lk/c/a/a/a/s/r/h;->B:Ljava/io/InputStream;

    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v2, :cond_a

    .line 6
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    and-int/lit16 v7, v1, 0x80

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    const/16 v7, 0x7f

    if-ne v1, v7, :cond_2

    const/16 v2, 0x8

    goto :goto_2

    :cond_2
    const/16 v4, 0x7e

    if-ne v1, v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-lez v2, :cond_4

    const/4 v1, 0x0

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_9

    if-eqz v5, :cond_5

    const/4 v2, 0x4

    new-array v3, v2, [B

    .line 7
    invoke-virtual {v0, v3, v6, v2}, Ljava/io/InputStream;->read([BII)I

    .line 8
    :cond_5
    new-array v2, v1, [B

    move v7, v1

    const/4 v4, 0x0

    :goto_4
    if-ne v4, v1, :cond_8

    if-eqz v5, :cond_7

    const/4 v0, 0x0

    :goto_5
    if-lt v0, v1, :cond_6

    goto :goto_6

    .line 9
    :cond_6
    aget-byte v4, v2, v0

    rem-int/lit8 v5, v0, 0x4

    aget-byte v5, v3, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    move-object v3, v2

    const/4 v5, 0x0

    goto :goto_7

    .line 10
    :cond_8
    invoke-virtual {v0, v2, v4, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    add-int/2addr v4, v8

    sub-int/2addr v7, v8

    goto :goto_4

    .line 11
    :cond_9
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v4

    int-to-byte v4, v4

    and-int/lit16 v4, v4, 0xff

    mul-int/lit8 v7, v2, 0x8

    shl-int/2addr v4, v7

    or-int/2addr v1, v4

    goto :goto_3

    :cond_a
    if-ne v1, v4, :cond_e

    :goto_7
    if-nez v5, :cond_c

    .line 12
    :goto_8
    array-length v0, v3

    if-lt v6, v0, :cond_b

    .line 13
    iget-object v0, p0, Lk/c/a/a/a/s/r/h;->D:Ljava/io/PipedOutputStream;

    invoke-virtual {v0}, Ljava/io/PipedOutputStream;->flush()V

    goto/16 :goto_0

    .line 14
    :cond_b
    iget-object v0, p0, Lk/c/a/a/a/s/r/h;->D:Ljava/io/PipedOutputStream;

    aget-byte v1, v3, v6

    invoke-virtual {v0, v1}, Ljava/io/PipedOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 15
    :cond_c
    iget-boolean v0, p0, Lk/c/a/a/a/s/r/h;->z:Z

    if-eqz v0, :cond_d

    goto/16 :goto_0

    .line 16
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Server sent a WebSocket Frame with the Stop OpCode"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_e
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid Frame: Opcode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :catch_0
    invoke-virtual {p0}, Lk/c/a/a/a/s/r/h;->a()V

    goto/16 :goto_0

    :catch_1
    nop

    goto/16 :goto_0

    :cond_f
    :goto_9
    return-void
.end method
