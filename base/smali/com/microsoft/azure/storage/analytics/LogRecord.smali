.class public Lcom/microsoft/azure/storage/analytics/LogRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LAST_MODIFIED_TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final REQUEST_START_TIME_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field public authenticationType:Ljava/lang/String;

.field public clientRequestId:Ljava/lang/String;

.field public conditionsUsed:Ljava/lang/String;

.field public eTagIdentifier:Ljava/lang/String;

.field public endToEndLatencyInMS:Ljava/lang/Integer;

.field public httpStatusCode:Ljava/lang/String;

.field public lastModifiedTime:Ljava/util/Date;

.field public operationCount:Ljava/lang/Integer;

.field public operationType:Ljava/lang/String;

.field public ownerAccountName:Ljava/lang/String;

.field public referrerHeader:Ljava/lang/String;

.field public requestContentLength:Ljava/lang/Long;

.field public requestHeaderSize:Ljava/lang/Long;

.field public requestIdHeader:Ljava/util/UUID;

.field public requestMD5:Ljava/lang/String;

.field public requestPacketSize:Ljava/lang/Long;

.field public requestStartTime:Ljava/util/Date;

.field public requestStatus:Ljava/lang/String;

.field public requestUrl:Ljava/net/URI;

.field public requestVersionHeader:Ljava/lang/String;

.field public requestedObjectKey:Ljava/lang/String;

.field public requesterAccountName:Ljava/lang/String;

.field public requesterIPAddress:Ljava/lang/String;

.field public responseHeaderSize:Ljava/lang/Long;

.field public responsePacketSize:Ljava/lang/Long;

.field public serverLatencyInMS:Ljava/lang/Integer;

.field public serverMD5:Ljava/lang/String;

.field public serviceType:Ljava/lang/String;

.field public userAgentHeader:Ljava/lang/String;

