.class public Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public messageImpl:Lk/a/b/a/f/d/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk/a/b/a/f/d/a;

    invoke-direct {v0}, Lk/a/b/a/f/d/a;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpMessage;->messageImpl:Lk/a/b/a/f/d/a;

    return-void
.end method

.method public constructor <init>(Lk/a/b/a/f/d/a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpMessage;->messageImpl:Lk/a/b/a/f/d/a;

    return-void
.end method


# virtual methods
.method public decode([BII)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpMessage;->messageImpl:Lk/a/b/a/f/d/a;

    invoke-virtual {v0, p1, p2, p3}, Lk/a/b/a/f/d/a;->decode([BII)I

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The data cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode([BI)I
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpMessage;->messageImpl:Lk/a/b/a/f/d/a;

    array-length v1, p1

    invoke-virtual {v0, p1, p2, v1}, Lk/a/b/a/f/d/a;->encode([BII)I

    move-result p1

    return p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The data cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAmqpBody()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpMessage;->messageImpl:Lk/a/b/a/f/d/a;

    invoke-virtual {v0}, Lk/a/b/a/f/d/a;->getBody()Lk/a/b/a/b/k/t;

    move-result-object v0

    check-cast v0, Lk/a/b/a/b/k/e;

    .line 2
    iget-object v0, v0, Lk/a/b/a/b/k/e;->a:Lk/a/b/a/b/a;

    .line 3
    iget v1, v0, Lk/a/b/a/b/a;->c:I

    .line 4
    new-array v1, v1, [B

    .line 5
    invoke-virtual {v0}, Lk/a/b/a/b/a;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method public getApplicationProperty()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpMessage;->messageImpl:Lk/a/b/a/f/d/a;

    invoke-virtual {v0}, Lk/a/b/a/f/d/a;->getApplicationProperties()Lk/a/b/a/b/k/d;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lk/a/b/a/b/k/d;->a:Ljava/util/Map;

    return-object v0
.end method

.method public setApplicationProperty(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lk/a/b/a/b/k/d;

    invoke-direct {v0, p1}, Lk/a/b/a/b/k/d;-><init>(Ljava/util/Map;)V

    .line 2
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpMessage;->messageImpl:Lk/a/b/a/f/d/a;

    invoke-virtual {p1, v0}, Lk/a/b/a/f/d/a;->setApplicationProperties(Lk/a/b/a/b/k/d;)V

    return-void
.end method

.method public setBody(Lk/a/b/a/b/k/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpMessage;->messageImpl:Lk/a/b/a/f/d/a;

    invoke-virtual {v0, p1}, Lk/a/b/a/f/d/a;->setBody(Lk/a/b/a/b/k/t;)V

    return-void
.end method

.method public setBody([B)V
    .locals 1

    .line 2
    new-instance v0, Lk/a/b/a/b/a;

    invoke-direct {v0, p1}, Lk/a/b/a/b/a;-><init>([B)V

    .line 3
    new-instance p1, Lk/a/b/a/b/k/e;

    invoke-direct {p1, v0}, Lk/a/b/a/b/k/e;-><init>(Lk/a/b/a/b/a;)V

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/AmqpMessage;->messageImpl:Lk/a/b/a/f/d/a;

    invoke-virtual {v0, p1}, Lk/a/b/a/f/d/a;->setBody(Lk/a/b/a/b/k/t;)V

    return-void
.end method
