.class public Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONFIGURATION_ID_NAME:Ljava/lang/String; = "id"

.field public static final CONTENT_NAME:Ljava/lang/String; = "content"

.field public static final CONTENT_TYPE_NAME:Ljava/lang/String; = "contentType"

.field public static final CREATED_TIME_UTC_NAME:Ljava/lang/String; = "createdTimeUtc"

.field public static final E_TAG_NAME:Ljava/lang/String; = "etag"

.field public static final LABELS_NAME:Ljava/lang/String; = "labels"

.field public static final LAST_UPDATED_TIME_UTC_NAME:Ljava/lang/String; = "lastUpdatedTimeUtc"

.field public static final METRICS_NAME:Ljava/lang/String; = "metrics"

.field public static final PRIORITY_NAME:Ljava/lang/String; = "priority"

.field public static final SCHEMA_VERSION_NAME:Ljava/lang/String; = "schemaVersion"

.field public static final SYSTEM_METRICS_NAME:Ljava/lang/String; = "systemMetrics"

.field public static final TARGET_CONDITION_NAME:Ljava/lang/String; = "targetCondition"

.field public static transient gson:Lcom/google/gson/Gson;


# instance fields
.field public content:Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationContentParser;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = false
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "content"
    .end annotation
.end field

.field public contentType:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "contentType"
    .end annotation
.end field

.field public transient createdTimeUtc:Ljava/util/Date;

.field public createdTimeUtcString:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = false
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "createdTimeUtc"
    .end annotation
.end field

.field public eTag:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "etag"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "id"
    .end annotation
.end field

.field public labels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "labels"
    .end annotation
.end field

.field public transient lastUpdatedTimeUtc:Ljava/util/Date;

.field public lastUpdatedTimeUtcString:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = false
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "lastUpdatedTimeUtc"
    .end annotation
.end field

.field public metrics:Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationMetricsParser;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "metrics"
    .end annotation
.end field

.field public priority:Ljava/lang/Integer;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "priority"
    .end annotation
.end field

.field public schemaVersion:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "schemaVersion"
    .end annotation
.end field

.field public systemMetrics:Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationMetricsParser;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "systemMetrics"
    .end annotation
.end field

.field public targetCondition:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "targetCondition"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/c/c/e;

    invoke-direct {v0}, Le/c/c/e;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Le/c/c/e;->j:Z

    .line 3
    iput-boolean v1, v0, Le/c/c/e;->g:Z

    .line 4
    invoke-virtual {v0}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    :try_start_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->gson:Lcom/google/gson/Gson;

    const-class v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;

    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {v1}, Le/c/c/w/t;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;
    :try_end_0
    .catch Le/c/c/s; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->id:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->id:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->schemaVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->schemaVersion:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->labels:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->labels:Ljava/util/HashMap;

    .line 12
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->content:Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationContentParser;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->content:Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationContentParser;

    .line 13
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->contentType:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->contentType:Ljava/lang/String;

    .line 14
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->targetCondition:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->targetCondition:Ljava/lang/String;

    .line 15
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->priority:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->priority:Ljava/lang/Integer;

    .line 16
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->systemMetrics:Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationMetricsParser;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->systemMetrics:Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationMetricsParser;

    .line 17
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->metrics:Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationMetricsParser;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->metrics:Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationMetricsParser;

    .line 18
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->eTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->eTag:Ljava/lang/String;

    .line 19
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->createdTimeUtcString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 20
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->createdTimeUtcString:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->createdTimeUtcString:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateTimeUtc(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->createdTimeUtc:Ljava/util/Date;

    .line 22
    :cond_0
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->lastUpdatedTimeUtcString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 23
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->lastUpdatedTimeUtcString:Ljava/lang/String;

    .line 24
    iget-object p1, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->lastUpdatedTimeUtcString:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateTimeUtc(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->lastUpdatedTimeUtc:Ljava/util/Date;

    :cond_1
    return-void

    .line 25
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided json must contain the field for configurationId and its value may not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided json could not be parsed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided json cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getContent()Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationContentParser;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->content:Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationContentParser;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedTimeUtc()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->createdTimeUtc:Ljava/util/Date;

    return-object v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLabels()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->labels:Ljava/util/HashMap;

    return-object v0
.end method

.method public getLastUpdatedTimeUtc()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->lastUpdatedTimeUtc:Ljava/util/Date;

    return-object v0
.end method

.method public getMetrics()Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationMetricsParser;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->metrics:Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationMetricsParser;

    return-object v0
.end method

.method public getPriority()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->priority:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSchemaVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->schemaVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemMetrics()Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationMetricsParser;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->systemMetrics:Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationMetricsParser;

    return-object v0
.end method

.method public getTargetCondition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->targetCondition:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationContentParser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->content:Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationContentParser;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setCreatedTimeUtc(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->createdTimeUtc:Ljava/util/Date;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->createdTimeUtcString:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->createdTimeUtcString:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->eTag:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->id:Ljava/lang/String;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Configuration Id cannot not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLabels(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->labels:Ljava/util/HashMap;

    return-void
.end method

.method public setLastUpdatedTimeUtc(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->lastUpdatedTimeUtc:Ljava/util/Date;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->lastUpdatedTimeUtcString:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->lastUpdatedTimeUtcString:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setMetrics(Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationMetricsParser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->metrics:Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationMetricsParser;

    return-void
.end method

.method public setPriority(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->priority:Ljava/lang/Integer;

    return-void
.end method

.method public setSchemaVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->schemaVersion:Ljava/lang/String;

    return-void
.end method

.method public setSystemMetrics(Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationMetricsParser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->systemMetrics:Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationMetricsParser;

    return-void
.end method

.method public setTargetCondition(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->targetCondition:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->createdTimeUtc:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->createdTimeUtcString:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->lastUpdatedTimeUtc:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->getDateStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->lastUpdatedTimeUtcString:Ljava/lang/String;

    .line 5
    :cond_1
    new-instance v0, Le/c/c/e;

    invoke-direct {v0}, Le/c/c/e;-><init>()V

    invoke-virtual {v0}, Le/c/c/e;->b()Le/c/c/e;

    invoke-virtual {v0}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->b(Ljava/lang/Object;)Le/c/c/j;

    move-result-object v0

    invoke-virtual {v0}, Le/c/c/j;->c()Le/c/c/m;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationParser;->content:Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationContentParser;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ConfigurationContentParser;->toJsonElement()Le/c/c/j;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v0, v2, v1}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    .line 9
    :cond_2
    invoke-virtual {v0}, Le/c/c/j;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
