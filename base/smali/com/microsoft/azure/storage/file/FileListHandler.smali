.class public final Lcom/microsoft/azure/storage/file/FileListHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# instance fields
.field public bld:Ljava/lang/StringBuilder;

.field public final directory:Lcom/microsoft/azure/storage/file/CloudFileDirectory;

.field public directoryProperties:Lcom/microsoft/azure/storage/file/FileDirectoryProperties;

.field public final elementStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fileProperties:Lcom/microsoft/azure/storage/file/FileProperties;

.field public name:Ljava/lang/String;

.field public final response:Lcom/microsoft/azure/storage/core/ListResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/azure/storage/core/ListResponse<",
            "Lcom/microsoft/azure/storage/file/ListFileItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/file/CloudFileDirectory;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->elementStack:Ljava/util/Stack;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->bld:Ljava/lang/StringBuilder;

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/core/ListResponse;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/ListResponse;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->response:Lcom/microsoft/azure/storage/core/ListResponse;

    .line 5
    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->directory:Lcom/microsoft/azure/storage/file/CloudFileDirectory;

    return-void
.end method

.method public static getFileAndDirectoryList(Ljava/io/InputStream;Lcom/microsoft/azure/storage/file/CloudFileDirectory;)Lcom/microsoft/azure/storage/core/ListResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/microsoft/azure/storage/file/CloudFileDirectory;",
            ")",
            "Lcom/microsoft/azure/storage/core/ListResponse<",
            "Lcom/microsoft/azure/storage/file/ListFileItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/core/Utility;->getSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/microsoft/azure/storage/file/FileListHandler;

    invoke-direct {v1, p1}, Lcom/microsoft/azure/storage/file/FileListHandler;-><init>(Lcom/microsoft/azure/storage/file/CloudFileDirectory;)V

    .line 3
    invoke-virtual {v0, p0, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 4
    iget-object p0, v1, Lcom/microsoft/azure/storage/file/FileListHandler;->response:Lcom/microsoft/azure/storage/core/ListResponse;

    return-object p0
.end method

.method private setProperties(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Last-Modified"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->directoryProperties:Lcom/microsoft/azure/storage/file/FileDirectoryProperties;

    invoke-static {p2}, Lcom/microsoft/azure/storage/core/Utility;->parseRFC1123DateFromStringInGMT(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/file/FileDirectoryProperties;->setLastModified(Ljava/util/Date;)V

    goto :goto_0

    :cond_0
    const-string v0, "Etag"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->directoryProperties:Lcom/microsoft/azure/storage/file/FileDirectoryProperties;

    invoke-static {p2}, Lcom/microsoft/azure/storage/core/Utility;->formatETag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/file/FileDirectoryProperties;->setEtag(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Content-Length"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->fileProperties:Lcom/microsoft/azure/storage/file/FileProperties;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/microsoft/azure/storage/file/FileProperties;->setLength(J)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->bld:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 3
    iget-object p2, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->isEmpty()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p3

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->bld:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, v0

    :goto_1
    const-string v0, "File"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->directory:Lcom/microsoft/azure/storage/file/CloudFileDirectory;

    iget-object p2, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->getFileReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/file/CloudFile;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-object p2, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->fileProperties:Lcom/microsoft/azure/storage/file/FileProperties;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/file/CloudFile;->setProperties(Lcom/microsoft/azure/storage/file/FileProperties;)V

    .line 10
    iget-object p2, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->response:Lcom/microsoft/azure/storage/core/ListResponse;

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/ListResponse;->getResults()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :catch_0
    move-exception p1

    .line 11
    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 12
    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :cond_2
    const-string v1, "Directory"

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    :try_start_1
    iget-object p1, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->directory:Lcom/microsoft/azure/storage/file/CloudFileDirectory;

    iget-object p2, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->getDirectoryReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/file/CloudFileDirectory;

    move-result-object p1
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_1 .. :try_end_1} :catch_2

    .line 15
    iget-object p2, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->directoryProperties:Lcom/microsoft/azure/storage/file/FileDirectoryProperties;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/file/CloudFileDirectory;->setProperties(Lcom/microsoft/azure/storage/file/FileDirectoryProperties;)V

    .line 16
    iget-object p2, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->response:Lcom/microsoft/azure/storage/core/ListResponse;

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/ListResponse;->getResults()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :catch_2
    move-exception p1

    .line 17
    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_3
    move-exception p1

    .line 18
    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :cond_3
    const-string v2, "EnumerationResults"

    .line 19
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string p2, "Prefix"

    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 21
    iget-object p1, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->response:Lcom/microsoft/azure/storage/core/ListResponse;

    invoke-virtual {p1, p3}, Lcom/microsoft/azure/storage/core/ListResponse;->setPrefix(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string p2, "Marker"

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 23
    iget-object p1, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->response:Lcom/microsoft/azure/storage/core/ListResponse;

    invoke-virtual {p1, p3}, Lcom/microsoft/azure/storage/core/ListResponse;->setMarker(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string p2, "NextMarker"

    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 25
    iget-object p1, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->response:Lcom/microsoft/azure/storage/core/ListResponse;

    invoke-virtual {p1, p3}, Lcom/microsoft/azure/storage/core/ListResponse;->setNextMarker(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string p2, "MaxResults"

    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 27
    iget-object p1, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->response:Lcom/microsoft/azure/storage/core/ListResponse;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/core/ListResponse;->setMaxResults(Ljava/lang/Integer;)V

    goto :goto_3

    .line 28
    :cond_7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    const-string v0, "Properties"

    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 30
    :try_start_2
    invoke-direct {p0, p1, p3}, Lcom/microsoft/azure/storage/file/FileListHandler;->setProperties(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 31
    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :cond_9
    :goto_2
    const-string p2, "Name"

    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 33
    iput-object p3, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->name:Ljava/lang/String;

    .line 34
    :cond_a
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->bld:Ljava/lang/StringBuilder;

    return-void

    .line 35
    :cond_b
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "The response received is invalid or improperly formatted."

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "File"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p3, ""

    if-eqz p1, :cond_0

    .line 3
    iput-object p3, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->name:Ljava/lang/String;

    .line 4
    new-instance p1, Lcom/microsoft/azure/storage/file/FileProperties;

    invoke-direct {p1}, Lcom/microsoft/azure/storage/file/FileProperties;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->fileProperties:Lcom/microsoft/azure/storage/file/FileProperties;

    :cond_0
    const-string p1, "Directory"

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iput-object p3, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->name:Ljava/lang/String;

    .line 7
    new-instance p1, Lcom/microsoft/azure/storage/file/FileDirectoryProperties;

    invoke-direct {p1}, Lcom/microsoft/azure/storage/file/FileDirectoryProperties;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/file/FileListHandler;->directoryProperties:Lcom/microsoft/azure/storage/file/FileDirectoryProperties;

    :cond_1
    return-void
.end method
