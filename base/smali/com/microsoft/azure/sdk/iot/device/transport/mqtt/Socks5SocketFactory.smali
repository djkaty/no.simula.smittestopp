.class public Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;
.super Ljavax/net/SocketFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;
    }
.end annotation


# instance fields
.field public final mProxyHost:Ljava/net/InetAddress;

.field public final mProxyPort:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;->mProxyHost:Ljava/net/InetAddress;

    .line 3
    iput p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;->mProxyPort:I

    return-void
.end method

.method public static synthetic access$100(Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;)Ljava/net/InetAddress;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;->mProxyHost:Ljava/net/InetAddress;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;->mProxyPort:I

    return p0
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;-><init>(Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$1;)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 6
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 7
    :cond_0
    new-instance p3, Ljava/net/InetSocketAddress;

    invoke-direct {p3, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method
