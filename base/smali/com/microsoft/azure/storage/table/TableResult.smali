.class public Lcom/microsoft/azure/storage/table/TableResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public etag:Ljava/lang/String;

.field public httpStatusCode:I

.field public properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/EntityProperty;",
            ">;"
        }
    .end annotation
.end field

.field public result:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/microsoft/azure/storage/table/TableResult;->httpStatusCode:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/microsoft/azure/storage/table/TableResult;->httpStatusCode:I

    .line 5
    iput p1, p0, Lcom/microsoft/azure/storage/table/TableResult;->httpStatusCode:I

    return-void
.end method

.method public static parseETagForTimestamp(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    const-string v0, "W/"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v0, 0xa

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    .line 4
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getEtag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableResult;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/azure/storage/table/TableResult;->httpStatusCode:I

    return v0
.end method

.method public getProperties()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/EntityProperty;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableResult;->properties:Ljava/util/HashMap;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableResult;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getResultAsType()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/table/TableResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableResult;->etag:Ljava/lang/String;

    return-void
.end method

.method public setHttpStatusCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/microsoft/azure/storage/table/TableResult;->httpStatusCode:I

    return-void
.end method

.method public setProperties(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/azure/storage/table/EntityProperty;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableResult;->properties:Ljava/util/HashMap;

    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableResult;->result:Ljava/lang/Object;

    return-void
.end method

.method public updateResultObject(Lcom/microsoft/azure/storage/table/TableEntity;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableResult;->result:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableResult;->etag:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/microsoft/azure/storage/table/TableEntity;->setEtag(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableResult;->etag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lcom/microsoft/azure/storage/table/TableResult;->parseETagForTimestamp(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/microsoft/azure/storage/table/TableEntity;->setTimestamp(Ljava/util/Date;)V

    :cond_0
    return-void
.end method
