.class public final Lcom/microsoft/azure/storage/CloudStorageAccount;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;
    }
.end annotation


# static fields
.field public static final ACCOUNT_KEY_NAME:Ljava/lang/String; = "AccountKey"

.field public static final ACCOUNT_NAME_NAME:Ljava/lang/String; = "AccountName"

.field public static final ACCOUNT_TOKEN_NAME:Ljava/lang/String; = "AccountToken"

.field public static final BLOB_ENDPOINT_NAME:Ljava/lang/String; = "BlobEndpoint"

.field public static final BLOB_SECONDARY_ENDPOINT_NAME:Ljava/lang/String; = "BlobSecondaryEndpoint"

.field public static final DEFAULT_DNS:Ljava/lang/String; = "core.windows.net"

.field public static final DEFAULT_ENDPOINTS_PROTOCOL_NAME:Ljava/lang/String; = "DefaultEndpointsProtocol"

.field public static final DEVELOPMENT_STORAGE_PRIMARY_ENDPOINT_FORMAT:Ljava/lang/String; = "%s://%s:%s/%s"

.field public static final DEVELOPMENT_STORAGE_PROXY_URI_NAME:Ljava/lang/String; = "DevelopmentStorageProxyUri"

.field public static final DEVELOPMENT_STORAGE_SECONDARY_ENDPOINT_FORMAT:Ljava/lang/String; = "%s://%s:%s/%s-secondary"

.field public static final DEVSTORE_ACCOUNT_KEY:Ljava/lang/String; = "Eby8vdM02xNOcqFlqUwJPLlmEtlCDXJ1OUzFT50uSRZ6IFsuFq2UVErCz4I6tq/K1SZFPTOtr/KBHBeksoGMGw=="

.field public static final DEVSTORE_ACCOUNT_NAME:Ljava/lang/String; = "devstoreaccount1"

.field public static final DNS_NAME_FORMAT:Ljava/lang/String; = "%s.%s"

.field public static final ENDPOINT_SUFFIX_NAME:Ljava/lang/String; = "EndpointSuffix"

.field public static final FILE_ENDPOINT_NAME:Ljava/lang/String; = "FileEndpoint"

.field public static final FILE_SECONDARY_ENDPOINT_NAME:Ljava/lang/String; = "FileSecondaryEndpoint"

.field public static final PRIMARY_ENDPOINT_FORMAT:Ljava/lang/String; = "%s://%s.%s"

.field public static final QUEUE_ENDPOINT_NAME:Ljava/lang/String; = "QueueEndpoint"

.field public static final QUEUE_SECONDARY_ENDPOINT_NAME:Ljava/lang/String; = "QueueSecondaryEndpoint"

.field public static final SECONDARY_ENDPOINT_FORMAT:Ljava/lang/String; = "%s://%s%s.%s"

.field public static final SECONDARY_LOCATION_ACCOUNT_SUFFIX:Ljava/lang/String; = "-secondary"

.field public static final SHARED_ACCESS_SIGNATURE_NAME:Ljava/lang/String; = "SharedAccessSignature"

.field public static final TABLE_ENDPOINT_NAME:Ljava/lang/String; = "TableEndpoint"

.field public static final TABLE_SECONDARY_ENDPOINT_NAME:Ljava/lang/String; = "TableSecondaryEndpoint"

.field public static final USE_DEVELOPMENT_STORAGE_NAME:Ljava/lang/String; = "UseDevelopmentStorage"

.field public static validCredentials:Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;


# instance fields
.field public accountName:Ljava/lang/String;

.field public final blobStorageUri:Lcom/microsoft/azure/storage/StorageUri;

.field public credentials:Lcom/microsoft/azure/storage/StorageCredentials;

.field public endpointSuffix:Ljava/lang/String;

.field public final fileStorageUri:Lcom/microsoft/azure/storage/StorageUri;

.field public isBlobEndpointDefault:Z

.field public isDevStoreAccount:Z

.field public isFileEndpointDefault:Z

.field public isQueueEndpointDefault:Z

.field public isTableEndpointDefault:Z

.field public final queueStorageUri:Lcom/microsoft/azure/storage/StorageUri;

