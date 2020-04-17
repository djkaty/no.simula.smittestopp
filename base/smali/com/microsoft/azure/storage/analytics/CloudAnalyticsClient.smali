.class public Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public LogContainer:Ljava/lang/String;

.field public final blobClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

.field public final tableClient:Lcom/microsoft/azure/storage/table/CloudTableClient;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "$logs"

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->LogContainer:Ljava/lang/String;

    const-string v0, "blobStorageUri"

    .line 3
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "tableStorageUri"

    .line 4
    invoke-static {v0, p2}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    new-instance v0, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-direct {v0, p1, p3}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->blobClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    .line 6
    new-instance p1, Lcom/microsoft/azure/storage/table/CloudTableClient;

    invoke-direct {p1, p2, p3}, Lcom/microsoft/azure/storage/table/CloudTableClient;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->tableClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    return-void
.end method

.method public static parseLogBlob(Lcom/microsoft/azure/storage/blob/ListBlobItem;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/blob/ListBlobItem;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/analytics/LogRecord;",
            ">;"
        }
    .end annotation

    const-string v0, "logBlob"

    .line 1
    invoke-static {v0, p0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance p0, Lcom/microsoft/azure/storage/analytics/LogRecordIterable;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/analytics/LogRecordIterable;-><init>(Ljava/util/Iterator;)V

    return-object p0
.end method

.method public static parseLogBlobs(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/blob/ListBlobItem;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/analytics/LogRecord;",
            ">;"
        }
    .end annotation

    const-string v0, "logBlobs"

    .line 1
    invoke-static {v0, p0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/analytics/LogRecordIterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/microsoft/azure/storage/analytics/LogRecordIterable;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method


# virtual methods
.method public getCapacityTable()Lcom/microsoft/azure/storage/table/CloudTable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->tableClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    const-string v1, "$MetricsCapacityBlob"

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/table/CloudTableClient;->getTableReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/CloudTable;

    move-result-object v0

    return-object v0
.end method

.method public getHourMetricsTable(Lcom/microsoft/azure/storage/analytics/StorageService;)Lcom/microsoft/azure/storage/table/CloudTable;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->getHourMetricsTable(Lcom/microsoft/azure/storage/analytics/StorageService;Lcom/microsoft/azure/storage/StorageLocation;)Lcom/microsoft/azure/storage/table/CloudTable;

    move-result-object p1

    return-object p1
.end method

.method public getHourMetricsTable(Lcom/microsoft/azure/storage/analytics/StorageService;Lcom/microsoft/azure/storage/StorageLocation;)Lcom/microsoft/azure/storage/table/CloudTable;
    .locals 1

    const-string v0, "service"

    .line 2
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p2, :cond_0

    .line 3
    sget-object p2, Lcom/microsoft/azure/storage/StorageLocation;->PRIMARY:Lcom/microsoft/azure/storage/StorageLocation;

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 5
    sget-object p1, Lcom/microsoft/azure/storage/StorageLocation;->PRIMARY:Lcom/microsoft/azure/storage/StorageLocation;

    if-ne p2, p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->tableClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    const-string p2, "$MetricsHourPrimaryTransactionsTable"

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/table/CloudTableClient;->getTableReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/CloudTable;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->tableClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    const-string p2, "$MetricsHourSecondaryTransactionsTable"

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/table/CloudTableClient;->getTableReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/CloudTable;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid storage service specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    sget-object p1, Lcom/microsoft/azure/storage/StorageLocation;->PRIMARY:Lcom/microsoft/azure/storage/StorageLocation;

    if-ne p2, p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->tableClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    const-string p2, "$MetricsHourPrimaryTransactionsQueue"

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/table/CloudTableClient;->getTableReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/CloudTable;

    move-result-object p1

    return-object p1

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->tableClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    const-string p2, "$MetricsHourSecondaryTransactionsQueue"

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/table/CloudTableClient;->getTableReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/CloudTable;

    move-result-object p1

    return-object p1

    .line 12
    :cond_5
    sget-object p1, Lcom/microsoft/azure/storage/StorageLocation;->PRIMARY:Lcom/microsoft/azure/storage/StorageLocation;

    if-ne p2, p1, :cond_6

    .line 13
    iget-object p1, p0, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->tableClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    const-string p2, "$MetricsHourPrimaryTransactionsFile"

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/table/CloudTableClient;->getTableReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/CloudTable;

    move-result-object p1

    return-object p1

    .line 14
    :cond_6
    iget-object p1, p0, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->tableClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    const-string p2, "$MetricsHourSecondaryTransactionsFile"

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/table/CloudTableClient;->getTableReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/CloudTable;

    move-result-object p1

    return-object p1

    .line 15
    :cond_7
    sget-object p1, Lcom/microsoft/azure/storage/StorageLocation;->PRIMARY:Lcom/microsoft/azure/storage/StorageLocation;

    if-ne p2, p1, :cond_8

    .line 16
    iget-object p1, p0, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->tableClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    const-string p2, "$MetricsHourPrimaryTransactionsBlob"

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/table/CloudTableClient;->getTableReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/CloudTable;

    move-result-object p1

    return-object p1

    .line 17
    :cond_8
    iget-object p1, p0, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->tableClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    const-string p2, "$MetricsHourSecondaryTransactionsBlob"

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/table/CloudTableClient;->getTableReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/CloudTable;

    move-result-object p1

    return-object p1
.end method

.method public getLogDirectory(Lcom/microsoft/azure/storage/analytics/StorageService;)Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;
    .locals 2

    const-string v0, "service"

    .line 1
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->blobClient:Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    iget-object v1, p0, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->LogContainer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;->getContainerReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudBlobContainer;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Lcom/microsoft/azure/storage/blob/CloudBlobContainer;->getDirectoryReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

    move-result-object p1

    return-object p1
.end method

.method public getMinuteMetricsTable(Lcom/microsoft/azure/storage/analytics/StorageService;)Lcom/microsoft/azure/storage/table/CloudTable;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->getMinuteMetricsTable(Lcom/microsoft/azure/storage/analytics/StorageService;Lcom/microsoft/azure/storage/StorageLocation;)Lcom/microsoft/azure/storage/table/CloudTable;

    move-result-object p1

    return-object p1
.end method

.method public getMinuteMetricsTable(Lcom/microsoft/azure/storage/analytics/StorageService;Lcom/microsoft/azure/storage/StorageLocation;)Lcom/microsoft/azure/storage/table/CloudTable;
    .locals 1

    const-string v0, "service"

    .line 2
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p2, :cond_0

    .line 3
    sget-object p2, Lcom/microsoft/azure/storage/StorageLocation;->PRIMARY:Lcom/microsoft/azure/storage/StorageLocation;

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 5
    sget-object p1, Lcom/microsoft/azure/storage/StorageLocation;->PRIMARY:Lcom/microsoft/azure/storage/StorageLocation;

    if-ne p2, p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->tableClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    const-string p2, "$MetricsMinutePrimaryTransactionsTable"

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/table/CloudTableClient;->getTableReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/CloudTable;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->tableClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    const-string p2, "$MetricsMinuteSecondaryTransactionsTable"

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/table/CloudTableClient;->getTableReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/CloudTable;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid storage service specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    sget-object p1, Lcom/microsoft/azure/storage/StorageLocation;->PRIMARY:Lcom/microsoft/azure/storage/StorageLocation;

    if-ne p2, p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->tableClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    const-string p2, "$MetricsMinutePrimaryTransactionsQueue"

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/table/CloudTableClient;->getTableReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/CloudTable;

    move-result-object p1

    return-object p1

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->tableClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    const-string p2, "$MetricsMinuteSecondaryTransactionsQueue"

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/table/CloudTableClient;->getTableReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/CloudTable;

    move-result-object p1

    return-object p1

    .line 12
    :cond_5
    sget-object p1, Lcom/microsoft/azure/storage/StorageLocation;->PRIMARY:Lcom/microsoft/azure/storage/StorageLocation;

    if-ne p2, p1, :cond_6

    .line 13
    iget-object p1, p0, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->tableClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    const-string p2, "$MetricsMinutePrimaryTransactionsFile"

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/table/CloudTableClient;->getTableReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/CloudTable;

    move-result-object p1

    return-object p1

    .line 14
    :cond_6
    iget-object p1, p0, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->tableClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    const-string p2, "$MetricsMinuteSecondaryTransactionsFile"

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/table/CloudTableClient;->getTableReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/CloudTable;

    move-result-object p1

    return-object p1

    .line 15
    :cond_7
    sget-object p1, Lcom/microsoft/azure/storage/StorageLocation;->PRIMARY:Lcom/microsoft/azure/storage/StorageLocation;

    if-ne p2, p1, :cond_8

    .line 16
    iget-object p1, p0, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->tableClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    const-string p2, "$MetricsMinutePrimaryTransactionsBlob"

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/table/CloudTableClient;->getTableReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/CloudTable;

    move-result-object p1

    return-object p1

    .line 17
    :cond_8
    iget-object p1, p0, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->tableClient:Lcom/microsoft/azure/storage/table/CloudTableClient;

    const-string p2, "$MetricsMinuteSecondaryTransactionsBlob"

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/table/CloudTableClient;->getTableReference(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/CloudTable;

    move-result-object p1

    return-object p1
.end method

.method public listLogBlobs(Lcom/microsoft/azure/storage/analytics/StorageService;)Ljava/lang/Iterable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/analytics/StorageService;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/blob/ListBlobItem;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->listLogBlobs(Lcom/microsoft/azure/storage/analytics/StorageService;Ljava/util/Date;Ljava/util/Date;Ljava/util/EnumSet;Lcom/microsoft/azure/storage/blob/BlobListingDetails;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public listLogBlobs(Lcom/microsoft/azure/storage/analytics/StorageService;Ljava/util/Date;Ljava/util/Date;Ljava/util/EnumSet;Lcom/microsoft/azure/storage/blob/BlobListingDetails;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/analytics/StorageService;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/LoggingOperations;",
            ">;",
            "Lcom/microsoft/azure/storage/blob/BlobListingDetails;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/blob/ListBlobItem;",
            ">;"
        }
    .end annotation

    const-string v0, "service"

    .line 2
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p4, :cond_0

    .line 3
    const-class p4, Lcom/microsoft/azure/storage/LoggingOperations;

    invoke-static {p4}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p4

    :cond_0
    move-object v4, p4

    if-eqz p5, :cond_2

    .line 4
    sget-object p4, Lcom/microsoft/azure/storage/blob/BlobListingDetails;->METADATA:Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    invoke-virtual {p5, p4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid blob listing details specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    :goto_0
    const-class p4, Lcom/microsoft/azure/storage/LoggingOperations;

    invoke-static {p4}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p4

    invoke-virtual {v4, p4}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    if-eqz p5, :cond_4

    .line 7
    sget-object p4, Lcom/microsoft/azure/storage/blob/BlobListingDetails;->METADATA:Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    .line 8
    invoke-virtual {p5, p4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3

    const-class p4, Lcom/microsoft/azure/storage/LoggingOperations;

    .line 9
    invoke-static {p4}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p4

    .line 10
    invoke-virtual {v4, p4}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    .line 11
    :cond_3
    sget-object p4, Lcom/microsoft/azure/storage/blob/BlobListingDetails;->METADATA:Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    invoke-static {p4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p4

    goto :goto_1

    .line 12
    :cond_4
    const-class p4, Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    invoke-static {p4}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p4

    :goto_1
    move-object v5, p4

    .line 13
    new-instance p4, Lcom/microsoft/azure/storage/analytics/LogBlobIterable;

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->getLogDirectory(Lcom/microsoft/azure/storage/analytics/StorageService;)Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

    move-result-object v1

    move-object v0, p4

    move-object v2, p2

    move-object v3, p3

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/storage/analytics/LogBlobIterable;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;Ljava/util/Date;Ljava/util/Date;Ljava/util/EnumSet;Ljava/util/EnumSet;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    return-object p4

    .line 14
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid logging operations specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public listLogRecords(Lcom/microsoft/azure/storage/analytics/StorageService;)Ljava/lang/Iterable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/analytics/StorageService;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/analytics/LogRecord;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->listLogRecords(Lcom/microsoft/azure/storage/analytics/StorageService;Ljava/util/Date;Ljava/util/Date;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public listLogRecords(Lcom/microsoft/azure/storage/analytics/StorageService;Ljava/util/Date;Ljava/util/Date;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Iterable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/analytics/StorageService;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Lcom/microsoft/azure/storage/blob/BlobRequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/microsoft/azure/storage/analytics/LogRecord;",
            ">;"
        }
    .end annotation

    const-string v0, "service"

    .line 2
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    const-class v0, Lcom/microsoft/azure/storage/LoggingOperations;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v5

    .line 4
    const-class v0, Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    .line 5
    new-instance v0, Lcom/microsoft/azure/storage/analytics/LogBlobIterable;

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;->getLogDirectory(Lcom/microsoft/azure/storage/analytics/StorageService;)Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;

    move-result-object v2

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/microsoft/azure/storage/analytics/LogBlobIterable;-><init>(Lcom/microsoft/azure/storage/blob/CloudBlobDirectory;Ljava/util/Date;Ljava/util/Date;Ljava/util/EnumSet;Ljava/util/EnumSet;Lcom/microsoft/azure/storage/blob/BlobRequestOptions;Lcom/microsoft/azure/storage/OperationContext;)V

    .line 6
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/analytics/LogBlobIterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/microsoft/azure/storage/analytics/LogRecordIterable;

    invoke-direct {p2, p1}, Lcom/microsoft/azure/storage/analytics/LogRecordIterable;-><init>(Ljava/util/Iterator;)V

    return-object p2
.end method
