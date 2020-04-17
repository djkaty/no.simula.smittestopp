.class public Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final LOGGER:Lk/f/b;

.field public static final SYSTEM_DEFAULTS:Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;


# instance fields
.field public final authentication:Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

.field public final credentials:Ljava/net/PasswordAuthentication;

.field public final proxyAddress:Ljava/net/Proxy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;->LOGGER:Lk/f/b;

    .line 2
    new-instance v0, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;

    invoke-direct {v0}, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;-><init>()V

    sput-object v0, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;->SYSTEM_DEFAULTS:Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;->authentication:Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;->credentials:Ljava/net/PasswordAuthentication;

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;->proxyAddress:Ljava/net/Proxy;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;->proxyAddress:Ljava/net/Proxy;

    .line 8
    iput-object p1, p0, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;->authentication:Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 9
    new-instance p1, Ljava/net/PasswordAuthentication;

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {p1, p3, p2}, Ljava/net/PasswordAuthentication;-><init>(Ljava/lang/String;[C)V

    iput-object p1, p0, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;->credentials:Ljava/net/PasswordAuthentication;

    goto :goto_0

    .line 10
    :cond_0
    sget-object p1, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;->LOGGER:Lk/f/b;

    invoke-interface {p1}, Lk/f/b;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    sget-object p1, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;->LOGGER:Lk/f/b;

    const-string p2, "username or password is null. Using system-wide authentication."

    invoke-interface {p1, p2}, Lk/f/b;->c(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;->credentials:Ljava/net/PasswordAuthentication;

    :goto_0
    return-void
.end method


# virtual methods
.method public authentication()Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;->authentication:Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;->credentials:Ljava/net/PasswordAuthentication;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    :cond_0
    return-void
.end method

.method public credentials()Ljava/net/PasswordAuthentication;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;->credentials:Ljava/net/PasswordAuthentication;

    return-object v0
.end method

.method public hasUserDefinedCredentials()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;->credentials:Ljava/net/PasswordAuthentication;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProxyAddressConfigured()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;->proxyAddress:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public proxyAddress()Ljava/net/Proxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;->proxyAddress:Ljava/net/Proxy;

    return-object v0
.end method
