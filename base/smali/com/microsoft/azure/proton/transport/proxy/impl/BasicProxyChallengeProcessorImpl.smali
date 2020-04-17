.class public Lcom/microsoft/azure/proton/transport/proxy/impl/BasicProxyChallengeProcessorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/proton/transport/proxy/ProxyChallengeProcessor;


# instance fields
.field public final headers:Ljava/util/Map;
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

.field public final proxyAuthenticator:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyAuthenticator;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyAuthenticator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/BasicProxyChallengeProcessorImpl;->host:Ljava/lang/String;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/BasicProxyChallengeProcessorImpl;->headers:Ljava/util/Map;

    .line 6
    iput-object p2, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/BasicProxyChallengeProcessorImpl;->proxyAuthenticator:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyAuthenticator;

    return-void
.end method


# virtual methods
.method public getHeader()Ljava/util/Map;
    .locals 6
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
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/BasicProxyChallengeProcessorImpl;->proxyAuthenticator:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyAuthenticator;

    sget-object v1, Lcom/microsoft/azure/proton/transport/proxy/impl/Constants;->BASIC_LOWERCASE:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/BasicProxyChallengeProcessorImpl;->host:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyAuthenticator;->getPasswordAuthentication(Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyAuthenticator;->isPasswordAuthenticationHasValues(Ljava/net/PasswordAuthentication;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v2, ":"

    .line 6
    invoke-static {v2, v3}, Lb;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/BasicProxyChallengeProcessorImpl;->headers:Ljava/util/Map;

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v5, "Basic"

    aput-object v5, v0, v4

    .line 8
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, " "

    invoke-static {v1, v0}, Lb;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Proxy-Authorization"

    .line 9
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/BasicProxyChallengeProcessorImpl;->headers:Ljava/util/Map;

    return-object v0
.end method