.field public final tableStorageUri:Lcom/microsoft/azure/storage/StorageUri;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    const/4 v2, 0x2

    new-array v3, v2, [Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    const-string v4, "AccountKey"

    const-string v5, "AccountName"

    .line 1
    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v6

    .line 2
    invoke-static {v6}, Lcom/microsoft/azure/storage/CloudStorageAccount;->allRequired([Ljava/lang/String;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v3, v7

    const-string v6, "SharedAccessSignature"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/microsoft/azure/storage/CloudStorageAccount;->none([Ljava/lang/String;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v3, v9

    invoke-static {v3}, Lcom/microsoft/azure/storage/CloudStorageAccount;->matchesAll([Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    move-result-object v3

    aput-object v3, v1, v7

    new-array v0, v0, [Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {v3}, Lcom/microsoft/azure/storage/CloudStorageAccount;->allRequired([Ljava/lang/String;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    move-result-object v3

    aput-object v3, v0, v7

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/azure/storage/CloudStorageAccount;->optional([Ljava/lang/String;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    move-result-object v3

    aput-object v3, v0, v9

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/azure/storage/CloudStorageAccount;->none([Ljava/lang/String;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->matchesAll([Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    move-result-object v0

    aput-object v0, v1, v9

    filled-new-array {v5, v4, v6}, [Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->none([Ljava/lang/String;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    move-result-object v0

    aput-object v0, v1, v2

    .line 5
    invoke-static {v1}, Lcom/microsoft/azure/storage/CloudStorageAccount;->matchesOne([Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/storage/CloudStorageAccount;->validCredentials:Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/azure/storage/CloudStorageAccount;-><init>(Lcom/microsoft/azure/storage/StorageCredentials;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/StorageCredentials;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageUri;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 28
    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/CloudStorageAccount;-><init>(Lcom/microsoft/azure/storage/StorageCredentials;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/StorageCredentials;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageUri;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->isBlobEndpointDefault:Z

    .line 31
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->isFileEndpointDefault:Z

    .line 32
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->isQueueEndpointDefault:Z

    .line 33
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->isTableEndpointDefault:Z

    .line 34
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->isDevStoreAccount:Z

    .line 35
    iput-object p1, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->credentials:Lcom/microsoft/azure/storage/StorageCredentials;

    .line 36
    iput-object p2, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->blobStorageUri:Lcom/microsoft/azure/storage/StorageUri;

    .line 37
    iput-object p5, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->fileStorageUri:Lcom/microsoft/azure/storage/StorageUri;

    .line 38
    iput-object p3, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->queueStorageUri:Lcom/microsoft/azure/storage/StorageUri;

    .line 39
    iput-object p4, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->tableStorageUri:Lcom/microsoft/azure/storage/StorageUri;

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->endpointSuffix:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/StorageCredentials;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;)V
    .locals 6

    .line 26
    new-instance v2, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v2, p2}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    new-instance v3, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v3, p3}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    new-instance v4, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v4, p4}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/CloudStorageAccount;-><init>(Lcom/microsoft/azure/storage/StorageCredentials;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/StorageCredentials;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;)V
    .locals 6

    .line 27
    new-instance v2, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v2, p2}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    new-instance v3, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v3, p3}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    new-instance v4, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v4, p4}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    new-instance v5, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v5, p5}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/CloudStorageAccount;-><init>(Lcom/microsoft/azure/storage/StorageCredentials;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageUri;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/StorageCredentials;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/azure/storage/CloudStorageAccount;-><init>(Lcom/microsoft/azure/storage/StorageCredentials;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/StorageCredentials;ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/microsoft/azure/storage/CloudStorageAccount;-><init>(Lcom/microsoft/azure/storage/StorageCredentials;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/StorageCredentials;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->isBlobEndpointDefault:Z

    .line 6
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->isFileEndpointDefault:Z

    .line 7
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->isQueueEndpointDefault:Z

    .line 8
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->isTableEndpointDefault:Z

    .line 9
    iput-boolean v0, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->isDevStoreAccount:Z

    const-string v0, "storageCredentials"

    .line 10
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-static {p4}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageCredentials;->getAccountName()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageCredentials;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageCredentials;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The account name does not match the existing account name on the credentials."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    const-string p2, "https"

    goto :goto_1

    :cond_3
    const-string p2, "http"

    .line 16
    :goto_1
    iput-object p1, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->credentials:Lcom/microsoft/azure/storage/StorageCredentials;

    const-string p1, "blob"

    .line 17
    invoke-static {p1, p3}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getDNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p4, p1}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getDefaultStorageUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->blobStorageUri:Lcom/microsoft/azure/storage/StorageUri;

    const-string p1, "file"

    .line 18
    invoke-static {p1, p3}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getDNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p4, p1}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getDefaultStorageUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->fileStorageUri:Lcom/microsoft/azure/storage/StorageUri;

    const-string p1, "queue"

    .line 19
    invoke-static {p1, p3}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getDNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p4, p1}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getDefaultStorageUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->queueStorageUri:Lcom/microsoft/azure/storage/StorageUri;

    const-string p1, "table"

    .line 20
    invoke-static {p1, p3}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getDNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p4, p1}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getDefaultStorageUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->tableStorageUri:Lcom/microsoft/azure/storage/StorageUri;

    .line 21
    iput-object p3, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->endpointSuffix:Ljava/lang/String;

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->isBlobEndpointDefault:Z

    .line 23
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->isFileEndpointDefault:Z

    .line 24
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->isQueueEndpointDefault:Z

    .line 25
    iput-boolean p1, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->isTableEndpointDefault:Z

    return-void
.end method

.method public static varargs allRequired([Ljava/lang/String;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/CloudStorageAccount$1;

    invoke-direct {v0, p0}, Lcom/microsoft/azure/storage/CloudStorageAccount$1;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs atLeastOne([Ljava/lang/String;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/CloudStorageAccount$3;

    invoke-direct {v0, p0}, Lcom/microsoft/azure/storage/CloudStorageAccount$3;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "core.windows.net"

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "%s.%s"

    .line 1
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultStorageUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/storage/StorageUri;
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/net/URI;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const/4 v5, 0x2

    aput-object p2, v2, v5

    const-string v6, "%s://%s.%s"

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v2, Ljava/net/URI;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v3

    aput-object p1, v6, v4

    const-string p0, "-secondary"

    aput-object p0, v6, v5

    aput-object p2, v6, v1

    const-string p0, "%s://%s%s.%s"

    .line 5
    invoke-static {p0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p0, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {p0, v0, v2}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;Ljava/net/URI;)V

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The account name is null or empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The protocol to use is null. Please specify whether to use http or https."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDevelopmentStorageAccount()Lcom/microsoft/azure/storage/CloudStorageAccount;
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {v0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getDevelopmentStorageAccount(Ljava/net/URI;)Lcom/microsoft/azure/storage/CloudStorageAccount;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static getDevelopmentStorageAccount(Ljava/net/URI;)Lcom/microsoft/azure/storage/CloudStorageAccount;
    .locals 17

    if-nez p0, :cond_0

    const-string v0, "http"

    const-string v1, "127.0.0.1"

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 4
    :goto_0
    new-instance v3, Lcom/microsoft/azure/storage/StorageCredentialsAccountAndKey;

    const-string v2, "devstoreaccount1"

    const-string v4, "Eby8vdM02xNOcqFlqUwJPLlmEtlCDXJ1OUzFT50uSRZ6IFsuFq2UVErCz4I6tq/K1SZFPTOtr/KBHBeksoGMGw=="

    invoke-direct {v3, v2, v4}, Lcom/microsoft/azure/storage/StorageCredentialsAccountAndKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v4, Ljava/net/URI;

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v8, 0x1

    aput-object v1, v6, v8

    const-string v9, "10000"

    const/4 v10, 0x2

    aput-object v9, v6, v10

    const/4 v11, 0x3

    aput-object v2, v6, v11

    const-string v12, "%s://%s:%s/%s"

    invoke-static {v12, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v6, Ljava/net/URI;

    new-array v13, v5, [Ljava/lang/Object;

    aput-object v0, v13, v7

    aput-object v1, v13, v8

    const-string v14, "10001"

    aput-object v14, v13, v10

    aput-object v2, v13, v11

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v13, Ljava/net/URI;

    new-array v15, v5, [Ljava/lang/Object;

    aput-object v0, v15, v7

    aput-object v1, v15, v8

    const-string v16, "10002"

    aput-object v16, v15, v10

    aput-object v2, v15, v11

    invoke-static {v12, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v12, Ljava/net/URI;

    new-array v15, v5, [Ljava/lang/Object;

    aput-object v0, v15, v7

    aput-object v1, v15, v8

    aput-object v9, v15, v10

    aput-object v2, v15, v11

    const-string v9, "%s://%s:%s/%s-secondary"

    invoke-static {v9, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v15}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance v15, Ljava/net/URI;

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v0, v11, v7

    aput-object v1, v11, v8

    aput-object v14, v11, v10

    const/4 v14, 0x3

    aput-object v2, v11, v14

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v15, v11}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance v11, Ljava/net/URI;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v7

    aput-object v1, v5, v8

    aput-object v16, v5, v10

    aput-object v2, v5, v14

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/microsoft/azure/storage/CloudStorageAccount;

    new-instance v1, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v1, v4, v12}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;Ljava/net/URI;)V

    new-instance v5, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v5, v6, v15}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;Ljava/net/URI;)V

    new-instance v6, Lcom/microsoft/azure/storage/StorageUri;

    invoke-direct {v6, v13, v11}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;Ljava/net/URI;)V

    const/4 v7, 0x0

    move-object v2, v0

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/microsoft/azure/storage/CloudStorageAccount;-><init>(Lcom/microsoft/azure/storage/StorageCredentials;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageUri;)V

    .line 12
    iput-boolean v8, v0, Lcom/microsoft/azure/storage/CloudStorageAccount;->isDevStoreAccount:Z

    return-object v0
.end method

.method public static getStorageUri(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/microsoft/azure/storage/StorageUri;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/microsoft/azure/storage/StorageUri;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p2}, Lcom/microsoft/azure/storage/CloudStorageAccount;->settingOrDefault(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p0, p3}, Lcom/microsoft/azure/storage/CloudStorageAccount;->settingOrDefault(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 3
    new-instance p0, Lcom/microsoft/azure/storage/StorageUri;

    new-instance p1, Ljava/net/URI;

    invoke-direct {p1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/net/URI;

    invoke-direct {p2, p3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;Ljava/net/URI;)V

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    new-instance p0, Lcom/microsoft/azure/storage/StorageUri;

    new-instance p1, Ljava/net/URI;

    invoke-direct {p1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;)V

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "DefaultEndpointsProtocol"

    .line 6
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, "AccountName"

    .line 7
    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string p4, "EndpointSuffix"

    .line 8
    invoke-interface {p0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 9
    invoke-static {p1, p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getDNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3, p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getDefaultStorageUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isValidEndpointPair(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 1
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static varargs matchesAll([Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/CloudStorageAccount$5;

    invoke-direct {v0, p0}, Lcom/microsoft/azure/storage/CloudStorageAccount$5;-><init>([Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;)V

    return-object v0
.end method

.method public static matchesExactly(Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/CloudStorageAccount$7;

    invoke-direct {v0, p0}, Lcom/microsoft/azure/storage/CloudStorageAccount$7;-><init>(Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;)V

    return-object v0
.end method

.method public static varargs matchesOne([Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/CloudStorageAccount$6;

    invoke-direct {v0, p0}, Lcom/microsoft/azure/storage/CloudStorageAccount$6;-><init>([Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;)V

    return-object v0
.end method

.method public static varargs matchesSpecification(Ljava/util/Map;[Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    aget-object v3, p1, v1

    .line 4
    invoke-interface {v3, p0}, Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;->apply(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    .line 6
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v2
.end method

.method public static varargs none([Ljava/lang/String;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/CloudStorageAccount$4;

    invoke-direct {v0, p0}, Lcom/microsoft/azure/storage/CloudStorageAccount$4;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs optional([Ljava/lang/String;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/CloudStorageAccount$2;

    invoke-direct {v0, p0}, Lcom/microsoft/azure/storage/CloudStorageAccount$2;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/CloudStorageAccount;
    .locals 4

    const-string v0, "Invalid connection string."

    if-eqz p0, :cond_4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 2
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->parseAccountString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    invoke-static {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->tryConfigureDevStore(Ljava/util/Map;)Lcom/microsoft/azure/storage/CloudStorageAccount;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    .line 7
    :cond_2
    invoke-static {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->tryConfigureServiceAccount(Ljava/util/Map;)Lcom/microsoft/azure/storage/CloudStorageAccount;

    move-result-object p0

    if-eqz p0, :cond_3

    return-object p0

    .line 8
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static settingOrDefault(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static tryConfigureDevStore(Ljava/util/Map;)Lcom/microsoft/azure/storage/CloudStorageAccount;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/azure/storage/CloudStorageAccount;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    const-string v1, "UseDevelopmentStorage"

    .line 1
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lcom/microsoft/azure/storage/CloudStorageAccount;->allRequired([Ljava/lang/String;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "DevelopmentStorageProxyUri"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {v3}, Lcom/microsoft/azure/storage/CloudStorageAccount;->optional([Ljava/lang/String;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 4
    invoke-static {p0, v0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->matchesSpecification(Ljava/util/Map;[Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    new-instance v3, Ljava/net/URI;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-static {v3}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getDevelopmentStorageAccount(Ljava/net/URI;)Lcom/microsoft/azure/storage/CloudStorageAccount;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid connection string, the UseDevelopmentStorage key must always be paired with \'true\'.  Remove the flag entirely otherwise."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object v3
.end method

.method public static tryConfigureServiceAccount(Ljava/util/Map;)Lcom/microsoft/azure/storage/CloudStorageAccount;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/azure/storage/CloudStorageAccount;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "BlobEndpoint"

    const-string v2, "BlobSecondaryEndpoint"

    const-string v3, "QueueEndpoint"

    const-string v4, "QueueSecondaryEndpoint"

    const-string v5, "TableEndpoint"

    const-string v6, "TableSecondaryEndpoint"

    const-string v7, "FileEndpoint"

    const-string v8, "FileSecondaryEndpoint"

    .line 1
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lcom/microsoft/azure/storage/CloudStorageAccount;->optional([Ljava/lang/String;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    move-result-object v1

    const-string v2, "FileEndpoint"

    const-string v3, "TableEndpoint"

    const-string v4, "QueueEndpoint"

    const-string v5, "BlobEndpoint"

    .line 3
    filled-new-array {v5, v4, v3, v2}, [Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-static {v6}, Lcom/microsoft/azure/storage/CloudStorageAccount;->atLeastOne([Ljava/lang/String;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    move-result-object v6

    const-string v7, "FileSecondaryEndpoint"

    const-string v8, "TableSecondaryEndpoint"

    const-string v9, "QueueSecondaryEndpoint"

    const-string v10, "BlobSecondaryEndpoint"

    .line 5
    filled-new-array {v10, v9, v8, v7}, [Ljava/lang/String;

    move-result-object v11

    .line 6
    invoke-static {v11}, Lcom/microsoft/azure/storage/CloudStorageAccount;->optional([Ljava/lang/String;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    move-result-object v11

    const/4 v12, 0x4

    new-array v12, v12, [Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    const/4 v13, 0x2

    new-array v14, v13, [Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    const/4 v15, 0x1

    new-array v13, v15, [Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    const-string v17, "AccountKey"

    .line 7
    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    move-result-object v17

    .line 8
    invoke-static/range {v17 .. v17}, Lcom/microsoft/azure/storage/CloudStorageAccount;->allRequired([Ljava/lang/String;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v13, v18

    invoke-static {v13}, Lcom/microsoft/azure/storage/CloudStorageAccount;->matchesAll([Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    move-result-object v13

    aput-object v13, v14, v18

    const-string v13, "SharedAccessSignature"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    .line 9
    invoke-static {v13}, Lcom/microsoft/azure/storage/CloudStorageAccount;->allRequired([Ljava/lang/String;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    move-result-object v13

    aput-object v13, v14, v15

    .line 10
    invoke-static {v14}, Lcom/microsoft/azure/storage/CloudStorageAccount;->matchesOne([Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    move-result-object v13

    aput-object v13, v12, v18

    const-string v13, "AccountName"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v14

    .line 11
    invoke-static {v14}, Lcom/microsoft/azure/storage/CloudStorageAccount;->allRequired([Ljava/lang/String;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    move-result-object v14

    aput-object v14, v12, v15

    const/4 v14, 0x2

    aput-object v1, v12, v14

    const-string v1, "EndpointSuffix"

    const-string v14, "DefaultEndpointsProtocol"

    filled-new-array {v14, v1}, [Ljava/lang/String;

    move-result-object v17

    .line 12
    invoke-static/range {v17 .. v17}, Lcom/microsoft/azure/storage/CloudStorageAccount;->optional([Ljava/lang/String;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    move-result-object v17

    const/4 v15, 0x3

    aput-object v17, v12, v15

    .line 13
    invoke-static {v12}, Lcom/microsoft/azure/storage/CloudStorageAccount;->matchesAll([Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    move-result-object v12

    invoke-static {v12}, Lcom/microsoft/azure/storage/CloudStorageAccount;->matchesExactly(Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    move-result-object v12

    new-array v15, v15, [Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    .line 14
    sget-object v17, Lcom/microsoft/azure/storage/CloudStorageAccount;->validCredentials:Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    aput-object v17, v15, v18

    move-object/from16 v17, v13

    const/4 v13, 0x1

    aput-object v6, v15, v13

    const/4 v6, 0x2

    aput-object v11, v15, v6

    .line 15
    invoke-static {v15}, Lcom/microsoft/azure/storage/CloudStorageAccount;->matchesAll([Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    move-result-object v6

    invoke-static {v6}, Lcom/microsoft/azure/storage/CloudStorageAccount;->matchesExactly(Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;)Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    move-result-object v6

    new-array v11, v13, [Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    aput-object v12, v11, v18

    .line 16
    invoke-static {v0, v11}, Lcom/microsoft/azure/storage/CloudStorageAccount;->matchesSpecification(Ljava/util/Map;[Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;)Ljava/lang/Boolean;

    move-result-object v11

    new-array v12, v13, [Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;

    aput-object v6, v12, v18

    .line 17
    invoke-static {v0, v12}, Lcom/microsoft/azure/storage/CloudStorageAccount;->matchesSpecification(Ljava/util/Map;[Lcom/microsoft/azure/storage/CloudStorageAccount$ConnectionStringFilter;)Ljava/lang/Boolean;

    move-result-object v6

    .line 18
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 19
    :cond_0
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "https"

    .line 20
    invoke-interface {v0, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_1
    invoke-static {v0, v5}, Lcom/microsoft/azure/storage/CloudStorageAccount;->settingOrDefault(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-static {v0, v4}, Lcom/microsoft/azure/storage/CloudStorageAccount;->settingOrDefault(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 23
    invoke-static {v0, v3}, Lcom/microsoft/azure/storage/CloudStorageAccount;->settingOrDefault(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 24
    invoke-static {v0, v2}, Lcom/microsoft/azure/storage/CloudStorageAccount;->settingOrDefault(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 25
    invoke-static {v0, v10}, Lcom/microsoft/azure/storage/CloudStorageAccount;->settingOrDefault(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, v1

    .line 26
    invoke-static {v0, v9}, Lcom/microsoft/azure/storage/CloudStorageAccount;->settingOrDefault(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v2

    .line 27
    invoke-static {v0, v8}, Lcom/microsoft/azure/storage/CloudStorageAccount;->settingOrDefault(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v3

    .line 28
    invoke-static {v0, v7}, Lcom/microsoft/azure/storage/CloudStorageAccount;->settingOrDefault(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-static {v6, v13}, Lcom/microsoft/azure/storage/CloudStorageAccount;->isValidEndpointPair(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 30
    invoke-static {v12, v1}, Lcom/microsoft/azure/storage/CloudStorageAccount;->isValidEndpointPair(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 31
    invoke-static {v14, v2}, Lcom/microsoft/azure/storage/CloudStorageAccount;->isValidEndpointPair(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 32
    invoke-static {v15, v3}, Lcom/microsoft/azure/storage/CloudStorageAccount;->isValidEndpointPair(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 33
    new-instance v1, Lcom/microsoft/azure/storage/CloudStorageAccount;

    .line 34
    invoke-static/range {p0 .. p0}, Lcom/microsoft/azure/storage/StorageCredentials;->tryParseCredentials(Ljava/util/Map;)Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v22

    const-string v2, "blob"

    .line 35
    invoke-static {v0, v2, v5, v10, v11}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getStorageUri(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v23

    const-string v2, "queue"

    .line 36
    invoke-static {v0, v2, v4, v9, v11}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getStorageUri(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v24

    const-string v2, "table"

    move-object/from16 v3, v20

    .line 37
    invoke-static {v0, v2, v3, v8, v11}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getStorageUri(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v25

    const-string v2, "file"

    move-object/from16 v3, v19

    .line 38
    invoke-static {v0, v2, v3, v7, v11}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getStorageUri(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v26

    move-object/from16 v21, v1

    invoke-direct/range {v21 .. v26}, Lcom/microsoft/azure/storage/CloudStorageAccount;-><init>(Lcom/microsoft/azure/storage/StorageCredentials;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageUri;)V

    if-nez v6, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 39
    :goto_0
    iput-boolean v2, v1, Lcom/microsoft/azure/storage/CloudStorageAccount;->isBlobEndpointDefault:Z

    if-nez v15, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 40
    :goto_1
    iput-boolean v2, v1, Lcom/microsoft/azure/storage/CloudStorageAccount;->isFileEndpointDefault:Z

    if-nez v12, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 41
    :goto_2
    iput-boolean v2, v1, Lcom/microsoft/azure/storage/CloudStorageAccount;->isQueueEndpointDefault:Z

    if-nez v14, :cond_5

    const/4 v15, 0x1

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    .line 42
    :goto_3
    iput-boolean v15, v1, Lcom/microsoft/azure/storage/CloudStorageAccount;->isTableEndpointDefault:Z

    move-object/from16 v2, v16

    .line 43
    invoke-static {v0, v2}, Lcom/microsoft/azure/storage/CloudStorageAccount;->settingOrDefault(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/microsoft/azure/storage/CloudStorageAccount;->endpointSuffix:Ljava/lang/String;

    move-object/from16 v2, v17

    .line 44
    invoke-static {v0, v2}, Lcom/microsoft/azure/storage/CloudStorageAccount;->settingOrDefault(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/microsoft/azure/storage/CloudStorageAccount;->accountName:Ljava/lang/String;

    return-object v1

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public createCloudAnalyticsClient()Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getBlobStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getTableStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->credentials:Lcom/microsoft/azure/storage/StorageCredentials;

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getBlobStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getTableStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v2

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/azure/storage/analytics/CloudAnalyticsClient;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No credentials provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No table endpoint configured."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No blob endpoint configured."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createCloudBlobClient()Lcom/microsoft/azure/storage/blob/CloudBlobClient;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getBlobStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->credentials:Lcom/microsoft/azure/storage/StorageCredentials;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/blob/CloudBlobClient;

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getBlobStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/azure/storage/blob/CloudBlobClient;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No credentials provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No blob endpoint configured."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createCloudFileClient()Lcom/microsoft/azure/storage/file/CloudFileClient;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getFileStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->credentials:Lcom/microsoft/azure/storage/StorageCredentials;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/StorageCredentialsHelper;->canCredentialsGenerateClient(Lcom/microsoft/azure/storage/StorageCredentials;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/file/CloudFileClient;

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getFileStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/azure/storage/file/CloudFileClient;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CloudBlobClient, CloudQueueClient and CloudTableClient require credentials that can sign a request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No credentials provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No file endpoint configured."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createCloudQueueClient()Lcom/microsoft/azure/storage/queue/CloudQueueClient;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getQueueStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->credentials:Lcom/microsoft/azure/storage/StorageCredentials;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/StorageCredentialsHelper;->canCredentialsGenerateClient(Lcom/microsoft/azure/storage/StorageCredentials;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/queue/CloudQueueClient;

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getQueueStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/azure/storage/queue/CloudQueueClient;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CloudBlobClient, CloudQueueClient and CloudTableClient require credentials that can sign a request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No credentials provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No queue endpoint configured."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createCloudTableClient()Lcom/microsoft/azure/storage/table/CloudTableClient;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getTableStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->credentials:Lcom/microsoft/azure/storage/StorageCredentials;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/StorageCredentialsHelper;->canCredentialsGenerateClient(Lcom/microsoft/azure/storage/StorageCredentials;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/table/CloudTableClient;

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getTableStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/azure/storage/table/CloudTableClient;-><init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CloudBlobClient, CloudQueueClient and CloudTableClient require credentials that can sign a request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No credentials provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No table endpoint configured."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateSharedAccessSignature(Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/StorageCredentialsHelper;->canCredentialsSignRequest(Lcom/microsoft/azure/storage/StorageCredentials;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->credentials:Lcom/microsoft/azure/storage/StorageCredentials;

    .line 3
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageCredentials;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v1

    .line 4
    invoke-static {v0, p1, v1}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->generateSharedAccessSignatureHashForAccount(Ljava/lang/String;Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;Lcom/microsoft/azure/storage/StorageCredentials;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->generateSharedAccessSignatureForAccount(Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;Ljava/lang/String;)Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot create Shared Access Signature unless the Account Key credentials are used by the ServiceClient."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBlobEndpoint()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->blobStorageUri:Lcom/microsoft/azure/storage/StorageUri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public getBlobStorageUri()Lcom/microsoft/azure/storage/StorageUri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->blobStorageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-object v0
.end method

.method public getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->credentials:Lcom/microsoft/azure/storage/StorageCredentials;

    return-object v0
.end method

.method public getEndpointSuffix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->endpointSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getFileEndpoint()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->fileStorageUri:Lcom/microsoft/azure/storage/StorageUri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public getFileStorageUri()Lcom/microsoft/azure/storage/StorageUri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->fileStorageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-object v0
.end method

.method public getQueueEndpoint()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->queueStorageUri:Lcom/microsoft/azure/storage/StorageUri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public getQueueStorageUri()Lcom/microsoft/azure/storage/StorageUri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->queueStorageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-object v0
.end method

.method public getTableEndpoint()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->tableStorageUri:Lcom/microsoft/azure/storage/StorageUri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public getTableStorageUri()Lcom/microsoft/azure/storage/StorageUri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->tableStorageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-object v0
.end method

.method public setCredentials(Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->credentials:Lcom/microsoft/azure/storage/StorageCredentials;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 8

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-boolean v1, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->isDevStoreAccount:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    new-array p1, v4, [Ljava/lang/Object;

    const-string v1, "UseDevelopmentStorage"

    aput-object v1, p1, v3

    const-string v1, "%s=true"

    .line 4
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getBlobEndpoint()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "http://127.0.0.1:10000/devstoreaccount1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "DevelopmentStorageProxyUri"

    aput-object v1, p1, v3

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getBlobEndpoint()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v4

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getBlobEndpoint()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v2

    const-string v1, "%s=%s://%s/"

    .line 7
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->endpointSuffix:Ljava/lang/String;

    const-string v5, "%s=%s"

    if-eqz v1, :cond_1

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "EndpointSuffix"

    aput-object v7, v6, v3

    aput-object v1, v6, v4

    .line 9
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getBlobStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11
    iget-boolean v1, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->isBlobEndpointDefault:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    new-array v1, v2, [Ljava/lang/Object;

    const-string v6, "BlobEndpoint"

    aput-object v6, v1, v3

    .line 12
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getBlobEndpoint()Ljava/net/URI;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getQueueStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 14
    iget-boolean v6, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->isQueueEndpointDefault:Z

    if-eqz v6, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "QueueEndpoint"

    aput-object v7, v6, v3

    .line 15
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getQueueEndpoint()Ljava/net/URI;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getTableStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 17
    iget-boolean v6, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->isTableEndpointDefault:Z

    if-eqz v6, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "TableEndpoint"

    aput-object v7, v6, v3

    .line 18
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getTableEndpoint()Ljava/net/URI;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getFileStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 20
    iget-boolean v6, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->isFileEndpointDefault:Z

    if-eqz v6, :cond_8

    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "FileEndpoint"

    aput-object v7, v6, v3

    .line 21
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getFileEndpoint()Ljava/net/URI;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    if-eqz v1, :cond_a

    new-array v1, v2, [Ljava/lang/Object;

    const-string v6, "DefaultEndpointsProtocol"

    aput-object v6, v1, v3

    .line 22
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getBlobEndpoint()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    .line 23
    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_a
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 25
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/microsoft/azure/storage/StorageCredentials;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_b
    iget-object p1, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->accountName:Ljava/lang/String;

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/CloudStorageAccount;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageCredentials;->getAccountName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_d

    :cond_c
    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "AccountName"

    aput-object v1, p1, v3

    .line 27
    iget-object v1, p0, Lcom/microsoft/azure/storage/CloudStorageAccount;->accountName:Ljava/lang/String;

    aput-object v1, p1, v4

    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_d
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 30
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3b

    .line 31
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 32
    :cond_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 34
    :cond_f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
