.class public Lg/e/i;
.super Lg/e/k/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/e/i$a;,
        Lg/e/i$b;
    }
.end annotation


# instance fields
.field public A:Lg/e/i$b;

.field public B:Lg/e/h;

.field public C:Lg/e/h;

.field public final D:Ljava/util/concurrent/locks/ReadWriteLock;

.field public final E:Lg/e/a;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lg/a/d/e;->PF_UNIX:Lg/a/d/e;

    sget-object v1, Lg/a/d/g;->SOCK_STREAM:Lg/a/d/g;

    .line 2
    sget-object v2, Lg/e/d;->b:Lg/e/d$a;

    .line 3
    invoke-virtual {v0}, Lg/a/d/e;->intValue()I

    move-result v0

    invoke-virtual {v1}, Lg/a/d/g;->intValue()I

    move-result v1

    const/4 v3, 0x0

    invoke-interface {v2, v0, v1, v3}, Lg/e/d$a;->a(III)I

    move-result v0

    if-ltz v0, :cond_0

    .line 4
    sget-object v1, Lg/e/i$b;->CONNECTED:Lg/e/i$b;

    .line 5
    invoke-direct {p0, v0}, Lg/e/k/a;-><init>(I)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lg/e/i;->B:Lg/e/h;

    .line 7
    iput-object v0, p0, Lg/e/i;->C:Lg/e/h;

    .line 8
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lg/e/i;->D:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 10
    iput-object v1, p0, Lg/e/i;->A:Lg/e/i$b;

    .line 11
    new-instance v0, Lg/e/a;

    invoke-direct {v0, v3}, Lg/e/a;-><init>(Z)V

    iput-object v0, p0, Lg/e/i;->E:Lg/e/a;

    .line 12
    iget-object v0, p0, Lg/e/i;->D:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lg/e/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 20
    iget-object v0, p0, Lg/e/i;->D:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 21
    iget-object v0, p0, Lg/e/i;->A:Lg/e/i$b;

    sget-object v1, Lg/e/i$b;->IDLE:Lg/e/i$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    iget-object v1, p0, Lg/e/i;->D:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0
.end method

