.class public Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/exceptions/PahoExceptionTranslator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UNDEFINED_MQTT_CONNECT_CODE_LOWER_BOUND:I = 0x6

.field public static final UNDEFINED_MQTT_CONNECT_CODE_UPPER_BOUND:I = 0xff


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToMqttException(Lk/c/a/a/a/k;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;
    .locals 3

    .line 1
    iget v0, p0, Lk/c/a/a/a/k;->x:I

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/16 v2, 0x80

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7d00

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7d02

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7d67

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7d68

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7d6d

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7d6e

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7dc9

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7dca

    if-eq v0, v2, :cond_1

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/exceptions/MqttUnexpectedErrorException;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/exceptions/MqttUnexpectedErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->setRetryable(Z)V

    return-object v0

    .line 6
    :cond_2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/exceptions/MqttUnauthorizedException;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/exceptions/MqttUnauthorizedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 7
    :cond_3
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/exceptions/MqttBadUsernameOrPasswordException;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/exceptions/MqttBadUsernameOrPasswordException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 8
    :cond_4
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/exceptions/MqttServerUnavailableException;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/exceptions/MqttServerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 9
    :cond_5
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/exceptions/MqttIdentifierRejectedException;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/exceptions/MqttIdentifierRejectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 10
    :cond_6
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/exceptions/MqttRejectedProtocolVersionException;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/azure/sdk/iot/device/transport/mqtt/exceptions/MqttRejectedProtocolVersionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 11
    :cond_7
    iget-object v0, p0, Lk/c/a/a/a/k;->y:Ljava/lang/Throwable;

    .line 12
    instance-of v2, v0, Ljava/net/UnknownHostException;

    if-nez v2, :cond_9

    .line 13
    instance-of v2, v0, Ljava/net/NoRouteToHostException;

    if-nez v2, :cond_9

    .line 14
    instance-of v2, v0, Ljava/lang/InterruptedException;

    if-nez v2, :cond_9

    .line 15
    instance-of v2, v0, Ljava/net/SocketTimeoutException;

    if-nez v2, :cond_9

    .line 16
    instance-of v0, v0, Ljava/net/SocketException;

    if-eqz v0, :cond_8

    goto :goto_0

    .line 17
    :cond_8
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 18
    :cond_9
    :goto_0
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;->setRetryable(Z)V

    return-object v0
.end method
