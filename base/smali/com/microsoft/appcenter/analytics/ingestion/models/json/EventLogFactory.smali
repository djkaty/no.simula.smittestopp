.class public Lcom/microsoft/appcenter/analytics/ingestion/models/json/EventLogFactory;
.super Lcom/microsoft/appcenter/ingestion/models/json/AbstractLogFactory;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/appcenter/ingestion/models/json/AbstractLogFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;
    .locals 1

    .line 2
    new-instance v0, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;

    invoke-direct {v0}, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;-><init>()V

    return-object v0
.end method

.method public bridge synthetic create()Lcom/microsoft/appcenter/ingestion/models/Log;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/appcenter/analytics/ingestion/models/json/EventLogFactory;->create()Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;

    move-result-object v0

    return-object v0
.end method

.method public toCommonSchemaLogs(Lcom/microsoft/appcenter/ingestion/models/Log;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/appcenter/ingestion/models/Log;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-interface {p1}, Lcom/microsoft/appcenter/ingestion/models/Log;->getTransmissionTargetTokens()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    new-instance v3, Lcom/microsoft/appcenter/analytics/ingestion/models/one/CommonSchemaEventLog;

    invoke-direct {v3}, Lcom/microsoft/appcenter/analytics/ingestion/models/one/CommonSchemaEventLog;-><init>()V

    .line 4
    move-object v4, p1

    check-cast v4, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;

    .line 5
    invoke-virtual {v4}, Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/microsoft/appcenter/ingestion/models/one/PartAUtils;->setName(Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;Ljava/lang/String;)V

    .line 6
    invoke-static {p1, v3, v2}, Lcom/microsoft/appcenter/ingestion/models/one/PartAUtils;->addPartAFromLog(Lcom/microsoft/appcenter/ingestion/models/Log;Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v4}, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->getTypedProperties()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaDataUtils;->addCommonSchemaData(Ljava/util/List;Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;)V

    .line 8
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-interface {p1}, Lcom/microsoft/appcenter/ingestion/models/Log;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method
