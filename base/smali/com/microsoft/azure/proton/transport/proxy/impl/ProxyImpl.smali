.class public Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/proton/transport/proxy/Proxy;
.implements Lk/a/b/a/d/g0/d0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;
    }
.end annotation


# static fields
.field public static final LOGGER:Lk/f/b;

.field public static final PROXY_CONNECT_FAILED:Ljava/lang/String; = "Proxy connect request failed with error: "

.field public static final PROXY_CONNECT_USER_ERROR:Ljava/lang/String; = "User configuration error. Using non-matching proxy authentication."

.field public static final PROXY_HANDSHAKE_BUFFER_SIZE:I = 0x2000


# instance fields
.field public headClosed:Z

.field public headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public host:Ljava/lang/String;

.field public final inputBuffer:Ljava/nio/ByteBuffer;

.field public isProxyConfigured:Z

.field public final outputBuffer:Ljava/nio/ByteBuffer;

.field public final proxyConfiguration:Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;

.field public proxyHandler:Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler;

.field public proxyState:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

.field public tailClosed:Z

.field public underlyingTransport:Lk/a/b/a/d/g0/a0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->LOGGER:Lk/f/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;-><init>(Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->tailClosed:Z

    .line 4
    iput-boolean v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->headClosed:Z

    const-string v1, ""

    .line 5
    iput-object v1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->host:Ljava/lang/String;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->headers:Ljava/util/Map;

    .line 7
    sget-object v1, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;->PN_PROXY_NOT_STARTED:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    iput-object v1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->proxyState:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    const/16 v1, 0x2000

    .line 8
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 9
    iput-object v2, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 10
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 11
    iput-object v1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 12
    iput-boolean v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->isProxyConfigured:Z

    .line 13
    iput-object p1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->proxyConfiguration:Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->outputBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->tailClosed:Z

    return p0
.end method

.method public static synthetic access$1000(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Lk/a/b/a/d/g0/a0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->underlyingTransport:Lk/a/b/a/d/g0/a0;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->tailClosed:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->proxyState:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;)Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->proxyState:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->proxyHandler:Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->proxyConfiguration:Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;

    return-object p0
.end method

.method public static synthetic access$600()Lk/f/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->LOGGER:Lk/f/b;

    return-object v0
.end method

.method public static synthetic access$700(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->host:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$802(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->headers:Ljava/util/Map;

    return-object p1
.end method

.method public static synthetic access$900(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->headClosed:Z

    return p0
.end method

.method public static synthetic access$902(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->headClosed:Z

    return p1
.end method


# virtual methods
.method public configure(Ljava/lang/String;Ljava/util/Map;Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler;Lk/a/b/a/d/c0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler;",
            "Lk/a/b/a/d/c0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->host:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->headers:Ljava/util/Map;

    .line 3
    iput-object p3, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->proxyHandler:Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler;

    .line 4
    check-cast p4, Lk/a/b/a/d/g0/a0;

    iput-object p4, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->underlyingTransport:Lk/a/b/a/d/g0/a0;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->isProxyConfigured:Z

    return-void
.end method

.method public getInputBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getIsHandshakeInProgress()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->isProxyConfigured:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->proxyState:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    sget-object v1, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;->PN_PROXY_CONNECTED:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIsProxyConfigured()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->isProxyConfigured:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getOutputBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->outputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getProxyHandler()Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->proxyHandler:Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler;

    return-object v0
.end method

.method public getProxyRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getProxyState()Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->proxyState:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    return-object v0
.end method

.method public getUnderlyingTransport()Lk/a/b/a/d/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->underlyingTransport:Lk/a/b/a/d/g0/a0;

    return-object v0
.end method

.method public wrap(Lk/a/b/a/d/g0/b0;Lk/a/b/a/d/g0/f0;)Lk/a/b/a/d/g0/l0;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;-><init>(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;Lk/a/b/a/d/g0/b0;Lk/a/b/a/d/g0/f0;)V

    return-object v0
.end method

.method public writeProxyRequest()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->proxyHandler:Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler;

    iget-object v1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->host:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->headers:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler;->createProxyRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->LOGGER:Lk/f/b;

    invoke-interface {v1}, Lk/f/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->LOGGER:Lk/f/b;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Writing proxy request:{}{}"

    invoke-interface {v1, v3, v2, v0}, Lk/f/b;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method
