.class public Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;
.super Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;
.source "SourceFile"


# instance fields
.field public eventsSubscribeTopic:Ljava/lang/String;

.field public inputsSubscribeTopic:Ljava/lang/String;

.field public isEdgeHub:Z

.field public moduleId:Ljava/lang/String;

.field public publishTopic:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessageListener;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;",
            "Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessageListener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/microsoft/azure/sdk/iot/device/Message;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p8

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;-><init>(Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessageListener;Ljava/lang/String;Ljava/util/Map;)V

    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "/messages/devicebound/#"

    const-string p3, "/messages/events/"

    const-string p4, "devices/"

    if-eqz p6, :cond_1

    .line 3
    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p8, "/modules/"

    invoke-virtual {p5, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->publishTopic:Ljava/lang/String;

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->eventsSubscribeTopic:Ljava/lang/String;

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/inputs/#"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->inputsSubscribeTopic:Ljava/lang/String;

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    invoke-static {p4, p2, p3}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->publishTopic:Ljava/lang/String;

    .line 8
    invoke-static {p4, p2, p1}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->eventsSubscribeTopic:Ljava/lang/String;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->inputsSubscribeTopic:Ljava/lang/String;

    .line 10
    :goto_1
    iput-object p6, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->moduleId:Ljava/lang/String;

    .line 11
    iput-boolean p7, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->isEdgeHub:Z

    return-void

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Device id cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private appendPropertyIfPresent(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p4, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p2, 0x26

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3d

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string p3, "Could not utf-8 encode the mqtt property"

    invoke-direct {p2, p3, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    return p2
.end method


# virtual methods
.method public send(Lcom/microsoft/azure/sdk/iot/device/Message;)V
    .locals 7

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getBytes()[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->publishTopic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "$.mid"

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->appendPropertyIfPresent(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getCorrelationId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$.cid"

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->appendPropertyIfPresent(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getUserId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$.uid"

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->appendPropertyIfPresent(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getTo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$.to"

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->appendPropertyIfPresent(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getOutputName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$.on"

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->appendPropertyIfPresent(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getConnectionDeviceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$.cdid"

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->appendPropertyIfPresent(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getConnectionModuleId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$.cmid"

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->appendPropertyIfPresent(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$.ce"

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->appendPropertyIfPresent(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 12
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getContentType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$.ct"

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->appendPropertyIfPresent(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 13
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getCreationTimeUTCString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$.ctime"

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->appendPropertyIfPresent(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 14
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->isSecurityMessage()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "$.ifid"

    const-string v4, "urn:azureiot:Security:SecurityAgent:1"

    .line 15
    invoke-direct {p0, v0, v1, v3, v4}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->appendPropertyIfPresent(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getProperties()[Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 17
    invoke-virtual {v5}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v1, v6, v5}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->appendPropertyIfPresent(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->moduleId:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->publish(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/Message;)V

    return-void

    .line 22
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public start()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->connect()V

    .line 2
    iget-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->isEdgeHub:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->eventsSubscribeTopic:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->subscribe(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->moduleId:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->inputsSubscribeTopic:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->subscribe(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->disconnect()V

    return-void
.end method
