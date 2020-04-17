.class public Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public payload:[B

.field public qos:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

.field public topic:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;->DELIVER_UNKNOWN:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;->qos:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    .line 3
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;->topic:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lk/c/a/a/a/l;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;->DELIVER_UNKNOWN:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;->qos:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    if-eqz p2, :cond_3

    .line 6
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;->topic:Ljava/lang/String;

    .line 7
    iget-object p1, p2, Lk/c/a/a/a/l;->b:[B

    .line 8
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;->payload:[B

    .line 9
    iget p1, p2, Lk/c/a/a/a/l;->c:I

    if-nez p1, :cond_0

    .line 10
    sget-object p1, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;->DELIVER_AT_MOST_ONCE:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;->qos:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 11
    sget-object p1, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;->DELIVER_EXACTLY_ONCE:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;->qos:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 12
    sget-object p1, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;->DELIVER_AT_LEAST_ONCE:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;->qos:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    goto :goto_0

    .line 13
    :cond_2
    sget-object p1, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;->DELIVER_FAILURE:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;->qos:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    :goto_0
    return-void

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;->DELIVER_UNKNOWN:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;->qos:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    .line 17
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;->topic:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;->payload:[B

    return-void
.end method

.method public static retrieveQosValue(Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;->DELIVER_AT_MOST_ONCE:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;->DELIVER_AT_LEAST_ONCE:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;->DELIVER_EXACTLY_ONCE:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    if-ne p0, v0, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/16 p0, 0x80

    :goto_0
    return p0
.end method


# virtual methods
.method public getMqttMessage()Lk/c/a/a/a/l;
    .locals 3

    .line 1
    new-instance v0, Lk/c/a/a/a/l;

    invoke-direct {v0}, Lk/c/a/a/a/l;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;->payload:[B

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lk/c/a/a/a/l;->a([B)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;->qos:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    sget-object v2, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;->DELIVER_UNKNOWN:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    if-eq v1, v2, :cond_1

    .line 5
    invoke-static {v1}, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;->retrieveQosValue(Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;)I

    move-result v1

    invoke-virtual {v0, v1}, Lk/c/a/a/a/l;->a(I)V

    :cond_1
    return-object v0
.end method

.method public getPayload()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;->payload:[B

    return-object v0
.end method

.method public getQos()Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;->qos:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public setPayload([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;->payload:[B

    return-void
.end method

.method public setQos(Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;->qos:Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttQos;

    return-void
.end method

.method public setTopic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/transport/mqtt/MqttMessage;->topic:Ljava/lang/String;

    return-void
.end method
