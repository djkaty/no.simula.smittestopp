.class public Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;
.super Ljava/net/Socket;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Socks5Socket"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket$Proxied;
    }
.end annotation


# static fields
.field public static final ATYP_DOMAINNAME:I = 0x3

.field public static final ATYP_IPV4:I = 0x1

.field public static final ATYP_IPV6:I = 0x4

.field public static final CMD_CONNECT:I = 0x1


# instance fields
.field public mLocalHost:Ljava/lang/String;

.field public mLocalIP:Ljava/net/InetAddress;

.field public mProxied:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket$Proxied;

.field public mTarget:Ljava/net/InetSocketAddress;

.field public final synthetic this$0:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->this$0:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;

    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;-><init>(Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;)V

    return-void
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;I)V
    .locals 1

    .line 1
    check-cast p1, Ljava/net/InetSocketAddress;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->mTarget:Ljava/net/InetSocketAddress;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->isLocal()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->getDirectInetAddress()Ljava/net/InetAddress;

    move-result-object p2

    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->mTarget:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-direct {p1, p2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 p2, 0x3e8

    invoke-super {p0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->connectViaProxy(I)V

    :goto_0
    return-void
.end method

.method public connectViaProxy(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->this$0:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;

    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;->access$100(Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;)Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->this$0:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;

    invoke-static {v2}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;->access$200(Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-super {p0, v0, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->sendConnectCommand()V

    .line 3
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket$Proxied;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket$Proxied;-><init>(Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->mProxied:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket$Proxied;

    .line 4
    iget-object p1, p1, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket$Proxied;->mHost:Ljava/lang/String;

    const-string v0, "0.0.0.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->mProxied:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket$Proxied;

    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket$Proxied;->mHost:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->mLocalHost:Ljava/lang/String;

    .line 6
    iget-object p1, p1, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket$Proxied;->mIp:Ljava/net/InetAddress;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->mLocalIP:Ljava/net/InetAddress;

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->this$0:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;

    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;->access$100(Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->mLocalIP:Ljava/net/InetAddress;

    .line 8
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->mLocalHost:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public getConnectCmd()[B
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->mTarget:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2
    array-length v1, v0

    add-int/lit8 v1, v1, 0x7

    new-array v2, v1, [B

    const/4 v3, 0x5

    const/4 v4, 0x0

    .line 3
    aput-byte v3, v2, v4

    const/4 v5, 0x1

    .line 4
    aput-byte v5, v2, v5

    const/4 v6, 0x2

    .line 5
    aput-byte v4, v2, v6

    const/4 v6, 0x3

    .line 6
    aput-byte v6, v2, v6

    .line 7
    array-length v6, v0

    int-to-byte v6, v6

    const/4 v7, 0x4

    aput-byte v6, v2, v7

    .line 8
    array-length v6, v0

    invoke-static {v0, v4, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v1, -0x2

    .line 9
    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->mTarget:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    sub-int/2addr v1, v5

    .line 10
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->mTarget:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    return-object v2
.end method

.method public getDirectInetAddress()Ljava/net/InetAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->mTarget:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->mLocalIP:Ljava/net/InetAddress;

    if-nez v0, :cond_1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->mLocalHost:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->mLocalIP:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->mLocalIP:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->mProxied:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket$Proxied;

    iget v0, v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket$Proxied;->mPort:I

    :goto_0
    return v0
.end method

.method public isLocal()Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->getDirectInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public sendConnectCommand()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x3

    :try_start_0
    new-array v2, v2, [B

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    const/4 v3, 0x1

    aput-byte v3, v2, v3

    const/4 v3, 0x2

    aput-byte v4, v2, v3

    .line 3
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 4
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 6
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v2, :cond_0

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;->getConnectCmd()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->close()V

    .line 9
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 10
    :goto_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V

    .line 11
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
