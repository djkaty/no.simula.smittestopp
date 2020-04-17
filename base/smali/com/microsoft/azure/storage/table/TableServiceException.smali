.class public final Lcom/microsoft/azure/storage/table/TableServiceException;
.super Lcom/microsoft/azure/storage/StorageException;
.source "SourceFile"


# static fields
.field public static final serialVersionUID:J = 0x53c908cc731481abL


# instance fields
.field public operation:Lcom/microsoft/azure/storage/table/TableOperation;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/microsoft/azure/storage/table/TableOperation;Ljava/io/Reader;Lcom/microsoft/azure/storage/table/TablePayloadFormat;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move v3, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    .line 3
    iput-object p3, p0, Lcom/microsoft/azure/storage/table/TableServiceException;->operation:Lcom/microsoft/azure/storage/table/TableOperation;

    if-eqz p4, :cond_0

    .line 4
    :try_start_0
    invoke-static {p4, p5}, Lcom/microsoft/azure/storage/table/TableStorageErrorDeserializer;->getExtendedErrorInformation(Ljava/io/Reader;Lcom/microsoft/azure/storage/table/TablePayloadFormat;)Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/StorageException;->extendedErrorInformation:Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/storage/StorageException;->errorCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    return-void
.end method

.method public static generateTableServiceException(Lcom/microsoft/azure/storage/RequestResult;Lcom/microsoft/azure/storage/table/TableOperation;Ljava/io/InputStream;Lcom/microsoft/azure/storage/table/TablePayloadFormat;)Lcom/microsoft/azure/storage/table/TableServiceException;
    .locals 7

    .line 1
    new-instance v6, Lcom/microsoft/azure/storage/table/TableServiceException;

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/RequestResult;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v0, v6

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/table/TableServiceException;-><init>(ILjava/lang/String;Lcom/microsoft/azure/storage/table/TableOperation;Ljava/io/Reader;Lcom/microsoft/azure/storage/table/TablePayloadFormat;)V

    return-object v6
.end method


# virtual methods
.method public getOperation()Lcom/microsoft/azure/storage/table/TableOperation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/table/TableServiceException;->operation:Lcom/microsoft/azure/storage/table/TableOperation;

    return-object v0
.end method

.method public setOperation(Lcom/microsoft/azure/storage/table/TableOperation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/table/TableServiceException;->operation:Lcom/microsoft/azure/storage/table/TableOperation;

    return-void
.end method
