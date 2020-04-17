.class public final Lcom/microsoft/azure/storage/ServicePropertiesHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


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

.field public final props:Lcom/microsoft/azure/storage/ServiceProperties;

.field public retentionPolicyDays:I

.field public retentionPolicyEnabled:Z

.field public rule:Lcom/microsoft/azure/storage/CorsRule;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->elementStack:Ljava/util/Stack;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->bld:Ljava/lang/StringBuilder;

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/ServiceProperties;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    .line 5
    new-instance v0, Lcom/microsoft/azure/storage/CorsRule;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/CorsRule;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->rule:Lcom/microsoft/azure/storage/CorsRule;

    return-void
.end method

.method public static readServicePropertiesFromStream(Ljava/io/InputStream;)Lcom/microsoft/azure/storage/ServiceProperties;
    .locals 4

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/core/Utility;->getSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/microsoft/azure/storage/ServicePropertiesHandler;

    invoke-direct {v1}, Lcom/microsoft/azure/storage/ServicePropertiesHandler;-><init>()V

    .line 3
    iget-object v2, v1, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/microsoft/azure/storage/ServiceProperties;->setLogging(Lcom/microsoft/azure/storage/LoggingProperties;)V

    .line 4
    iget-object v2, v1, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {v2, v3}, Lcom/microsoft/azure/storage/ServiceProperties;->setHourMetrics(Lcom/microsoft/azure/storage/MetricsProperties;)V

    .line 5
    iget-object v2, v1, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {v2, v3}, Lcom/microsoft/azure/storage/ServiceProperties;->setMinuteMetrics(Lcom/microsoft/azure/storage/MetricsProperties;)V

    .line 6
    iget-object v2, v1, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {v2, v3}, Lcom/microsoft/azure/storage/ServiceProperties;->setCors(Lcom/microsoft/azure/storage/CorsProperties;)V

    .line 7
    iget-object v2, v1, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {v2, v3}, Lcom/microsoft/azure/storage/ServiceProperties;->setDeleteRetentionPolicy(Lcom/microsoft/azure/storage/DeleteRetentionPolicy;)V

    .line 8
    iget-object v2, v1, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {v2, v3}, Lcom/microsoft/azure/storage/ServiceProperties;->setStaticWebsiteProperties(Lcom/microsoft/azure/storage/StaticWebsiteProperties;)V

    .line 9
    invoke-virtual {v0, p0, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 10
    iget-object p0, v1, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    return-object p0
.end method

.method public static splitToEnumSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/CorsHttpMethods;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/microsoft/azure/storage/CorsHttpMethods;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/azure/storage/CorsHttpMethods;->valueOf(Ljava/lang/String;)Lcom/microsoft/azure/storage/CorsHttpMethods;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static splitToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->bld:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_20

    .line 3
    iget-object p2, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->isEmpty()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p3

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->bld:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, v0

    .line 7
    :goto_1
    iget-boolean v0, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->retentionPolicyEnabled:Z

    const-string v1, "MinuteMetrics"

    const-string v2, "HourMetrics"

    const-string v3, "Logging"

    const-string v4, "RetentionPolicy"

    if-eqz v0, :cond_4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceProperties;->getLogging()Lcom/microsoft/azure/storage/LoggingProperties;

    move-result-object p1

    iget p2, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->retentionPolicyDays:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/LoggingProperties;->setRetentionIntervalInDays(Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 10
    :cond_2
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceProperties;->getHourMetrics()Lcom/microsoft/azure/storage/MetricsProperties;

    move-result-object p1

    iget p2, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->retentionPolicyDays:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/MetricsProperties;->setRetentionIntervalInDays(Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 12
    :cond_3
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 13
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceProperties;->getMinuteMetrics()Lcom/microsoft/azure/storage/MetricsProperties;

    move-result-object p1

    iget p2, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->retentionPolicyDays:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/MetricsProperties;->setRetentionIntervalInDays(Ljava/lang/Integer;)V

    goto/16 :goto_2

    :cond_4
    const-string v0, "CorsRule"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 15
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceProperties;->getCors()Lcom/microsoft/azure/storage/CorsProperties;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/CorsProperties;->getCorsRules()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->rule:Lcom/microsoft/azure/storage/CorsRule;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 16
    :cond_5
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "Days"

    const-string v6, "Enabled"

    if-eqz v4, :cond_7

    .line 17
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 18
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->retentionPolicyDays:I

    goto/16 :goto_2

    .line 19
    :cond_6
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 20
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->retentionPolicyEnabled:Z

    goto/16 :goto_2

    .line 21
    :cond_7
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Version"

    if-eqz v3, :cond_b

    .line 22
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 23
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceProperties;->getLogging()Lcom/microsoft/azure/storage/LoggingProperties;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/microsoft/azure/storage/LoggingProperties;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    const-string p2, "Delete"

    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 25
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 26
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceProperties;->getLogging()Lcom/microsoft/azure/storage/LoggingProperties;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/LoggingProperties;->getLogOperationTypes()Ljava/util/EnumSet;

    move-result-object p1

    sget-object p2, Lcom/microsoft/azure/storage/LoggingOperations;->DELETE:Lcom/microsoft/azure/storage/LoggingOperations;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_9
    const-string p2, "Read"

    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 28
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 29
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceProperties;->getLogging()Lcom/microsoft/azure/storage/LoggingProperties;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/LoggingProperties;->getLogOperationTypes()Ljava/util/EnumSet;

    move-result-object p1

    sget-object p2, Lcom/microsoft/azure/storage/LoggingOperations;->READ:Lcom/microsoft/azure/storage/LoggingOperations;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_a
    const-string p2, "Write"

    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 31
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 32
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceProperties;->getLogging()Lcom/microsoft/azure/storage/LoggingProperties;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/LoggingProperties;->getLogOperationTypes()Ljava/util/EnumSet;

    move-result-object p1

    sget-object p2, Lcom/microsoft/azure/storage/LoggingOperations;->WRITE:Lcom/microsoft/azure/storage/LoggingOperations;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 33
    :cond_b
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "IncludeAPIs"

    if-eqz v2, :cond_f

    .line 34
    iget-object p2, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/ServiceProperties;->getHourMetrics()Lcom/microsoft/azure/storage/MetricsProperties;

    move-result-object p2

    .line 35
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 36
    invoke-virtual {p2, p3}, Lcom/microsoft/azure/storage/MetricsProperties;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 37
    :cond_c
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 38
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 39
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/MetricsProperties;->getMetricsLevel()Lcom/microsoft/azure/storage/MetricsLevel;

    move-result-object p1

    sget-object p3, Lcom/microsoft/azure/storage/MetricsLevel;->SERVICE_AND_API:Lcom/microsoft/azure/storage/MetricsLevel;

    if-eq p1, p3, :cond_d

    sget-object p3, Lcom/microsoft/azure/storage/MetricsLevel;->SERVICE:Lcom/microsoft/azure/storage/MetricsLevel;

    :cond_d
    invoke-virtual {p2, p3}, Lcom/microsoft/azure/storage/MetricsProperties;->setMetricsLevel(Lcom/microsoft/azure/storage/MetricsLevel;)V

    goto/16 :goto_2

    .line 40
    :cond_e
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 41
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/MetricsProperties;->getMetricsLevel()Lcom/microsoft/azure/storage/MetricsLevel;

    move-result-object p1

    sget-object p3, Lcom/microsoft/azure/storage/MetricsLevel;->DISABLED:Lcom/microsoft/azure/storage/MetricsLevel;

    if-eq p1, p3, :cond_1f

    .line 42
    sget-object p1, Lcom/microsoft/azure/storage/MetricsLevel;->SERVICE_AND_API:Lcom/microsoft/azure/storage/MetricsLevel;

    invoke-virtual {p2, p1}, Lcom/microsoft/azure/storage/MetricsProperties;->setMetricsLevel(Lcom/microsoft/azure/storage/MetricsLevel;)V

    goto/16 :goto_2

    .line 43
    :cond_f
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 44
    iget-object p2, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/ServiceProperties;->getMinuteMetrics()Lcom/microsoft/azure/storage/MetricsProperties;

    move-result-object p2

    .line 45
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 46
    invoke-virtual {p2, p3}, Lcom/microsoft/azure/storage/MetricsProperties;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 47
    :cond_10
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 48
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 49
    invoke-virtual {p2}, Lcom/microsoft/azure/storage/MetricsProperties;->getMetricsLevel()Lcom/microsoft/azure/storage/MetricsLevel;

    move-result-object p1

    sget-object p3, Lcom/microsoft/azure/storage/MetricsLevel;->SERVICE_AND_API:Lcom/microsoft/azure/storage/MetricsLevel;

    if-eq p1, p3, :cond_11

    sget-object p3, Lcom/microsoft/azure/storage/MetricsLevel;->SERVICE:Lcom/microsoft/azure/storage/MetricsLevel;

    :cond_11
    invoke-virtual {p2, p3}, Lcom/microsoft/azure/storage/MetricsProperties;->setMetricsLevel(Lcom/microsoft/azure/storage/MetricsLevel;)V

    goto/16 :goto_2

    .line 50
    :cond_12
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 51
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-virtual {p2}, Lcom/microsoft/azure/storage/MetricsProperties;->getMetricsLevel()Lcom/microsoft/azure/storage/MetricsLevel;

    move-result-object p1

    sget-object p3, Lcom/microsoft/azure/storage/MetricsLevel;->DISABLED:Lcom/microsoft/azure/storage/MetricsLevel;

    if-eq p1, p3, :cond_1f

    .line 52
    sget-object p1, Lcom/microsoft/azure/storage/MetricsLevel;->SERVICE_AND_API:Lcom/microsoft/azure/storage/MetricsLevel;

    invoke-virtual {p2, p1}, Lcom/microsoft/azure/storage/MetricsProperties;->setMetricsLevel(Lcom/microsoft/azure/storage/MetricsLevel;)V

    goto/16 :goto_2

    :cond_13
    const-string v1, "DefaultServiceVersion"

    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 54
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {p1, p3}, Lcom/microsoft/azure/storage/ServiceProperties;->setDefaultServiceVersion(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 55
    :cond_14
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p2, "AllowedOrigins"

    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, ","

    if-eqz p2, :cond_15

    if-eqz p3, :cond_1f

    .line 57
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->rule:Lcom/microsoft/azure/storage/CorsRule;

    invoke-static {p3, v0}, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->splitToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/CorsRule;->setAllowedOrigins(Ljava/util/List;)V

    goto/16 :goto_2

    :cond_15
    const-string p2, "AllowedMethods"

    .line 58
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    if-eqz p3, :cond_1f

    .line 59
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->rule:Lcom/microsoft/azure/storage/CorsRule;

    invoke-static {p3, v0}, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->splitToEnumSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/CorsRule;->setAllowedMethods(Ljava/util/EnumSet;)V

    goto/16 :goto_2

    :cond_16
    const-string p2, "ExposedHeaders"

    .line 60
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    if-eqz p3, :cond_1f

    .line 61
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->rule:Lcom/microsoft/azure/storage/CorsRule;

    invoke-static {p3, v0}, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->splitToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/CorsRule;->setExposedHeaders(Ljava/util/List;)V

    goto/16 :goto_2

    :cond_17
    const-string p2, "AllowedHeaders"

    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    if-eqz p3, :cond_1f

    .line 63
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->rule:Lcom/microsoft/azure/storage/CorsRule;

    invoke-static {p3, v0}, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->splitToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/CorsRule;->setAllowedHeaders(Ljava/util/List;)V

    goto/16 :goto_2

    :cond_18
    const-string p2, "MaxAgeInSeconds"

    .line 64
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 65
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->rule:Lcom/microsoft/azure/storage/CorsRule;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/CorsRule;->setMaxAgeInSeconds(I)V

    goto/16 :goto_2

    :cond_19
    const-string v0, "DeleteRetentionPolicy"

    .line 66
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 67
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1b

    if-eqz p3, :cond_1f

    .line 68
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 69
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceProperties;->getDeleteRetentionPolicy()Lcom/microsoft/azure/storage/DeleteRetentionPolicy;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/DeleteRetentionPolicy;->setEnabled(Z)V

    goto :goto_2

    .line 70
    :cond_1a
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceProperties;->getDeleteRetentionPolicy()Lcom/microsoft/azure/storage/DeleteRetentionPolicy;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/DeleteRetentionPolicy;->setEnabled(Z)V

    goto :goto_2

    .line 71
    :cond_1b
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    if-eqz p3, :cond_1f

    .line 72
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceProperties;->getDeleteRetentionPolicy()Lcom/microsoft/azure/storage/DeleteRetentionPolicy;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/DeleteRetentionPolicy;->setRetentionIntervalInDays(Ljava/lang/Integer;)V

    goto :goto_2

    :cond_1c
    const-string v0, "StaticWebsite"

    .line 73
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 74
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    if-eqz p3, :cond_1f

    .line 75
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceProperties;->getStaticWebsiteProperties()Lcom/microsoft/azure/storage/StaticWebsiteProperties;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/StaticWebsiteProperties;->setEnabled(Z)V

    goto :goto_2

    :cond_1d
    const-string p2, "IndexDocument"

    .line 76
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e

    if-eqz p3, :cond_1f

    .line 77
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceProperties;->getStaticWebsiteProperties()Lcom/microsoft/azure/storage/StaticWebsiteProperties;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/microsoft/azure/storage/StaticWebsiteProperties;->setIndexDocument(Ljava/lang/String;)V

    goto :goto_2

    :cond_1e
    const-string p2, "ErrorDocument404Path"

    .line 78
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    if-eqz p3, :cond_1f

    .line 79
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    invoke-virtual {p1}, Lcom/microsoft/azure/storage/ServiceProperties;->getStaticWebsiteProperties()Lcom/microsoft/azure/storage/StaticWebsiteProperties;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/microsoft/azure/storage/StaticWebsiteProperties;->setErrorDocument404Path(Ljava/lang/String;)V

    .line 80
    :cond_1f
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->bld:Ljava/lang/StringBuilder;

    return-void

    .line 81
    :cond_20
    new-instance p1, Lorg/xml/sax/SAXException;

    const-string p2, "The response received is invalid or improperly formatted."

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "CorsRule"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/microsoft/azure/storage/CorsRule;

    invoke-direct {p1}, Lcom/microsoft/azure/storage/CorsRule;-><init>()V

    iput-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->rule:Lcom/microsoft/azure/storage/CorsRule;

    goto/16 :goto_0

    :cond_0
    const-string p1, "Logging"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    new-instance p2, Lcom/microsoft/azure/storage/LoggingProperties;

    invoke-direct {p2}, Lcom/microsoft/azure/storage/LoggingProperties;-><init>()V

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/ServiceProperties;->setLogging(Lcom/microsoft/azure/storage/LoggingProperties;)V

    goto :goto_0

    :cond_1
    const-string p1, "HourMetrics"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    new-instance p2, Lcom/microsoft/azure/storage/MetricsProperties;

    invoke-direct {p2}, Lcom/microsoft/azure/storage/MetricsProperties;-><init>()V

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/ServiceProperties;->setHourMetrics(Lcom/microsoft/azure/storage/MetricsProperties;)V

    goto :goto_0

    :cond_2
    const-string p1, "MinuteMetrics"

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    new-instance p2, Lcom/microsoft/azure/storage/MetricsProperties;

    invoke-direct {p2}, Lcom/microsoft/azure/storage/MetricsProperties;-><init>()V

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/ServiceProperties;->setMinuteMetrics(Lcom/microsoft/azure/storage/MetricsProperties;)V

    goto :goto_0

    :cond_3
    const-string p1, "Cors"

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    new-instance p2, Lcom/microsoft/azure/storage/CorsProperties;

    invoke-direct {p2}, Lcom/microsoft/azure/storage/CorsProperties;-><init>()V

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/ServiceProperties;->setCors(Lcom/microsoft/azure/storage/CorsProperties;)V

    goto :goto_0

    :cond_4
    const-string p1, "DeleteRetentionPolicy"

    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    new-instance p2, Lcom/microsoft/azure/storage/DeleteRetentionPolicy;

    invoke-direct {p2}, Lcom/microsoft/azure/storage/DeleteRetentionPolicy;-><init>()V

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/ServiceProperties;->setDeleteRetentionPolicy(Lcom/microsoft/azure/storage/DeleteRetentionPolicy;)V

    goto :goto_0

    :cond_5
    const-string p1, "StaticWebsite"

    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    iget-object p1, p0, Lcom/microsoft/azure/storage/ServicePropertiesHandler;->props:Lcom/microsoft/azure/storage/ServiceProperties;

    new-instance p2, Lcom/microsoft/azure/storage/StaticWebsiteProperties;

    invoke-direct {p2}, Lcom/microsoft/azure/storage/StaticWebsiteProperties;-><init>()V

    invoke-virtual {p1, p2}, Lcom/microsoft/azure/storage/ServiceProperties;->setStaticWebsiteProperties(Lcom/microsoft/azure/storage/StaticWebsiteProperties;)V

    :cond_6
    :goto_0
    return-void
.end method
