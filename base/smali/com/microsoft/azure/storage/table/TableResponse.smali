.class public Lcom/microsoft/azure/storage/table/TableResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTableContinuationFromResponse(Ljava/net/HttpURLConnection;)Lcom/microsoft/azure/storage/ResultContinuation;
    .locals 5

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/ResultContinuation;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/ResultContinuation;-><init>()V

    .line 2
    sget-object v1, Lcom/microsoft/azure/storage/ResultContinuationType;->TABLE:Lcom/microsoft/azure/storage/ResultContinuationType;

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/ResultContinuation;->setContinuationType(Lcom/microsoft/azure/storage/ResultContinuationType;)V

    const-string v1, "x-ms-continuation-"

    const-string v2, "NextPartitionKey"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Lcom/microsoft/azure/storage/ResultContinuation;->setNextPartitionKey(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v4, "NextRowKey"

    .line 6
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v0, v4}, Lcom/microsoft/azure/storage/ResultContinuation;->setNextRowKey(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_1
    const-string v4, "NextMarker"

    .line 9
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 11
    invoke-virtual {v0, v4}, Lcom/microsoft/azure/storage/ResultContinuation;->setNextMarker(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_2
    const-string v4, "NextTableName"

    .line 12
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 14
    invoke-virtual {v0, p0}, Lcom/microsoft/azure/storage/ResultContinuation;->setNextTableName(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method
