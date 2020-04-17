.class public Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static generateSharedAccessSignatureForAccount(Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;Ljava/lang/String;)Lcom/microsoft/azure/storage/core/UriQueryBuilder;
    .locals 9

    const-string v0, "policy"

    .line 1
    invoke-static {v0, p0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "signature"

    .line 2
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;->permissionsToString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/SharedAccessPolicy;->getSharedAccessStartTime()Ljava/util/Date;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/SharedAccessPolicy;->getSharedAccessExpiryTime()Ljava/util/Date;

    move-result-object v2

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;->getRange()Lcom/microsoft/azure/storage/IPRange;

    move-result-object v3

    .line 7
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;->getProtocols()Lcom/microsoft/azure/storage/SharedAccessProtocols;

    move-result-object v4

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;->servicesToString()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;->resourceTypesToString()Ljava/lang/String;

    move-result-object p0

    .line 10
    new-instance v6, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v6}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    const-string v7, "sv"

    const-string v8, "2018-03-28"

    .line 11
    invoke-virtual {v6, v7, v8}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "ss"

    .line 12
    invoke-static {v6, v7, v5}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "srt"

    .line 13
    invoke-static {v6, v5, p0}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "sp"

    .line 14
    invoke-static {v6, v5, v0}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {v1}, Lcom/microsoft/azure/storage/core/Utility;->getUTCTimeOrEmpty(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "st"

    .line 16
    invoke-static {v6, v1, v0}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {v2}, Lcom/microsoft/azure/storage/core/Utility;->getUTCTimeOrEmpty(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "se"

    .line 18
    invoke-static {v6, v1, v0}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sr"

    .line 19
    invoke-static {v6, v0, p0}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-eqz v3, :cond_0

    .line 20
    invoke-virtual {v3}, Lcom/microsoft/azure/storage/IPRange;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    const-string v1, "sip"

    invoke-static {v6, v1, v0}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    .line 21
    invoke-virtual {v4}, Lcom/microsoft/azure/storage/SharedAccessProtocols;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v0, "spr"

    .line 22
    invoke-static {v6, v0, p0}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "sig"

    .line 23
    invoke-static {v6, p0, p1}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public static generateSharedAccessSignatureForBlobAndFile(Lcom/microsoft/azure/storage/SharedAccessPolicy;Lcom/microsoft/azure/storage/SharedAccessHeaders;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;Ljava/lang/String;)Lcom/microsoft/azure/storage/core/UriQueryBuilder;
    .locals 13

    const-string v0, "resourceType"

    move-object/from16 v7, p3

    .line 1
    invoke-static {v0, v7}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v11, p6

    move-object v12, p1

    .line 2
    invoke-static/range {v1 .. v12}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->generateSharedAccessSignatureHelper(Lcom/microsoft/azure/storage/SharedAccessPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/SharedAccessHeaders;)Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static generateSharedAccessSignatureForQueue(Lcom/microsoft/azure/storage/queue/SharedAccessQueuePolicy;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;Ljava/lang/String;)Lcom/microsoft/azure/storage/core/UriQueryBuilder;
    .locals 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v10, p4

    .line 1
    invoke-static/range {v0 .. v11}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->generateSharedAccessSignatureHelper(Lcom/microsoft/azure/storage/SharedAccessPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/SharedAccessHeaders;)Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static generateSharedAccessSignatureForTable(Lcom/microsoft/azure/storage/table/SharedAccessTablePolicy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/azure/storage/core/UriQueryBuilder;
    .locals 13

    const-string v0, "tableName"

    move-object/from16 v10, p8

    .line 1
    invoke-static {v0, v10}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p9

    .line 2
    invoke-static/range {v1 .. v12}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->generateSharedAccessSignatureHelper(Lcom/microsoft/azure/storage/SharedAccessPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/SharedAccessHeaders;)Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static generateSharedAccessSignatureHashForAccount(Ljava/lang/String;Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;Lcom/microsoft/azure/storage/StorageCredentials;)Ljava/lang/String;
    .locals 8

    const-string v0, "resource"

    .line 1
    invoke-static {v0, p0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "credentials"

    .line 2
    invoke-static {v0, p2}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;->permissionsToString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/SharedAccessPolicy;->getSharedAccessStartTime()Ljava/util/Date;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/SharedAccessPolicy;->getSharedAccessExpiryTime()Ljava/util/Date;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;->getRange()Lcom/microsoft/azure/storage/IPRange;

    move-result-object v3

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;->getProtocols()Lcom/microsoft/azure/storage/SharedAccessProtocols;

    move-result-object v4

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;->servicesToString()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;->resourceTypesToString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :goto_0
    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 p0, 0x1

    const-string v7, ""

    if-nez v0, :cond_1

    move-object v0, v7

    :cond_1
    aput-object v0, v6, p0

    const/4 p0, 0x2

    aput-object v5, v6, p0

    const/4 p0, 0x3

    aput-object p1, v6, p0

    const/4 p0, 0x4

    .line 10
    invoke-static {v1}, Lcom/microsoft/azure/storage/core/Utility;->getUTCTimeOrEmpty(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, p0

    const/4 p0, 0x5

    invoke-static {v2}, Lcom/microsoft/azure/storage/core/Utility;->getUTCTimeOrEmpty(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, p0

    const/4 p0, 0x6

    if-nez v3, :cond_2

    move-object p1, v7

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v3}, Lcom/microsoft/azure/storage/IPRange;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    aput-object p1, v6, p0

    const/4 p0, 0x7

    if-nez v4, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {v4}, Lcom/microsoft/azure/storage/SharedAccessProtocols;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    aput-object v7, v6, p0

    const/16 p0, 0x8

    const-string p1, "2018-03-28"

    aput-object p1, v6, p0

    const-string p0, "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n"

    .line 13
    invoke-static {p0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 14
    invoke-static {p0, p2}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->generateSharedAccessSignatureHashHelper(Ljava/lang/String;Lcom/microsoft/azure/storage/StorageCredentials;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateSharedAccessSignatureHashForBlobAndFile(Lcom/microsoft/azure/storage/SharedAccessPolicy;Lcom/microsoft/azure/storage/SharedAccessHeaders;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;Lcom/microsoft/azure/storage/ServiceClient;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0, p3, p4, p5, p2}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->generateSharedAccessSignatureStringToSign(Lcom/microsoft/azure/storage/SharedAccessPolicy;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/SharedAccessHeaders;->getCacheControl()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/SharedAccessHeaders;->getContentDisposition()Ljava/lang/String;

    move-result-object p3

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/SharedAccessHeaders;->getContentEncoding()Ljava/lang/String;

    move-result-object p4

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/SharedAccessHeaders;->getContentLanguage()Ljava/lang/String;

    move-result-object p5

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/SharedAccessHeaders;->getContentType()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    move-object p3, p1

    move-object p4, p3

    move-object p5, p4

    :goto_0
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    const-string v1, ""

    if-nez p2, :cond_1

    move-object p2, v1

    :cond_1
    aput-object p2, v0, p0

    const/4 p0, 0x2

    if-nez p3, :cond_2

    move-object p3, v1

    :cond_2
    aput-object p3, v0, p0

    const/4 p0, 0x3

    if-nez p4, :cond_3

    move-object p4, v1

    :cond_3
    aput-object p4, v0, p0

    const/4 p0, 0x4

    if-nez p5, :cond_4

    move-object p5, v1

    :cond_4
    aput-object p5, v0, p0

    const/4 p0, 0x5

    if-nez p1, :cond_5

    move-object p1, v1

    :cond_5
    aput-object p1, v0, p0

    const-string p0, "%s\n%s\n%s\n%s\n%s\n%s"

    .line 7
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-virtual {p6}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->generateSharedAccessSignatureHashHelper(Ljava/lang/String;Lcom/microsoft/azure/storage/StorageCredentials;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateSharedAccessSignatureHashForQueue(Lcom/microsoft/azure/storage/queue/SharedAccessQueuePolicy;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;Lcom/microsoft/azure/storage/ServiceClient;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p2, p3, p4, p1}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->generateSharedAccessSignatureStringToSign(Lcom/microsoft/azure/storage/SharedAccessPolicy;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p5}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->generateSharedAccessSignatureHashHelper(Ljava/lang/String;Lcom/microsoft/azure/storage/StorageCredentials;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateSharedAccessSignatureHashForTable(Lcom/microsoft/azure/storage/table/SharedAccessTablePolicy;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/ServiceClient;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p2, p3, p4, p1}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->generateSharedAccessSignatureStringToSign(Lcom/microsoft/azure/storage/SharedAccessPolicy;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    const-string p0, ""

    if-nez p5, :cond_0

    move-object p5, p0

    :cond_0
    const/4 p2, 0x1

    aput-object p5, p1, p2

    const/4 p2, 0x2

    if-nez p6, :cond_1

    move-object p6, p0

    :cond_1
    aput-object p6, p1, p2

    const/4 p2, 0x3

    if-nez p7, :cond_2

    move-object p7, p0

    :cond_2
    aput-object p7, p1, p2

    const/4 p2, 0x4

    if-nez p8, :cond_3

    move-object p8, p0

    :cond_3
    aput-object p8, p1, p2

    const-string p0, "%s\n%s\n%s\n%s\n%s"

    .line 2
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p9}, Lcom/microsoft/azure/storage/ServiceClient;->getCredentials()Lcom/microsoft/azure/storage/StorageCredentials;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->generateSharedAccessSignatureHashHelper(Ljava/lang/String;Lcom/microsoft/azure/storage/StorageCredentials;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateSharedAccessSignatureHashHelper(Ljava/lang/String;Lcom/microsoft/azure/storage/StorageCredentials;)Ljava/lang/String;
    .locals 2

    const-string v0, "credentials"

    .line 1
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const-string v1, "Signing %s"

    .line 2
    invoke-static {v0, v1, p0}, Lcom/microsoft/azure/storage/core/Logger;->trace(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->safeDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p1, p0}, Lcom/microsoft/azure/storage/core/StorageCredentialsHelper;->computeHmac256(Lcom/microsoft/azure/storage/StorageCredentials;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateSharedAccessSignatureHelper(Lcom/microsoft/azure/storage/SharedAccessPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/storage/SharedAccessHeaders;)Lcom/microsoft/azure/storage/core/UriQueryBuilder;
    .locals 8

    move-object/from16 v0, p10

    const-string v1, "signature"

    .line 1
    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/SharedAccessPolicy;->permissionsToString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/SharedAccessPolicy;->getSharedAccessStartTime()Ljava/util/Date;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/SharedAccessPolicy;->getSharedAccessExpiryTime()Ljava/util/Date;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    .line 5
    :goto_0
    new-instance v5, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v5}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    const-string v6, "sv"

    const-string v7, "2018-03-28"

    .line 6
    invoke-virtual {v5, v6, v7}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "sp"

    .line 7
    invoke-static {v5, v6, v2}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {v3}, Lcom/microsoft/azure/storage/core/Utility;->getUTCTimeOrEmpty(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "st"

    .line 9
    invoke-static {v5, v3, v2}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {v4}, Lcom/microsoft/azure/storage/core/Utility;->getUTCTimeOrEmpty(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "se"

    .line 11
    invoke-static {v5, v3, v2}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "spk"

    move-object v3, p1

    .line 12
    invoke-static {v5, v2, p1}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "srk"

    move-object v3, p2

    .line 13
    invoke-static {v5, v2, p2}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "epk"

    move-object v3, p3

    .line 14
    invoke-static {v5, v2, p3}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "erk"

    move-object v3, p4

    .line 15
    invoke-static {v5, v2, p4}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "si"

    move-object v3, p5

    .line 16
    invoke-static {v5, v2, p5}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sr"

    move-object v3, p6

    .line 17
    invoke-static {v5, v2, p6}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_1

    .line 18
    invoke-virtual {p7}, Lcom/microsoft/azure/storage/IPRange;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const-string v3, "sip"

    invoke-static {v5, v3, v2}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p8, :cond_2

    .line 19
    invoke-virtual/range {p8 .. p8}, Lcom/microsoft/azure/storage/SharedAccessProtocols;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v2, "spr"

    .line 20
    invoke-static {v5, v2, v1}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tn"

    move-object/from16 v2, p9

    .line 21
    invoke-static {v5, v1, v2}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p11, :cond_3

    .line 22
    invoke-virtual/range {p11 .. p11}, Lcom/microsoft/azure/storage/SharedAccessHeaders;->getCacheControl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rscc"

    invoke-static {v5, v2, v1}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual/range {p11 .. p11}, Lcom/microsoft/azure/storage/SharedAccessHeaders;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rsct"

    invoke-static {v5, v2, v1}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual/range {p11 .. p11}, Lcom/microsoft/azure/storage/SharedAccessHeaders;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rsce"

    invoke-static {v5, v2, v1}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual/range {p11 .. p11}, Lcom/microsoft/azure/storage/SharedAccessHeaders;->getContentLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rscl"

    invoke-static {v5, v2, v1}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual/range {p11 .. p11}, Lcom/microsoft/azure/storage/SharedAccessHeaders;->getContentDisposition()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rscd"

    invoke-static {v5, v2, v1}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v1, "sig"

    .line 27
    invoke-static {v5, v1, v0}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method public static generateSharedAccessSignatureStringToSign(Lcom/microsoft/azure/storage/SharedAccessPolicy;Ljava/lang/String;Lcom/microsoft/azure/storage/IPRange;Lcom/microsoft/azure/storage/SharedAccessProtocols;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "resource"

    .line 1
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/SharedAccessPolicy;->permissionsToString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/SharedAccessPolicy;->getSharedAccessStartTime()Ljava/util/Date;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/SharedAccessPolicy;->getSharedAccessExpiryTime()Ljava/util/Date;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    move-object v1, p0

    :goto_0
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, ""

    if-nez v0, :cond_1

    move-object v0, v4

    :cond_1
    aput-object v0, v2, v3

    const/4 v0, 0x1

    .line 5
    invoke-static {v1}, Lcom/microsoft/azure/storage/core/Utility;->getUTCTimeOrEmpty(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->getUTCTimeOrEmpty(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    const/4 p0, 0x3

    aput-object p1, v2, p0

    const/4 p0, 0x4

    if-nez p4, :cond_2

    move-object p4, v4

    :cond_2
    aput-object p4, v2, p0

    const/4 p0, 0x5

    if-nez p2, :cond_3

    move-object p1, v4

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/IPRange;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    aput-object p1, v2, p0

    const/4 p0, 0x6

    if-nez p3, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    invoke-virtual {p3}, Lcom/microsoft/azure/storage/SharedAccessProtocols;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    aput-object v4, v2, p0

    const/4 p0, 0x7

    const-string p1, "2018-03-28"

    aput-object p1, v2, p0

    const-string p0, "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s"

    .line 8
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseQuery(Lcom/microsoft/azure/storage/StorageUri;)Lcom/microsoft/azure/storage/StorageCredentialsSharedAccessSignature;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/StorageUri;->getQuery()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/azure/storage/core/PathUtility;->parseQueryString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->parseQuery(Ljava/util/HashMap;)Lcom/microsoft/azure/storage/StorageCredentialsSharedAccessSignature;

    move-result-object p0

    return-object p0
.end method

.method public static parseQuery(Ljava/util/HashMap;)Lcom/microsoft/azure/storage/StorageCredentialsSharedAccessSignature;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/azure/storage/StorageCredentialsSharedAccessSignature;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "sig"

    .line 6
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "comp"

    .line 7
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v5, "restype"

    .line 9
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 10
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v5, "snapshot"

    .line 11
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 12
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v5, "api-version"

    .line 13
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 14
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-string v5, "sharesnapshot"

    .line 15
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 16
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 18
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_a

    .line 19
    new-instance v0, Lcom/microsoft/azure/storage/core/UriQueryBuilder;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;-><init>()V

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v4, 0x0

    .line 23
    :goto_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    array-length v6, v6

    if-ge v4, v6, :cond_8

    .line 24
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2c

    .line 25
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 26
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/microsoft/azure/storage/core/SharedAccessSignatureHelper;->addIfNotNullOrEmpty(Lcom/microsoft/azure/storage/core/UriQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 28
    :cond_9
    new-instance p0, Lcom/microsoft/azure/storage/StorageCredentialsSharedAccessSignature;

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/core/UriQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/azure/storage/StorageCredentialsSharedAccessSignature;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method
