.class public Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;
.super Lcom/microsoft/appcenter/ingestion/models/LogWithProperties;
.source "SourceFile"


# static fields
.field public static final EXCEPTION:Ljava/lang/String; = "exception"

.field public static final TYPE:Ljava/lang/String; = "handledError"


# instance fields
.field public exception:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

.field public id:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/appcenter/ingestion/models/LogWithProperties;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 1
    const-class v2, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    invoke-super {p0, p1}, Lcom/microsoft/appcenter/ingestion/models/LogWithProperties;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 3
    :cond_2
    check-cast p1, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;

    .line 4
    iget-object v2, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->id:Ljava/util/UUID;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->id:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->id:Ljava/util/UUID;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 5
    :cond_4
    iget-object v2, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->exception:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    iget-object p1, p1, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->exception:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method public getException()Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->exception:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    return-object v0
.end method

.method public getId()Ljava/util/UUID;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->id:Ljava/util/UUID;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "handledError"

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/microsoft/appcenter/ingestion/models/LogWithProperties;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->id:Ljava/util/UUID;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->exception:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/appcenter/ingestion/models/LogWithProperties;->read(Lorg/json/JSONObject;)V

    const-string v0, "id"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->setId(Ljava/util/UUID;)V

    const-string v0, "exception"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    invoke-direct {v0}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->read(Lorg/json/JSONObject;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->setException(Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;)V

    :cond_0
    return-void
.end method

.method public setException(Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->exception:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    return-void
.end method

.method public setId(Ljava/util/UUID;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->id:Ljava/util/UUID;

    return-void
.end method

.method public write(Lorg/json/JSONStringer;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/appcenter/ingestion/models/LogWithProperties;->write(Lorg/json/JSONStringer;)V

    const-string v0, "id"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->getId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->getException()Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "exception"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 5
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;->exception:Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    invoke-virtual {v0, p1}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->write(Lorg/json/JSONStringer;)V

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    :cond_0
    return-void
.end method
