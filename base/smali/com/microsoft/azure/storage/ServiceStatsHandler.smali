.class public final Lcom/microsoft/azure/storage/ServiceStatsHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# static fields
.field public static final GEO_REPLICATION_NAME:Ljava/lang/String; = "GeoReplication"

.field public static final LAST_SYNC_TIME_NAME:Ljava/lang/String; = "LastSyncTime"

.field public static final STATUS_NAME:Ljava/lang/String; = "Status"


# instance fields
.field public bld:Ljava/lang/StringBuilder;

.field public final elementStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final geoReplicationStats:Lcom/microsoft/azure/storage/GeoReplicationStats;

.field public final stats:Lcom/microsoft/azure/storage/ServiceStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/ServiceStatsHandler;->elementStack:Ljava/util/Stack;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/ServiceStatsHandler;->bld:Ljava/lang/StringBuilder;

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/GeoReplicationStats;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/GeoReplicationStats;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/ServiceStatsHandler;->geoReplicationStats:Lcom/microsoft/azure/storage/GeoReplicationStats;

    .line 5
    new-instance v0, Lcom/microsoft/azure/storage/ServiceStats;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/ServiceStats;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/ServiceStatsHandler;->stats:Lcom/microsoft/azure/storage/ServiceStats;

    return-void
.end method

.method public static readServiceStatsFromStream(Ljava/io/InputStream;)Lcom/microsoft/azure/storage/ServiceStats;
    .locals 2

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/core/Utility;->getSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/microsoft/azure/storage/ServiceStatsHandler;

    invoke-direct {v1}, Lcom/microsoft/azure/storage/ServiceStatsHandler;-><init>()V

    .line 3
    invoke-virtual {v0, p0, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 4
    iget-object p0, v1, Lcom/microsoft/azure/storage/ServiceStatsHandler;->stats:Lcom/microsoft/azure/storage/ServiceStats;

    return-object p0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/ServiceStatsHandler;->bld:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServiceStatsHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 3
    iget-object p2, p0, Lcom/microsoft/azure/storage/ServiceStatsHandler;->bld:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object p2, v0

    :cond_0
    const-string p3, "GeoReplication"

    .line 5
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 6
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServiceStatsHandler;->stats:Lcom/microsoft/azure/storage/ServiceStats;

    iget-object p2, p0, Lcom/microsoft/azure/storage/ServiceStatsHandler;->geoReplicationStats:Lcom/microsoft/azure/storage/GeoReplicationStats;

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/ServiceStats;->setGeoReplication(Lcom/microsoft/azure/storage/GeoReplicationStats;)V

    goto :goto_1

    :cond_1
    const-string p3, "Status"

    .line 7
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 8
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServiceStatsHandler;->geoReplicationStats:Lcom/microsoft/azure/storage/GeoReplicationStats;

    invoke-static {p2}, Lcom/microsoft/azure/storage/GeoReplicationStatus;->parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/GeoReplicationStatus;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/GeoReplicationStats;->setStatus(Lcom/microsoft/azure/storage/GeoReplicationStatus;)V

    goto :goto_1

    :cond_2
    const-string p3, "LastSyncTime"

    .line 9
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    :try_start_0
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServiceStatsHandler;->geoReplicationStats:Lcom/microsoft/azure/storage/GeoReplicationStats;

    invoke-static {p2}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {p2}, Lcom/microsoft/azure/storage/core/Utility;->parseRFC1123DateFromStringInGMT(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 12
    :goto_0
    invoke-virtual {p1, v0}, Lcom/microsoft/azure/storage/GeoReplicationStats;->setLastSyncTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2

    .line 14
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/ServiceStatsHandler;->bld:Ljava/lang/StringBuilder;

    return-void

    .line 15
    :cond_5
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "The response received is invalid or improperly formatted."

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServiceStatsHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
