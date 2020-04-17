.class public final Lcom/microsoft/azure/storage/table/MimeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateAcceptHeaderValue(Lcom/microsoft/azure/storage/table/TablePayloadFormat;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/table/TablePayloadFormat;->JsonFullMetadata:Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    if-ne p0, v0, :cond_0

    const-string p0, "application/json;odata=fullmetadata"

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lcom/microsoft/azure/storage/table/TablePayloadFormat;->Json:Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    if-ne p0, v0, :cond_1

    const-string p0, "application/json;odata=minimalmetadata"

    return-object p0

    :cond_1
    const-string p0, "application/json;odata=nometadata"

    return-object p0
.end method

.method public static generateMimeParseException()Lcom/microsoft/azure/storage/StorageException;
    .locals 7

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/StorageException;

    const-string v1, "OutOfRangeInput"

    const-string v2, "Invalid MIME response received."

    const/16 v3, 0x132

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    return-object v6
.end method

.method public static getNextLineSkippingBlankLines(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-object v0
.end method

.method public static readBatchResponseStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/table/TablePayloadFormat;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            "Lcom/microsoft/azure/storage/table/TablePayloadFormat;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/azure/storage/table/MimePart;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v0, "--"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p0, p2}, Lcom/microsoft/azure/storage/table/MimeHelper;->readMimeHeader(Ljava/io/BufferedReader;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/MimeHeader;

    move-result-object v0

    .line 6
    iget-object v1, v0, Lcom/microsoft/azure/storage/table/MimeHeader;->boundary:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, v0, Lcom/microsoft/azure/storage/table/MimeHeader;->subBoundary:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 8
    :cond_0
    iget-object p1, v0, Lcom/microsoft/azure/storage/table/MimeHeader;->boundary:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/microsoft/azure/storage/table/MimeHelper;->readMimePart(Ljava/io/BufferedReader;Ljava/lang/String;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/MimePart;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {p0, p2}, Lcom/microsoft/azure/storage/table/MimeHelper;->readMimeHeader(Ljava/io/BufferedReader;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/MimeHeader;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {p0, p2}, Lcom/microsoft/azure/storage/table/MimeHelper;->readMimeHeader(Ljava/io/BufferedReader;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/MimeHeader;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11
    :cond_2
    iget-object p1, v0, Lcom/microsoft/azure/storage/table/MimeHeader;->subBoundary:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/microsoft/azure/storage/table/MimeHelper;->readMimePart(Ljava/io/BufferedReader;Ljava/lang/String;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/MimePart;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-static {p0, p2}, Lcom/microsoft/azure/storage/table/MimeHelper;->readMimeHeader(Ljava/io/BufferedReader;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/MimeHeader;

    move-result-object p1

    if-nez p1, :cond_2

    :goto_0
    return-object p3

    .line 13
    :cond_3
    invoke-static {}, Lcom/microsoft/azure/storage/table/MimeHelper;->generateMimeParseException()Lcom/microsoft/azure/storage/StorageException;

    move-result-object p0

    throw p0

    .line 14
    :cond_4
    invoke-static {}, Lcom/microsoft/azure/storage/table/MimeHelper;->generateMimeParseException()Lcom/microsoft/azure/storage/StorageException;

    move-result-object p0

    throw p0
.end method

.method public static readMimeHeader(Ljava/io/BufferedReader;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/MimeHeader;
    .locals 6

    .line 1
    new-instance p1, Lcom/microsoft/azure/storage/table/MimeHeader;

    invoke-direct {p1}, Lcom/microsoft/azure/storage/table/MimeHeader;-><init>()V

    const/high16 v0, 0x100000

    .line 2
    invoke-virtual {p0, v0}, Ljava/io/BufferedReader;->mark(I)V

    .line 3
    invoke-static {p0}, Lcom/microsoft/azure/storage/table/MimeHelper;->getNextLineSkippingBlankLines(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/microsoft/azure/storage/table/MimeHeader;->boundary:Ljava/lang/String;

    const-string v1, "--"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/microsoft/azure/storage/table/MimeHeader;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Ljava/io/BufferedReader;->reset()V

    return-object v2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ge v0, v3, :cond_7

    .line 7
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 8
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    const-string v5, "Content-Type:"

    .line 9
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "Content-Type: "

    .line 10
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 11
    array-length v5, v4

    if-ne v5, v3, :cond_3

    .line 12
    aget-object v2, v4, v2

    iput-object v2, p1, Lcom/microsoft/azure/storage/table/MimeHeader;->contentType:Ljava/lang/String;

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {}, Lcom/microsoft/azure/storage/table/MimeHelper;->generateMimeParseException()Lcom/microsoft/azure/storage/StorageException;

    move-result-object p0

    throw p0

    :cond_4
    const-string v5, "Content-Transfer-Encoding:"

    .line 14
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "Content-Transfer-Encoding: "

    .line 15
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 16
    array-length v5, v4

    if-ne v5, v3, :cond_5

    .line 17
    aget-object v2, v4, v2

    iput-object v2, p1, Lcom/microsoft/azure/storage/table/MimeHeader;->contentTransferEncoding:Ljava/lang/String;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :cond_5
    invoke-static {}, Lcom/microsoft/azure/storage/table/MimeHelper;->generateMimeParseException()Lcom/microsoft/azure/storage/StorageException;

    move-result-object p0

    throw p0

    .line 19
    :cond_6
    invoke-static {}, Lcom/microsoft/azure/storage/table/MimeHelper;->generateMimeParseException()Lcom/microsoft/azure/storage/StorageException;

    move-result-object p0

    throw p0

    .line 20
    :cond_7
    :goto_2
    iget-object p0, p1, Lcom/microsoft/azure/storage/table/MimeHeader;->boundary:Ljava/lang/String;

    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_d

    iget-object p0, p1, Lcom/microsoft/azure/storage/table/MimeHeader;->contentType:Ljava/lang/String;

    if-eqz p0, :cond_d

    const-string v0, "multipart/mixed; boundary="

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 22
    iget-object p0, p1, Lcom/microsoft/azure/storage/table/MimeHeader;->contentType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 23
    array-length v0, p0

    if-ne v0, v3, :cond_8

    .line 24
    aget-object p0, p0, v2

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/microsoft/azure/storage/table/MimeHeader;->subBoundary:Ljava/lang/String;

    goto :goto_3

    .line 25
    :cond_8
    invoke-static {}, Lcom/microsoft/azure/storage/table/MimeHelper;->generateMimeParseException()Lcom/microsoft/azure/storage/StorageException;

    move-result-object p0

    throw p0

    .line 26
    :cond_9
    iget-object p0, p1, Lcom/microsoft/azure/storage/table/MimeHeader;->contentType:Ljava/lang/String;

    const-string v0, "application/http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 27
    :goto_3
    iget-object p0, p1, Lcom/microsoft/azure/storage/table/MimeHeader;->contentTransferEncoding:Ljava/lang/String;

    if-eqz p0, :cond_b

    const-string v0, "binary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_4

    .line 28
    :cond_a
    invoke-static {}, Lcom/microsoft/azure/storage/table/MimeHelper;->generateMimeParseException()Lcom/microsoft/azure/storage/StorageException;

    move-result-object p0

    throw p0

    :cond_b
    :goto_4
    return-object p1

    .line 29
    :cond_c
    invoke-static {}, Lcom/microsoft/azure/storage/table/MimeHelper;->generateMimeParseException()Lcom/microsoft/azure/storage/StorageException;

    move-result-object p0

    throw p0

    .line 30
    :cond_d
    invoke-static {}, Lcom/microsoft/azure/storage/table/MimeHelper;->generateMimeParseException()Lcom/microsoft/azure/storage/StorageException;

    move-result-object p0

    throw p0
.end method

.method public static readMimePart(Ljava/io/BufferedReader;Ljava/lang/String;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/table/MimePart;
    .locals 4

    .line 1
    new-instance p2, Lcom/microsoft/azure/storage/table/MimePart;

    invoke-direct {p2}, Lcom/microsoft/azure/storage/table/MimePart;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/microsoft/azure/storage/table/MimeHelper;->getNextLineSkippingBlankLines(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTTP/1.1 "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, " "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 5
    array-length v2, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_6

    const/4 v2, 0x1

    .line 6
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lcom/microsoft/azure/storage/table/MimePart;->httpStatusCode:I

    const/16 v1, 0xd

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/microsoft/azure/storage/table/MimePart;->httpStatusMessage:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, ": "

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 11
    array-length v1, v0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    .line 12
    iget-object v1, p2, Lcom/microsoft/azure/storage/table/MimePart;->headers:Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    aget-object v0, v0, v2

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lcom/microsoft/azure/storage/table/MimeHelper;->generateMimeParseException()Lcom/microsoft/azure/storage/StorageException;

    move-result-object p0

    throw p0

    :cond_1
    const/high16 v0, 0x100000

    .line 15
    invoke-virtual {p0, v0}, Ljava/io/BufferedReader;->mark(I)V

    .line 16
    invoke-static {p0}, Lcom/microsoft/azure/storage/table/MimeHelper;->getNextLineSkippingBlankLines(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18
    invoke-virtual {p0}, Ljava/io/BufferedReader;->reset()V

    const-string p0, ""

    .line 19
    iput-object p0, p2, Lcom/microsoft/azure/storage/table/MimePart;->payload:Ljava/lang/String;

    return-object p2

    .line 20
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p0, v0}, Ljava/io/BufferedReader;->mark(I)V

    .line 24
    invoke-static {p0}, Lcom/microsoft/azure/storage/table/MimeHelper;->getNextLineSkippingBlankLines(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 25
    :cond_3
    invoke-static {}, Lcom/microsoft/azure/storage/table/MimeHelper;->generateMimeParseException()Lcom/microsoft/azure/storage/StorageException;

    move-result-object p0

    throw p0

    .line 26
    :cond_4
    invoke-virtual {p0}, Ljava/io/BufferedReader;->reset()V

    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/microsoft/azure/storage/table/MimePart;->payload:Ljava/lang/String;

    return-object p2

    .line 28
    :cond_5
    invoke-static {}, Lcom/microsoft/azure/storage/table/MimeHelper;->generateMimeParseException()Lcom/microsoft/azure/storage/StorageException;

    move-result-object p0

    throw p0

    .line 29
    :cond_6
    invoke-static {}, Lcom/microsoft/azure/storage/table/MimeHelper;->generateMimeParseException()Lcom/microsoft/azure/storage/StorageException;

    move-result-object p0

    throw p0

    .line 30
    :cond_7
    invoke-static {}, Lcom/microsoft/azure/storage/table/MimeHelper;->generateMimeParseException()Lcom/microsoft/azure/storage/StorageException;

    move-result-object p0

    throw p0
.end method

.method public static writeBatchToStream(Ljava/io/OutputStream;Lcom/microsoft/azure/storage/table/TableRequestOptions;Ljava/lang/String;Ljava/net/URI;Lcom/microsoft/azure/storage/table/TableBatchOperation;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/OperationContext;)V
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 1
    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string v6, "UTF-8"

    move-object/from16 v7, p0

    invoke-direct {v5, v7, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v7, v8, :cond_0

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/microsoft/azure/storage/table/TableOperation;

    invoke-virtual {v7}, Lcom/microsoft/azure/storage/table/TableOperation;->getOperationType()Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object v7

    sget-object v10, Lcom/microsoft/azure/storage/table/TableOperationType;->RETRIEVE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-ne v7, v10, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    const-string v7, "3.0"

    const-string v10, "MaxDataServiceVersion"

    const-string v11, "Accept"

    if-eqz v8, :cond_1

    .line 3
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/azure/storage/table/QueryTableOperation;

    .line 4
    invoke-static {v5, v3}, Lcom/microsoft/azure/storage/table/MimeHelper;->writeMIMEBoundary(Ljava/io/OutputStreamWriter;Ljava/lang/String;)V

    .line 5
    new-instance v6, Lcom/microsoft/azure/storage/table/MimePart;

    invoke-direct {v6}, Lcom/microsoft/azure/storage/table/MimePart;-><init>()V

    .line 6
    invoke-virtual {v2}, Lcom/microsoft/azure/storage/table/TableOperation;->getOperationType()Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object v9

    iput-object v9, v6, Lcom/microsoft/azure/storage/table/MimePart;->op:Lcom/microsoft/azure/storage/table/TableOperationType;

    .line 7
    new-instance v9, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v9}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    .line 8
    invoke-virtual {v2, v0}, Lcom/microsoft/azure/storage/table/TableOperation;->generateRequestIdentityWithTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/PathUtility;->appendPathToSingleUri(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->addToURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, v6, Lcom/microsoft/azure/storage/table/MimePart;->requestIdentity:Ljava/net/URI;

    .line 10
    iget-object v0, v6, Lcom/microsoft/azure/storage/table/MimePart;->headers:Ljava/util/HashMap;

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getTablePayloadFormat()Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/azure/storage/table/MimeHelper;->generateAcceptHeaderValue(Lcom/microsoft/azure/storage/table/TablePayloadFormat;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, v6, Lcom/microsoft/azure/storage/table/MimePart;->headers:Ljava/util/HashMap;

    invoke-virtual {v0, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v6}, Lcom/microsoft/azure/storage/table/MimePart;->toRequestString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 15
    :cond_1
    invoke-static {v5, v3}, Lcom/microsoft/azure/storage/table/MimeHelper;->writeMIMEBoundary(Ljava/io/OutputStreamWriter;Ljava/lang/String;)V

    .line 16
    invoke-static {v5, v4}, Lcom/microsoft/azure/storage/table/MimeHelper;->writeMIMEContentType(Ljava/io/OutputStreamWriter;Ljava/lang/String;)V

    const-string v12, "\r\n"

    .line 17
    invoke-virtual {v5, v12}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 18
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/microsoft/azure/storage/table/TableOperation;

    .line 19
    invoke-static {v5, v4}, Lcom/microsoft/azure/storage/table/MimeHelper;->writeMIMEBoundary(Ljava/io/OutputStreamWriter;Ljava/lang/String;)V

    .line 20
    new-instance v13, Lcom/microsoft/azure/storage/table/MimePart;

    invoke-direct {v13}, Lcom/microsoft/azure/storage/table/MimePart;-><init>()V

    .line 21
    invoke-virtual {v12}, Lcom/microsoft/azure/storage/table/TableOperation;->getOperationType()Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object v14

    iput-object v14, v13, Lcom/microsoft/azure/storage/table/MimePart;->op:Lcom/microsoft/azure/storage/table/TableOperationType;

    .line 22
    new-instance v14, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v14}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    .line 23
    invoke-virtual {v12, v0}, Lcom/microsoft/azure/storage/table/TableOperation;->generateRequestIdentityWithTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 24
    invoke-static {v1, v15}, Lcom/microsoft/azure/storage/core/PathUtility;->appendPathToSingleUri(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->addToURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v14

    iput-object v14, v13, Lcom/microsoft/azure/storage/table/MimePart;->requestIdentity:Ljava/net/URI;

    .line 25
    iget-object v14, v13, Lcom/microsoft/azure/storage/table/MimePart;->headers:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    const-string v0, "Content-ID"

    invoke-virtual {v14, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, v13, Lcom/microsoft/azure/storage/table/MimePart;->headers:Ljava/util/HashMap;

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->getTablePayloadFormat()Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    move-result-object v14

    invoke-static {v14}, Lcom/microsoft/azure/storage/table/MimeHelper;->generateAcceptHeaderValue(Lcom/microsoft/azure/storage/table/TablePayloadFormat;)Ljava/lang/String;

    move-result-object v14

    .line 28
    invoke-virtual {v0, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, v13, Lcom/microsoft/azure/storage/table/MimePart;->headers:Ljava/util/HashMap;

    invoke-virtual {v0, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {v12}, Lcom/microsoft/azure/storage/table/TableOperation;->getOperationType()Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object v0

    sget-object v14, Lcom/microsoft/azure/storage/table/TableOperationType;->INSERT_OR_MERGE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-eq v0, v14, :cond_2

    .line 31
    invoke-virtual {v12}, Lcom/microsoft/azure/storage/table/TableOperation;->getOperationType()Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object v0

    sget-object v14, Lcom/microsoft/azure/storage/table/TableOperationType;->MERGE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-ne v0, v14, :cond_3

    .line 32
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/microsoft/azure/storage/table/TableRequestOptions;->assertNoEncryptionPolicyOrStrictMode()V

    .line 33
    iget-object v0, v13, Lcom/microsoft/azure/storage/table/MimePart;->headers:Ljava/util/HashMap;

    sget-object v14, Lcom/microsoft/azure/storage/table/TableOperationType;->MERGE:Lcom/microsoft/azure/storage/table/TableOperationType;

    const-string v14, "X-HTTP-Method"

    const-string v15, "MERGE"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_3
    invoke-virtual {v12}, Lcom/microsoft/azure/storage/table/TableOperation;->getOperationType()Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object v0

    sget-object v14, Lcom/microsoft/azure/storage/table/TableOperationType;->DELETE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-eq v0, v14, :cond_4

    .line 35
    invoke-virtual {v12}, Lcom/microsoft/azure/storage/table/TableOperation;->getOperationType()Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object v0

    sget-object v14, Lcom/microsoft/azure/storage/table/TableOperationType;->REPLACE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-eq v0, v14, :cond_4

    .line 36
    invoke-virtual {v12}, Lcom/microsoft/azure/storage/table/TableOperation;->getOperationType()Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object v0

    sget-object v14, Lcom/microsoft/azure/storage/table/TableOperationType;->MERGE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-ne v0, v14, :cond_5

    .line 37
    :cond_4
    invoke-virtual {v12}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v12}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/azure/storage/table/TableEntity;->getEtag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 38
    iget-object v0, v13, Lcom/microsoft/azure/storage/table/MimePart;->headers:Ljava/util/HashMap;

    invoke-virtual {v12}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object v14

    invoke-interface {v14}, Lcom/microsoft/azure/storage/table/TableEntity;->getEtag()Ljava/lang/String;

    move-result-object v14

    const-string v15, "If-Match"

    invoke-virtual {v0, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_5
    invoke-virtual {v12}, Lcom/microsoft/azure/storage/table/TableOperation;->getOperationType()Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object v0

    sget-object v14, Lcom/microsoft/azure/storage/table/TableOperationType;->INSERT:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-ne v0, v14, :cond_7

    .line 40
    iget-object v0, v13, Lcom/microsoft/azure/storage/table/MimePart;->headers:Ljava/util/HashMap;

    .line 41
    invoke-virtual {v12}, Lcom/microsoft/azure/storage/table/TableOperation;->getEchoContent()Z

    move-result v14

    if-eqz v14, :cond_6

    const-string v14, "return-content"

    goto :goto_2

    :cond_6
    const-string v14, "return-no-content"

    :goto_2
    const-string v15, "Prefer"

    .line 42
    invoke-virtual {v0, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_7
    invoke-virtual {v12}, Lcom/microsoft/azure/storage/table/TableOperation;->getOperationType()Lcom/microsoft/azure/storage/table/TableOperationType;

    move-result-object v0

    sget-object v14, Lcom/microsoft/azure/storage/table/TableOperationType;->DELETE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-eq v0, v14, :cond_8

    .line 44
    iget-object v0, v13, Lcom/microsoft/azure/storage/table/MimePart;->headers:Ljava/util/HashMap;

    const-string v14, "Content-Type"

    const-string v15, "application/json"

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    move-object/from16 v14, p7

    .line 45
    invoke-static {v12, v0, v14}, Lcom/microsoft/azure/storage/table/MimeHelper;->writeStringForOperation(Lcom/microsoft/azure/storage/table/TableOperation;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v13, Lcom/microsoft/azure/storage/table/MimePart;->payload:Ljava/lang/String;

    .line 46
    iget-object v15, v13, Lcom/microsoft/azure/storage/table/MimePart;->headers:Ljava/util/HashMap;

    .line 47
    invoke-virtual {v12, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    array-length v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const-string v0, "Content-Length"

    .line 48
    invoke-virtual {v15, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    move-object/from16 v14, p7

    .line 49
    :goto_3
    invoke-virtual {v13}, Lcom/microsoft/azure/storage/table/MimePart;->toRequestString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p2

    goto/16 :goto_1

    :cond_9
    :goto_4
    if-nez v8, :cond_a

    .line 50
    invoke-static {v5, v4}, Lcom/microsoft/azure/storage/table/MimeHelper;->writeMIMEBoundaryClosure(Ljava/io/OutputStreamWriter;Ljava/lang/String;)V

    .line 51
    :cond_a
    invoke-static {v5, v3}, Lcom/microsoft/azure/storage/table/MimeHelper;->writeMIMEBoundaryClosure(Ljava/io/OutputStreamWriter;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V

    return-void
.end method

.method public static writeMIMEBoundary(Ljava/io/OutputStreamWriter;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "--%s\r\n"

    .line 1
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public static writeMIMEBoundaryClosure(Ljava/io/OutputStreamWriter;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "--%s--\r\n"

    .line 1
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public static writeMIMEContentType(Ljava/io/OutputStreamWriter;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Content-Type: multipart/mixed; boundary=%s\r\n"

    .line 1
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public static writeStringForOperation(Lcom/microsoft/azure/storage/table/TableOperation;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object v0

    const-string v1, "entity"

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableOperation;->getEntity()Lcom/microsoft/azure/storage/table/TableEntity;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p1, p0, v1, p2}, Lcom/microsoft/azure/storage/table/TableEntitySerializer;->writeSingleEntityToString(Ljava/io/StringWriter;Lcom/microsoft/azure/storage/table/TableRequestOptions;Lcom/microsoft/azure/storage/table/TableEntity;ZLcom/microsoft/azure/storage/OperationContext;)V

    const-string p0, "\r\n"

    .line 4
    invoke-virtual {v0, p0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
