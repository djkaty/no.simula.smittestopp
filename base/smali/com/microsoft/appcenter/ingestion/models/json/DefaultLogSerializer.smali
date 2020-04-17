.class public Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/appcenter/ingestion/models/json/LogSerializer;


# static fields
.field public static final LOGS:Ljava/lang/String; = "logs"


# instance fields
.field public final mLogFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;->mLogFactories:Ljava/util/Map;

    return-void
.end method

.method private readLog(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/Log;
    .locals 1

    if-nez p2, :cond_0

    const-string p2, "type"

    .line 1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;->mLogFactories:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;->create()Lcom/microsoft/appcenter/ingestion/models/Log;

    move-result-object p2

    .line 4
    invoke-interface {p2, p1}, Lcom/microsoft/appcenter/ingestion/models/Model;->read(Lorg/json/JSONObject;)V

    return-object p2

    .line 5
    :cond_1
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Unknown log type: "

    invoke-static {v0, p2}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeLog(Lorg/json/JSONStringer;Lcom/microsoft/appcenter/ingestion/models/Log;)Lorg/json/JSONStringer;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 2
    invoke-interface {p2, p1}, Lcom/microsoft/appcenter/ingestion/models/Model;->write(Lorg/json/JSONStringer;)V

    .line 3
    invoke-virtual {p1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    return-object p1
.end method


# virtual methods
.method public addLogFactory(Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;->mLogFactories:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public deserializeContainer(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/LogContainer;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/microsoft/appcenter/ingestion/models/LogContainer;

    invoke-direct {p1}, Lcom/microsoft/appcenter/ingestion/models/LogContainer;-><init>()V

    const-string v1, "logs"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 7
    invoke-direct {p0, v3, p2}, Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;->readLog(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/Log;

    move-result-object v3

    .line 8
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1, v1}, Lcom/microsoft/appcenter/ingestion/models/LogContainer;->setLogs(Ljava/util/List;)V

    return-object p1
.end method

.method public deserializeLog(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/Log;
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;->readLog(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/Log;

    move-result-object p1

    return-object p1
.end method

.method public serializeContainer(Lcom/microsoft/appcenter/ingestion/models/LogContainer;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    .line 2
    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    const-string v1, "logs"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/appcenter/ingestion/models/LogContainer;->getLogs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/ingestion/models/Log;

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;->writeLog(Lorg/json/JSONStringer;Lcom/microsoft/appcenter/ingestion/models/Log;)Lorg/json/JSONStringer;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    .line 7
    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 8
    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public serializeLog(Lcom/microsoft/appcenter/ingestion/models/Log;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;->writeLog(Lorg/json/JSONStringer;Lcom/microsoft/appcenter/ingestion/models/Log;)Lorg/json/JSONStringer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toCommonSchemaLog(Lcom/microsoft/appcenter/ingestion/models/Log;)Ljava/util/Collection;
    .locals 2
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
    iget-object v0, p0, Lcom/microsoft/appcenter/ingestion/models/json/DefaultLogSerializer;->mLogFactories:Ljava/util/Map;

    invoke-interface {p1}, Lcom/microsoft/appcenter/ingestion/models/Log;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;

    invoke-interface {v0, p1}, Lcom/microsoft/appcenter/ingestion/models/json/LogFactory;->toCommonSchemaLogs(Lcom/microsoft/appcenter/ingestion/models/Log;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
