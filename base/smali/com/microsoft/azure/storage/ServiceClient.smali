.class public abstract Lcom/microsoft/azure/storage/ServiceClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public credentials:Lcom/microsoft/azure/storage/StorageCredentials;

.field public storageUri:Lcom/microsoft/azure/storage/StorageUri;

.field public usePathStyleUris:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "baseUri"

    .line 2
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageUri;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 4
    sget-object p2, Lcom/microsoft/azure/storage/StorageCredentialsAnonymous;->ANONYMOUS:Lcom/microsoft/azure/storage/StorageCredentials;

    :cond_0
    iput-object p2, p0, Lcom/microsoft/azure/storage/ServiceClient;->credentials:Lcom/microsoft/azure/storage/StorageCredentials;

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/azure/storage/core/Utility;->determinePathStyleFromUri(Ljava/net/URI;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/microsoft/azure/storage/ServiceClient;->usePathStyleUris:Z

    .line 6
    iput-object p1, p0, Lcom/microsoft/azure/storage/ServiceClient;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-void

    .line 7
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Address %s is a relative address. Only absolute addresses are permitted."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public downloadServicePropertiesImpl(Lcom/microsoft/azure/storage/RequestOptions;Z)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/RequestOptions;",
            "Z)",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/ServiceClient;",
            "Ljava/lang/Void;",
            "Lcom/microsoft/azure/storage/ServiceProperties;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/ServiceClient$1;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ServiceClient;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/ServiceClient$1;-><init>(Lcom/microsoft/azure/storage/ServiceClient;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/RequestOptions;Z)V

    return-object v6
.end method

.method public final getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/ServiceClient;->credentials:Lcom/microsoft/azure/storage/StorageCredentials;

    return-object v0
.end method

.method public abstract getDefaultRequestOptions()Lcom/microsoft/azure/storage/RequestOptions;
.end method

.method public final getEndpoint()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/ServiceClient;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStatsImpl(Lcom/microsoft/azure/storage/RequestOptions;Z)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/RequestOptions;",
            "Z)",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/ServiceClient;",
            "Ljava/lang/Void;",
            "Lcom/microsoft/azure/storage/ServiceStats;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/ServiceClient$2;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ServiceClient;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/ServiceClient$2;-><init>(Lcom/microsoft/azure/storage/ServiceClient;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/RequestOptions;Z)V

    return-object v6
.end method

.method public final getStorageUri()Lcom/microsoft/azure/storage/StorageUri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/ServiceClient;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-object v0
.end method

.method public isUsePathStyleUris()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/ServiceClient;->usePathStyleUris:Z

    return v0
.end method

.method public final setCredentials(Lcom/microsoft/azure/storage/StorageCredentials;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/ServiceClient;->credentials:Lcom/microsoft/azure/storage/StorageCredentials;

    return-void
.end method

.method public final setStorageUri(Lcom/microsoft/azure/storage/StorageUri;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageUri;->getPrimaryUri()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->determinePathStyleFromUri(Ljava/net/URI;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/microsoft/azure/storage/ServiceClient;->usePathStyleUris:Z

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/storage/ServiceClient;->storageUri:Lcom/microsoft/azure/storage/StorageUri;

    return-void
.end method

.method public uploadServicePropertiesImpl(Lcom/microsoft/azure/storage/ServiceProperties;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/OperationContext;Z)Lcom/microsoft/azure/storage/core/StorageRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/ServiceProperties;",
            "Lcom/microsoft/azure/storage/RequestOptions;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            "Z)",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/ServiceClient;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/microsoft/azure/storage/ServicePropertiesSerializer;->serializeToByteArray(Lcom/microsoft/azure/storage/ServiceProperties;)[B

    move-result-object p1

    .line 2
    new-instance p3, Ljava/io/ByteArrayInputStream;

    invoke-direct {p3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/16 v1, -0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p3

    .line 3
    invoke-static/range {v0 .. v6}, Lcom/microsoft/azure/storage/core/Utility;->analyzeStream(Ljava/io/InputStream;JJZZ)Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    move-result-object v5

    .line 4
    new-instance p1, Lcom/microsoft/azure/storage/ServiceClient$3;

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ServiceClient;->getStorageUri()Lcom/microsoft/azure/storage/StorageUri;

    move-result-object v3

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v4, p3

    move-object v6, p2

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/azure/storage/ServiceClient$3;-><init>(Lcom/microsoft/azure/storage/ServiceClient;Lcom/microsoft/azure/storage/RequestOptions;Lcom/microsoft/azure/storage/StorageUri;Ljava/io/ByteArrayInputStream;Lcom/microsoft/azure/storage/core/StreamMd5AndLength;Lcom/microsoft/azure/storage/RequestOptions;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/microsoft/azure/storage/StorageException;->translateClientException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p1

    .line 7
    throw p1

    :catch_1
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/microsoft/azure/storage/StorageException;->translateClientException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p1

    .line 9
    throw p1

    :catch_2
    move-exception p1

    .line 10
    invoke-static {p1}, Lcom/microsoft/azure/storage/StorageException;->translateClientException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p1

    .line 11
    throw p1
.end method
