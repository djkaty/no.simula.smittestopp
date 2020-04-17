.class public Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public amqpLinkAddress:Ljava/lang/String;

.field public amqpProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lk/a/b/a/b/f;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public receiverLink:Lk/a/b/a/d/t;

.field public receiverLinkTag:Ljava/lang/String;

.field public senderLink:Lk/a/b/a/d/x;

.field public senderLinkTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->amqpProperties:Ljava/util/Map;

    const-string v0, "provision_sender_link"

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->senderLinkTag:Ljava/lang/String;

    const-string v0, "provision_receiver_link"

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->receiverLinkTag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->senderLink:Lk/a/b/a/d/x;

    .line 6
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->receiverLink:Lk/a/b/a/d/t;

    return-void
.end method


# virtual methods
.method public addAmqpLinkProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->amqpProperties:Ljava/util/Map;

    invoke-static {p1}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearAmqpLinkProperty()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->amqpProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public declared-synchronized closeLinks()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->receiverLink:Lk/a/b/a/d/t;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->receiverLink:Lk/a/b/a/d/t;

    invoke-interface {v0}, Lk/a/b/a/d/f;->close()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->senderLink:Lk/a/b/a/d/x;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->senderLink:Lk/a/b/a/d/x;

    invoke-interface {v0}, Lk/a/b/a/d/f;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initLink(Lk/a/b/a/d/n;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    invoke-interface {p1}, Lk/a/b/a/d/n;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->senderLinkTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lk/a/b/a/b/k/v;

    invoke-direct {v0}, Lk/a/b/a/b/k/v;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->amqpLinkAddress:Ljava/lang/String;

    .line 4
    iput-object v1, v0, Lk/a/b/a/b/k/w;->a:Ljava/lang/String;

    .line 5
    invoke-interface {p1, v0}, Lk/a/b/a/d/n;->a(Lk/a/b/a/b/n/r;)V

    .line 6
    sget-object v0, Lk/a/b/a/b/n/p;->UNSETTLED:Lk/a/b/a/b/n/p;

    invoke-interface {p1, v0}, Lk/a/b/a/d/n;->a(Lk/a/b/a/b/n/p;)V

    .line 7
    :cond_0
    invoke-interface {p1}, Lk/a/b/a/d/n;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->receiverLinkTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Lk/a/b/a/b/k/u;

    invoke-direct {v0}, Lk/a/b/a/b/k/u;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->amqpLinkAddress:Ljava/lang/String;

    .line 10
    iput-object v1, v0, Lk/a/b/a/b/k/w;->a:Ljava/lang/String;

    .line 11
    invoke-interface {p1, v0}, Lk/a/b/a/d/n;->a(Lk/a/b/a/b/n/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proton exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The link cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isReceiverLinkTag(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->receiverLinkTag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    .line 3
    monitor-exit p0

    return p1
.end method

.method public openLinks(Lk/a/b/a/d/y;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->receiverLinkTag:Ljava/lang/String;

    invoke-interface {p1, v0}, Lk/a/b/a/d/y;->b(Ljava/lang/String;)Lk/a/b/a/d/t;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->receiverLink:Lk/a/b/a/d/t;

    .line 2
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->amqpProperties:Ljava/util/Map;

    invoke-interface {v0, v1}, Lk/a/b/a/d/n;->a(Ljava/util/Map;)V

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->receiverLink:Lk/a/b/a/d/t;

    invoke-interface {v0}, Lk/a/b/a/d/f;->open()V

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->senderLinkTag:Ljava/lang/String;

    invoke-interface {p1, v0}, Lk/a/b/a/d/y;->a(Ljava/lang/String;)Lk/a/b/a/d/x;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->senderLink:Lk/a/b/a/d/x;

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->amqpProperties:Ljava/util/Map;

    invoke-interface {p1, v0}, Lk/a/b/a/d/n;->a(Ljava/util/Map;)V

    .line 6
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->senderLink:Lk/a/b/a/d/x;

    invoke-interface {p1}, Lk/a/b/a/d/f;->open()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Proton exception"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The session cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public receiverMessageFromLink(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpMessage;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->receiverLink:Lk/a/b/a/d/t;

    if-nez v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {v1}, Lk/a/b/a/d/n;->k()Lk/a/b/a/d/e;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->receiverLinkTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lk/a/b/a/d/e;->t()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v1}, Lk/a/b/a/d/e;->O()Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    invoke-interface {v1}, Lk/a/b/a/d/e;->pending()I

    move-result p1

    .line 6
    new-array v0, p1, [B

    .line 7
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->receiverLink:Lk/a/b/a/d/t;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, p1}, Lk/a/b/a/d/t;->b([BII)I

    move-result p1

    .line 8
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->receiverLink:Lk/a/b/a/d/t;

    invoke-interface {v1}, Lk/a/b/a/d/t;->d()Z

    .line 9
    new-instance v1, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpMessage;

    invoke-direct {v1}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpMessage;-><init>()V

    .line 10
    invoke-virtual {v1, v0, v2, p1}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpMessage;->decode([BII)V

    move-object v0, v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public sendMessage([B[BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->senderLink:Lk/a/b/a/d/x;

    invoke-interface {v0, p1}, Lk/a/b/a/d/n;->a([B)Lk/a/b/a/d/e;

    .line 2
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->senderLink:Lk/a/b/a/d/x;

    invoke-interface {p1, p2, p4, p3}, Lk/a/b/a/d/x;->a([BII)I

    .line 3
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpDeviceOperations;->senderLink:Lk/a/b/a/d/x;

    invoke-interface {p1}, Lk/a/b/a/d/x;->d()Z

    return-void
.end method
