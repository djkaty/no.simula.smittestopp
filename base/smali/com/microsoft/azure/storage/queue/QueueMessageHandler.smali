.class public final Lcom/microsoft/azure/storage/queue/QueueMessageHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# instance fields
.field public bld:Ljava/lang/StringBuilder;

.field public final elementStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public message:Lcom/microsoft/azure/storage/queue/CloudQueueMessage;

.field public final messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/storage/queue/CloudQueueMessage;",
            ">;"
        }
    .end annotation
.end field

.field public final shouldEncodeMessage:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/queue/QueueMessageHandler;->elementStack:Ljava/util/Stack;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/queue/QueueMessageHandler;->bld:Ljava/lang/StringBuilder;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/queue/QueueMessageHandler;->messages:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/queue/QueueMessageHandler;->message:Lcom/microsoft/azure/storage/queue/CloudQueueMessage;

    .line 6
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/queue/QueueMessageHandler;->shouldEncodeMessage:Z

    return-void
.end method

.method public static readMessages(Ljava/io/InputStream;Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/storage/queue/CloudQueueMessage;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/core/Utility;->getSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/microsoft/azure/storage/queue/QueueMessageHandler;

    invoke-direct {v1, p1}, Lcom/microsoft/azure/storage/queue/QueueMessageHandler;-><init>(Z)V

    .line 3
    invoke-virtual {v0, p0, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 4
    iget-object p0, v1, Lcom/microsoft/azure/storage/queue/QueueMessageHandler;->messages:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/queue/QueueMessageHandler;->bld:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/microsoft/azure/storage/queue/QueueMessageHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 3
    iget-object p3, p0, Lcom/microsoft/azure/storage/queue/QueueMessageHandler;->bld:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 4
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    const-string v0, "QueueMessage"

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p1, p0, Lcom/microsoft/azure/storage/queue/QueueMessageHandler;->messages:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/microsoft/azure/storage/queue/QueueMessageHandler;->message:Lcom/microsoft/azure/storage/queue/CloudQueueMessage;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    const-string p2, "MessageId"

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    iget-object p1, p0, Lcom/microsoft/azure/storage/queue/QueueMessageHandler;->message:Lcom/microsoft/azure/storage/queue/CloudQueueMessage;

    invoke-virtual {p1, p3}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->setMessageId(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string p2, "InsertionTime"

    .line 9
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 10
    :try_start_0
    iget-object p1, p0, Lcom/microsoft/azure/storage/queue/QueueMessageHandler;->message:Lcom/microsoft/azure/storage/queue/CloudQueueMessage;

    invoke-static {p3}, Lcom/microsoft/azure/storage/core/Utility;->parseRFC1123DateFromStringInGMT(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->setInsertionTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :cond_3
    const-string p2, "ExpirationTime"

    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 13
    :try_start_1
    iget-object p1, p0, Lcom/microsoft/azure/storage/queue/QueueMessageHandler;->message:Lcom/microsoft/azure/storage/queue/CloudQueueMessage;

    invoke-static {p3}, Lcom/microsoft/azure/storage/core/Utility;->parseRFC1123DateFromStringInGMT(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->setExpirationTime(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 14
    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :cond_4
    const-string p2, "PopReceipt"

    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 16
    iget-object p1, p0, Lcom/microsoft/azure/storage/queue/QueueMessageHandler;->message:Lcom/microsoft/azure/storage/queue/CloudQueueMessage;

    invoke-virtual {p1, p3}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->setPopReceipt(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string p2, "TimeNextVisible"

    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 18
    :try_start_2
    iget-object p1, p0, Lcom/microsoft/azure/storage/queue/QueueMessageHandler;->message:Lcom/microsoft/azure/storage/queue/CloudQueueMessage;

    invoke-static {p3}, Lcom/microsoft/azure/storage/core/Utility;->parseRFC1123DateFromStringInGMT(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->setNextVisibleTime(Ljava/util/Date;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 19
    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :cond_6
    const-string p2, "DequeueCount"

    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 21
    iget-object p1, p0, Lcom/microsoft/azure/storage/queue/QueueMessageHandler;->message:Lcom/microsoft/azure/storage/queue/CloudQueueMessage;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->setDequeueCount(I)V

    goto :goto_0

    :cond_7
    const-string p2, "MessageText"

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 23
    iget-object p1, p0, Lcom/microsoft/azure/storage/queue/QueueMessageHandler;->message:Lcom/microsoft/azure/storage/queue/CloudQueueMessage;

    iput-object p3, p1, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->messageContent:Ljava/lang/String;

    .line 24
    :cond_8
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/queue/QueueMessageHandler;->bld:Ljava/lang/StringBuilder;

    return-void

    .line 25
    :cond_9
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "The response received is invalid or improperly formatted."

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/microsoft/azure/storage/queue/QueueMessageHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "QueueMessage"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    new-instance p1, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;

    invoke-direct {p1}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/queue/QueueMessageHandler;->message:Lcom/microsoft/azure/storage/queue/CloudQueueMessage;

    .line 4
    iget-boolean p2, p0, Lcom/microsoft/azure/storage/queue/QueueMessageHandler;->shouldEncodeMessage:Z

    if-eqz p2, :cond_0

    sget-object p2, Lcom/microsoft/azure/storage/queue/QueueMessageType;->BASE_64_ENCODED:Lcom/microsoft/azure/storage/queue/QueueMessageType;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/microsoft/azure/storage/queue/QueueMessageType;->RAW_STRING:Lcom/microsoft/azure/storage/queue/QueueMessageType;

    :goto_0
    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/queue/CloudQueueMessage;->setMessageType(Lcom/microsoft/azure/storage/queue/QueueMessageType;)V

    :cond_1
    return-void
.end method
