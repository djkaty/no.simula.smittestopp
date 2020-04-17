.class public final Lcom/microsoft/azure/storage/table/TableStorageErrorDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtendedErrorInformation(Ljava/io/Reader;Lcom/microsoft/azure/storage/table/TablePayloadFormat;)Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;
    .locals 2

    .line 1
    new-instance p1, Le/b/a/a/d;

    invoke-direct {p1}, Le/b/a/a/d;-><init>()V

    .line 2
    invoke-virtual {p1, p0}, Le/b/a/a/d;->a(Ljava/io/Reader;)Le/b/a/a/i;

    move-result-object p0

    .line 3
    :try_start_0
    new-instance p1, Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;

    invoke-direct {p1}, Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;-><init>()V

    .line 4
    invoke-virtual {p0}, Le/b/a/a/i;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsStartObjectJsonToken(Le/b/a/a/i;)V

    .line 7
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 8
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsFieldNameJsonToken(Le/b/a/a/i;)V

    const-string v0, "odata.error"

    .line 9
    invoke-static {p0, v0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsExpectedFieldName(Le/b/a/a/i;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 11
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsStartObjectJsonToken(Le/b/a/a/i;)V

    .line 12
    invoke-virtual {p0}, Le/b/a/a/i;->g()Le/b/a/a/l;

    const-string v0, "code"

    .line 13
    invoke-static {p0, v0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsExpectedFieldName(Le/b/a/a/i;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Le/b/a/a/i;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;->setErrorCode(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 16
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsFieldNameJsonToken(Le/b/a/a/i;)V

    const-string v0, "message"

    .line 17
    invoke-static {p0, v0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsExpectedFieldName(Le/b/a/a/i;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 19
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsStartObjectJsonToken(Le/b/a/a/i;)V

    .line 20
    invoke-virtual {p0}, Le/b/a/a/i;->g()Le/b/a/a/l;

    const-string v0, "lang"

    .line 21
    invoke-static {p0, v0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsExpectedFieldName(Le/b/a/a/i;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Le/b/a/a/i;->g()Le/b/a/a/l;

    const-string v0, "value"

    .line 23
    invoke-static {p0, v0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsExpectedFieldName(Le/b/a/a/i;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Le/b/a/a/i;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;->setErrorMessage(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 26
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsEndObjectJsonToken(Le/b/a/a/i;)V

    .line 27
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 28
    move-object v0, p0

    check-cast v0, Le/b/a/a/o/c;

    .line 29
    iget-object v0, v0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    .line 30
    sget-object v1, Le/b/a/a/l;->FIELD_NAME:Le/b/a/a/l;

    if-ne v0, v1, :cond_1

    const-string v0, "innererror"

    .line 31
    invoke-static {p0, v0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsExpectedFieldName(Le/b/a/a/i;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;->getAdditionalDetails()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Lcom/microsoft/azure/storage/table/TableStorageErrorDeserializer;->parseJsonErrorException(Le/b/a/a/i;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 33
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 34
    :cond_1
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsEndObjectJsonToken(Le/b/a/a/i;)V

    .line 35
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 36
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsEndObjectJsonToken(Le/b/a/a/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-virtual {p0}, Le/b/a/a/i;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Le/b/a/a/i;->close()V

    .line 38
    throw p1
.end method

.method public static parseErrorDetails(Lcom/microsoft/azure/storage/core/StorageRequest;)Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/azure/storage/core/StorageRequest<",
            "Lcom/microsoft/azure/storage/table/CloudTableClient;",
            "**>;)",
            "Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/StorageRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    sget-object p0, Lcom/microsoft/azure/storage/table/TablePayloadFormat;->Json:Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    invoke-static {v1, p0}, Lcom/microsoft/azure/storage/table/TableStorageErrorDeserializer;->getExtendedErrorInformation(Ljava/io/Reader;Lcom/microsoft/azure/storage/table/TablePayloadFormat;)Lcom/microsoft/azure/storage/StorageExtendedErrorInformation;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static parseJsonErrorException(Le/b/a/a/i;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b/a/a/i;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 3
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsStartObjectJsonToken(Le/b/a/a/i;)V

    .line 4
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 5
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsFieldNameJsonToken(Le/b/a/a/i;)V

    .line 6
    :goto_0
    move-object v1, p0

    check-cast v1, Le/b/a/a/o/c;

    .line 7
    iget-object v1, v1, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    .line 8
    sget-object v2, Le/b/a/a/l;->END_OBJECT:Le/b/a/a/l;

    if-eq v1, v2, :cond_3

    .line 9
    invoke-virtual {p0}, Le/b/a/a/i;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    new-array v1, v4, [Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Le/b/a/a/i;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 12
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p0}, Le/b/a/a/i;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    new-array v1, v4, [Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Le/b/a/a/i;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 16
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p0}, Le/b/a/a/i;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stacktrace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    new-array v1, v4, [Ljava/lang/String;

    .line 19
    invoke-virtual {p0}, Le/b/a/a/i;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "StackTrace"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_2
    :goto_1
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    goto :goto_0

    :cond_3
    return-object v0
.end method
