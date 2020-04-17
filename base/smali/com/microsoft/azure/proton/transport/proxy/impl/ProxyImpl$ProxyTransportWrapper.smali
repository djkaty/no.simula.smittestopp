.class public Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/d/g0/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProxyTransportWrapper"
.end annotation


# instance fields
.field public final head:Ljava/nio/ByteBuffer;

.field public final synthetic this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

.field public final underlyingInput:Lk/a/b/a/d/g0/b0;

.field public final underlyingOutput:Lk/a/b/a/d/g0/f0;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;Lk/a/b/a/d/g0/b0;Lk/a/b/a/d/g0/f0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->underlyingInput:Lk/a/b/a/d/g0/b0;

    .line 3
    iput-object p3, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->underlyingOutput:Lk/a/b/a/d/g0/f0;

    .line 4
    invoke-static {p1}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$000(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->head:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private closeTailProxyError(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$102(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;Z)Z

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$1000(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Lk/a/b/a/d/g0/a0;

    move-result-object v0

    new-instance v1, Lk/a/b/a/d/d0;

    invoke-direct {v1, p1}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/d/d0;)V

    return-void
.end method

.method private getAuthenticationTypes(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;",
            ">;"
        }
    .end annotation

    const-string v0, "Proxy-Authenticate:"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, p1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 5
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNextLine()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {v2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0x13

    .line 8
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 10
    sget-object v3, Lcom/microsoft/azure/proton/transport/proxy/impl/Constants;->BASIC_LOWERCASE:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    sget-object p1, Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;->BASIC:Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_3
    sget-object v3, Lcom/microsoft/azure/proton/transport/proxy/impl/Constants;->DIGEST_LOWERCASE:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    sget-object p1, Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;->DIGEST:Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 16
    :try_start_2
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
.end method

.method private getChallengeProcessor(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;)Lcom/microsoft/azure/proton/transport/proxy/ProxyChallengeProcessor;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$500(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyAuthenticator;

    iget-object v1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    .line 6
    invoke-static {v1}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$500(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyAuthenticator;-><init>(Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyAuthenticator;

    invoke-direct {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyAuthenticator;-><init>()V

    .line 7
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_2

    const/4 v1, 0x2

    if-eq p3, v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_1
    new-instance p3, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;

    invoke-direct {p3, p1, p2, v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/DigestProxyChallengeProcessorImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyAuthenticator;)V

    return-object p3

    .line 9
    :cond_2
    new-instance p2, Lcom/microsoft/azure/proton/transport/proxy/impl/BasicProxyChallengeProcessorImpl;

    invoke-direct {p2, p1, v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/BasicProxyChallengeProcessorImpl;-><init>(Ljava/lang/String;Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyAuthenticator;)V

    return-object p2
.end method

.method private getChallengeProcessor(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/microsoft/azure/proton/transport/proxy/ProxyChallengeProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;",
            ">;)",
            "Lcom/microsoft/azure/proton/transport/proxy/ProxyChallengeProcessor;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;->DIGEST:Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p3, Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;->DIGEST:Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->getChallengeProcessor(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;)Lcom/microsoft/azure/proton/transport/proxy/ProxyChallengeProcessor;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;->BASIC:Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 4
    sget-object p3, Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;->BASIC:Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->getChallengeProcessor(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;)Lcom/microsoft/azure/proton/transport/proxy/ProxyChallengeProcessor;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-virtual {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->getIsHandshakeInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$100(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$200(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->underlyingInput:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->capacity()I

    move-result v0

    return v0
.end method

.method public close_head()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$902(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;Z)Z

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->underlyingOutput:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->close_head()V

    return-void
.end method

.method public close_tail()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$102(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;Z)Z

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-virtual {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->getIsHandshakeInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0, v1}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$902(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;Z)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->underlyingInput:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->close_tail()V

    return-void
.end method

.method public head()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-virtual {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->getIsHandshakeInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$300(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->underlyingOutput:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->head()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->head:Ljava/nio/ByteBuffer;

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->underlyingOutput:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->head()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public pending()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-virtual {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->getIsHandshakeInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->underlyingOutput:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->pending()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$300(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$000(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    sget-object v2, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;->PN_PROXY_CHALLENGE_RESPONDED:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    invoke-static {v0, v2}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$302(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;)Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-virtual {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->writeProxyRequest()V

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->head:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v2}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$000(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 8
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$900(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    sget-object v2, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;->PN_PROXY_FAILED:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    invoke-static {v0, v2}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$302(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;)Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    return v1

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$000(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$000(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$900(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$000(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    sget-object v2, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;->PN_PROXY_FAILED:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    invoke-static {v0, v2}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$302(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;)Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    return v1

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$000(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$000(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_8

    .line 16
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    sget-object v2, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;->PN_PROXY_CONNECTING:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    invoke-static {v0, v2}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$302(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;)Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    .line 17
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-virtual {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->writeProxyRequest()V

    .line 18
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->head:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v2}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$000(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 19
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$900(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 20
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    sget-object v2, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;->PN_PROXY_FAILED:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    invoke-static {v0, v2}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$302(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;)Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    return v1

    .line 21
    :cond_7
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$000(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0

    .line 22
    :cond_8
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$000(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public pop(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-virtual {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->getIsHandshakeInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$300(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->underlyingOutput:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0, p1}, Lk/a/b/a/d/g0/f0;->pop(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$000(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$000(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$000(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    iget-object p1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {p1}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$000(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 8
    iget-object p1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->head:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    iget-object p1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->head:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$000(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->underlyingOutput:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0, p1}, Lk/a/b/a/d/g0/f0;->pop(I)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->underlyingOutput:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0, p1}, Lk/a/b/a/d/g0/f0;->pop(I)V

    :goto_0
    return-void
.end method

.method public position()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-virtual {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->getIsHandshakeInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$100(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$200(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->underlyingInput:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->position()I

    move-result v0

    return v0
.end method

.method public process()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-virtual {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->getIsHandshakeInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->underlyingInput:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->process()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$300(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Proxy connect request failed with error: "

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->underlyingInput:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->process()V

    goto/16 :goto_2

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$200(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$400(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v1}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$200(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler;->validateProxyResponse(Ljava/nio/ByteBuffer;)Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler$ProxyResponseResult;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v1}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$200(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v0}, Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler$ProxyResponseResult;->getIsSuccess()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    sget-object v1, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;->PN_PROXY_CONNECTED:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    invoke-static {v0, v1}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$302(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;)Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    goto/16 :goto_2

    .line 10
    :cond_2
    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler$ProxyResponseResult;->getError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->closeTailProxyError(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$200(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 12
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$400(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v1}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$200(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler;->validateProxyResponse(Ljava/nio/ByteBuffer;)Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler$ProxyResponseResult;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v1}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$200(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 14
    iget-object v1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v1}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$200(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 15
    invoke-virtual {v0}, Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler$ProxyResponseResult;->getIsSuccess()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 16
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$500(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$500(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;->authentication()Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;->NONE:Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 17
    :cond_4
    invoke-static {}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$600()Lk/f/b;

    move-result-object v0

    invoke-interface {v0}, Lk/f/b;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    invoke-static {}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$600()Lk/f/b;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    .line 19
    invoke-static {v1}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$500(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;->authentication()Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    move-result-object v1

    const-string v2, "ProxyConfiguration mismatch. User configured: \'{}\', but authentication is not required"

    .line 20
    invoke-interface {v0, v2, v1}, Lk/f/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    const-string v0, "User configuration error. Using non-matching proxy authentication."

    .line 21
    invoke-direct {p0, v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->closeTailProxyError(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 22
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    sget-object v1, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;->PN_PROXY_CONNECTED:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    invoke-static {v0, v1}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$302(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;)Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    goto/16 :goto_2

    .line 23
    :cond_7
    invoke-virtual {v0}, Lcom/microsoft/azure/proton/transport/proxy/ProxyHandler$ProxyResponseResult;->getError()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-direct {p0, v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->getAuthenticationTypes(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 25
    iget-object v3, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v3}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$500(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v3}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$500(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;->authentication()Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 26
    invoke-static {}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$600()Lk/f/b;

    move-result-object v2

    invoke-interface {v2}, Lk/f/b;->f()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 27
    invoke-static {}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$600()Lk/f/b;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    .line 28
    invoke-static {v3}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$500(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;->authentication()Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    move-result-object v3

    .line 29
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v4, Le/d/a/a/a/a/a/d;->a:Le/d/a/a/a/a/a/d;

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v4, ","

    invoke-static {v4}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "Proxy authentication required. User configured: \'{}\', but supported proxy authentication methods are: {}"

    .line 30
    invoke-interface {v2, v4, v3, v1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    const-string v1, "User configuration error. Using non-matching proxy authentication.Proxy connect request failed with error: "

    .line 31
    invoke-static {v1, v0}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->closeTailProxyError(Ljava/lang/String;)V

    goto :goto_2

    .line 32
    :cond_9
    iget-object v3, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v3}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$500(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v1, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    .line 33
    invoke-static {v1}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$700(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v3}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$500(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/azure/proton/transport/proxy/ProxyConfiguration;->authentication()Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    move-result-object v3

    invoke-direct {p0, v1, v0, v3}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->getChallengeProcessor(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;)Lcom/microsoft/azure/proton/transport/proxy/ProxyChallengeProcessor;

    move-result-object v1

    goto :goto_1

    :cond_a
    iget-object v3, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    .line 34
    invoke-static {v3}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$700(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0, v1}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->getChallengeProcessor(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/microsoft/azure/proton/transport/proxy/ProxyChallengeProcessor;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_b

    .line 35
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    sget-object v2, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;->PN_PROXY_CHALLENGE:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    invoke-static {v0, v2}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$302(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;)Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    .line 36
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-interface {v1}, Lcom/microsoft/azure/proton/transport/proxy/ProxyChallengeProcessor;->getHeader()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$802(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;Ljava/util/Map;)Ljava/util/Map;

    goto :goto_2

    .line 37
    :cond_b
    invoke-static {v2, v0}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->closeTailProxyError(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public tail()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-virtual {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->getIsHandshakeInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->this$0:Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;

    invoke-static {v0}, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;->access$200(Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/proton/transport/proxy/impl/ProxyImpl$ProxyTransportWrapper;->underlyingInput:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->tail()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
