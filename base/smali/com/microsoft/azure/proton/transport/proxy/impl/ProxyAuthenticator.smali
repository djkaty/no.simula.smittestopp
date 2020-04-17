.class public Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PROMPT:Ljava/lang/String; = "Event Hubs client web socket proxy support"


# instance fields
.field public final configuration:Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;->SYSTEM_DEFAULTS:Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;

    invoke-direct {p0, v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyAuthenticator;-><init>(Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyAuthenticator;->configuration:Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;

    return-void
.end method

.method public static isPasswordAuthenticationHasValues(Ljava/net/PasswordAuthentication;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object p0

    .line 3
    invoke-static {v1}, Lcom/microsoft/azure/proton/transport/proxy/impl/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p0, :cond_1

    array-length p0, p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isProxyAddressLegal(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/Proxy;

    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object p0

    instance-of p0, p0, Ljava/net/InetSocketAddress;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public getPasswordAuthentication(Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyAuthenticator;->configuration:Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;

    invoke-virtual {v0}, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;->hasUserDefinedCredentials()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyAuthenticator;->configuration:Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;

    invoke-virtual {p1}, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;->credentials()Ljava/net/PasswordAuthentication;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyAuthenticator;->configuration:Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;

    invoke-virtual {v0}, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;->isProxyAddressConfigured()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p2, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyAuthenticator;->configuration:Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;

    invoke-virtual {p2}, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;->proxyAddress()Ljava/net/Proxy;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object p2

    check-cast p2, Ljava/net/InetSocketAddress;

    .line 5
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    sget-object v7, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    const-string v4, "Event Hubs client web socket proxy support"

    move-object v5, p1

    .line 7
    invoke-static/range {v0 .. v7}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    .line 9
    invoke-static {p2}, Lcom/microsoft/azure/proton/transport/proxy/impl/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 10
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    .line 11
    invoke-virtual {v0, p2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, v2

    .line 12
    :goto_0
    invoke-static {p2}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyAuthenticator;->isProxyAddressLegal(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 13
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 14
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/net/Proxy;

    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p2

    move-object v4, v2

    move-object v2, p2

    goto :goto_1

    :cond_3
    move-object v4, v2

    :goto_1
    const/4 v5, 0x0

    if-nez v2, :cond_4

    const-string p2, ""

    goto :goto_2

    .line 15
    :cond_4
    invoke-virtual {v2}, Ljava/net/Proxy$Type;->name()Ljava/lang/String;

    move-result-object p2

    :goto_2
    move-object v6, p2

    const/4 v9, 0x0

    sget-object v10, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    const-string v3, ""

    const-string v7, "Event Hubs client web socket proxy support"

    move-object v8, p1

    .line 16
    invoke-static/range {v3 .. v10}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object p1

    return-object p1
.end method
