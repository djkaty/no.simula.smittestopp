.class public abstract Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/c/a/a/a/g;


# static fields
.field public static final ABSOLUTE_EXPIRY_TIME:Ljava/lang/String; = "$.exp"

.field public static final CONNECTION_DEVICE_ID:Ljava/lang/String; = "$.cdid"

.field public static final CONNECTION_MODULE_ID:Ljava/lang/String; = "$.cmid"

.field public static final CONNECTION_TIMEOUT:I = 0xea60

.field public static final CONTENT_ENCODING:Ljava/lang/String; = "$.ce"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "$.ct"

.field public static final CORRELATION_ID:Ljava/lang/String; = "$.cid"

.field public static final CREATION_TIME_UTC:Ljava/lang/String; = "$.ctime"

.field public static final DISCONNECTION_TIMEOUT:I = 0xea60

.field public static final INPUTS_PATH_STRING:Ljava/lang/String; = "inputs"

.field public static final IOTHUB_ACK:Ljava/lang/String; = "iothub-ack"

.field public static final MESSAGE_ID:Ljava/lang/String; = "$.mid"

.field public static final MESSAGE_PROPERTY_KEY_VALUE_SEPARATOR:C = '='

.field public static final MESSAGE_PROPERTY_SEPARATOR:C = '&'

.field public static final MESSAGE_SYSTEM_PROPERTY_IDENTIFIER_DECODED:C = '$'

.field public static final MESSAGE_SYSTEM_PROPERTY_IDENTIFIER_ENCODED:Ljava/lang/String; = "%24"

.field public static final MODULES_PATH_STRING:Ljava/lang/String; = "modules"

.field public static final MQTT_SECURITY_INTERFACE_ID:Ljava/lang/String; = "$.ifid"

.field public static final OUTPUT_NAME:Ljava/lang/String; = "$.on"

.field public static final PROPERTY_KEY_INDEX:I = 0x0

.field public static final PROPERTY_VALUE_INDEX:I = 0x1

.field public static final TO:Ljava/lang/String; = "$.to"

.field public static final USER_ID:Ljava/lang/String; = "$.uid"

.field public static final log:Lk/f/b;


# instance fields
.field public allReceivedMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lk/a/a/b/e/b<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation
.end field

.field public connectionId:Ljava/lang/String;

.field public final incomingLock:Ljava/lang/Object;

.field public listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

.field public messageListener:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessageListener;

.field public mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

.field public final publishLock:Ljava/lang/Object;

.field public final stateLock:Ljava/lang/Object;

.field public unacknowledgedSentMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/microsoft/azure/sdk/iot/device/Message;",
            ">;"
        }
    .end annotation
.end field

