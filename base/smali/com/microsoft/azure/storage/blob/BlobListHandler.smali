.class public final Lcom/microsoft/azure/storage/blob/BlobListHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# instance fields
.field public bld:Ljava/lang/StringBuilder;

.field public blobName:Ljava/lang/String;

.field public final container:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

.field public copyState:Lcom/microsoft/azure/storage/blob/CopyState;

.field public deleted:Z

.field public final elementStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public metadata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

.field public final response:Lcom/microsoft/azure/storage/blob/ListBlobsResponse;

.field public snapshotID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->elementStack:Ljava/util/Stack;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->bld:Ljava/lang/StringBuilder;

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/blob/ListBlobsResponse;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/blob/ListBlobsResponse;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->response:Lcom/microsoft/azure/storage/blob/ListBlobsResponse;

    .line 5
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->container:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    return-void
.end method

.method public static getBlobList(Ljava/io/InputStream;Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)Lcom/microsoft/azure/storage/blob/ListBlobsResponse;
    .locals 2

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/core/Utility;->getSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/microsoft/azure/storage/blob/BlobListHandler;

    invoke-direct {v1, p1}, Lcom/microsoft/azure/storage/blob/BlobListHandler;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlobContainer;)V

    .line 3
    invoke-virtual {v0, p0, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 4
    iget-object p0, v1, Lcom/microsoft/azure/storage/blob/BlobListHandler;->response:Lcom/microsoft/azure/storage/blob/ListBlobsResponse;

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
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-static {p2}, Lcom/microsoft/azure/storage/core/Utility;->parseRFC1123DateFromStringInGMT(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setLastModified(Ljava/util/Date;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "Etag"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-static {p2}, Lcom/microsoft/azure/storage/core/Utility;->formatETag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setEtag(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "Content-Length"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setLength(J)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "Content-Type"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setContentType(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "Content-Encoding"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setContentEncoding(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "Content-Language"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setContentLanguage(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "Content-MD5"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setContentMD5(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "Cache-Control"

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setCacheControl(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "Content-Disposition"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setContentDisposition(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "BlobType"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "The response received is invalid or improperly formatted."

    if-eqz v0, :cond_c

    const-string p1, "BlockBlob"

    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 21
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    sget-object p2, Lcom/microsoft/azure/storage/blob/BlobType;->BLOCK_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setBlobType(Lcom/microsoft/azure/storage/blob/BlobType;)V

    goto/16 :goto_0

    :cond_9
    const-string p1, "PageBlob"

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 23
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    sget-object p2, Lcom/microsoft/azure/storage/blob/BlobType;->PAGE_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setBlobType(Lcom/microsoft/azure/storage/blob/BlobType;)V

    goto/16 :goto_0

    :cond_a
    const-string p1, "AppendBlob"

    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 25
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    sget-object p2, Lcom/microsoft/azure/storage/blob/BlobType;->APPEND_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setBlobType(Lcom/microsoft/azure/storage/blob/BlobType;)V

    goto/16 :goto_0

    .line 26
    :cond_b
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    const-string v0, "LeaseStatus"

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 28
    invoke-static {p2}, Lcom/microsoft/azure/storage/blob/LeaseStatus;->parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/LeaseStatus;

    move-result-object p1

    .line 29
    sget-object p2, Lcom/microsoft/azure/storage/blob/LeaseStatus;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/LeaseStatus;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2c

    .line 30
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {p2, p1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setLeaseStatus(Lcom/microsoft/azure/storage/blob/LeaseStatus;)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "LeaseState"

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 32
    invoke-static {p2}, Lcom/microsoft/azure/storage/blob/LeaseState;->parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/LeaseState;

    move-result-object p1

    .line 33
    sget-object p2, Lcom/microsoft/azure/storage/blob/LeaseState;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/LeaseState;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 34
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {p2, p1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setLeaseState(Lcom/microsoft/azure/storage/blob/LeaseState;)V

    goto/16 :goto_0

    .line 35
    :cond_e
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    const-string v0, "LeaseDuration"

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 37
    invoke-static {p2}, Lcom/microsoft/azure/storage/blob/LeaseDuration;->parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/LeaseDuration;

    move-result-object p1

    .line 38
    sget-object p2, Lcom/microsoft/azure/storage/blob/LeaseDuration;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/LeaseDuration;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    .line 39
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {p2, p1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setLeaseDuration(Lcom/microsoft/azure/storage/blob/LeaseDuration;)V

    goto/16 :goto_0

    .line 40
    :cond_10
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    const-string v0, "ServerEncrypted"

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "true"

    if-eqz v0, :cond_12

    .line 42
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setServerEncrypted(Z)V

    goto/16 :goto_0

    :cond_12
    const-string v0, "CopyId"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 44
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    if-nez p1, :cond_13

    .line 45
    new-instance p1, Lcom/microsoft/azure/storage/blob/CopyState;

    invoke-direct {p1}, Lcom/microsoft/azure/storage/blob/CopyState;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    .line 46
    :cond_13
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/CopyState;->setCopyId(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    const-string v0, "CopyCompletionTime"

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 48
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    if-nez p1, :cond_15

    .line 49
    new-instance p1, Lcom/microsoft/azure/storage/blob/CopyState;

    invoke-direct {p1}, Lcom/microsoft/azure/storage/blob/CopyState;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    .line 50
    :cond_15
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    invoke-static {p2}, Lcom/microsoft/azure/storage/core/Utility;->parseRFC1123DateFromStringInGMT(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/CopyState;->setCompletionTime(Ljava/util/Date;)V

    goto/16 :goto_0

    :cond_16
    const-string v0, "CopyStatus"

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 52
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    if-nez p1, :cond_17

    .line 53
    new-instance p1, Lcom/microsoft/azure/storage/blob/CopyState;

    invoke-direct {p1}, Lcom/microsoft/azure/storage/blob/CopyState;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    .line 54
    :cond_17
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    invoke-static {p2}, Lcom/microsoft/azure/storage/blob/CopyStatus;->parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CopyStatus;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/CopyState;->setStatus(Lcom/microsoft/azure/storage/blob/CopyStatus;)V

    goto/16 :goto_0

    :cond_18
    const-string v0, "CopySource"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 56
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    if-nez p1, :cond_19

    .line 57
    new-instance p1, Lcom/microsoft/azure/storage/blob/CopyState;

    invoke-direct {p1}, Lcom/microsoft/azure/storage/blob/CopyState;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    .line 58
    :cond_19
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/blob/CopyState;->setSource(Ljava/net/URI;)V

    goto/16 :goto_0

    :cond_1a
    const-string v0, "CopyProgress"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 60
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    if-nez p1, :cond_1b

    .line 61
    new-instance p1, Lcom/microsoft/azure/storage/blob/CopyState;

    invoke-direct {p1}, Lcom/microsoft/azure/storage/blob/CopyState;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    :cond_1b
    const-string p1, "/"

    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 63
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/microsoft/azure/storage/blob/CopyState;->setBytesCopied(Ljava/lang/Long;)V

    .line 64
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/microsoft/azure/storage/blob/CopyState;->setTotalBytes(Ljava/lang/Long;)V

    goto/16 :goto_0

    :cond_1c
    const-string v0, "CopyStatusDescription"

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 66
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    if-nez p1, :cond_1d

    .line 67
    new-instance p1, Lcom/microsoft/azure/storage/blob/CopyState;

    invoke-direct {p1}, Lcom/microsoft/azure/storage/blob/CopyState;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    .line 68
    :cond_1d
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/CopyState;->setStatusDescription(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1e
    const-string v0, "IncrementalCopy"

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 70
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setIncrementalCopy(Z)V

    goto/16 :goto_0

    :cond_1f
    const-string v0, "CopyDestinationSnapshot"

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 72
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    if-nez p1, :cond_20

    .line 73
    new-instance p1, Lcom/microsoft/azure/storage/blob/CopyState;

    invoke-direct {p1}, Lcom/microsoft/azure/storage/blob/CopyState;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    .line 74
    :cond_20
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/CopyState;->setCopyDestinationSnapshotID(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_21
    const-string v0, "AccessTier"

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 76
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object p1

    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->PAGE_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 77
    invoke-static {p2}, Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;->parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;

    move-result-object p1

    .line 78
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {p2, p1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setPremiumPageBlobTier(Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;)V

    goto/16 :goto_0

    .line 79
    :cond_22
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object p1

    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->BLOCK_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 80
    invoke-static {p2}, Lcom/microsoft/azure/storage/blob/StandardBlobTier;->parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    move-result-object p1

    .line 81
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {p2, p1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setStandardBlobTier(Lcom/microsoft/azure/storage/blob/StandardBlobTier;)V

    goto/16 :goto_0

    .line 82
    :cond_23
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object p1

    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobType;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/BlobType;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 83
    invoke-static {p2}, Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;->parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;

    move-result-object p1

    .line 84
    invoke-static {p2}, Lcom/microsoft/azure/storage/blob/StandardBlobTier;->parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    move-result-object p2

    .line 85
    sget-object v0, Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;->UNKNOWN:Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 86
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {p2, p1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setPremiumPageBlobTier(Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;)V

    goto/16 :goto_0

    .line 87
    :cond_24
    sget-object p1, Lcom/microsoft/azure/storage/blob/StandardBlobTier;->UNKNOWN:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    .line 88
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setStandardBlobTier(Lcom/microsoft/azure/storage/blob/StandardBlobTier;)V

    goto/16 :goto_0

    .line 89
    :cond_25
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    sget-object p2, Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;->UNKNOWN:Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setPremiumPageBlobTier(Lcom/microsoft/azure/storage/blob/PremiumPageBlobTier;)V

    .line 90
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    sget-object p2, Lcom/microsoft/azure/storage/blob/StandardBlobTier;->UNKNOWN:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setStandardBlobTier(Lcom/microsoft/azure/storage/blob/StandardBlobTier;)V

    goto/16 :goto_0

    :cond_26
    const-string v0, "AccessTierInferred"

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 92
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setBlobTierInferred(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_27
    const-string v0, "AccessTierChangeTime"

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 94
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-static {p2}, Lcom/microsoft/azure/storage/core/Utility;->parseRFC1123DateFromStringInGMT(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setTierChangeTime(Ljava/util/Date;)V

    goto :goto_0

    :cond_28
    const-string v0, "ArchiveStatus"

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 96
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-static {p2}, Lcom/microsoft/azure/storage/blob/RehydrationStatus;->parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/RehydrationStatus;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setRehydrationStatus(Lcom/microsoft/azure/storage/blob/RehydrationStatus;)V

    goto :goto_0

    :cond_29
    const-string v0, "DeletedTime"

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 98
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-static {p2}, Lcom/microsoft/azure/storage/core/Utility;->parseRFC1123DateFromStringInGMT(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setDeletedTime(Ljava/util/Date;)V

    goto :goto_0

    :cond_2a
    const-string v0, "RemainingRetentionDays"

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 100
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setRemainingRetentionDays(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2b
    const-string v0, "Creation-Time"

    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 102
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-static {p2}, Lcom/microsoft/azure/storage/core/Utility;->parseRFC1123DateFromStringInGMT(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setCreatedTime(Ljava/util/Date;)V

    :cond_2c
    :goto_0
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->bld:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string p3, "The response received is invalid or improperly formatted."

    if-eqz p2, :cond_12

    .line 3
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->bld:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    const-string v1, "Blob"

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object p1

    sget-object p2, Lcom/microsoft/azure/storage/blob/BlobType;->BLOCK_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    if-ne p1, p2, :cond_2

    .line 9
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->container:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->blobName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getBlockBlobReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudBlockBlob;

    move-result-object p1

    goto :goto_2

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object p1

    sget-object p2, Lcom/microsoft/azure/storage/blob/BlobType;->PAGE_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    if-ne p1, p2, :cond_3

    .line 11
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->container:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->blobName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getPageBlobReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudPageBlob;

    move-result-object p1

    goto :goto_2

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/blob/BlobProperties;->getBlobType()Lcom/microsoft/azure/storage/blob/BlobType;

    move-result-object p1

    sget-object p2, Lcom/microsoft/azure/storage/blob/BlobType;->APPEND_BLOB:Lcom/microsoft/azure/storage/blob/BlobType;

    if-ne p1, p2, :cond_4

    .line 13
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->container:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->blobName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getAppendBlobReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudAppendBlob;

    move-result-object p1
    :try_end_0
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :goto_2
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->snapshotID:Ljava/lang/String;

    iput-object p2, p1, Lcom/microsoft/azure/storage/blob/CloudBlob;->snapshotID:Ljava/lang/String;

    .line 15
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    iput-object p2, p1, Lcom/microsoft/azure/storage/blob/CloudBlob;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    .line 16
    iget-object p3, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->metadata:Ljava/util/HashMap;

    iput-object p3, p1, Lcom/microsoft/azure/storage/blob/CloudBlob;->metadata:Ljava/util/HashMap;

    .line 17
    iget-object p3, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    invoke-virtual {p2, p3}, Lcom/microsoft/azure/storage/blob/BlobProperties;->setCopyState(Lcom/microsoft/azure/storage/blob/CopyState;)V

    .line 18
    iget-boolean p2, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->deleted:Z

    iput-boolean p2, p1, Lcom/microsoft/azure/storage/blob/CloudBlob;->deleted:Z

    .line 19
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->response:Lcom/microsoft/azure/storage/blob/ListBlobsResponse;

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/ListResponse;->getResults()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 20
    :cond_4
    :try_start_1
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 21
    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 22
    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :cond_5
    const-string p3, "BlobPrefix"

    .line 23
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 24
    :try_start_2
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->response:Lcom/microsoft/azure/storage/blob/ListBlobsResponse;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/core/ListResponse;->getResults()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->container:Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    iget-object p3, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->blobName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getDirectoryReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception p1

    .line 25
    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :cond_6
    const-string v2, "EnumerationResults"

    .line 26
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string p2, "Prefix"

    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 28
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->response:Lcom/microsoft/azure/storage/blob/ListBlobsResponse;

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/core/ListResponse;->setPrefix(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    const-string p2, "Marker"

    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 30
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->response:Lcom/microsoft/azure/storage/blob/ListBlobsResponse;

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/core/ListResponse;->setMarker(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    const-string p2, "NextMarker"

    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 32
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->response:Lcom/microsoft/azure/storage/blob/ListBlobsResponse;

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/core/ListResponse;->setNextMarker(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    const-string p2, "MaxResults"

    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 34
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->response:Lcom/microsoft/azure/storage/blob/ListBlobsResponse;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/core/ListResponse;->setMaxResults(Ljava/lang/Integer;)V

    goto/16 :goto_3

    :cond_a
    const-string p2, "Delimiter"

    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 36
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->response:Lcom/microsoft/azure/storage/blob/ListBlobsResponse;

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/blob/ListBlobsResponse;->setDelimiter(Ljava/lang/String;)V

    goto :goto_3

    .line 37
    :cond_b
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Name"

    if-eqz v1, :cond_e

    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 39
    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->blobName:Ljava/lang/String;

    goto :goto_3

    :cond_c
    const-string p2, "Snapshot"

    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 41
    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->snapshotID:Ljava/lang/String;

    goto :goto_3

    :cond_d
    const-string p2, "Deleted"

    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 43
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->deleted:Z

    goto :goto_3

    .line 44
    :cond_e
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 46
    iput-object v0, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->blobName:Ljava/lang/String;

    goto :goto_3

    :cond_f
    const-string p3, "Properties"

    .line 47
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 48
    :try_start_3
    invoke-direct {p0, p1, v0}, Lcom/microsoft/azure/storage/blob/BlobListHandler;->setProperties(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 49
    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_4
    move-exception p1

    .line 50
    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :cond_10
    const-string p3, "Metadata"

    .line 51
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 52
    iget-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->metadata:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_11
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->bld:Ljava/lang/StringBuilder;

    return-void

    .line 54
    :cond_12
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Blob"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "BlobPrefix"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, ""

    .line 3
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->blobName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->snapshotID:Ljava/lang/String;

    .line 5
    new-instance p2, Lcom/microsoft/azure/storage/blob/BlobProperties;

    invoke-direct {p2}, Lcom/microsoft/azure/storage/blob/BlobProperties;-><init>()V

    iput-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->properties:Lcom/microsoft/azure/storage/blob/BlobProperties;

    .line 6
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->metadata:Ljava/util/HashMap;

    .line 7
    iput-object p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->copyState:Lcom/microsoft/azure/storage/blob/CopyState;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/blob/BlobListHandler;->deleted:Z

    :cond_1
    return-void
.end method
