.class public Lcom/microsoft/azure/sdk/iot/device/transport/HttpProxySocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/sdk/iot/device/transport/HttpProxySocketFactory$SSLSocketFactoryNonDelegatedFunctions;
    }
.end annotation


# instance fields
.field public final delegate:Ljavax/net/ssl/SSLSocketFactory;

.field public final proxySettings:Lcom/microsoft/azure/sdk/iot/device/ProxySettings;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Lcom/microsoft/azure/sdk/iot/device/ProxySettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/HttpProxySocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/HttpProxySocketFactory;->proxySettings:Lcom/microsoft/azure/sdk/iot/device/ProxySettings;

    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 5

    .line 7
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/HttpProxySocketFactory;->proxySettings:Lcom/microsoft/azure/sdk/iot/device/ProxySettings;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/ProxySettings;->getHostname()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/HttpProxySocketFactory;->proxySettings:Lcom/microsoft/azure/sdk/iot/device/ProxySettings;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/ProxySettings;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 8
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/transport/ProxiedSSLSocket;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/HttpProxySocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/HttpProxySocketFactory;->proxySettings:Lcom/microsoft/azure/sdk/iot/device/ProxySettings;

    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/device/ProxySettings;->getUsername()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/device/transport/HttpProxySocketFactory;->proxySettings:Lcom/microsoft/azure/sdk/iot/device/ProxySettings;

    invoke-virtual {v4}, Lcom/microsoft/azure/sdk/iot/device/ProxySettings;->getPassword()[C

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/microsoft/azure/sdk/iot/device/transport/ProxiedSSLSocket;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/Socket;Ljava/lang/String;[C)V

    return-object v1
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/HttpProxySocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/HttpProxySocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/HttpProxySocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/HttpProxySocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/io/InputStream;Z)Ljava/net/Socket;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/HttpProxySocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/io/InputStream;Z)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/HttpProxySocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/HttpProxySocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/HttpProxySocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
