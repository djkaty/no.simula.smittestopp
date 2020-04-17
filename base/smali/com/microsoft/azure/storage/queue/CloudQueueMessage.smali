.class public Lcom/microsoft/azure/storage/queue/CloudQueueMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public dequeueCount:I

.field public expirationTime:Ljava/util/Date;

.field public id:Ljava/lang/String;

.field public insertionTime:Ljava/util/Date;

.field public messageContent:Ljava/lang/String;

.field public messageType:Lcom/microsoft/azure/storage/queue/QueueMessageType;

.field public nextVisibleTime:Ljava/util/Date;

.field public popReceipt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->setMessageContent(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->setMessageContent([B)V

    return-void
.end method


# virtual methods
.method public final getDequeueCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->dequeueCount:I

    return v0
.end method

.method public final getExpirationTime()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->expirationTime:Ljava/util/Date;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getInsertionTime()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->insertionTime:Ljava/util/Date;

    return-object v0
.end method

.method public final getMessageContentAsByte()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->messageContent:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->messageType:Lcom/microsoft/azure/storage/queue/QueueMessageType;

    sget-object v1, Lcom/microsoft/azure/storage/queue/QueueMessageType;->RAW_STRING:Lcom/microsoft/azure/storage/queue/QueueMessageType;

    if-ne v0, v1, :cond_1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->messageContent:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->generateNewUnexpectedStorageException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object v0

    throw v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->messageContent:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final getMessageContentAsString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->messageType:Lcom/microsoft/azure/storage/queue/QueueMessageType;

    sget-object v1, Lcom/microsoft/azure/storage/queue/QueueMessageType;->RAW_STRING:Lcom/microsoft/azure/storage/queue/QueueMessageType;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->messageContent:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->messageContent:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->messageContent:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/azure/storage/core/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->generateNewUnexpectedStorageException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object v0

    throw v0
.end method

.method public final getMessageContentForTransfer(ZLcom/microsoft/azure/storage/queue/QueueRequestOptions;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/32 v3, 0x10000

    .line 2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/queue/QueueRequestOptions;->getEncryptionPolicy()Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->getMessageContentAsByte()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;->encryptMessage([B)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    int-to-long v6, p2

    cmp-long p2, v6, v3

    if-gtz p2, :cond_0

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object v5, p2, v1

    const-string v0, "Encrypted Messages cannot be larger than {0} bytes. Please note that encrypting queue messages can increase their size."

    .line 6
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->messageType:Lcom/microsoft/azure/storage/queue/QueueMessageType;

    sget-object v0, Lcom/microsoft/azure/storage/queue/QueueMessageType;->RAW_STRING:Lcom/microsoft/azure/storage/queue/QueueMessageType;

    if-ne p2, v0, :cond_2

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->getMessageContentAsByte()[B

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Base64;->encode([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->messageContent:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    int-to-long v6, p2

    cmp-long p2, v6, v3

    if-gtz p2, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object v5, p2, v1

    const-string v0, "The message size cannot be larger than %s bytes."

    .line 12
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-object p1
.end method

.method public final getMessageId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessageType()Lcom/microsoft/azure/storage/queue/QueueMessageType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->messageType:Lcom/microsoft/azure/storage/queue/QueueMessageType;

    return-object v0
.end method

.method public final getNextVisibleTime()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->nextVisibleTime:Ljava/util/Date;

    return-object v0
.end method

.method public final getPopReceipt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->popReceipt:Ljava/lang/String;

    return-object v0
.end method

.method public final setDequeueCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->dequeueCount:I

    return-void
.end method

.method public final setExpirationTime(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->expirationTime:Ljava/util/Date;

    return-void
.end method

.method public final setInsertionTime(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->insertionTime:Ljava/util/Date;

    return-void
.end method

.method public final setMessageContent(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->messageContent:Ljava/lang/String;

    .line 5
    sget-object p1, Lcom/microsoft/azure/storage/queue/QueueMessageType;->RAW_STRING:Lcom/microsoft/azure/storage/queue/QueueMessageType;

    iput-object p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->messageType:Lcom/microsoft/azure/storage/queue/QueueMessageType;

    return-void
.end method

.method public final setMessageContent([B)V
    .locals 1

    const-string v0, "content"

    .line 1
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Base64;->encode([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->messageContent:Ljava/lang/String;

    .line 3
    sget-object p1, Lcom/microsoft/azure/storage/queue/QueueMessageType;->BASE_64_ENCODED:Lcom/microsoft/azure/storage/queue/QueueMessageType;

    iput-object p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->messageType:Lcom/microsoft/azure/storage/queue/QueueMessageType;

    return-void
.end method

.method public final setMessageId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->id:Ljava/lang/String;

    return-void
.end method

.method public final setMessageType(Lcom/microsoft/azure/storage/queue/QueueMessageType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->messageType:Lcom/microsoft/azure/storage/queue/QueueMessageType;

    return-void
.end method

.method public final setNextVisibleTime(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->nextVisibleTime:Ljava/util/Date;

    return-void
.end method

.method public final setPopReceipt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->popReceipt:Ljava/lang/String;

    return-void
.end method