.method public final a(Lg/e/e;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lg/e/k/a;->x:Lg/e/k/b;

    .line 2
    iget v0, v0, Lg/e/k/b;->a:I

    .line 3
    invoke-virtual {p1}, Lg/e/e;->d()I

    move-result v1

    .line 4
    sget-object v2, Lg/e/d;->b:Lg/e/d$a;

    .line 5
    invoke-interface {v2, v0, p1, v1}, Lg/e/d$a;->b(ILg/e/e;I)I

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    sget-object p1, Lg/c/f$a;->a:Lg/c/f;

    .line 7
    invoke-virtual {p1}, Lg/c/f;->a()I

    move-result p1

    int-to-long v0, p1

    .line 8
    invoke-static {v0, v1}, Lg/a/d/b;->valueOf(J)Lg/a/d/b;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lg/a/d/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public a(Lg/e/h;)Z
    .locals 0

    .line 11
    iput-object p1, p0, Lg/e/i;->B:Lg/e/h;

    .line 12
    iget-object p1, p1, Lg/e/h;->x:Lg/e/e;

    .line 13
    invoke-virtual {p0, p1}, Lg/e/i;->a(Lg/e/e;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 14
    iget-object p1, p0, Lg/e/i;->D:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 15
    sget-object p1, Lg/e/i$b;->CONNECTING:Lg/e/i$b;

    iput-object p1, p0, Lg/e/i;->A:Lg/e/i$b;

    .line 16
    iget-object p1, p0, Lg/e/i;->D:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    return p1

    .line 17
    :cond_0
    iget-object p1, p0, Lg/e/i;->D:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 18
    sget-object p1, Lg/e/i$b;->CONNECTED:Lg/e/i$b;

    iput-object p1, p0, Lg/e/i;->A:Lg/e/i$b;

    .line 19
    iget-object p1, p0, Lg/e/i;->D:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x1

    return p1
.end method

.method public declared-synchronized bind(Ljava/net/SocketAddress;)Lg/e/i;
    .locals 2

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lg/e/i;->E:Lg/e/a;

    .line 4
    iget-object v1, p0, Lg/e/k/a;->x:Lg/e/k/b;

    .line 5
    iget v1, v1, Lg/e/k/b;->a:I

    .line 6
    invoke-virtual {v0, v1, p1}, Lg/e/a;->a(ILjava/net/SocketAddress;)Lg/e/h;

    move-result-object p1

    iput-object p1, p0, Lg/e/i;->C:Lg/e/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic bind(Ljava/net/SocketAddress;)Ljava/nio/channels/NetworkChannel;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg/e/i;->bind(Ljava/net/SocketAddress;)Lg/e/i;

    return-object p0
.end method

.method public bridge synthetic bind(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lg/e/i;->bind(Ljava/net/SocketAddress;)Lg/e/i;

    return-object p0
.end method

.method public connect(Ljava/net/SocketAddress;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lg/e/h;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lg/e/h;

    invoke-virtual {p0, p1}, Lg/e/i;->a(Lg/e/h;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {p1}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    throw p1
.end method

.method public finishConnect()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lg/e/i;->D:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lg/e/i;->A:Lg/e/i$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 3
    iget-object v0, p0, Lg/e/i;->B:Lg/e/h;

    .line 4
    iget-object v0, v0, Lg/e/h;->x:Lg/e/e;

    .line 5
    invoke-virtual {p0, v0}, Lg/e/i;->a(Lg/e/e;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Lg/e/i;->D:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 7
    :cond_0
    :try_start_1
    sget-object v0, Lg/e/i$b;->CONNECTED:Lg/e/i$b;

    iput-object v0, p0, Lg/e/i;->A:Lg/e/i$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :cond_1
    iget-object v0, p0, Lg/e/i;->D:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    .line 9
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "socket is not waiting for connect to complete"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 10
    iget-object v1, p0, Lg/e/i;->D:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    throw v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/i;->C:Lg/e/h;

    return-object v0
.end method

.method public getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lg/e/i$a;->a:Ljava/util/Set;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lg/e/k/a;->x:Lg/e/k/b;

    .line 4
    iget v0, v0, Lg/e/k/b;->a:I

    .line 5
    sget-object v1, Lg/e/b;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/a/d/i;

    if-eqz v1, :cond_3

    .line 6
    invoke-interface {p1}, Ljava/net/SocketOption;->type()Ljava/lang/Class;

    move-result-object p1

    .line 7
    const-class v2, Lg/e/c;

    if-eq p1, v2, :cond_2

    .line 8
    const-class v2, Ljava/lang/Integer;

    if-ne p1, v2, :cond_0

    .line 9
    sget-object p1, Lg/a/d/h;->SOL_SOCKET:Lg/a/d/h;

    invoke-virtual {v1}, Lg/a/d/i;->intValue()I

    move-result v1

    invoke-static {v0, p1, v1}, Lg/e/d;->a(ILg/a/d/h;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    .line 10
    :cond_0
    sget-object p1, Lg/a/d/h;->SOL_SOCKET:Lg/a/d/h;

    invoke-virtual {v1}, Lg/a/d/i;->intValue()I

    move-result v1

    .line 11
    invoke-static {v0, p1, v1}, Lg/e/d;->a(ILg/a/d/h;I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 12
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_1
    return-object p1

    .line 13
    :cond_2
    new-instance p1, Lg/e/f;

    invoke-direct {p1}, Lg/e/f;-><init>()V

    .line 14
    sget-object v1, Lg/a/d/h;->SOL_SOCKET:Lg/a/d/h;

    sget-object v2, Lg/a/d/i;->SO_PEERCRED:Lg/a/d/i;

    invoke-static {v0, v1, v2, p1}, Lg/e/d;->a(ILg/a/d/h;Lg/a/d/i;Lg/c/g;)I

    const/4 p1, 0x0

    throw p1

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Option not found"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 16
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' not supported"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/i;->B:Lg/e/h;

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/i;->D:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    iget-object v0, p0, Lg/e/i;->A:Lg/e/i$b;

    sget-object v1, Lg/e/i$b;->CONNECTED:Lg/e/i$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lg/e/i;->D:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0
.end method

.method public isConnectionPending()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/i;->D:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    iget-object v0, p0, Lg/e/i;->A:Lg/e/i$b;

    sget-object v1, Lg/e/i$b;->CONNECTING:Lg/e/i$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lg/e/i;->D:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/e/i;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/e/k/a;->x:Lg/e/k/b;

    invoke-virtual {v0, p1}, Lg/e/k/b;->a(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lg/e/i;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p1
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lg/e/i;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;

    return-object p0
.end method

.method public setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)",
            "Ljava/nio/channels/SocketChannel;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2
    sget-object v0, Lg/e/i$a;->a:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lg/e/k/a;->x:Lg/e/k/b;

    .line 5
    iget v0, v0, Lg/e/k/b;->a:I

    .line 6
    invoke-static {v0, p1, p2}, Lg/e/b;->a(ILjava/net/SocketOption;Ljava/lang/Object;)V

    return-object p0

    .line 7
    :cond_0
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' not supported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public socket()Ljava/net/Socket;
    .locals 1

    .line 1
    new-instance v0, Lg/e/g;

    invoke-direct {v0, p0}, Lg/e/g;-><init>(Lg/e/i;)V

    return-object v0
.end method

.method public final supportedOptions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lg/e/i$a;->a:Ljava/util/Set;

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1

    .line 7
    invoke-virtual {p0}, Lg/e/i;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lg/e/k/a;->x:Lg/e/k/b;

    invoke-virtual {v0, p1}, Lg/e/k/b;->b(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lg/e/i;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 10
    :cond_1
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p1
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lg/e/i;->isConnected()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lg/e/k/a;->x:Lg/e/k/b;

    if-eqz v0, :cond_1

    :goto_0
    if-ge p2, p3, :cond_0

    .line 3
    aget-object v3, p1, p2

    invoke-virtual {v0, v3}, Lg/e/k/b;->b(Ljava/nio/ByteBuffer;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-wide v1

    :cond_1
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_2
    invoke-virtual {p0}, Lg/e/i;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    return-wide v1

    .line 6
    :cond_3
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p1
.end method
