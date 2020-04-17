.class public Lcom/microsoft/azure/sdk/iot/device/Message;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DATE_TIME_FORMAT:Ljava/lang/String; = "yyyy-MM-dd_HH:mm:ss.SSSSSSS"

.field public static final DEFAULT_IOTHUB_MESSAGE_CHARSET:Ljava/nio/charset/Charset;

.field public static final SECURITY_CLIENT_JSON_ENCODING:Ljava/lang/String; = "application/json"

.field public static final log:Lk/f/b;


# instance fields
.field public ack:Lcom/microsoft/azure/sdk/iot/device/FeedbackStatusCodeEnum;

.field public body:[B

.field public bodyStream:Ljava/io/ByteArrayInputStream;

.field public connectionAuthenticationMethod:Ljava/lang/String;

.field public connectionDeviceGenerationId:Ljava/lang/String;

.field public connectionDeviceId:Ljava/lang/String;

.field public connectionModuleId:Ljava/lang/String;

.field public contentEncoding:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public correlationId:Ljava/lang/String;

.field public creationTimeUTC:Ljava/util/Date;

.field public deliveryAcknowledgement:Ljava/lang/String;

.field public expiryTime:J

.field public feedbackDescription:Ljava/lang/String;

.field public feedbackDeviceGenerationId:Ljava/lang/String;

.field public feedbackDeviceId:Ljava/lang/String;

.field public feedbackStatusCode:Lcom/microsoft/azure/sdk/iot/device/FeedbackStatusCodeEnum;

.field public httpBatchEncoding:Ljava/nio/charset/StandardCharsets;

.field public httpBatchSerializeAsString:Ljava/lang/Boolean;

.field public inputName:Ljava/lang/String;

.field public iotHubConnectionString:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;

.field public isSecurityClient:Z

.field public lockToken:Ljava/lang/String;

.field public messageId:Ljava/lang/String;

.field public messageType:Lcom/microsoft/azure/sdk/iot/device/MessageType;

.field public outputName:Ljava/lang/String;

.field public properties:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/sdk/iot/device/MessageProperty;",
            ">;"
        }
    .end annotation
.end field

.field public to:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/Message;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/Message;->log:Lk/f/b;

    .line 2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/Message;->DEFAULT_IOTHUB_MESSAGE_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/Message;->initialize()V

    return-void
.end method

.method public constructor <init>(Ljava/io/ByteArrayInputStream;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/Message;->initialize()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 10
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/Message;->initialize()V

    .line 11
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/Message;->DEFAULT_IOTHUB_MESSAGE_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->body:[B

    .line 12
    sget-object p1, Lcom/microsoft/azure/sdk/iot/device/Message;->DEFAULT_IOTHUB_MESSAGE_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->setContentType(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message body cannot be \'null\'."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/microsoft/azure/sdk/iot/device/Message;->initialize()V

    .line 7
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->body:[B

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message body cannot be \'null\'."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initialize()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->lockToken:Ljava/lang/String;

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->messageId:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->correlationId:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/FeedbackStatusCodeEnum;->none:Lcom/microsoft/azure/sdk/iot/device/FeedbackStatusCodeEnum;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->feedbackStatusCode:Lcom/microsoft/azure/sdk/iot/device/FeedbackStatusCodeEnum;

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->ack:Lcom/microsoft/azure/sdk/iot/device/FeedbackStatusCodeEnum;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->properties:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->isSecurityClient:Z

    return-void
.end method


# virtual methods
.method public getBodyStream()Ljava/io/ByteArrayOutputStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBytes()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->body:[B

    if-eqz v0, :cond_0

    .line 2
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getConnectionDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->connectionDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionModuleId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->connectionModuleId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCorrelationId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->correlationId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getCreationTimeUTC()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->creationTimeUTC:Ljava/util/Date;

    return-object v0
.end method

.method public getCreationTimeUTCString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->creationTimeUTC:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd_HH:mm:ss.SSSSSSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->creationTimeUTC:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "T"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeliveryAcknowledgement()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->deliveryAcknowledgement:Ljava/lang/String;

    return-object v0
.end method

.method public getInputName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->inputName:Ljava/lang/String;

    return-object v0
.end method

.method public getIotHubConnectionString()Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->iotHubConnectionString:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()Lcom/microsoft/azure/sdk/iot/device/MessageType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->messageType:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    return-object v0
.end method

.method public getOutputName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->outputName:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()[Lcom/microsoft/azure/sdk/iot/device/MessageProperty;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->properties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->properties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    .line 2
    invoke-virtual {v1, p1}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;->hasSameName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_2

    return-object v2

    .line 3
    :cond_2
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->to:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isExpired()Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->expiryTime:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-wide v3, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->expiryTime:J

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    .line 4
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/Message;->log:Lk/f/b;

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/Message;->getCorrelationId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The message with correlation id {} expired"

    invoke-interface {v0, v2, v1}, Lk/f/b;->c(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2
.end method

.method public isSecurityMessage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->isSecurityClient:Z

    return v0
.end method

.method public setAbsoluteExpiryTime(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    iput-wide p1, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->expiryTime:J

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ExpiryTime may not be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAsSecurityMessage()V
    .locals 1

    const-string v0, "application/json"

    .line 1
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->contentEncoding:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->isSecurityClient:Z

    return-void
.end method

.method public setConnectionDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->connectionDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setConnectionModuleId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->connectionModuleId:Ljava/lang/String;

    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->contentEncoding:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->contentType:Ljava/lang/String;

    return-void
.end method

.method public final setContentTypeFinal(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setCorrelationId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->correlationId:Ljava/lang/String;

    return-void
.end method

.method public final setCreationTimeUTC(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->creationTimeUTC:Ljava/util/Date;

    return-void
.end method

.method public setExpiryTime(J)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 2
    iput-wide v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->expiryTime:J

    .line 3
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/Message;->log:Lk/f/b;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    new-instance p1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->expiryTime:J

    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const-string p1, "The message with messageid {} has expiry time in {} milliseconds and the message will expire on {}"

    invoke-interface {v0, p1, v1}, Lk/f/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setInputName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->inputName:Ljava/lang/String;

    return-void
.end method

.method public setIotHubConnectionString(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->iotHubConnectionString:Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionString;

    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->messageId:Ljava/lang/String;

    return-void
.end method

.method public setMessageType(Lcom/microsoft/azure/sdk/iot/device/MessageType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->messageType:Lcom/microsoft/azure/sdk/iot/device/MessageType;

    return-void
.end method

.method public setOutputName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->outputName:Ljava/lang/String;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    .line 1
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->properties:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    .line 2
    invoke-virtual {v2, p1}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;->hasSameName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    :cond_1
    if-eqz v0, :cond_2

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->properties:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    :cond_2
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/Message;->log:Lk/f/b;

    const-string v1, "Setting message property"

    invoke-interface {v0, v1}, Lk/f/b;->e(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->properties:Ljava/util/ArrayList;

    new-instance v1, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    invoke-direct {v1, p1, p2}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Property value cannot be \'null\'."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Property name cannot be \'null\'."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->userId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, " Message details: "

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->correlationId:Ljava/lang/String;

    const-string v2, "] "

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Correlation Id ["

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->correlationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->messageId:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Message Id ["

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/Message;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
