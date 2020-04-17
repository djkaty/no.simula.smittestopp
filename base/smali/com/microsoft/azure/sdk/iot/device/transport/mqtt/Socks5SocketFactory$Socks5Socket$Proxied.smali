.class public Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket$Proxied;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Proxied"
.end annotation


# instance fields
.field public mHost:Ljava/lang/String;

.field public mIp:Ljava/net/InetAddress;

.field public mPort:I

.field public final synthetic this$1:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;Ljava/io/InputStream;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket$Proxied;->this$1:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 4
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p2

    if-nez p2, :cond_4

    .line 5
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 6
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p2

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq p2, v1, :cond_2

    if-eq p2, v2, :cond_1

    if-eq p2, v0, :cond_0

    .line 7
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 8
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    new-array v0, v0, [B

    .line 10
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 11
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket$Proxied;->mHost:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-array v3, v0, [B

    .line 12
    invoke-virtual {p1, v3}, Ljava/io/DataInputStream;->readFully([B)V

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 13
    aget-byte v5, v3, v4

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    aget-byte v4, v3, v1

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x2

    aget-byte v4, v3, v1

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    aget-byte v1, v3, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%s.%s.%s.%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket$Proxied;->mHost:Ljava/lang/String;

    .line 14
    :goto_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket$Proxied;->mPort:I

    if-eq p2, v2, :cond_3

    .line 15
    :try_start_0
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket$Proxied;->mHost:Ljava/lang/String;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Socks5SocketFactory$Socks5Socket$Proxied;->mIp:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void

    .line 16
    :cond_4
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method
