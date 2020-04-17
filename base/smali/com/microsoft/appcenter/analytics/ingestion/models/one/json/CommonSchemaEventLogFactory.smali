.class public Lcom/microsoft/appcenter/analytics/ingestion/models/one/json/CommonSchemaEventLogFactory;
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
.method public create()Lcom/microsoft/appcenter/analytics/ingestion/models/one/CommonSchemaEventLog;
    .locals 1

    .line 2
    new-instance v0, Lcom/microsoft/appcenter/analytics/ingestion/models/one/CommonSchemaEventLog;

    invoke-direct {v0}, Lcom/microsoft/appcenter/analytics/ingestion/models/one/CommonSchemaEventLog;-><init>()V

    return-object v0
.end method

.method public bridge synthetic create()Lcom/microsoft/appcenter/ingestion/models/Log;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/appcenter/analytics/ingestion/models/one/json/CommonSchemaEventLogFactory;->create()Lcom/microsoft/appcenter/analytics/ingestion/models/one/CommonSchemaEventLog;

    move-result-object v0

    return-object v0
.end method