.field public userSpecifiedSASTokenExpiredOnRetry:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->log:Lk/f/b;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessageListener;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;",
            "Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;",
            "Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessageListener;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/microsoft/azure/sdk/iot/device/Message;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->userSpecifiedSASTokenExpiredOnRetry:Z

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->getAllReceivedMessages()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->allReceivedMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->getMqttLock()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->stateLock:Ljava/lang/Object;

    .line 6
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->incomingLock:Ljava/lang/Object;

    .line 7
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->publishLock:Ljava/lang/Object;

    .line 8
    iput-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->userSpecifiedSASTokenExpiredOnRetry:Z

    .line 9
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    .line 10
    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->messageListener:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessageListener;

    .line 11
    iput-object p4, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->connectionId:Ljava/lang/String;

    .line 12
    iput-object p5, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->unacknowledgedSentMessages:Ljava/util/Map;

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Mqtt connection info cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private assignPropertiesToMessage(Lcom/microsoft/azure/sdk/iot/device/Message;Ljava/lang/String;)V
    .locals 7

    const/16 v0, 0x26

    .line 1
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    const-string v4, "="

    .line 2
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 5
    :try_start_0
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "$.uid"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_2

    :sswitch_1
    const-string v6, "$.mid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :sswitch_2
    const-string v4, "$.exp"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    goto :goto_2

    :sswitch_3
    const-string v4, "$.cid"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto :goto_2

    :sswitch_4
    const-string v4, "$.to"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_2

    :sswitch_5
    const-string v4, "$.on"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_2

    :sswitch_6
    const-string v4, "$.ct"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    goto :goto_2

    :sswitch_7
    const-string v4, "$.ce"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto :goto_2

    :sswitch_8
    const-string v4, "iothub-ack"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v4, -0x1

    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 8
    invoke-virtual {p1, v5, v3}, Lcom/microsoft/azure/sdk/iot/device/Message;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 9
    :pswitch_0
    invoke-virtual {p1, v3}, Lcom/microsoft/azure/sdk/iot/device/Message;->setContentType(Ljava/lang/String;)V

    goto :goto_3

    .line 10
    :pswitch_1
    invoke-virtual {p1, v3}, Lcom/microsoft/azure/sdk/iot/device/Message;->setContentEncoding(Ljava/lang/String;)V

    goto :goto_3

    .line 11
    :pswitch_2
    invoke-virtual {p1, v3}, Lcom/microsoft/azure/sdk/iot/device/Message;->setOutputName(Ljava/lang/String;)V

    goto :goto_3

    .line 12
    :pswitch_3
    invoke-virtual {p1, v3}, Lcom/microsoft/azure/sdk/iot/device/Message;->setCorrelationId(Ljava/lang/String;)V

    goto :goto_3

    .line 13
    :pswitch_4
    invoke-virtual {p1, v3}, Lcom/microsoft/azure/sdk/iot/device/Message;->setMessageId(Ljava/lang/String;)V

    :goto_3
    :pswitch_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 14
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected property string provided. Expected \'=\' symbol between key and value of the property in string: "

    invoke-static {p2, v3}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2782241d -> :sswitch_8
        0x11166c -> :sswitch_7
        0x11167b -> :sswitch_6
        0x1117e9 -> :sswitch_5
        0x111885 -> :sswitch_4
        0x211b7f4 -> :sswitch_3
        0x211c153 -> :sswitch_2
        0x211dd7e -> :sswitch_1
        0x211fb86 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private constructMessage([BLjava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TELEMETRY:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    invoke-direct {v0, p1, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;-><init>([BLcom/microsoft/azure/sdk/iot/device/MessageType;)V

    const-string p1, "%24"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->assignPropertiesToMessage(Lcom/microsoft/azure/sdk/iot/device/Message;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "/"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 7
    array-length p2, p1

    const/4 v1, 0x2

    if-le p2, v1, :cond_0

    aget-object p2, p1, v1

    const-string v1, "modules"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    .line 8
    aget-object p2, p1, p2

    invoke-virtual {v0, p2}, Lcom/microsoft/azure/sdk/iot/device/Message;->setConnectionModuleId(Ljava/lang/String;)V

    .line 9
    :cond_0
    array-length p2, p1

    const/4 v1, 0x4

    if-le p2, v1, :cond_1

    aget-object p2, p1, v1

    const-string v1, "inputs"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x5

    .line 10
    aget-object p1, p1, p2

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->setInputName(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public connect()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->getMqttAsyncClient()Lk/c/a/a/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lk/c/a/a/a/f;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->log:Lk/f/b;

    const-string v2, "Sending MQTT CONNECT packet..."

    invoke-interface {v1, v2}, Lk/f/b;->b(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->getMqttAsyncClient()Lk/c/a/a/a/f;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->getConnectionOptions()Lk/c/a/a/a/i;

    move-result-object v2

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1, v2, v3, v3}, Lk/c/a/a/a/f;->a(Lk/c/a/a/a/i;Ljava/lang/Object;Lk/c/a/a/a/a;)Lk/c/a/a/a/e;

    move-result-object v1

    const-wide/32 v2, 0xea60

    .line 6
    check-cast v1, Lk/c/a/a/a/q;

    .line 7
    iget-object v1, v1, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    invoke-virtual {v1, v2, v3}, Lk/c/a/a/a/s/p;->a(J)V

    .line 8
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->log:Lk/f/b;

    const-string v2, "Sent MQTT CONNECT packet was acknowledged"

    invoke-interface {v1, v2}, Lk/f/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lk/c/a/a/a/k; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_0
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->log:Lk/f/b;

    const-string v3, "Exception encountered while sending MQTT CONNECT packet"

    invoke-interface {v2, v3, v1}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->disconnect()V

    const-string v2, "Unable to establish MQTT connection"

    .line 12
    invoke-static {v1, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/exceptions/PahoExceptionTranslator;->convertToMqttException(Lk/c/a/a/a/k;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;

    move-result-object v1

    throw v1

    .line 13
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public connectionLost(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->log:Lk/f/b;

    const-string v1, "Mqtt connection lost"

    invoke-interface {v0, v1, p1}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->disconnect()V
    :try_end_0
    .catch Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    if-eqz v2, :cond_3

    if-nez v0, :cond_2

    .line 5
    instance-of v0, p1, Lk/c/a/a/a/k;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Lk/c/a/a/a/k;

    invoke-static {p1, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/exceptions/PahoExceptionTranslator;->convertToMqttException(Lk/c/a/a/a/k;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;

    move-result-object v0

    .line 7
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->log:Lk/f/b;

    const-string v1, "Mqtt connection loss interpreted into transport exception"

    invoke-interface {p1, v1, v0}, Lk/f/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 8
    :cond_1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/Throwable;)V

    .line 9
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->connectionId:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/ReconnectionNotifier;->notifyDisconnectAsync(Ljava/lang/Throwable;Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public deliveryComplete(Lk/c/a/a/a/c;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->log:Lk/f/b;

    move-object v1, p1

    check-cast v1, Lk/c/a/a/a/q;

    .line 2
    iget-object v1, v1, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    .line 3
    iget v1, v1, Lk/c/a/a/a/s/p;->n:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Mqtt message with message id {} was acknowledge by service"

    invoke-interface {v0, v2, v1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->publishLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->unacknowledgedSentMessages:Ljava/util/Map;

    move-object v3, p1

    check-cast v3, Lk/c/a/a/a/q;

    .line 7
    iget-object v3, v3, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    .line 8
    iget v3, v3, Lk/c/a/a/a/s/p;->n:I

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->log:Lk/f/b;

    const-string v3, "Mqtt message with message id {} that was acknowledge by service was sent by this client"

    move-object v4, p1

    check-cast v4, Lk/c/a/a/a/q;

    .line 11
    iget-object v4, v4, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    .line 12
    iget v4, v4, Lk/c/a/a/a/s/p;->n:I

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->unacknowledgedSentMessages:Ljava/util/Map;

    check-cast p1, Lk/c/a/a/a/q;

    .line 15
    iget-object p1, p1, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    .line 16
    iget p1, p1, Lk/c/a/a/a/s/p;->n:I

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/azure/sdk/iot/device/Message;

    goto :goto_0

    .line 18
    :cond_0
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->log:Lk/f/b;

    const-string v3, "Mqtt message with message id {} that was acknowledge by service was not sent by this client, will be ignored"

    check-cast p1, Lk/c/a/a/a/q;

    .line 19
    iget-object p1, p1, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    .line 20
    iget p1, p1, Lk/c/a/a/a/s/p;->n:I

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, v3, p1}, Lk/f/b;->c(Ljava/lang/String;Ljava/lang/Object;)V

    move-object p1, v2

    .line 22
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    instance-of v0, p1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    if-eqz v0, :cond_2

    .line 24
    move-object v0, p1

    check-cast v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->getDeviceOperationType()Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    move-result-object v0

    .line 25
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_TWIN_SUBSCRIBE_DESIRED_PROPERTIES_REQUEST:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_METHOD_SUBSCRIBE_REQUEST:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;->DEVICE_OPERATION_TWIN_UNSUBSCRIBE_DESIRED_PROPERTIES_REQUEST:Lcom/microsoft/azure/sdk/iot/device/DeviceTwin/DeviceOperations;

    if-ne v0, v1, :cond_2

    :cond_1
    return-void

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    invoke-interface {v0, p1, v2}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;->onMessageSent(Lcom/microsoft/azure/sdk/iot/device/Message;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 27
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public disconnect()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->log:Lk/f/b;

    const-string v1, "Sending MQTT DISCONNECT packet"

    invoke-interface {v0, v1}, Lk/f/b;->b(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->disconnect()Lk/c/a/a/a/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/32 v1, 0xea60

    .line 4
    check-cast v0, Lk/c/a/a/a/q;

    .line 5
    iget-object v0, v0, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    invoke-virtual {v0, v1, v2}, Lk/c/a/a/a/s/p;->a(J)V

    .line 6
    :cond_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->log:Lk/f/b;

    const-string v1, "Sent MQTT DISCONNECT packet was acknowledged"

    invoke-interface {v0, v1}, Lk/f/b;->b(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->close()V

    .line 8
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->setMqttAsyncClient(Lk/c/a/a/a/f;)V
    :try_end_0
    .catch Lk/c/a/a/a/k; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 9
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->log:Lk/f/b;

    const-string v2, "Exception encountered while sending MQTT DISCONNECT packet"

    invoke-interface {v1, v2, v0}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "Unable to disconnect"

    .line 10
    invoke-static {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/exceptions/PahoExceptionTranslator;->convertToMqttException(Lk/c/a/a/a/k;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;

    move-result-object v0

    throw v0
.end method

.method public messageArrived(Ljava/lang/String;Lk/c/a/a/a/l;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->log:Lk/f/b;

    .line 2
    iget v1, p2, Lk/c/a/a/a/l;->f:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Mqtt message arrived on topic {} with mqtt message id {}"

    invoke-interface {v0, v2, p1, v1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->getAllReceivedMessages()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    new-instance v1, Lk/a/a/b/e/a;

    .line 5
    iget-object v2, p2, Lk/c/a/a/a/l;->b:[B

    .line 6
    invoke-direct {v1, p1, v2}, Lk/a/a/b/e/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->messageListener:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessageListener;

    if-eqz p1, :cond_0

    .line 8
    iget p2, p2, Lk/c/a/a/a/l;->f:I

    .line 9
    invoke-interface {p1, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessageListener;->onMessageArrived(I)V

    :cond_0
    return-void
.end method

.method public peekMessage()Lk/a/a/b/e/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk/a/a/b/e/b<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->allReceivedMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/a/b/e/b;

    return-object v0
.end method

.method public publish(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/Message;)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 1
    :try_start_0
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    invoke-virtual {v4}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->getMqttAsyncClient()Lk/c/a/a/a/f;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 2
    iget-boolean v4, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->userSpecifiedSASTokenExpiredOnRetry:Z

    if-nez v4, :cond_6

    .line 3
    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    invoke-virtual {v4}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->getMqttAsyncClient()Lk/c/a/a/a/f;

    move-result-object v4

    invoke-virtual {v4}, Lk/c/a/a/a/f;->b()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Lcom/microsoft/azure/sdk/iot/device/Message;->getBytes()[B

    move-result-object v4

    if-eqz v4, :cond_4

    .line 5
    invoke-virtual {p2}, Lcom/microsoft/azure/sdk/iot/device/Message;->getBytes()[B

    move-result-object v4

    .line 6
    :goto_0
    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    invoke-virtual {v5}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->getMqttAsyncClient()Lk/c/a/a/a/f;

    move-result-object v5

    .line 7
    iget-object v5, v5, Lk/c/a/a/a/f;->A:Lk/c/a/a/a/s/a;

    .line 8
    iget-object v5, v5, Lk/c/a/a/a/s/a;->m:Lk/c/a/a/a/s/f;

    invoke-virtual {v5}, Lk/c/a/a/a/s/f;->c()[Lk/c/a/a/a/j;

    move-result-object v5

    .line 9
    array-length v5, v5

    const/16 v6, 0xa

    if-lt v5, v6, :cond_2

    const-wide/16 v5, 0xa

    .line 10
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 11
    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    invoke-virtual {v5}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->getMqttAsyncClient()Lk/c/a/a/a/f;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 12
    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    invoke-virtual {v5}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->getMqttAsyncClient()Lk/c/a/a/a/f;

    move-result-object v5

    invoke-virtual {v5}, Lk/c/a/a/a/f;->b()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance v4, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string v5, "Cannot publish when mqtt client is holding 10 tokens and is disconnected"

    invoke-direct {v4, v5}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v4, v3}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->setRetryable(Z)V

    .line 15
    throw v4

    .line 16
    :cond_1
    new-instance v4, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string v5, "Connection was lost while waiting for mqtt deliveries to finish"

    invoke-direct {v4, v5}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v4, v3}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->setRetryable(Z)V

    .line 18
    throw v4

    .line 19
    :cond_2
    array-length v5, v4

    if-nez v5, :cond_3

    new-instance v4, Lk/c/a/a/a/l;

    invoke-direct {v4}, Lk/c/a/a/a/l;-><init>()V

    goto :goto_1

    :cond_3
    new-instance v5, Lk/c/a/a/a/l;

    invoke-direct {v5, v4}, Lk/c/a/a/a/l;-><init>([B)V

    move-object v4, v5

    .line 20
    :goto_1
    invoke-virtual {v4, v3}, Lk/c/a/a/a/l;->a(I)V

    .line 21
    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->publishLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Lk/c/a/a/a/k; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :try_start_1
    sget-object v6, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->log:Lk/f/b;

    const-string v7, "Publishing message ({}) to MQTT topic {}"

    invoke-interface {v6, v7, p2, p1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    iget-object v6, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    invoke-virtual {v6}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->getMqttAsyncClient()Lk/c/a/a/a/f;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lk/c/a/a/a/f;->a(Ljava/lang/String;Lk/c/a/a/a/l;)Lk/c/a/a/a/c;

    move-result-object v4

    .line 24
    iget-object v6, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->unacknowledgedSentMessages:Ljava/util/Map;

    move-object v7, v4

    check-cast v7, Lk/c/a/a/a/q;

    .line 25
    iget-object v7, v7, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    .line 26
    iget v7, v7, Lk/c/a/a/a/s/p;->n:I

    .line 27
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v6, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->log:Lk/f/b;

    const-string v7, "Message published to MQTT topic {}. Mqtt message id {} added to list of messages to wait for acknowledgement ({})"

    new-array v8, v2, [Ljava/lang/Object;

    aput-object p1, v8, v1

    check-cast v4, Lk/c/a/a/a/q;

    .line 29
    iget-object v4, v4, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    .line 30
    iget v4, v4, Lk/c/a/a/a/s/p;->n:I

    .line 31
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v3

    aput-object p2, v8, v0

    invoke-interface {v6, v7, v8}, Lk/f/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    .line 33
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Cannot publish on null or empty publish topic"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 34
    :cond_5
    new-instance v4, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string v5, "Cannot publish when mqtt client is disconnected"

    invoke-direct {v4, v5}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v4, v3}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->setRetryable(Z)V

    .line 36
    throw v4

    .line 37
    :cond_6
    new-instance v4, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string v5, "Cannot publish when user supplied SAS token has expired"

    invoke-direct {v4, v5}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 38
    :cond_7
    new-instance v4, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string v5, "Need to open first!"

    invoke-direct {v4, v5}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v4, v3}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->setRetryable(Z)V

    .line 40
    throw v4
    :try_end_2
    .catch Lk/c/a/a/a/k; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    .line 41
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string v1, "Interrupted, Unable to publish message on topic : "

    invoke-static {v1, p1}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v4

    .line 42
    sget-object v5, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->log:Lk/f/b;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p2, v2, v3

    aput-object v4, v2, v0

    const-string p2, "Message could not be published to MQTT topic {} ({})"

    invoke-interface {v5, p2, v2}, Lk/f/b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to publish message on topic : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/exceptions/PahoExceptionTranslator;->convertToMqttException(Lk/c/a/a/a/k;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;

    move-result-object p1

    throw p1
.end method

.method public receive()Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->incomingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->peekMessage()Lk/a/a/b/e/b;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1}, Lk/a/a/b/e/b;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v1}, Lk/a/a/b/e/b;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_0

    .line 6
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->allReceivedMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 7
    invoke-direct {p0, v1, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->constructMessage([BLjava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 8
    :cond_0
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string v2, "Data cannot be null when topic is non-null"

    invoke-direct {v1, v2}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_1
    monitor-exit v0

    return-object v2

    .line 10
    :cond_2
    monitor-exit v0

    return-object v2

    .line 11
    :cond_3
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Mqtt client should be initialised at least once before using it"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendMessageAcknowledgement(I)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->log:Lk/f/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Sending mqtt ack for received message with mqtt message id {}"

    invoke-interface {v0, v2, v1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    invoke-virtual {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->sendMessageAcknowledgement(I)Z

    move-result p1

    return p1
.end method

.method public subscribe(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_2

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->userSpecifiedSASTokenExpiredOnRetry:Z

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->getMqttAsyncClient()Lk/c/a/a/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lk/c/a/a/a/f;->b()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->log:Lk/f/b;

    const-string v3, "Sending MQTT SUBSCRIBE packet for topic {}"

    invoke-interface {v1, v3, p1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->getMqttAsyncClient()Lk/c/a/a/a/f;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Lk/c/a/a/a/f;->a(Ljava/lang/String;I)Lk/c/a/a/a/e;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    .line 6
    check-cast v1, Lk/c/a/a/a/q;

    .line 7
    iget-object v1, v1, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    invoke-virtual {v1, v2, v3}, Lk/c/a/a/a/s/p;->a(J)V

    .line 8
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->log:Lk/f/b;

    const-string v2, "Sent MQTT SUBSCRIBE packet for topic {} was acknowledged"

    invoke-interface {v1, v2, p1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lk/c/a/a/a/k; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 10
    :cond_0
    :try_start_2
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string v3, "Cannot subscribe when mqtt client is disconnected"

    invoke-direct {v1, v3}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, v2}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->setRetryable(Z)V

    .line 12
    throw v1

    .line 13
    :cond_1
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string v2, "Cannot subscribe when user supplied SAS token has expired"

    invoke-direct {v1, v2}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 14
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Topic cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Lk/c/a/a/a/k; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :goto_0
    :try_start_3
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->log:Lk/f/b;

    const-string v3, "Encountered exception while sending MQTT SUBSCRIBE packet for topic {}"

    invoke-interface {v2, v3, p1, v1}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to subscribe to topic :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/exceptions/PahoExceptionTranslator;->convertToMqttException(Lk/c/a/a/a/k;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;

    move-result-object p1

    throw p1

    .line 17
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
