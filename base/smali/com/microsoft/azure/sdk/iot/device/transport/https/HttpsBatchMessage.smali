.class public final Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsBatchMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMessage;


# static fields
.field public static final BATCH_CHARSET:Ljava/nio/charset/Charset;

.field public static final HTTPS_BATCH_CONTENT_TYPE:Ljava/lang/String; = "application/vnd.microsoft.iothub.json"

.field public static final SERVICEBOUND_MESSAGE_MAX_SIZE_BYTES:I = 0x3fbff


# instance fields
.field public batchBody:Ljava/lang/String;

.field public numMsgs:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsBatchMessage;->BATCH_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "[]"

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsBatchMessage;->batchBody:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsBatchMessage;->numMsgs:I

    return-void
.end method

.method public static addJsonObjToArray(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "[]"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "]"

    if-eqz v0, :cond_0

    const-string p1, "["

    .line 2
    invoke-static {p1, p0, v1}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static msgToJson(Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;)Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\"body\":"

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->getBody()[B

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->encodeBase64StringLocal([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"base64Encoded\":"

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->getProperties()[Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    move-result-object v5

    .line 7
    new-instance v6, Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->getSystemProperties()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v6, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 8
    array-length p0, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, p0, :cond_0

    aget-object v8, v5, v7

    .line 9
    invoke-virtual {v8}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result p0

    const-string v5, "}"

    if-lez p0, :cond_2

    const-string p0, ","

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"properties\":"

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addMessage(Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsBatchMessage;->msgToJson(Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsBatchMessage;->batchBody:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsBatchMessage;->addJsonObjToArray(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsBatchMessage;->BATCH_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 4
    array-length v1, v0

    const/4 v2, 0x1

    const v3, 0x3fbff

    if-gt v1, v3, :cond_0

    .line 5
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsBatchMessage;->batchBody:Ljava/lang/String;

    .line 6
    iget p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsBatchMessage;->numMsgs:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsBatchMessage;->numMsgs:I

    return-void

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 7
    array-length v0, v0

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "Service-bound message size (%d bytes) cannot exceed %d bytes."

    .line 9
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/exceptions/IotHubSizeExceededException;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/IotHubSizeExceededException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBody()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsBatchMessage;->batchBody:Ljava/lang/String;

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsBatchMessage;->BATCH_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "application/vnd.microsoft.iothub.json"

    return-object v0
.end method

.method public getProperties()[Lcom/microsoft/azure/sdk/iot/device/MessageProperty;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    return-object v0
.end method

.method public getSystemProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public numMessages()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsBatchMessage;->numMsgs:I

    return v0
.end method
