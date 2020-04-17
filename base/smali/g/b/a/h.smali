.class public final Lg/b/a/h;
.super Ljava/nio/channels/spi/SelectorProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/b/a/h$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/nio/channels/spi/SelectorProvider;-><init>()V

    return-void
.end method

.method public static final a()Ljava/nio/channels/spi/SelectorProvider;
    .locals 1

    .line 1
    sget-object v0, Lg/b/a/h$a;->a:Lg/b/a/h;

    return-object v0
.end method


# virtual methods
.method public openDatagramChannel()Ljava/nio/channels/DatagramChannel;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openDatagramChannel(Ljava/net/ProtocolFamily;)Ljava/nio/channels/DatagramChannel;
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported yet."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public openPipe()Ljava/nio/channels/Pipe;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openSelector()Ljava/nio/channels/spi/AbstractSelector;
    .locals 1

    .line 1
    invoke-static {}, Lg/c/d;->d()Lg/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lg/c/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lg/b/a/j;

    invoke-direct {v0, p0}, Lg/b/a/j;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    return-object v0

    :cond_0
    new-instance v0, Lg/b/a/b;

    invoke-direct {v0, p0}, Lg/b/a/b;-><init>(Lg/b/a/h;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public openServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openSocketChannel()Ljava/nio/channels/SocketChannel;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
