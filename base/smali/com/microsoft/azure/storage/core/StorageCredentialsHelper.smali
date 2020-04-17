.class public final Lcom/microsoft/azure/storage/core/StorageCredentialsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canCredentialsGenerateClient(Lcom/microsoft/azure/storage/StorageCredentials;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/StorageCredentialsHelper;->canCredentialsSignRequest(Lcom/microsoft/azure/storage/StorageCredentials;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/microsoft/azure/storage/StorageCredentialsSharedAccessSignature;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lcom/microsoft/azure/storage/StorageCredentialsToken;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static canCredentialsSignRequest(Lcom/microsoft/azure/storage/StorageCredentials;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lcom/microsoft/azure/storage/StorageCredentialsAccountAndKey;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized computeHmac256(Lcom/microsoft/azure/storage/StorageCredentials;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/microsoft/azure/storage/core/StorageCredentialsHelper;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/microsoft/azure/storage/StorageCredentialsAccountAndKey;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "UTF-8"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    check-cast p0, Lcom/microsoft/azure/storage/StorageCredentialsAccountAndKey;

    invoke-virtual {p0}, Lcom/microsoft/azure/storage/StorageCredentialsAccountAndKey;->getHmac256()Ljavax/crypto/Mac;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Base64;->encode([B)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    const/4 p0, 0x0

    .line 5
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static signBlobQueueAndFileRequest(Lcom/microsoft/azure/storage/StorageCredentials;Ljava/net/HttpURLConnection;JLcom/microsoft/azure/storage/OperationContext;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/microsoft/azure/storage/StorageCredentialsAccountAndKey;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "Authorization"

    if-eqz v0, :cond_1

    if-nez p4, :cond_0

    .line 2
    new-instance p4, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p4}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/microsoft/azure/storage/core/Utility;->getGMTTime()Ljava/lang/String;

    move-result-object v0

    const-string v5, "x-ms-date"

    invoke-virtual {p1, v5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/CanonicalizerFactory;->getBlobQueueFileCanonicalizer(Ljava/net/HttpURLConnection;)Lcom/microsoft/azure/storage/core/Canonicalizer;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/StorageCredentials;->getAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, v5, p2}, Lcom/microsoft/azure/storage/core/Canonicalizer;->canonicalize(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {p0, p2}, Lcom/microsoft/azure/storage/core/StorageCredentialsHelper;->computeHmac256(Lcom/microsoft/azure/storage/StorageCredentials;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Signing %s"

    .line 7
    invoke-static {p4, v0, p2}, Lcom/microsoft/azure/storage/core/Logger;->trace(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const-string p4, "SharedKey"

    aput-object p4, p2, v2

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/StorageCredentials;->getAccountName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v1

    aput-object p3, p2, v3

    const-string p0, "%s %s:%s"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-virtual {p1, v4, p0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-class p3, Lcom/microsoft/azure/storage/StorageCredentialsToken;

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 11
    instance-of p2, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz p2, :cond_2

    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "Bearer"

    aput-object p3, p2, v2

    .line 12
    check-cast p0, Lcom/microsoft/azure/storage/StorageCredentialsToken;

    .line 13
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/StorageCredentialsToken;->getToken()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v1

    const-string p0, "%s %s"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 14
    invoke-virtual {p1, v4, p0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Token credential is only supported for HTTPS requests."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public static signTableRequest(Lcom/microsoft/azure/storage/StorageCredentials;Ljava/net/HttpURLConnection;JLcom/microsoft/azure/storage/OperationContext;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/microsoft/azure/storage/StorageCredentialsAccountAndKey;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p4, :cond_0

    .line 2
    new-instance p4, Lcom/microsoft/azure/storage/OperationContext;

    invoke-direct {p4}, Lcom/microsoft/azure/storage/OperationContext;-><init>()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/microsoft/azure/storage/core/Utility;->getGMTTime()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-ms-date"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/CanonicalizerFactory;->getTableCanonicalizer(Ljava/net/HttpURLConnection;)Lcom/microsoft/azure/storage/core/Canonicalizer;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/StorageCredentials;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/microsoft/azure/storage/core/Canonicalizer;->canonicalize(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {p0, p2}, Lcom/microsoft/azure/storage/core/StorageCredentialsHelper;->computeHmac256(Lcom/microsoft/azure/storage/StorageCredentials;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Signing %s"

    .line 7
    invoke-static {p4, v0, p2}, Lcom/microsoft/azure/storage/core/Logger;->trace(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p4, 0x0

    const-string v0, "SharedKey"

    aput-object v0, p2, p4

    const/4 p4, 0x1

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/StorageCredentials;->getAccountName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, p4

    const/4 p0, 0x2

    aput-object p3, p2, p0

    const-string p0, "%s %s:%s"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "Authorization"

    .line 9
    invoke-virtual {p1, p2, p0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
