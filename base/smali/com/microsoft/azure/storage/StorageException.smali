.class public Lcom/microsoft/azure/storage/StorageException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field public static final serialVersionUID:J = 0x6ea4e362e7d2d5f0L


# instance fields
.field public errorCode:Ljava/lang/String;

.field public extendedErrorInformation:Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;

.field public final httpStatusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iput-object p1, p0, Lcom/microsoft/azure/storage/StorageException;->errorCode:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/microsoft/azure/storage/StorageException;->httpStatusCode:I

    .line 5
    iput-object p4, p0, Lcom/microsoft/azure/storage/StorageException;->extendedErrorInformation:Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 6

    const/16 v3, 0x132

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    return-void
.end method

.method public static translateClientException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;
    .locals 7

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/StorageException;

    const-string v1, "Client error"

    const-string v2, "A Client side exception occurred, please check the inner exception for details"

    const/16 v3, 0x132

    const/4 v4, 0x0

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    return-object v6
.end method

.method public static translateException(Lcom/microsoft/azure/storage/core/StorageRequest;Ljava/lang/Exception;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageException;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "***>;",
            "Ljava/lang/Exception;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Lcom/microsoft/azure/storage/StorageException;"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/net/SocketException;

    const-string v1, ""

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 4
    :goto_0
    new-instance p0, Lcom/microsoft/azure/storage/StorageException;

    sget-object p2, Lcom/microsoft/azure/storage/StorageErrorCode;->SERVICE_INTERNAL_ERROR:Lcom/microsoft/azure/storage/StorageErrorCode;

    const-string p2, "An unknown failure occurred : "

    .line 5
    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f4

    const/4 v6, 0x0

    const-string v3, "SERVICE_INTERNAL_ERROR"

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    return-object p0

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 7
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move v5, v2

    if-nez v0, :cond_3

    move-object v4, v1

    goto :goto_1

    :cond_3
    move-object v4, v0

    .line 8
    :goto_1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->parseErrorDetails()Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;

    move-result-object v6

    .line 9
    new-instance v0, Lcom/microsoft/azure/storage/StorageException;

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/RequestResult;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    move-object v2, v0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    .line 10
    invoke-static {v0, p2}, Lcom/microsoft/azure/storage/core/Utility;->logHttpError(Lcom/microsoft/azure/storage/StorageException;Lcom/microsoft/azure/storage/OperationContext;)V

    return-object v0

    .line 11
    :cond_4
    :goto_2
    invoke-static {p1}, Lcom/microsoft/azure/storage/StorageException;->translateClientException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/StorageException;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendedErrorInformation()Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/StorageException;->extendedErrorInformation:Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/azure/storage/StorageException;->httpStatusCode:I

    return v0
.end method