.field public versionNumber:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/azure/storage/analytics/LogRecord;->REQUEST_START_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "E, dd-MMM-yy HH:mm:ss \'GMT\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/azure/storage/analytics/LogRecord;->LAST_MODIFIED_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/microsoft/azure/storage/analytics/LogRecord;->LAST_MODIFIED_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4
    sget-object v0, Lcom/microsoft/azure/storage/analytics/LogRecord;->REQUEST_START_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const-string v0, "reader"

    .line 5
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->versionNumber:Ljava/lang/String;

    const-string v1, "versionNumber"

    .line 7
    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->versionNumber:Ljava/lang/String;

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/analytics/LogRecord;->populateVersion1Log(Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;)V

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->versionNumber:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "A storage log version of %s is unsupported."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private populateVersion1Log(Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/analytics/LogRecord;->REQUEST_START_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readDate(Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestStartTime:Ljava/util/Date;

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->operationType:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestStatus:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->httpStatusCode:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readInteger()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->endToEndLatencyInMS:Ljava/lang/Integer;

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readInteger()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->serverLatencyInMS:Ljava/lang/Integer;

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->authenticationType:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requesterAccountName:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->ownerAccountName:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->serviceType:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readUri()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestUrl:Ljava/net/URI;

    .line 12
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readQuotedString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestedObjectKey:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readUuid()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestIdHeader:Ljava/util/UUID;

    .line 14
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readInteger()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->operationCount:Ljava/lang/Integer;

    .line 15
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requesterIPAddress:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestVersionHeader:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readLong()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestHeaderSize:Ljava/lang/Long;

    .line 18
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readLong()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestPacketSize:Ljava/lang/Long;

    .line 19
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readLong()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->responseHeaderSize:Ljava/lang/Long;

    .line 20
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readLong()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->responsePacketSize:Ljava/lang/Long;

    .line 21
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readLong()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestContentLength:Ljava/lang/Long;

    .line 22
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readQuotedString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestMD5:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readQuotedString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->serverMD5:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readQuotedString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->eTagIdentifier:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/microsoft/azure/storage/analytics/LogRecord;->LAST_MODIFIED_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readDate(Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->lastModifiedTime:Ljava/util/Date;

    .line 26
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readQuotedString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->conditionsUsed:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readQuotedString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->userAgentHeader:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readQuotedString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->referrerHeader:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->readQuotedString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->clientRequestId:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/analytics/LogRecordStreamReader;->endCurrentRecord()V

    return-void
.end method


# virtual methods
.method public getAuthenticationType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->authenticationType:Ljava/lang/String;

    return-object v0
.end method

.method public getClientRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->clientRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getConditionsUsed()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->conditionsUsed:Ljava/lang/String;

    return-object v0
.end method

.method public getETagIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->eTagIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getEndToEndLatencyInMS()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->endToEndLatencyInMS:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHttpStatusCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->httpStatusCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifiedTime()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->lastModifiedTime:Ljava/util/Date;

    return-object v0
.end method

.method public getOperationCount()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->operationCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOperationType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->operationType:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerAccountName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->ownerAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getReferrerHeader()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->referrerHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestContentLength()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestContentLength:Ljava/lang/Long;

    return-object v0
.end method

.method public getRequestHeaderSize()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestHeaderSize:Ljava/lang/Long;

    return-object v0
.end method

.method public getRequestIdHeader()Ljava/util/UUID;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestIdHeader:Ljava/util/UUID;

    return-object v0
.end method

.method public getRequestMD5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestMD5:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestPacketSize()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestPacketSize:Ljava/lang/Long;

    return-object v0
.end method

.method public getRequestStartTime()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestStartTime:Ljava/util/Date;

    return-object v0
.end method

.method public getRequestStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestUrl()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestUrl:Ljava/net/URI;

    return-object v0
.end method

.method public getRequestVersionHeader()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestVersionHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestedObjectKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestedObjectKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRequesterAccountName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requesterAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getRequesterIPAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requesterIPAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHeaderSize()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->responseHeaderSize:Ljava/lang/Long;

    return-object v0
.end method

.method public getResponsePacketSize()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->responsePacketSize:Ljava/lang/Long;

    return-object v0
.end method

.method public getServerLatencyInMS()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->serverLatencyInMS:Ljava/lang/Integer;

    return-object v0
.end method

.method public getServerMD5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->serverMD5:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->serviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgentHeader()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->userAgentHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->versionNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthenticationType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->authenticationType:Ljava/lang/String;

    return-void
.end method

.method public setClientRequestId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->clientRequestId:Ljava/lang/String;

    return-void
.end method

.method public setConditionsUsed(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->conditionsUsed:Ljava/lang/String;

    return-void
.end method

.method public setETagIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->eTagIdentifier:Ljava/lang/String;

    return-void
.end method

.method public setEndToEndLatencyInMS(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->endToEndLatencyInMS:Ljava/lang/Integer;

    return-void
.end method

.method public setHttpStatusCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->httpStatusCode:Ljava/lang/String;

    return-void
.end method

.method public setLastModifiedTime(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->lastModifiedTime:Ljava/util/Date;

    return-void
.end method

.method public setOperationCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->operationCount:Ljava/lang/Integer;

    return-void
.end method

.method public setOperationType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->operationType:Ljava/lang/String;

    return-void
.end method

.method public setOwnerAccountName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->ownerAccountName:Ljava/lang/String;

    return-void
.end method

.method public setReferrerHeader(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->referrerHeader:Ljava/lang/String;

    return-void
.end method

.method public setRequestContentLength(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestContentLength:Ljava/lang/Long;

    return-void
.end method

.method public setRequestHeaderSize(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestHeaderSize:Ljava/lang/Long;

    return-void
.end method

.method public setRequestIdHeader(Ljava/util/UUID;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestIdHeader:Ljava/util/UUID;

    return-void
.end method

.method public setRequestMD5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestMD5:Ljava/lang/String;

    return-void
.end method

.method public setRequestPacketSize(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestPacketSize:Ljava/lang/Long;

    return-void
.end method

.method public setRequestStartTime(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestStartTime:Ljava/util/Date;

    return-void
.end method

.method public setRequestStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestStatus:Ljava/lang/String;

    return-void
.end method

.method public setRequestUrl(Ljava/net/URI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestUrl:Ljava/net/URI;

    return-void
.end method

.method public setRequestVersionHeader(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestVersionHeader:Ljava/lang/String;

    return-void
.end method

.method public setRequestedObjectKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requestedObjectKey:Ljava/lang/String;

    return-void
.end method

.method public setRequesterAccountName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requesterAccountName:Ljava/lang/String;

    return-void
.end method

.method public setRequesterIPAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->requesterIPAddress:Ljava/lang/String;

    return-void
.end method

.method public setResponseHeaderSize(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->responseHeaderSize:Ljava/lang/Long;

    return-void
.end method

.method public setResponsePacketSize(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->responsePacketSize:Ljava/lang/Long;

    return-void
.end method

.method public setServerLatencyInMS(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->serverLatencyInMS:Ljava/lang/Integer;

    return-void
.end method

.method public setServerMD5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->serverMD5:Ljava/lang/String;

    return-void
.end method

.method public setServiceType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->serviceType:Ljava/lang/String;

    return-void
.end method

.method public setUserAgentHeader(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->userAgentHeader:Ljava/lang/String;

    return-void
.end method

.method public setVersionNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/analytics/LogRecord;->versionNumber:Ljava/lang/String;

    return-void
.end method
