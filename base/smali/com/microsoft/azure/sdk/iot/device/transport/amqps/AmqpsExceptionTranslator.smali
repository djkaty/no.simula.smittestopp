.class public Lcom/microsoft/azure/sdk/iot/device/transport/amqps/AmqpsExceptionTranslator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToAmqpException(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/exceptions/TransportException;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "amqp:frame-size-too-small"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "com.microsoft:device-container-throttled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x19

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "amqp:link:stolen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xc

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "amqp:unauthorized-access"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x17

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "amqp:decode-error"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "amqp:session:errant-link"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "amqp:invalid-field"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "amqp:session:handle-in-use"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "amqp:link:detach-forced"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "amqp:resource-locked"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x14

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "amqp:link:redirect"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "amqp:internal-error"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "amqp:connection:forced"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "amqp:link:transfer-limit-exceeded"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x15

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "amqp:not-found"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xf

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "amqp:precondition-failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x11

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "amqp:not-implemented"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "proton:io"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1a

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "amqp:illegal-state"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_1

    :sswitch_13
    const-string v0, "amqp:session:unattached-handle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x16

    goto :goto_1

    :sswitch_14
    const-string v0, "amqp:resource-limit-exceeded"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x13

    goto :goto_1

    :sswitch_15
    const-string v0, "amqp:session:window-violation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x18

    goto :goto_1

    :sswitch_16
    const-string v0, "amqp:connection:redirect"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_17
    const-string v0, "amqp:connection:framing-error"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_18
    const-string v0, "amqp:not-allowed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xe

    goto :goto_1

    :sswitch_19
    const-string v0, "amqp:resource-deleted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x12

    goto :goto_1

    :sswitch_1a
    const-string v0, "amqp:link:message-size-exceeded"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xd

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 2
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ProtocolException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 3
    :pswitch_0
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/ProtonIOException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/ProtonIOException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 4
    :pswitch_1
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpConnectionThrottledException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpConnectionThrottledException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 5
    :pswitch_2
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpSessionWindowViolationException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpSessionWindowViolationException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 6
    :pswitch_3
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpUnauthorizedAccessException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpUnauthorizedAccessException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 7
    :pswitch_4
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpSessionUnattachedHandleException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpSessionUnattachedHandleException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 8
    :pswitch_5
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpLinkTransferLimitExceededException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpLinkTransferLimitExceededException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 9
    :pswitch_6
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpResourceLockedException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpResourceLockedException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 10
    :pswitch_7
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpResourceLimitExceededException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpResourceLimitExceededException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 11
    :pswitch_8
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpResourceDeletedException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpResourceDeletedException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 12
    :pswitch_9
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpPreconditionFailedException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpPreconditionFailedException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 13
    :pswitch_a
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpNotImplementedException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpNotImplementedException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 14
    :pswitch_b
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpNotFoundException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpNotFoundException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 15
    :pswitch_c
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpNotAllowedException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpNotAllowedException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 16
    :pswitch_d
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpLinkMessageSizeExceededException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpLinkMessageSizeExceededException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 17
    :pswitch_e
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpLinkStolenException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpLinkStolenException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 18
    :pswitch_f
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpLinkRedirectException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpLinkRedirectException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 19
    :pswitch_10
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpInvalidFieldException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpInvalidFieldException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 20
    :pswitch_11
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpInternalErrorException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpInternalErrorException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 21
    :pswitch_12
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpIllegalStateException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpIllegalStateException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 22
    :pswitch_13
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpSessionHandleInUseException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpSessionHandleInUseException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 23
    :pswitch_14
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpConnectionFramingErrorException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpConnectionFramingErrorException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 24
    :pswitch_15
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpFrameSizeTooSmallException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpFrameSizeTooSmallException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 25
    :pswitch_16
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpSessionErrantLinkException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpSessionErrantLinkException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 26
    :pswitch_17
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpLinkDetachForcedException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpLinkDetachForcedException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 27
    :pswitch_18
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpDecodeErrorException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpDecodeErrorException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 28
    :pswitch_19
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpConnectionRedirectException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpConnectionRedirectException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 29
    :pswitch_1a
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpConnectionForcedException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/transport/amqps/exceptions/AmqpConnectionForcedException;-><init>(Ljava/lang/String;)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x5d316998 -> :sswitch_1a
        -0x5b396a57 -> :sswitch_19
        -0x59745501 -> :sswitch_18
        -0x4e1594e8 -> :sswitch_17
        -0x3c55c9b7 -> :sswitch_16
        -0x385816c5 -> :sswitch_15
        -0x34ff9a6b -> :sswitch_14
        -0x3467789b -> :sswitch_13
        -0x324fb675 -> :sswitch_12
        -0x23b48266 -> :sswitch_11
        -0x22ba3d27 -> :sswitch_10
        -0xf0688dd -> :sswitch_f
        0xfe7aa99 -> :sswitch_e
        0x1443dd96 -> :sswitch_d
        0x1b73c886 -> :sswitch_c
        0x1f4a5f07 -> :sswitch_b
        0x2694156d -> :sswitch_a
        0x4d4edb7a -> :sswitch_9
        0x5404bf62 -> :sswitch_8
        0x56ac0b51 -> :sswitch_7
        0x594e5fb5 -> :sswitch_6
        0x663c4af2 -> :sswitch_5
        0x6715f938 -> :sswitch_4
        0x68bc49ae -> :sswitch_3
        0x6f475af8 -> :sswitch_2
        0x71cae490 -> :sswitch_1
        0x770dd9b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
