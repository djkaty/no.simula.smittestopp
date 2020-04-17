.class public final Lcom/microsoft/azure/storage/core/ExecutionEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeWithRetry(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;Lcom/microsoft/azure/storage/RetryPolicyFactory;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C",
            "LIENT_TYPE:Ljava/lang/Object;",
            "PARENT_TYPE:",
            "Ljava/lang/Object;",
            "RESU",
            "LT_TYPE:Ljava/lang/Object;",
            ">(TC",
            "LIENT_TYPE;",
            "TPARENT_TYPE;",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "TC",
            "LIENT_TYPE;",
            "TPARENT_TYPE;TRESU",
            "LT_TYPE;",
            ">;",
            "Lcom/microsoft/azure/storage/RetryPolicyFactory;",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")TRESU",
            "LT_TYPE;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v6, p4

    const-string v5, "A network error occurred before the HTTP response status and headers were received."

    const-string v4, "Retryable exception thrown. Class = \'%s\', Message = \'%s\'."

    if-nez p3, :cond_0

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/RetryNoRetry;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/RetryNoRetry;-><init>()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface/range {p3 .. p4}, Lcom/microsoft/azure/storage/RetryPolicyFactory;->createInstance(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/RetryPolicy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/RetryNoRetry;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/RetryNoRetry;-><init>()V

    :cond_1
    :goto_0
    move-object v3, v0

    .line 4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v1, v20

    const/4 v2, 0x0

    :goto_1
    const/16 v22, 0x2

    const/4 v15, 0x3

    const/16 v23, 0x1

    .line 5
    :try_start_0
    invoke-static {v7, v8, v9, v2, v6}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->setupStorageRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;ILcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object v1
    :try_end_0
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    const-string v0, "Starting request to \'%s\' at \'%s\'."

    .line 6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v10

    const-string v11, "x-ms-date"

    .line 7
    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 8
    invoke-static {v6, v0, v10, v11}, Lcom/microsoft/azure/storage/core/Logger;->info(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 9
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getSendStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "Writing request data."

    .line 10
    invoke-static {v6, v0}, Lcom/microsoft/azure/storage/core/Logger;->info(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)V

    .line 11
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getLength()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-ltz v0, :cond_2

    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getLength()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    .line 13
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getSendStream()Ljava/io/InputStream;

    move-result-object v10

    .line 14
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getLength()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/4 v14, 0x0

    const/4 v0, 0x0

    .line 15
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getRequestOptions()Lcom/microsoft/azure/storage/RequestOptions;

    move-result-object v17

    move v15, v0

    move-object/from16 v16, p4

    .line 16
    invoke-static/range {v10 .. v17}, Lcom/microsoft/azure/storage/core/Utility;->writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;JZZLcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/RequestOptions;)Lcom/microsoft/azure/storage/core/StreamMd5AndLength;

    move-result-object v0

    .line 17
    invoke-virtual {v9, v0}, Lcom/microsoft/azure/storage/core/StorageRequest;->validateStreamWrite(Lcom/microsoft/azure/storage/core/StreamMd5AndLength;)V

    const-string v0, "Request data was written successfully."

    .line 18
    invoke-static {v6, v0}, Lcom/microsoft/azure/storage/core/Logger;->info(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)V

    .line 19
    :cond_3
    invoke-static {v1, v6}, Lcom/microsoft/azure/storage/core/Utility;->logHttpRequest(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/OperationContext;)V

    .line 20
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v0

    .line 21
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v10}, Lcom/microsoft/azure/storage/RequestResult;->setStartDate(Ljava/util/Date;)V

    const-string v10, "Waiting for response."

    .line 22
    invoke-static {v6, v10}, Lcom/microsoft/azure/storage/core/Logger;->info(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/microsoft/azure/storage/RequestResult;->setStatusCode(I)V

    .line 24
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/microsoft/azure/storage/RequestResult;->setStatusMessage(Ljava/lang/String;)V

    .line 25
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v10}, Lcom/microsoft/azure/storage/RequestResult;->setStopDate(Ljava/util/Date;)V

    .line 26
    invoke-static {v1}, Lcom/microsoft/azure/storage/core/BaseResponse;->getRequestId(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/microsoft/azure/storage/RequestResult;->setServiceRequestID(Ljava/lang/String;)V

    .line 27
    invoke-static {v1}, Lcom/microsoft/azure/storage/core/BaseResponse;->getEtag(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/microsoft/azure/storage/RequestResult;->setEtag(Ljava/lang/String;)V

    .line 28
    invoke-static {v1}, Lcom/microsoft/azure/storage/core/BaseResponse;->getDate(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/microsoft/azure/storage/RequestResult;->setRequestDate(Ljava/lang/String;)V

    .line 29
    invoke-static {v1}, Lcom/microsoft/azure/storage/core/BaseResponse;->getContentMD5(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/microsoft/azure/storage/RequestResult;->setContentMD5(Ljava/lang/String;)V

    .line 30
    invoke-static {v1}, Lcom/microsoft/azure/storage/core/BaseResponse;->getErrorCode(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/microsoft/azure/storage/RequestResult;->setErrorCode(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 31
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v10

    invoke-static {v6, v1, v10}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->fireResponseReceivedEvent(Lcom/microsoft/azure/storage/OperationContext;Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/RequestResult;)V

    const-string v10, "Response received. Status code = \'%d\', Request ID = \'%s\', Content-MD5 = \'%s\', ETag = \'%s\', Date = \'%s\'."

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    .line 32
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v21

    .line 33
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/RequestResult;->getServiceRequestID()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v23

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/RequestResult;->getContentMD5()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v22

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/RequestResult;->getEtag()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const/4 v12, 0x4

    .line 34
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/RequestResult;->getRequestDate()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v12

    .line 35
    invoke-static {v6, v10, v11}, Lcom/microsoft/azure/storage/core/Logger;->info(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-static {v1, v6}, Lcom/microsoft/azure/storage/core/Utility;->logHttpResponse(Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/OperationContext;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 37
    :try_start_4
    invoke-static {v6, v5}, Lcom/microsoft/azure/storage/core/Logger;->info(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)V

    const-string v0, "Processing response headers."

    .line 38
    invoke-static {v6, v0}, Lcom/microsoft/azure/storage/core/Logger;->info(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v9, v8, v7, v6}, Lcom/microsoft/azure/storage/core/StorageRequest;->preProcessResponse(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/lang/Object;

    move-result-object v0

    const-string v10, "Response headers were processed successfully."

    .line 40
    invoke-static {v6, v10}, Lcom/microsoft/azure/storage/core/Logger;->info(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)V

    .line 41
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->isNonExceptionedRetryableFailure()Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "Processing response body."

    .line 42
    invoke-static {v6, v10}, Lcom/microsoft/azure/storage/core/Logger;->info(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object v10, v1

    move-object/from16 v1, p2

    move v11, v2

    move-object v2, v10

    move-object v12, v3

    move-object/from16 v3, p1

    move-object v14, v4

    move-object/from16 v4, p0

    move-object v15, v5

    move-object/from16 v5, p4

    move-object v13, v6

    move-object v6, v0

    .line 43
    :try_start_5
    invoke-virtual/range {v1 .. v6}, Lcom/microsoft/azure/storage/core/StorageRequest;->postProcessResponse(Ljava/net/HttpURLConnection;Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Response body was parsed successfully."

    .line 44
    invoke-static {v13, v1}, Lcom/microsoft/azure/storage/core/Logger;->info(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)V

    .line 45
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result v1

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_4

    .line 46
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_5
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/16 v26, 0x0

    const-wide/16 v27, -0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    .line 47
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getRequestOptions()Lcom/microsoft/azure/storage/RequestOptions;

    move-result-object v32

    move-object/from16 v25, v1

    .line 48
    invoke-static/range {v25 .. v32}, Lcom/microsoft/azure/storage/core/Utility;->writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;JZZLcom/microsoft/azure/storage/OperationContext;Lcom/microsoft/azure/storage/RequestOptions;)Lcom/microsoft/azure/storage/core/StreamMd5AndLength;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 49
    :catch_0
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 50
    throw v0

    :cond_4
    :goto_2
    const-string v1, "Operation completed."

    .line 51
    invoke-static {v13, v1}, Lcom/microsoft/azure/storage/core/Logger;->info(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 52
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    sub-long v1, v1, v18

    invoke-virtual {v13, v1, v2}, Lcom/microsoft/azure/storage/OperationContext;->setClientTimeInMs(J)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->isSent()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 54
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v1

    invoke-static {v13, v10, v1}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->fireRequestCompletedEvent(Lcom/microsoft/azure/storage/OperationContext;Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/RequestResult;)V

    :cond_5
    return-object v0

    :cond_6
    move-object v10, v1

    move v11, v2

    move-object v12, v3

    move-object v14, v4

    move-object v15, v5

    move-object v13, v6

    :try_start_8
    const-string v0, "Operation did not return the expected result or returned an exception."

    .line 55
    invoke-static {v13, v0}, Lcom/microsoft/azure/storage/core/Logger;->warn(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v9, v13}, Lcom/microsoft/azure/storage/core/StorageRequest;->materializeException(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object v0

    .line 57
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/microsoft/azure/storage/RequestResult;->setException(Ljava/lang/Exception;)V

    .line 58
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1f5

    if-eq v1, v2, :cond_8

    .line 59
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1f9

    if-eq v1, v2, :cond_8

    .line 60
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageException;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InvalidBlobType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_8
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-nez v1, :cond_8

    .line 61
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    sub-long v1, v1, v18

    invoke-virtual {v13, v1, v2}, Lcom/microsoft/azure/storage/OperationContext;->setClientTimeInMs(J)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->isSent()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 63
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v1

    invoke-static {v13, v10, v1}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->fireRequestCompletedEvent(Lcom/microsoft/azure/storage/OperationContext;Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/RequestResult;)V

    :cond_7
    move-object v1, v10

    goto/16 :goto_8

    .line 64
    :cond_8
    :try_start_9
    throw v0

    :catchall_1
    move-exception v0

    move-object v10, v1

    move v11, v2

    move-object v12, v3

    move-object v14, v4

    move-object v15, v5

    move-object v13, v6

    const/4 v1, 0x1

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v10, v1

    move v11, v2

    move-object v12, v3

    move-object v14, v4

    move-object v15, v5

    move-object v13, v6

    const/4 v1, 0x0

    .line 65
    :goto_3
    invoke-static {v13, v15}, Lcom/microsoft/azure/storage/core/Logger;->info(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)V

    if-nez v1, :cond_a

    .line 66
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/azure/storage/RequestResult;->getStartDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_9

    .line 67
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/microsoft/azure/storage/RequestResult;->setStartDate(Ljava/util/Date;)V

    .line 68
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v1

    invoke-static {v13, v10, v1}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->fireErrorReceivingResponseEvent(Lcom/microsoft/azure/storage/OperationContext;Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/RequestResult;)V

    .line 69
    :cond_a
    throw v0
    :try_end_9
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    move-object v1, v10

    goto/16 :goto_f

    :catch_1
    move-exception v0

    move-object v1, v10

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v10

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object v10, v1

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v10, v1

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v10, v1

    goto :goto_9

    :catchall_5
    move-exception v0

    :goto_4
    move-object v13, v6

    goto/16 :goto_f

    :catch_5
    move-exception v0

    :goto_5
    move v11, v2

    move-object v12, v3

    move-object v14, v4

    move-object v15, v5

    move-object v13, v6

    .line 70
    :goto_6
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v14, v2, v3}, Lcom/microsoft/azure/storage/core/Logger;->warn(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    invoke-static {v9, v0, v13}, Lcom/microsoft/azure/storage/StorageException;->translateException(Lcom/microsoft/azure/storage/core/StorageRequest;Ljava/lang/Exception;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object v0

    .line 72
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/microsoft/azure/storage/RequestResult;->setException(Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 73
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v2, v2, v18

    invoke-virtual {v13, v2, v3}, Lcom/microsoft/azure/storage/OperationContext;->setClientTimeInMs(J)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->isSent()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 75
    :goto_7
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v2

    invoke-static {v13, v1, v2}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->fireRequestCompletedEvent(Lcom/microsoft/azure/storage/OperationContext;Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/RequestResult;)V

    :cond_b
    :goto_8
    const/4 v2, 0x3

    goto :goto_b

    :catch_6
    move-exception v0

    :goto_9
    move v11, v2

    move-object v12, v3

    move-object v14, v4

    move-object v15, v5

    move-object v13, v6

    .line 76
    :goto_a
    :try_start_b
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v2

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageException;->getHttpStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/microsoft/azure/storage/RequestResult;->setStatusCode(I)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/azure/storage/RequestResult;->setStatusMessage(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/microsoft/azure/storage/RequestResult;->setException(Ljava/lang/Exception;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v14, v2, v3}, Lcom/microsoft/azure/storage/core/Logger;->warn(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 80
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v2, v2, v18

    invoke-virtual {v13, v2, v3}, Lcom/microsoft/azure/storage/OperationContext;->setClientTimeInMs(J)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->isSent()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_7

    :goto_b
    new-array v2, v2, [Ljava/lang/Object;

    .line 82
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v21

    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/azure/storage/RequestResult;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v23

    if-nez v0, :cond_c

    move-object/from16 v3, v20

    goto :goto_c

    .line 83
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    :goto_c
    aput-object v3, v2, v22

    const-string v3, "Checking if the operation should be retried. Retry count = \'%d\', HTTP status code = \'%d\', Error Message = \'%s\'."

    .line 84
    invoke-static {v13, v3, v2}, Lcom/microsoft/azure/storage/core/Logger;->info(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getLocationMode()Lcom/microsoft/azure/storage/LocationMode;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->getNextLocation(Lcom/microsoft/azure/storage/StorageLocation;Lcom/microsoft/azure/storage/LocationMode;)Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/microsoft/azure/storage/core/StorageRequest;->setCurrentLocation(Lcom/microsoft/azure/storage/StorageLocation;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getLocationMode()Lcom/microsoft/azure/storage/LocationMode;

    move-result-object v3

    const-string v4, "The next location has been set to \'%s\', per location mode \'%s\'."

    invoke-static {v13, v4, v2, v3}, Lcom/microsoft/azure/storage/core/Logger;->info(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    new-instance v2, Lcom/microsoft/azure/storage/RetryContext;

    add-int/lit8 v3, v11, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v4

    .line 88
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getLocationMode()Lcom/microsoft/azure/storage/LocationMode;

    move-result-object v6

    invoke-direct {v2, v11, v4, v5, v6}, Lcom/microsoft/azure/storage/RetryContext;-><init>(ILcom/microsoft/azure/storage/RequestResult;Lcom/microsoft/azure/storage/StorageLocation;Lcom/microsoft/azure/storage/LocationMode;)V

    .line 89
    invoke-virtual {v12, v2, v13}, Lcom/microsoft/azure/storage/RetryPolicy;->evaluate(Lcom/microsoft/azure/storage/RetryContext;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/RetryInfo;

    move-result-object v4

    if-nez v4, :cond_e

    if-nez v0, :cond_d

    goto :goto_d

    .line 90
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    :goto_d
    move-object/from16 v1, v20

    const-string v2, "Retry policy did not allow for a retry. Failing. Error Message = \'%s\'."

    .line 91
    invoke-static {v13, v2, v1}, Lcom/microsoft/azure/storage/core/Logger;->error(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    throw v0

    .line 93
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getRequestOptions()Lcom/microsoft/azure/storage/RequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/RequestOptions;->getOperationExpiryTimeInMs()Ljava/lang/Long;

    move-result-object v0

    .line 94
    invoke-virtual {v4}, Lcom/microsoft/azure/storage/RetryInfo;->getRetryInterval()I

    move-result v5

    int-to-long v5, v5

    .line 95
    invoke-static {v0, v5, v6}, Lcom/microsoft/azure/storage/core/Utility;->validateMaxExecutionTimeout(Ljava/lang/Long;J)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 96
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "The client could not finish the operation within specified maximum execution timeout."

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 97
    new-instance v1, Lcom/microsoft/azure/storage/StorageException;

    const/16 v25, 0x132

    const/16 v26, 0x0

    const-string v23, "OperationTimedOut"

    const-string v24, "The client could not finish the operation within specified maximum execution timeout."

    move-object/from16 v22, v1

    move-object/from16 v27, v0

    invoke-direct/range {v22 .. v27}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    .line 98
    invoke-virtual {v9, v13}, Lcom/microsoft/azure/storage/core/StorageRequest;->initialize(Lcom/microsoft/azure/storage/OperationContext;)V

    .line 99
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/RequestResult;->setException(Ljava/lang/Exception;)V

    .line 100
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Operation cannot be retried because maximum execution timeout has been reached. Failing. Inner error Message = \'%s\'."

    .line 101
    invoke-static {v13, v2, v0}, Lcom/microsoft/azure/storage/core/Logger;->error(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    throw v1

    .line 103
    :cond_f
    invoke-virtual {v4}, Lcom/microsoft/azure/storage/RetryInfo;->getTargetLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/microsoft/azure/storage/core/StorageRequest;->setCurrentLocation(Lcom/microsoft/azure/storage/StorageLocation;)V

    .line 104
    invoke-virtual {v4}, Lcom/microsoft/azure/storage/RetryInfo;->getUpdatedLocationMode()Lcom/microsoft/azure/storage/LocationMode;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/microsoft/azure/storage/core/StorageRequest;->setLocationMode(Lcom/microsoft/azure/storage/LocationMode;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getLocationMode()Lcom/microsoft/azure/storage/LocationMode;

    move-result-object v5

    const-string v6, "The retry policy set the next location to \'%s\' and updated the location mode to \'%s\'."

    invoke-static {v13, v6, v0, v5}, Lcom/microsoft/azure/storage/core/Logger;->info(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    :try_start_c
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v5

    invoke-static {v13, v0, v5, v2}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->fireRetryingEvent(Lcom/microsoft/azure/storage/OperationContext;Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/RequestResult;Lcom/microsoft/azure/storage/RetryContext;)V

    const-string v0, "Operation will be retried after \'%d\'ms."

    .line 107
    invoke-virtual {v4}, Lcom/microsoft/azure/storage/RetryInfo;->getRetryInterval()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13, v0, v2}, Lcom/microsoft/azure/storage/core/Logger;->info(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    invoke-virtual {v4}, Lcom/microsoft/azure/storage/RetryInfo;->getRetryInterval()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_e

    .line 109
    :catch_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_e
    move v2, v3

    move-object v3, v12

    move-object v6, v13

    move-object v4, v14

    move-object v5, v15

    goto/16 :goto_1

    :catchall_6
    move-exception v0

    .line 110
    :goto_f
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v2, v2, v18

    invoke-virtual {v13, v2, v3}, Lcom/microsoft/azure/storage/OperationContext;->setClientTimeInMs(J)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->isSent()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 112
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object v2

    invoke-static {v13, v1, v2}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->fireRequestCompletedEvent(Lcom/microsoft/azure/storage/OperationContext;Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/RequestResult;)V

    .line 113
    :cond_10
    throw v0
.end method

.method public static fireErrorReceivingResponseEvent(Lcom/microsoft/azure/storage/OperationContext;Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/RequestResult;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getErrorReceivingResponseEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;->hasListeners()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/microsoft/azure/storage/OperationContext;->getGlobalErrorReceivingResponseEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;->hasListeners()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    new-instance v0, Lcom/microsoft/azure/storage/ErrorReceivingResponseEvent;

    invoke-direct {v0, p0, p1, p2}, Lcom/microsoft/azure/storage/ErrorReceivingResponseEvent;-><init>(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/Object;Lcom/microsoft/azure/storage/RequestResult;)V

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getErrorReceivingResponseEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;->fireEvent(Lcom/microsoft/azure/storage/BaseEvent;)V

    .line 5
    invoke-static {}, Lcom/microsoft/azure/storage/OperationContext;->getGlobalErrorReceivingResponseEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;->fireEvent(Lcom/microsoft/azure/storage/BaseEvent;)V

    :cond_1
    return-void
.end method

.method public static fireRequestCompletedEvent(Lcom/microsoft/azure/storage/OperationContext;Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/RequestResult;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getRequestCompletedEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;->hasListeners()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/microsoft/azure/storage/OperationContext;->getGlobalRequestCompletedEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;->hasListeners()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    new-instance v0, Lcom/microsoft/azure/storage/RequestCompletedEvent;

    invoke-direct {v0, p0, p1, p2}, Lcom/microsoft/azure/storage/RequestCompletedEvent;-><init>(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/Object;Lcom/microsoft/azure/storage/RequestResult;)V

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getRequestCompletedEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;->fireEvent(Lcom/microsoft/azure/storage/BaseEvent;)V

    .line 5
    invoke-static {}, Lcom/microsoft/azure/storage/OperationContext;->getGlobalRequestCompletedEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;->fireEvent(Lcom/microsoft/azure/storage/BaseEvent;)V

    :cond_1
    return-void
.end method

.method public static fireResponseReceivedEvent(Lcom/microsoft/azure/storage/OperationContext;Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/RequestResult;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getResponseReceivedEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;->hasListeners()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/microsoft/azure/storage/OperationContext;->getGlobalResponseReceivedEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;->hasListeners()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    new-instance v0, Lcom/microsoft/azure/storage/ResponseReceivedEvent;

    invoke-direct {v0, p0, p1, p2}, Lcom/microsoft/azure/storage/ResponseReceivedEvent;-><init>(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/Object;Lcom/microsoft/azure/storage/RequestResult;)V

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getResponseReceivedEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;->fireEvent(Lcom/microsoft/azure/storage/BaseEvent;)V

    .line 5
    invoke-static {}, Lcom/microsoft/azure/storage/OperationContext;->getGlobalResponseReceivedEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;->fireEvent(Lcom/microsoft/azure/storage/BaseEvent;)V

    :cond_1
    return-void
.end method

.method public static fireRetryingEvent(Lcom/microsoft/azure/storage/OperationContext;Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/RequestResult;Lcom/microsoft/azure/storage/RetryContext;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getRetryingEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;->hasListeners()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/microsoft/azure/storage/OperationContext;->getGlobalRetryingEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;->hasListeners()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    new-instance v0, Lcom/microsoft/azure/storage/RetryingEvent;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/microsoft/azure/storage/RetryingEvent;-><init>(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/Object;Lcom/microsoft/azure/storage/RequestResult;Lcom/microsoft/azure/storage/RetryContext;)V

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getRetryingEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;->fireEvent(Lcom/microsoft/azure/storage/BaseEvent;)V

    .line 5
    invoke-static {}, Lcom/microsoft/azure/storage/OperationContext;->getGlobalRetryingEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;->fireEvent(Lcom/microsoft/azure/storage/BaseEvent;)V

    :cond_1
    return-void
.end method

.method public static fireSendingRequestEvent(Lcom/microsoft/azure/storage/OperationContext;Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/RequestResult;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getSendingRequestEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;->hasListeners()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/microsoft/azure/storage/OperationContext;->getGlobalSendingRequestEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;->hasListeners()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    new-instance v0, Lcom/microsoft/azure/storage/SendingRequestEvent;

    invoke-direct {v0, p0, p1, p2}, Lcom/microsoft/azure/storage/SendingRequestEvent;-><init>(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/Object;Lcom/microsoft/azure/storage/RequestResult;)V

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/OperationContext;->getSendingRequestEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;->fireEvent(Lcom/microsoft/azure/storage/BaseEvent;)V

    .line 5
    invoke-static {}, Lcom/microsoft/azure/storage/OperationContext;->getGlobalSendingRequestEventHandler()Lcom/microsoft/azure/storage/StorageEventMultiCaster;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/microsoft/azure/storage/StorageEventMultiCaster;->fireEvent(Lcom/microsoft/azure/storage/BaseEvent;)V

    :cond_1
    return-void
.end method

.method public static getNextLocation(Lcom/microsoft/azure/storage/StorageLocation;Lcom/microsoft/azure/storage/LocationMode;)Lcom/microsoft/azure/storage/StorageLocation;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 2
    sget-object p0, Lcom/microsoft/azure/storage/StorageLocation;->PRIMARY:Lcom/microsoft/azure/storage/StorageLocation;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lcom/microsoft/azure/storage/StorageLocation;->SECONDARY:Lcom/microsoft/azure/storage/StorageLocation;

    return-object p0

    .line 4
    :cond_1
    sget-object p1, Lcom/microsoft/azure/storage/StorageLocation;->PRIMARY:Lcom/microsoft/azure/storage/StorageLocation;

    if-ne p0, p1, :cond_2

    sget-object p1, Lcom/microsoft/azure/storage/StorageLocation;->SECONDARY:Lcom/microsoft/azure/storage/StorageLocation;

    :cond_2
    return-object p1

    .line 5
    :cond_3
    sget-object p0, Lcom/microsoft/azure/storage/StorageLocation;->PRIMARY:Lcom/microsoft/azure/storage/StorageLocation;

    return-object p0
.end method

.method public static setupStorageRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/core/StorageRequest;ILcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C",
            "LIENT_TYPE:Ljava/lang/Object;",
            "PARENT_TYPE:",
            "Ljava/lang/Object;",
            "RESU",
            "LT_TYPE:Ljava/lang/Object;",
            ">(TC",
            "LIENT_TYPE;",
            "TPARENT_TYPE;",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "TC",
            "LIENT_TYPE;",
            "TPARENT_TYPE;TRESU",
            "LT_TYPE;",
            ">;I",
            "Lcom/microsoft/azure/storage/OperationContext;",
            ")",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2, p4}, Lcom/microsoft/azure/storage/core/StorageRequest;->initialize(Lcom/microsoft/azure/storage/OperationContext;)V

    .line 2
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getRequestOptions()Lcom/microsoft/azure/storage/RequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/RequestOptions;->getOperationExpiryTimeInMs()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->validateMaxExecutionTimeout(Ljava/lang/Long;)Z

    move-result v0

    if-nez v0, :cond_2

    if-lez p3, :cond_0

    .line 3
    invoke-virtual {p2, p4}, Lcom/microsoft/azure/storage/core/StorageRequest;->recoveryAction(Lcom/microsoft/azure/storage/OperationContext;)V

    const-string p3, "Retrying failed operation."

    .line 4
    invoke-static {p4, p3}, Lcom/microsoft/azure/storage/core/Logger;->info(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->applyLocationModeToRequest()V

    .line 6
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->initializeLocation()V

    const-string p3, "Starting operation."

    .line 7
    invoke-static {p4, p3}, Lcom/microsoft/azure/storage/core/Logger;->info(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;)V

    .line 8
    :goto_0
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->setRequestLocationMode()V

    .line 9
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->validateLocation()V

    const-string p3, "Starting operation with location \'%s\' per location mode \'%s\'."

    .line 10
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getCurrentLocation()Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object v0

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getLocationMode()Lcom/microsoft/azure/storage/LocationMode;

    move-result-object v1

    invoke-static {p4, p3, v0, v1}, Lcom/microsoft/azure/storage/core/Logger;->info(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p2, p0, p1, p4}, Lcom/microsoft/azure/storage/core/StorageRequest;->buildRequest(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/HttpURLConnection;

    move-result-object p3

    .line 12
    invoke-virtual {p2, p3, p1, p4}, Lcom/microsoft/azure/storage/core/StorageRequest;->setHeaders(Ljava/net/HttpURLConnection;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)V

    .line 13
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/OperationContext;->getUserHeaders()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p4}, Lcom/microsoft/azure/storage/OperationContext;->getUserHeaders()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/core/StorageRequest;->getResult()Lcom/microsoft/azure/storage/RequestResult;

    move-result-object p1

    invoke-static {p4, p3, p1}, Lcom/microsoft/azure/storage/core/ExecutionEngine;->fireSendingRequestEvent(Lcom/microsoft/azure/storage/OperationContext;Ljava/net/HttpURLConnection;Lcom/microsoft/azure/storage/RequestResult;)V

    const/4 p1, 0x1

    .line 17
    invoke-virtual {p2, p1}, Lcom/microsoft/azure/storage/core/StorageRequest;->setIsSent(Z)V

    .line 18
    invoke-virtual {p2, p3, p0, p4}, Lcom/microsoft/azure/storage/core/StorageRequest;->signRequest(Ljava/net/HttpURLConnection;Ljava/lang/Object;Lcom/microsoft/azure/storage/OperationContext;)V

    .line 19
    invoke-virtual {p2, p3}, Lcom/microsoft/azure/storage/core/StorageRequest;->setConnection(Ljava/net/HttpURLConnection;)V

    return-object p3

    .line 20
    :cond_2
    new-instance v5, Ljava/util/concurrent/TimeoutException;

    const-string p0, "The client could not finish the operation within specified maximum execution timeout."

    invoke-direct {v5, p0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance p0, Lcom/microsoft/azure/storage/StorageException;

    const-string v1, "OperationTimedOut"

    const-string v2, "The client could not finish the operation within specified maximum execution timeout."

    const/16 v3, 0x132

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    throw p0
    :try_end_0
    .catch Lcom/microsoft/azure/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    move-object v5, p0

    .line 22
    new-instance p0, Lcom/microsoft/azure/storage/StorageException;

    const/4 v1, 0x0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x132

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/azure/storage/StorageException;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/microsoft/azure/storage/StorageExtendedErrorInformation;Ljava/lang/Exception;)V

    throw p0

    :catch_1
    move-exception p0

    .line 23
    throw p0
.end method
