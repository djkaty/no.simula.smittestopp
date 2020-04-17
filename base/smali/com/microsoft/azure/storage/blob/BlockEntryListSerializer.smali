.class public final Lcom/microsoft/azure/storage/blob/BlockEntryListSerializer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeBlockListToStream(Ljava/lang/Iterable;Lcom/microsoft/azure/storage/OperationContext;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/blob/BlockEntry;",
            ">;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")[B"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->createXMLStreamWriter(Ljava/io/StringWriter;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument()V

    const-string v1, "BlockList"

    .line 4
    invoke-interface {v0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/storage/blob/BlockEntry;

    .line 6
    invoke-virtual {v1}, Lcom/microsoft/azure/storage/blob/BlockEntry;->getSearchMode()Lcom/microsoft/azure/storage/blob/BlockSearchMode;

    move-result-object v2

    sget-object v3, Lcom/microsoft/azure/storage/blob/BlockSearchMode;->COMMITTED:Lcom/microsoft/azure/storage/blob/BlockSearchMode;

    if-ne v2, v3, :cond_0

    const-string v2, "Committed"

    .line 7
    invoke-interface {v0, v2}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/microsoft/azure/storage/blob/BlockEntry;->getSearchMode()Lcom/microsoft/azure/storage/blob/BlockSearchMode;

    move-result-object v2

    sget-object v3, Lcom/microsoft/azure/storage/blob/BlockSearchMode;->UNCOMMITTED:Lcom/microsoft/azure/storage/blob/BlockSearchMode;

    if-ne v2, v3, :cond_1

    const-string v2, "Uncommitted"

    .line 9
    invoke-interface {v0, v2}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v1}, Lcom/microsoft/azure/storage/blob/BlockEntry;->getSearchMode()Lcom/microsoft/azure/storage/blob/BlockSearchMode;

    move-result-object v2

    sget-object v3, Lcom/microsoft/azure/storage/blob/BlockSearchMode;->LATEST:Lcom/microsoft/azure/storage/blob/BlockSearchMode;

    if-ne v2, v3, :cond_2

    const-string v2, "Latest"

    .line 11
    invoke-interface {v0, v2}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 12
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/microsoft/azure/storage/blob/BlockEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 13
    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    goto :goto_0

    .line 14
    :cond_3
    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    .line 15
    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndDocument()V

    .line 16
    :try_start_0
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UTF8"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 17
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->generateNewUnexpectedStorageException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p0

    throw p0
.end method
