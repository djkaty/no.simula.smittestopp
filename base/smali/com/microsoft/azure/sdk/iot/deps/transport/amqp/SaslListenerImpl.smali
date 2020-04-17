.class public Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/d/w;


# static fields
.field public static final PLAIN:Ljava/lang/String; = "PLAIN"


# instance fields
.field public saslHandler:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler;

.field public savedException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;->saslHandler:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler;

    return-void
.end method


# virtual methods
.method public getSavedException()Ljava/lang/Exception;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;->savedException:Ljava/lang/Exception;

    return-object v0
.end method

.method public onSaslChallenge(Lk/a/b/a/d/v;Lk/a/b/a/d/c0;)V
    .locals 5

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Sasl cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;->savedException:Ljava/lang/Exception;

    goto :goto_2

    .line 2
    :cond_0
    move-object p2, p1

    check-cast p2, Lk/a/b/a/d/g0/v;

    .line 3
    iget-object v0, p2, Lk/a/b/a/d/g0/v;->i:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 4
    :goto_0
    new-array v2, v0, [B

    .line 5
    iget-object v3, p2, Lk/a/b/a/d/g0/v;->i:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 7
    invoke-virtual {v3, v2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 8
    iget-object v0, p2, Lk/a/b/a/d/g0/v;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 9
    iput-object v0, p2, Lk/a/b/a/d/g0/v;->i:Ljava/nio/ByteBuffer;

    .line 10
    :cond_3
    :goto_1
    :try_start_0
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;->saslHandler:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler;

    invoke-interface {p2, v2}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler;->handleChallenge([B)[B

    move-result-object p2

    .line 11
    array-length v0, p2

    check-cast p1, Lk/a/b/a/d/g0/v;

    .line 12
    new-array v2, v0, [B

    .line 13
    invoke-static {p2, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    new-instance p2, Lk/a/b/a/b/a;

    invoke-direct {p2, v2}, Lk/a/b/a/b/a;-><init>([B)V

    .line 15
    iput-object p2, p1, Lk/a/b/a/d/g0/v;->k:Lk/a/b/a/b/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 16
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;->savedException:Ljava/lang/Exception;

    :goto_2
    return-void
.end method

.method public onSaslInit(Lk/a/b/a/d/v;Lk/a/b/a/d/c0;)V
    .locals 0

    return-void
.end method

.method public onSaslMechanisms(Lk/a/b/a/d/v;Lk/a/b/a/d/c0;)V
    .locals 6

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Sasl cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;->savedException:Ljava/lang/Exception;

    goto/16 :goto_2

    .line 2
    :cond_0
    move-object p2, p1

    check-cast p2, Lk/a/b/a/d/g0/v;

    .line 3
    iget-object v0, p2, Lk/a/b/a/d/g0/v;->v:Lk/a/b/a/d/g0/v$b;

    sget-object v1, Lk/a/b/a/d/g0/v$b;->SERVER:Lk/a/b/a/d/g0/v$b;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 4
    iget-object v0, p2, Lk/a/b/a/d/g0/v;->u:Lk/a/b/a/b/f;

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/String;

    goto :goto_1

    :cond_1
    new-array v1, v3, [Ljava/lang/String;

    .line 5
    iget-object v0, v0, Lk/a/b/a/b/f;->x:Ljava/lang/String;

    aput-object v0, v1, v2

    move-object v0, v1

    goto :goto_1

    .line 6
    :cond_2
    sget-object v1, Lk/a/b/a/d/g0/v$b;->CLIENT:Lk/a/b/a/d/g0/v$b;

    if-ne v0, v1, :cond_7

    .line 7
    iget-object v0, p2, Lk/a/b/a/d/g0/v;->t:[Lk/a/b/a/b/f;

    if-nez v0, :cond_3

    new-array v0, v2, [Ljava/lang/String;

    goto :goto_1

    .line 8
    :cond_3
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 9
    :goto_0
    iget-object v4, p2, Lk/a/b/a/d/g0/v;->t:[Lk/a/b/a/b/f;

    array-length v5, v4

    if-ge v1, v5, :cond_4

    .line 10
    aget-object v4, v4, v1

    .line 11
    iget-object v4, v4, Lk/a/b/a/b/f;->x:Ljava/lang/String;

    .line 12
    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_4
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;->saslHandler:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler;

    invoke-interface {v1, v0}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler;->chooseSaslMechanism([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    aput-object v0, v1, v2

    .line 14
    invoke-virtual {p2, v1}, Lk/a/b/a/d/g0/v;->a([Ljava/lang/String;)V

    const-string v1, "PLAIN"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;->saslHandler:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler;

    invoke-interface {v1}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler;->getPlainUsername()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;->saslHandler:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler;

    invoke-interface {v3}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler;->getPlainPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Lk/a/b/a/d/g0/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_5
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;->saslHandler:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler;

    invoke-interface {p2, v0}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler;->getInitPayload(Ljava/lang/String;)[B

    move-result-object p2

    if-eqz p2, :cond_6

    .line 18
    array-length v0, p2

    if-lez v0, :cond_6

    .line 19
    array-length v0, p2

    check-cast p1, Lk/a/b/a/d/g0/v;

    .line 20
    new-array v1, v0, [B

    .line 21
    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    new-instance p2, Lk/a/b/a/b/a;

    invoke-direct {p2, v1}, Lk/a/b/a/b/a;-><init>([B)V

    .line 23
    iput-object p2, p1, Lk/a/b/a/d/g0/v;->k:Lk/a/b/a/b/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 24
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;->savedException:Ljava/lang/Exception;

    :cond_6
    :goto_2
    return-void

    .line 25
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public onSaslOutcome(Lk/a/b/a/d/v;Lk/a/b/a/d/c0;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Sasl cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;->savedException:Ljava/lang/Exception;

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    check-cast p1, Lk/a/b/a/d/g0/v;

    .line 3
    iget-object p1, p1, Lk/a/b/a/d/g0/v;->p:Lk/a/b/a/d/v$a;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;->saslHandler:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler;

    sget-object p2, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;->SYS:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

    invoke-interface {p1, p2}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler;->handleOutcome(Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;->saslHandler:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler;

    sget-object p2, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;->SYS_TEMP:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

    invoke-interface {p1, p2}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler;->handleOutcome(Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;->saslHandler:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler;

    sget-object p2, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;->SYS_PERM:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

    invoke-interface {p1, p2}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler;->handleOutcome(Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;->saslHandler:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler;

    sget-object p2, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;->AUTH:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

    invoke-interface {p1, p2}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler;->handleOutcome(Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;)V

    goto :goto_0

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;->saslHandler:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler;

    sget-object p2, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;->OK:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

    invoke-interface {p1, p2}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler;->handleOutcome(Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;)V

    goto :goto_0

    .line 10
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Sasl negotiation did not finish yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 11
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;->savedException:Ljava/lang/Exception;

    :goto_0
    return-void
.end method

.method public onSaslResponse(Lk/a/b/a/d/v;Lk/a/b/a/d/c0;)V
    .locals 0

    return-void
.end method
