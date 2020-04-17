.class public Lk/a/b/a/d/g0/m0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/d/a0;
.implements Lk/a/b/a/d/g0/m0/c;
.implements Lk/a/b/a/d/r;


# instance fields
.field public a:Lk/a/b/a/d/a0$a;

.field public b:Lk/a/b/a/d/a0$b;

.field public c:Ljavax/net/ssl/SSLContext;

.field public final d:Lk/a/b/a/d/g0/m0/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk/a/b/a/d/g0/m0/f;

    invoke-direct {v0}, Lk/a/b/a/d/g0/m0/f;-><init>()V

    iput-object v0, p0, Lk/a/b/a/d/g0/m0/e;->d:Lk/a/b/a/d/g0/m0/f;

    return-void
.end method


# virtual methods
.method public a()Lk/a/b/a/d/a0$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/e;->b:Lk/a/b/a/d/a0$b;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/e;->a:Lk/a/b/a/d/a0$a;

    sget-object v1, Lk/a/b/a/d/a0$a;->SERVER:Lk/a/b/a/d/a0$a;

    if-ne v0, v1, :cond_0

    sget-object v0, Lk/a/b/a/d/a0$b;->ANONYMOUS_PEER:Lk/a/b/a/d/a0$b;

    goto :goto_0

    :cond_0
    sget-object v0, Lk/a/b/a/d/a0$b;->VERIFY_PEER_NAME:Lk/a/b/a/d/a0$b;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public a(Lk/a/b/a/d/b0;)Lk/a/b/a/d/g0/m0/b;
    .locals 11

    .line 3
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/e;->d:Lk/a/b/a/d/g0/m0/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 4
    iget-object v2, p0, Lk/a/b/a/d/g0/m0/e;->a:Lk/a/b/a/d/a0$a;

    const-string v3, "Unexpected exception creating SSLContext"

    .line 5
    iget-object v4, v0, Lk/a/b/a/d/g0/m0/f;->a:Ljavax/net/ssl/SSLContext;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    .line 6
    iget-object v4, p0, Lk/a/b/a/d/g0/m0/e;->c:Ljavax/net/ssl/SSLContext;

    if-eqz v4, :cond_0

    .line 7
    iput-object v4, v0, Lk/a/b/a/d/g0/m0/f;->a:Ljavax/net/ssl/SSLContext;

    goto/16 :goto_1

    .line 8
    :cond_0
    iget-object v4, v0, Lk/a/b/a/d/g0/m0/f;->a:Ljavax/net/ssl/SSLContext;

    if-nez v4, :cond_3

    .line 9
    sget-object v4, Lk/a/b/a/d/g0/m0/f;->b:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    sget-object v4, Lk/a/b/a/d/g0/m0/f;->b:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lazily creating new SSLContext using domain "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1
    const-string v4, "unused-passphrase"

    .line 11
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    :try_start_0
    const-string v7, "TLS"

    .line 12
    invoke-static {v7}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v7

    .line 13
    invoke-virtual {v0, p0, v4}, Lk/a/b/a/d/g0/m0/f;->a(Lk/a/b/a/d/a0;[C)Ljava/security/KeyStore;

    move-result-object v8

    .line 14
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v9

    .line 15
    invoke-virtual {v9, v8, v4}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 16
    invoke-virtual {p0}, Lk/a/b/a/d/g0/m0/e;->a()Lk/a/b/a/d/a0$b;

    move-result-object v4

    sget-object v10, Lk/a/b/a/d/a0$b;->ANONYMOUS_PEER:Lk/a/b/a/d/a0$b;

    if-ne v4, v10, :cond_2

    new-array v4, v6, [Ljavax/net/ssl/TrustManager;

    .line 17
    new-instance v8, Lk/a/b/a/d/g0/m0/f$b;

    invoke-direct {v8, v1}, Lk/a/b/a/d/g0/m0/f$b;-><init>(Lk/a/b/a/d/g0/m0/f$a;)V

    aput-object v8, v4, v5

    goto :goto_0

    .line 18
    :cond_2
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v4

    .line 19
    invoke-virtual {v4, v8}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 20
    invoke-virtual {v4}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    .line 21
    :goto_0
    invoke-virtual {v9}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v8

    invoke-virtual {v7, v8, v4, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 22
    iput-object v7, v0, Lk/a/b/a/d/g0/m0/f;->a:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 23
    new-instance v0, Lk/a/b/a/d/d0;

    invoke-direct {v0, v3, p1}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 24
    new-instance v0, Lk/a/b/a/d/d0;

    invoke-direct {v0, v3, p1}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 25
    new-instance v0, Lk/a/b/a/d/d0;

    invoke-direct {v0, v3, p1}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p1

    .line 26
    new-instance v0, Lk/a/b/a/d/d0;

    invoke-direct {v0, v3, p1}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 27
    :cond_3
    :goto_1
    iget-object v0, v0, Lk/a/b/a/d/g0/m0/f;->a:Ljavax/net/ssl/SSLContext;

    if-nez p1, :cond_4

    .line 28
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    goto :goto_2

    .line 29
    :cond_4
    invoke-interface {p1}, Lk/a/b/a/d/b0;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lk/a/b/a/d/b0;->a()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    .line 30
    :goto_2
    invoke-virtual {p0}, Lk/a/b/a/d/g0/m0/e;->a()Lk/a/b/a/d/a0$b;

    move-result-object v0

    sget-object v1, Lk/a/b/a/d/a0$b;->ANONYMOUS_PEER:Lk/a/b/a/d/a0$b;

    if-ne v0, v1, :cond_8

    .line 31
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 33
    sget-object v3, Lk/a/b/a/d/g0/m0/f;->o:Ljava/util/List;

    .line 34
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 35
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :cond_5
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 36
    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 37
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    if-lez v7, :cond_7

    .line 38
    sget-object v0, Lk/a/b/a/d/g0/m0/f;->b:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 39
    sget-object v0, Lk/a/b/a/d/g0/m0/f;->b:Ljava/util/logging/Logger;

    const-string v6, "There are now "

    invoke-static {v6}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " cipher suites enabled (previously "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), including "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " out of the "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requested anonymous ones."

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_7
    new-array v0, v5, [Ljava/lang/String;

    .line 43
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    goto :goto_4

    .line 44
    :cond_8
    sget-object v0, Lk/a/b/a/d/a0$a;->SERVER:Lk/a/b/a/d/a0$a;

    if-ne v2, v0, :cond_9

    .line 45
    invoke-virtual {p1, v6}, Ljavax/net/ssl/SSLEngine;->setNeedClientAuth(Z)V

    .line 46
    :cond_9
    invoke-virtual {p0}, Lk/a/b/a/d/g0/m0/e;->a()Lk/a/b/a/d/a0$b;

    move-result-object v0

    sget-object v1, Lk/a/b/a/d/a0$b;->VERIFY_PEER_NAME:Lk/a/b/a/d/a0$b;

    if-ne v0, v1, :cond_a

    .line 47
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    const-string v1, "HTTPS"

    .line 48
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 50
    :cond_a
    :goto_4
    sget-object v0, Lk/a/b/a/d/g0/m0/f;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 51
    sget-object v0, Lk/a/b/a/d/g0/m0/f;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " Enabled cipher suites "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 52
    :cond_b
    sget-object v0, Lk/a/b/a/d/a0$a;->CLIENT:Lk/a/b/a/d/a0$a;

    if-ne v2, v0, :cond_c

    const/4 v5, 0x1

    .line 53
    :cond_c
    invoke-virtual {p1, v5}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 54
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "SSLv3"

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 57
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLEngine;->setEnabledProtocols([Ljava/lang/String;)V

    .line 59
    :cond_d
    sget-object v0, Lk/a/b/a/d/g0/m0/f;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 60
    sget-object v0, Lk/a/b/a/d/g0/m0/f;->b:Ljava/util/logging/Logger;

    const-string v1, "Created SSL engine: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", needClientAuth="

    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getNeedClientAuth()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", useClientMode="

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getUseClientMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", peerHost="

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", peerPort="

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getPeerPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ]"

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 69
    :cond_e
    new-instance v0, Lk/a/b/a/d/g0/m0/a;

    invoke-direct {v0, p1}, Lk/a/b/a/d/g0/m0/a;-><init>(Ljavax/net/ssl/SSLEngine;)V

    return-object v0

    .line 70
    :cond_f
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "SslDomainImpl [_mode="

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lk/a/b/a/d/g0/m0/e;->a:Lk/a/b/a/d/a0$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _verifyMode="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/d/g0/m0/e;->b:Lk/a/b/a/d/a0$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _certificateFile="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", _privateKeyFile="

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", _trustedCaDb="

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", _allowUnsecuredClient="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
