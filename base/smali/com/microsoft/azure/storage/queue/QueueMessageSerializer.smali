.class public final Lcom/microsoft/azure/storage/queue/QueueMessageSerializer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateMessageRequestBody(Ljava/lang/String;)[B
    .locals 3

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->createXMLStreamWriter(Ljava/io/StringWriter;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument()V

    const-string v2, "QueueMessage"

    .line 4
    invoke-interface {v1, v2}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    const-string v2, "MessageText"

    .line 5
    invoke-interface {v1, v2}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 6
    invoke-interface {v1, p0}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 7
    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    .line 8
    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    .line 9
    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamWriter;->writeEndDocument()V

    .line 10
    :try_start_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 11
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->generateNewUnexpectedStorageException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p0

    throw p0
.end method
