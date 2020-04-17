.class public final Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsMessage;


# static fields
.field public static final CONTENT_ENCODING_KEY:Ljava/lang/String; = "iothub-contentencoding"

.field public static final CONTENT_TYPE_KEY:Ljava/lang/String; = "iothub-contenttype"

.field public static final CORRELATION_ID_KEY:Ljava/lang/String; = "iothub-correlationid"

.field public static final HTTPS_SINGLE_JSON_MESSAGE_CONTENT_TYPE:Ljava/lang/String; = "application/json;charset=utf-8"

.field public static final HTTPS_SINGLE_MESSAGE_CONTENT_TYPE:Ljava/lang/String; = "binary/octet-stream"

.field public static final MESSAGE_ID_KEY:Ljava/lang/String; = "iothub-messageid"

.field public static final TO_KEY:Ljava/lang/String; = "iothub-to"

.field public static final USER_ID_KEY:Ljava/lang/String; = "iothub-userid"


# instance fields
.field public base64Encoded:Z

.field public body:[B

.field public contentType:Ljava/lang/String;

.field public properties:[Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

.field public systemProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static httpsAppPropertyToAppProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "iothub-app-"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static isValidHttpsAppProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;->isValidAppProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "iothub-app-"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidHttpsSystemProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;->isValidSystemProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "iothub-"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "iothub-app-"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static parseHttpsJsonMessage(Lcom/microsoft/azure/sdk/iot/device/Message;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;-><init>()V

    const-string v1, "application/json;charset=utf-8"

    .line 2
    iput-object v1, v0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->contentType:Ljava/lang/String;

    .line 3
    invoke-static {v0, p0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->parser(Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;Lcom/microsoft/azure/sdk/iot/device/Message;)V

    return-object v0
.end method

.method public static parseHttpsMessage(Lcom/microsoft/azure/sdk/iot/device/Message;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;-><init>()V

    const-string v1, "binary/octet-stream"

    .line 2
    iput-object v1, v0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->contentType:Ljava/lang/String;

    .line 3
    invoke-static {v0, p0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->parser(Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;Lcom/microsoft/azure/sdk/iot/device/Message;)V

    return-object v0
.end method

.method public static parseHttpsMessage(Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;)Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;
    .locals 6

    .line 4
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;->getBody()[B

    move-result-object v1

    .line 6
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->body:[B

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 9
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 12
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 13
    invoke-static {v4, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->isValidHttpsAppProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 14
    new-instance v5, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    invoke-direct {v5, v4, v3}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {v4, v3}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->isValidHttpsSystemProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x7

    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "iothub-"

    .line 17
    invoke-static {v5}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    iput-object p0, v0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->properties:[Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    .line 19
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    iput-object p0, v0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->properties:[Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    .line 20
    iput-object v2, v0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->systemProperties:Ljava/util/Map;

    return-object v0
.end method

.method public static parser(Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;Lcom/microsoft/azure/sdk/iot/device/Message;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getBytes()[B

    move-result-object v0

    .line 2
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->body:[B

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getProperties()[Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    move-result-object v0

    .line 4
    array-length v1, v0

    new-array v1, v1, [Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    iput-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->properties:[Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 6
    aget-object v2, v0, v1

    .line 7
    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->properties:[Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    new-instance v4, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    const-string v5, "iothub-app-"

    invoke-static {v5}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 8
    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iothub-userid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getMessageId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iothub-messageid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getCorrelationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getCorrelationId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iothub-correlationid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getTo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getTo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iothub-to"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 20
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iothub-contentencoding"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_5
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getContentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 22
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->getContentType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "iothub-contenttype"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->systemProperties:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->body:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getBodyAsString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->body:[B

    sget-object v2, Lcom/microsoft/azure/sdk/iot/device/Message;->DEFAULT_IOTHUB_MESSAGE_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()[Lcom/microsoft/azure/sdk/iot/device/MessageProperty;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->properties:[Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    array-length v0, v0

    .line 2
    new-array v1, v0, [Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    iget-object v3, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->properties:[Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    aget-object v3, v3, v2

    .line 4
    new-instance v4, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    .line 5
    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;->getName()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {v3}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getSystemProperties()Ljava/util/Map;
    .locals 2
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

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->systemProperties:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public isBase64Encoded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->base64Encoded:Z

    return v0
.end method

.method public toMessage()Lcom/microsoft/azure/sdk/iot/device/Message;
    .locals 6

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/Message;

    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->getBody()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/Message;-><init>([B)V

    .line 2
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->properties:[Lcom/microsoft/azure/sdk/iot/device/MessageProperty;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 3
    invoke-virtual {v4}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->httpsAppPropertyToAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-virtual {v4}, Lcom/microsoft/azure/sdk/iot/device/MessageProperty;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v0, v5, v4}, Lcom/microsoft/azure/sdk/iot/device/Message;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->systemProperties:Ljava/util/Map;

    const-string v2, "iothub-messageid"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->systemProperties:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/Message;->setMessageId(Ljava/lang/String;)V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->systemProperties:Ljava/util/Map;

    const-string v2, "iothub-userid"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->systemProperties:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "iothub-app-iothub-userid"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/azure/sdk/iot/device/Message;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->systemProperties:Ljava/util/Map;

    const-string v2, "iothub-correlationid"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->systemProperties:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/Message;->setCorrelationId(Ljava/lang/String;)V

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->systemProperties:Ljava/util/Map;

    const-string v2, "iothub-contenttype"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->systemProperties:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/Message;->setContentType(Ljava/lang/String;)V

    .line 14
    :cond_4
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->systemProperties:Ljava/util/Map;

    const-string v2, "iothub-contentencoding"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->systemProperties:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/Message;->setContentEncoding(Ljava/lang/String;)V

    .line 16
    :cond_5
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->systemProperties:Ljava/util/Map;

    const-string v2, "iothub-to"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 17
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/transport/https/HttpsSingleMessage;->systemProperties:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "iothub-app-iothub-to"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/azure/sdk/iot/device/Message;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object v0
.end method
