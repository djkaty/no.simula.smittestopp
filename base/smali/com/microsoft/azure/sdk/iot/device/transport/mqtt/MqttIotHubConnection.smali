.class public Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportConnection;
.implements Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessageListener;


# static fields
.field public static final API_VERSION:Ljava/lang/String;

.field public static final SSL_PORT_SUFFIX:Ljava/lang/String; = ":8883"

.field public static final SSL_PREFIX:Ljava/lang/String; = "ssl://"

.field public static final WEBSOCKET_QUERY:Ljava/lang/String; = "?iothub-no-client-cert=true"

.field public static final WEBSOCKET_RAW_PATH:Ljava/lang/String; = "/$iothub/websocket"

.field public static final WS_SSL_PREFIX:Ljava/lang/String; = "wss://"

.field public static final log:Lk/f/b;


# instance fields
.field public final MQTT_CONNECTION_LOCK:Ljava/lang/Object;

.field public final config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

.field public connectionId:Ljava/lang/String;

.field public deviceMessaging:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;

.field public deviceMethod:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;

.field public deviceTwin:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;

.field public iotHubUserName:Ljava/lang/String;

.field public iotHubUserPassword:Ljava/lang/String;

.field public listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

.field public mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

.field public receivedMessagesToAcknowledge:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public state:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

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


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->log:Lk/f/b;

    const-string v0, "?api-version="

    .line 2
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/TransportUtils;->IOTHUB_API_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->API_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->MQTT_CONNECTION_LOCK:Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->DISCONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->state:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->receivedMessagesToAcknowledge:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->unacknowledgedSentMessages:Ljava/util/Map;

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->MQTT_CONNECTION_LOCK:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_3

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getIotHubHostname()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getIotHubHostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getIotHubName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getIotHubName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceMessaging:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;

    .line 12
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceMethod:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;

    .line 13
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceTwin:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;

    .line 14
    monitor-exit v0

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "hubName cannot be null or empty."

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceID cannot be null or empty."

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "hostName cannot be null or empty."

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 18
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "The DeviceClientConfig cannot be null."

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private receiveMessage()Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceMethod:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->receive()Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->log:Lk/f/b;

    const-string v2, "Received MQTT device method message ({})"

    invoke-interface {v1, v2, v0}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceTwin:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->receive()Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->log:Lk/f/b;

    const-string v2, "Received MQTT device twin message ({})"

    invoke-interface {v1, v2, v0}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceMessaging:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->receive()Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->log:Lk/f/b;

    const-string v2, "Received MQTT device messaging message ({})"

    invoke-interface {v1, v2, v0}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->state:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->DISCONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->log:Lk/f/b;

    const-string v1, "Closing MQTT connection"

    invoke-interface {v0, v1}, Lk/f/b;->b(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceMethod:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceMethod:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->stop()V

    .line 5
    iput-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceMethod:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceTwin:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceTwin:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->stop()V

    .line 8
    iput-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceTwin:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceMessaging:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceMessaging:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->stop()V

    .line 11
    iput-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceMessaging:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;

    .line 12
    :cond_3
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->DISCONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->state:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    .line 13
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->log:Lk/f/b;

    const-string v1, "Successfully closed MQTT connection"

    invoke-interface {v0, v1}, Lk/f/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 14
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->DISCONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    iput-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->state:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    .line 15
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->log:Lk/f/b;

    const-string v2, "Exception encountered while closing MQTT connection, connection state is unknown"

    invoke-interface {v1, v2, v0}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    throw v0
.end method

.method public getConnectionId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->connectionId:Ljava/lang/String;

    return-object v0
.end method

.method public onMessageArrived(I)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->receiveMessage()Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    move-result-object v1
    :try_end_0
    .catch Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    new-instance v3, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string v4, "Failed to receive message from service"

    invoke-direct {v3, v4, v1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, v0, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;->onMessageReceived(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;Ljava/lang/Throwable;)V

    .line 3
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->log:Lk/f/b;

    const-string v3, "Encountered exception while receiving message over MQTT"

    invoke-interface {v2, v3, v1}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    const-string v2, "Message sent from service could not be parsed"

    invoke-direct {v1, v2}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;->onMessageReceived(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;Ljava/lang/Throwable;)V

    .line 5
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->log:Lk/f/b;

    const-string v0, "Received message that could not be parsed. That message has been ignored."

    invoke-interface {p1, v0}, Lk/f/b;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 6
    :cond_0
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->log:Lk/f/b;

    const-string v3, "MQTT received message so it has been added to the messages to acknowledge list ({})"

    invoke-interface {v2, v3, v1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->receivedMessagesToAcknowledge:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceTwinMessageCallback()Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setMessageCallback(Lcom/microsoft/azure/sdk/iot/device/MessageCallback;)V

    .line 10
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceTwinMessageContext()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setMessageCallbackContext(Ljava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceMethodsMessageCallback()Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setMessageCallback(Lcom/microsoft/azure/sdk/iot/device/MessageCallback;)V

    .line 12
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceMethodsMessageContext()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setMessageCallbackContext(Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getInputName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceTelemetryMessageCallback(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/MessageCallback;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setMessageCallback(Lcom/microsoft/azure/sdk/iot/device/MessageCallback;)V

    .line 14
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getInputName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceTelemetryMessageContext(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;->setMessageCallbackContext(Ljava/lang/Object;)V

    .line 15
    :goto_1
    iget-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    invoke-interface {p1, v1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;->onMessageReceived(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public open(Ljava/util/Queue;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;",
            ">;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->connectionId:Ljava/lang/String;

    .line 2
    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_c

    .line 3
    iget-object v10, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->MQTT_CONNECTION_LOCK:Ljava/lang/Object;

    monitor-enter v10

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->state:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->CONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    if-ne v0, v2, :cond_0

    .line 5
    monitor-exit v10

    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->log:Lk/f/b;

    const-string v2, "Opening MQTT connection..."

    invoke-interface {v0, v2}, Lk/f/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getAuthenticationProvider()Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubAuthenticationProvider;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v7

    .line 8
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getAuthenticationType()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    move-result-object v0

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;->SAS_TOKEN:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    const/4 v9, 0x0

    if-ne v0, v2, :cond_1

    .line 9
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->log:Lk/f/b;

    const-string v2, "MQTT connection will use sas token based auth"

    invoke-interface {v0, v2}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getSasTokenAuthentication()Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0, v9, v9}, Lcom/microsoft/azure/sdk/iot/device/auth/IotHubSasTokenAuthenticationProvider;->getRenewedSasToken(ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->iotHubUserPassword:Ljava/lang/String;

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getAuthenticationType()Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    move-result-object v0

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;->X509_CERTIFICATE:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig$AuthType;

    if-ne v0, v2, :cond_3

    .line 12
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->isUseWebsocket()Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->log:Lk/f/b;

    const-string v2, "MQTT connection will use X509 certificate based auth"

    invoke-interface {v0, v2}, Lk/f/b;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->iotHubUserPassword:Ljava/lang/String;

    goto :goto_0

    .line 15
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "X509 authentication is not supported over MQTT_WS"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getProductInfo()Lcom/microsoft/azure/sdk/iot/device/ProductInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/ProductInfo;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceClientType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\+"

    const-string v4, "%20"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getModuleId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 20
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    move-object v4, v2

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getIotHubHostname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->API_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->iotHubUserName:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getGatewayHostname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 25
    :cond_5
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getIotHubHostname()Ljava/lang/String;

    move-result-object v0

    .line 26
    :cond_6
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->isUseWebsocket()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wss://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/$iothub/websocket"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?iothub-no-client-cert=true"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 28
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->iotHubUserName:Ljava/lang/String;

    iget-object v6, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->iotHubUserPassword:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    .line 29
    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getProxySettings()Lcom/microsoft/azure/sdk/iot/device/ProxySettings;

    move-result-object v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/microsoft/azure/sdk/iot/device/ProxySettings;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    goto :goto_1

    .line 30
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ssl://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":8883"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 31
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->iotHubUserName:Ljava/lang/String;

    iget-object v6, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->iotHubUserPassword:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLContext;Lcom/microsoft/azure/sdk/iot/device/ProxySettings;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    .line 32
    :goto_1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    iget-object v6, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->connectionId:Ljava/lang/String;

    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v5}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getModuleId()Ljava/lang/String;

    move-result-object v7

    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v5}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getGatewayHostname()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->config:Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;

    invoke-virtual {v5}, Lcom/microsoft/azure/sdk/iot/device/DeviceClientConfig;->getGatewayHostname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    const/4 v8, 0x1

    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    :goto_2
    iget-object v9, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->unacknowledgedSentMessages:Ljava/util/Map;

    move-object v1, v0

    move-object v5, p0

    invoke-direct/range {v1 .. v9}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;-><init>(Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessageListener;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceMessaging:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;

    .line 33
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    invoke-virtual {v1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;->setMqttCallback(Lk/c/a/a/a/g;)V

    .line 34
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->connectionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->unacknowledgedSentMessages:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;-><init>(Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceMethod:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;

    .line 35
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->mqttConnection:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->connectionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->unacknowledgedSentMessages:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;-><init>(Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttConnection;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceTwin:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;

    .line 36
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceMessaging:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->start()V

    .line 37
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->CONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->state:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    .line 38
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->log:Lk/f/b;

    const-string v1, "MQTT connection opened successfully"

    invoke-interface {v0, v1}, Lk/f/b;->b(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->connectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;->onConnectionEstablished(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :try_start_2
    monitor-exit v10

    return-void

    :catch_0
    move-exception v0

    .line 41
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->log:Lk/f/b;

    const-string v2, "Exception encountered while opening MQTT connection; closing connection"

    invoke-interface {v1, v2, v0}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->DISCONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    iput-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->state:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    .line 43
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceMethod:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;

    if-eqz v1, :cond_9

    .line 44
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceMethod:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->stop()V

    .line 45
    :cond_9
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceTwin:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;

    if-eqz v1, :cond_a

    .line 46
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceTwin:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->stop()V

    .line 47
    :cond_a
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceMessaging:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;

    if-eqz v1, :cond_b

    .line 48
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceMessaging:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;

    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->stop()V

    .line 49
    :cond_b
    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    invoke-direct {v1, v0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    .line 50
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 51
    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Mqtt does not support Multiplexing"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendMessage(Lcom/microsoft/azure/sdk/iot/device/Message;)Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->MQTT_CONNECTION_LOCK:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_4

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getBytes()[B

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object v1

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TWIN:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    if-eq v1, v2, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object v1

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_METHODS:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    if-eq v1, v2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->state:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;->DISCONNECTED:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;

    if-eq v1, v2, :cond_3

    .line 7
    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK_EMPTY:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object v2

    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_METHODS:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    if-ne v2, v3, :cond_1

    .line 9
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceMethod:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->start()V

    .line 10
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->log:Lk/f/b;

    const-string v3, "Sending MQTT device method message ({})"

    invoke-interface {v2, v3, p1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceMethod:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;

    check-cast p1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    invoke-virtual {v2, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->send(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object v2

    sget-object v3, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TWIN:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    if-ne v2, v3, :cond_2

    .line 13
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceTwin:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;

    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->start()V

    .line 14
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->log:Lk/f/b;

    const-string v3, "Sending MQTT device twin message ({})"

    invoke-interface {v2, v3, p1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceTwin:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;

    check-cast p1, Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;

    invoke-virtual {v2, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->send(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubTransportMessage;)V

    goto :goto_0

    .line 16
    :cond_2
    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->log:Lk/f/b;

    const-string v3, "Sending MQTT device telemetry message ({})"

    invoke-interface {v2, v3, p1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceMessaging:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;

    invoke-virtual {v2, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;->send(Lcom/microsoft/azure/sdk/iot/device/Message;)V

    .line 18
    :goto_0
    monitor-exit v0

    return-object v1

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot send event using a closed MQTT connection"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_4
    :goto_1
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->BAD_FORMAT:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sendMessageResult(Lcom/microsoft/azure/sdk/iot/device/Message;Lcom/microsoft/azure/sdk/iot/device/IotHubMessageResult;)Z
    .locals 2

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 1
    sget-object p2, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->log:Lk/f/b;

    const-string v0, "Checking if MQTT layer can acknowledge the received message ({})"

    invoke-interface {p2, v0, p1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->receivedMessagesToAcknowledge:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 3
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->receivedMessagesToAcknowledge:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 4
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->log:Lk/f/b;

    const-string v1, "Sending MQTT ACK for a received message ({})"

    invoke-interface {v0, v1, p1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_METHODS:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    if-ne v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceMethod:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;->start()V

    .line 7
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceMethod:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceMethod;

    invoke-virtual {v0, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->sendMessageAcknowledgement(I)Z

    move-result p2

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/MessageType;->DEVICE_TWIN:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    if-ne v0, v1, :cond_1

    .line 9
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceTwin:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;

    invoke-virtual {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;->start()V

    .line 10
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceTwin:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttDeviceTwin;

    invoke-virtual {v0, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->sendMessageAcknowledgement(I)Z

    move-result p2

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->deviceMessaging:Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttMessaging;

    invoke-virtual {v0, p2}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/Mqtt;->sendMessageAcknowledgement(I)Z

    move-result p2

    :goto_0
    if-eqz p2, :cond_2

    .line 12
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->log:Lk/f/b;

    const-string v1, "MQTT ACK was sent for a received message so it has been removed from the messages to acknowledge list ({})"

    invoke-interface {v0, v1, p1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->receivedMessagesToAcknowledge:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return p2

    .line 14
    :cond_3
    new-instance p2, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided message cannot be acknowledged because it was already acknowledged or was never received from service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/Throwable;)V

    .line 15
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->log:Lk/f/b;

    const-string v1, "Mqtt layer could not acknowledge received message because it has no mapping to an outstanding mqtt message id ({})"

    invoke-interface {v0, v1, p1, p2}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    throw p2

    .line 17
    :cond_4
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "message and result must be non-null"

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setListener(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/MqttIotHubConnection;->listener:Lcom/microsoft/azure/sdk/iot/device/transport/IotHubListener;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
