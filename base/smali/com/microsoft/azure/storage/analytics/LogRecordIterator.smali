.class public Lcom/microsoft/azure/storage/analytics/LogRecordIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/microsoft/azure/storage/analytics/LogRecord;",
        ">;"
    }
.end annotation


# instance fields
.field public isLogRecordPending:Z

.field public final logBlobIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/microsoft/azure/storage/blob/ListBlobItem;",
            ">;"
        }
    .end annotation
.end field

.field public pendingLogRecord:Lcom/microsoft/azure/storage/analytics/LogRecord;

.field public reader:Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/microsoft/azure/storage/blob/ListBlobItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecordIterator;->isLogRecordPending:Z

    .line 3
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecordIterator;->logBlobIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    const-string v0, "An error occurred while enumerating the result, check the original exception for details."

    .line 1
    iget-boolean v1, p0, Lcom/microsoft/azure/storage/analytics/LogRecordIterator;->isLogRecordPending:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogRecordIterator;->reader:Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogRecordIterator;->reader:Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->isEndOfFile()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v1, Lcom/microsoft/azure/storage/analytics/LogRecord;

    iget-object v3, p0, Lcom/microsoft/azure/storage/analytics/LogRecordIterator;->reader:Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;

    invoke-direct {v1, v3}, Lcom/microsoft/azure/storage/analytics/LogRecord;-><init>(Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;)V

    iput-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogRecordIterator;->pendingLogRecord:Lcom/microsoft/azure/storage/analytics/LogRecord;

    .line 4
    iput-boolean v2, p0, Lcom/microsoft/azure/storage/analytics/LogRecordIterator;->isLogRecordPending:Z

    return v2

    .line 5
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogRecordIterator;->logBlobIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6
    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogRecordIterator;->reader:Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;

    if-eqz v1, :cond_3

    .line 7
    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogRecordIterator;->reader:Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/LogRecordIterator;->logBlobIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/storage/blob/CloudBlockBlob;

    .line 9
    new-instance v2, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/blob/CloudBlob;->openInputStream()Lcom/microsoft/azure/storage/blob/BlobInputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/microsoft/azure/storage/analytics/LogRecordIterator;->reader:Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;

    .line 10
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/analytics/LogRecordIterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    .line 11
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/NoSuchElementException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 13
    throw v2

    :catch_1
    move-exception v1

    .line 14
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/NoSuchElementException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 16
    throw v2

    :catch_2
    move-exception v1

    .line 17
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2, v1}, Ljava/util/NoSuchElementException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 19
    throw v2

    :catch_3
    move-exception v1

    .line 20
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2, v1}, Ljava/util/NoSuchElementException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 22
    throw v2
.end method

.method public next()Lcom/microsoft/azure/storage/analytics/LogRecord;
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecordIterator;->isLogRecordPending:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecordIterator;->isLogRecordPending:Z

    .line 4
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecordIterator;->pendingLogRecord:Lcom/microsoft/azure/storage/analytics/LogRecord;

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/analytics/LogRecordIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/analytics/LogRecordIterator;->next()Lcom/microsoft/azure/storage/analytics/LogRecord;

    move-result-object v0

    return-object v0

    .line 7
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "There are no more elements in this enumeration."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/analytics/LogRecordIterator;->next()Lcom/microsoft/azure/storage/analytics/LogRecord;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
