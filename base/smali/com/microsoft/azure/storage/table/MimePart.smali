.class public final Lcom/microsoft/azure/storage/table/MimePart;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public httpStatusCode:I

.field public httpStatusMessage:Ljava/lang/String;

.field public op:Lcom/microsoft/azure/storage/table/TableOperationType;

.field public payload:Ljava/lang/String;

.field public requestIdentity:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/microsoft/azure/storage/table/MimePart;->httpStatusCode:I

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/table/MimePart;->headers:Ljava/util/HashMap;

    return-void
.end method

.method public static appendHeader(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "Content-Type: application/http\r\n"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Content-Transfer-Encoding: binary\r\n\r\n"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static getHttpVerbForOperation(Lcom/microsoft/azure/storage/table/TableOperationType;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/table/TableOperationType;->INSERT:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-ne p0, v0, :cond_0

    const-string p0, "POST"

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lcom/microsoft/azure/storage/table/TableOperationType;->DELETE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-ne p0, v0, :cond_1

    const-string p0, "DELETE"

    return-object p0

    .line 3
    :cond_1
    sget-object v0, Lcom/microsoft/azure/storage/table/TableOperationType;->MERGE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-eq p0, v0, :cond_6

    sget-object v0, Lcom/microsoft/azure/storage/table/TableOperationType;->INSERT_OR_MERGE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-ne p0, v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    sget-object v0, Lcom/microsoft/azure/storage/table/TableOperationType;->REPLACE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-eq p0, v0, :cond_5

    sget-object v0, Lcom/microsoft/azure/storage/table/TableOperationType;->INSERT_OR_REPLACE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-ne p0, v0, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Lcom/microsoft/azure/storage/table/TableOperationType;->RETRIEVE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-ne p0, v0, :cond_4

    const-string p0, "GET"

    return-object p0

    .line 6
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown table operation."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    const-string p0, "PUT"

    return-object p0

    :cond_6
    :goto_1
    const-string p0, "MERGE"

    return-object p0
.end method


# virtual methods
.method public toRequestString()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/microsoft/azure/storage/table/MimePart;->appendHeader(Ljava/lang/StringBuilder;)V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 3
    iget-object v3, p0, Lcom/microsoft/azure/storage/table/MimePart;->op:Lcom/microsoft/azure/storage/table/TableOperationType;

    invoke-static {v3}, Lcom/microsoft/azure/storage/table/MimePart;->getHttpVerbForOperation(Lcom/microsoft/azure/storage/table/TableOperationType;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/microsoft/azure/storage/table/MimePart;->requestIdentity:Ljava/net/URI;

    .line 4
    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "%s %s HTTP/1.1\r\n"

    .line 5
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v2, p0, Lcom/microsoft/azure/storage/table/MimePart;->headers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    new-array v6, v1, [Ljava/lang/Object;

    .line 7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v5

    const-string v3, "%s: %s\r\n"

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "\r\n"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Lcom/microsoft/azure/storage/table/MimePart;->payload:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
