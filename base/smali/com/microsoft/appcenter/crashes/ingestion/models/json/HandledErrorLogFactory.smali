.class public Lcom/microsoft/appcenter/crashes/ingestion/models/json/HandledErrorLogFactory;
.super Lcom/microsoft/appcenter/ingestion/models/json/AbstractLogFactory;
.source "SourceFile"


# static fields
.field public static final sInstance:Lcom/microsoft/appcenter/crashes/ingestion/models/json/HandledErrorLogFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/appcenter/crashes/ingestion/models/json/HandledErrorLogFactory;

    invoke-direct {v0}, Lcom/microsoft/appcenter/crashes/ingestion/models/json/HandledErrorLogFactory;-><init>()V

    sput-object v0, Lcom/microsoft/appcenter/crashes/ingestion/models/json/HandledErrorLogFactory;->sInstance:Lcom/microsoft/appcenter/crashes/ingestion/models/json/HandledErrorLogFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/appcenter/ingestion/models/json/AbstractLogFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/microsoft/appcenter/crashes/ingestion/models/json/HandledErrorLogFactory;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/appcenter/crashes/ingestion/models/json/HandledErrorLogFactory;->sInstance:Lcom/microsoft/appcenter/crashes/ingestion/models/json/HandledErrorLogFactory;

    return-object v0
.end method


# virtual methods
.method public create()Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;
    .locals 1

    .line 2
    new-instance v0, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;

    invoke-direct {v0}, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;-><init>()V

    return-object v0
.end method

.method public bridge synthetic create()Lcom/microsoft/appcenter/ingestion/models/Log;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/json/HandledErrorLogFactory;->create()Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;

    move-result-object v0

    return-object v0
.end method
