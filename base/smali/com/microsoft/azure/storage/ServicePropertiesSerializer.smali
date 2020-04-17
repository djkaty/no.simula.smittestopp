.class public final Lcom/microsoft/azure/storage/ServicePropertiesSerializer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static joinToString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static serializeToByteArray(Lcom/microsoft/azure/storage/ServiceProperties;)[B
    .locals 4

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/microsoft/azure/storage/core/Utility;->createXMLStreamWriter(Ljava/io/StringWriter;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument()V

    const-string v2, "StorageServiceProperties"

    .line 4
    invoke-interface {v1, v2}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ServiceProperties;->getLogging()Lcom/microsoft/azure/storage/LoggingProperties;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ServiceProperties;->getLogging()Lcom/microsoft/azure/storage/LoggingProperties;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/azure/storage/ServicePropertiesSerializer;->writeLoggingProperties(Ljavax/xml/stream/XMLStreamWriter;Lcom/microsoft/azure/storage/LoggingProperties;)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ServiceProperties;->getHourMetrics()Lcom/microsoft/azure/storage/MetricsProperties;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ServiceProperties;->getHourMetrics()Lcom/microsoft/azure/storage/MetricsProperties;

    move-result-object v2

    const-string v3, "HourMetrics"

    invoke-static {v1, v2, v3}, Lcom/microsoft/azure/storage/ServicePropertiesSerializer;->writeMetricsProperties(Ljavax/xml/stream/XMLStreamWriter;Lcom/microsoft/azure/storage/MetricsProperties;Ljava/lang/String;)V

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ServiceProperties;->getMinuteMetrics()Lcom/microsoft/azure/storage/MetricsProperties;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ServiceProperties;->getMinuteMetrics()Lcom/microsoft/azure/storage/MetricsProperties;

    move-result-object v2

    const-string v3, "MinuteMetrics"

    invoke-static {v1, v2, v3}, Lcom/microsoft/azure/storage/ServicePropertiesSerializer;->writeMetricsProperties(Ljavax/xml/stream/XMLStreamWriter;Lcom/microsoft/azure/storage/MetricsProperties;Ljava/lang/String;)V

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ServiceProperties;->getCors()Lcom/microsoft/azure/storage/CorsProperties;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ServiceProperties;->getCors()Lcom/microsoft/azure/storage/CorsProperties;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/azure/storage/ServicePropertiesSerializer;->writeCorsProperties(Ljavax/xml/stream/XMLStreamWriter;Lcom/microsoft/azure/storage/CorsProperties;)V

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ServiceProperties;->getDefaultServiceVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "DefaultServiceVersion"

    .line 14
    invoke-interface {v1, v2}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ServiceProperties;->getDefaultServiceVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 16
    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    .line 17
    :cond_4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ServiceProperties;->getDeleteRetentionPolicy()Lcom/microsoft/azure/storage/DeleteRetentionPolicy;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 18
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ServiceProperties;->getDeleteRetentionPolicy()Lcom/microsoft/azure/storage/DeleteRetentionPolicy;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/azure/storage/ServicePropertiesSerializer;->writeDeleteRetentionPolicy(Ljavax/xml/stream/XMLStreamWriter;Lcom/microsoft/azure/storage/DeleteRetentionPolicy;)V

    .line 19
    :cond_5
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ServiceProperties;->getStaticWebsiteProperties()Lcom/microsoft/azure/storage/StaticWebsiteProperties;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 20
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/ServiceProperties;->getStaticWebsiteProperties()Lcom/microsoft/azure/storage/StaticWebsiteProperties;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/microsoft/azure/storage/ServicePropertiesSerializer;->writeStaticWebsiteProperties(Ljavax/xml/stream/XMLStreamWriter;Lcom/microsoft/azure/storage/StaticWebsiteProperties;)V

    .line 21
    :cond_6
    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    .line 22
    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamWriter;->writeEndDocument()V

    .line 23
    :try_start_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 24
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->generateNewUnexpectedStorageException(Ljava/lang/Exception;)Lcom/microsoft/azure/storage/StorageException;

    move-result-object p0

    throw p0
.end method

.method public static writeCorsProperties(Ljavax/xml/stream/XMLStreamWriter;Lcom/microsoft/azure/storage/CorsProperties;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/CorsProperties;->getCorsRules()Ljava/util/List;

    move-result-object v0

    const-string v1, "CorsRules"

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Cors"

    .line 2
    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/CorsProperties;->getCorsRules()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/azure/storage/CorsRule;

    .line 4
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/CorsRule;->getAllowedOrigins()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/azure/storage/CorsRule;->getAllowedMethods()Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/CorsRule;->getMaxAgeInSeconds()I

    move-result v1

    if-ltz v1, :cond_0

    const-string v1, "CorsRule"

    .line 6
    invoke-interface {p0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    const-string v1, "AllowedOrigins"

    .line 7
    invoke-interface {p0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/CorsRule;->getAllowedOrigins()Ljava/util/List;

    move-result-object v1

    const-string v2, ","

    invoke-static {v1, v2}, Lcom/microsoft/azure/storage/ServicePropertiesSerializer;->joinToString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 9
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    const-string v1, "AllowedMethods"

    .line 10
    invoke-interface {p0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/CorsRule;->getAllowedMethods()Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/microsoft/azure/storage/ServicePropertiesSerializer;->joinToString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 12
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    const-string v1, "ExposedHeaders"

    .line 13
    invoke-interface {p0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/CorsRule;->getExposedHeaders()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/microsoft/azure/storage/ServicePropertiesSerializer;->joinToString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 15
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    const-string v1, "AllowedHeaders"

    .line 16
    invoke-interface {p0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/CorsRule;->getAllowedHeaders()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/microsoft/azure/storage/ServicePropertiesSerializer;->joinToString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 18
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    const-string v1, "MaxAgeInSeconds"

    .line 19
    invoke-interface {p0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Lcom/microsoft/azure/storage/CorsRule;->getMaxAgeInSeconds()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 21
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    .line 22
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    goto/16 :goto_0

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A CORS rule must contain at least one allowed origin and allowed method, and MaxAgeInSeconds cannot have a value less than zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_1
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    return-void
.end method

.method public static writeDeleteRetentionPolicy(Ljavax/xml/stream/XMLStreamWriter;Lcom/microsoft/azure/storage/DeleteRetentionPolicy;)V
    .locals 1

    const-string v0, "DeleteRetentionPolicy"

    .line 1
    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    const-string v0, "Enabled"

    .line 2
    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/DeleteRetentionPolicy;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 4
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/DeleteRetentionPolicy;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Days"

    .line 6
    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/DeleteRetentionPolicy;->getRetentionIntervalInDays()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 8
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    .line 9
    :cond_1
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    return-void
.end method

.method public static writeLoggingProperties(Ljavax/xml/stream/XMLStreamWriter;Lcom/microsoft/azure/storage/LoggingProperties;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/LoggingProperties;->getLogOperationTypes()Ljava/util/EnumSet;

    move-result-object v0

    const-string v1, "logging.LogOperationTypes"

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Logging"

    .line 2
    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    const-string v0, "Version"

    .line 3
    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/LoggingProperties;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 5
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    const-string v0, "Delete"

    .line 6
    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/LoggingProperties;->getLogOperationTypes()Ljava/util/EnumSet;

    move-result-object v0

    sget-object v1, Lcom/microsoft/azure/storage/LoggingOperations;->DELETE:Lcom/microsoft/azure/storage/LoggingOperations;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "true"

    const-string v2, "false"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 8
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    const-string v0, "Read"

    .line 9
    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/LoggingProperties;->getLogOperationTypes()Ljava/util/EnumSet;

    move-result-object v0

    sget-object v3, Lcom/microsoft/azure/storage/LoggingOperations;->READ:Lcom/microsoft/azure/storage/LoggingOperations;

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 11
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    const-string v0, "Write"

    .line 12
    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/LoggingProperties;->getLogOperationTypes()Ljava/util/EnumSet;

    move-result-object v0

    sget-object v3, Lcom/microsoft/azure/storage/LoggingOperations;->WRITE:Lcom/microsoft/azure/storage/LoggingOperations;

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-interface {p0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 14
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    .line 15
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/LoggingProperties;->getRetentionIntervalInDays()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/microsoft/azure/storage/ServicePropertiesSerializer;->writeRetentionPolicy(Ljavax/xml/stream/XMLStreamWriter;Ljava/lang/Integer;)V

    .line 16
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    return-void
.end method

.method public static writeMetricsProperties(Ljavax/xml/stream/XMLStreamWriter;Lcom/microsoft/azure/storage/MetricsProperties;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/MetricsProperties;->getMetricsLevel()Lcom/microsoft/azure/storage/MetricsLevel;

    move-result-object v0

    const-string v1, "metrics.Configuration"

    invoke-static {v1, v0}, Lcom/microsoft/azure/storage/core/Utility;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-interface {p0, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    const-string p2, "Version"

    .line 3
    invoke-interface {p0, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/MetricsProperties;->getVersion()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 5
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    const-string p2, "Enabled"

    .line 6
    invoke-interface {p0, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/MetricsProperties;->getMetricsLevel()Lcom/microsoft/azure/storage/MetricsLevel;

    move-result-object p2

    sget-object v0, Lcom/microsoft/azure/storage/MetricsLevel;->DISABLED:Lcom/microsoft/azure/storage/MetricsLevel;

    const-string v1, "true"

    const-string v2, "false"

    if-eq p2, v0, :cond_0

    move-object p2, v1

    goto :goto_0

    :cond_0
    move-object p2, v2

    :goto_0
    invoke-interface {p0, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 8
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/MetricsProperties;->getMetricsLevel()Lcom/microsoft/azure/storage/MetricsLevel;

    move-result-object p2

    sget-object v0, Lcom/microsoft/azure/storage/MetricsLevel;->DISABLED:Lcom/microsoft/azure/storage/MetricsLevel;

    if-eq p2, v0, :cond_2

    const-string p2, "IncludeAPIs"

    .line 10
    invoke-interface {p0, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/MetricsProperties;->getMetricsLevel()Lcom/microsoft/azure/storage/MetricsLevel;

    move-result-object p2

    sget-object v0, Lcom/microsoft/azure/storage/MetricsLevel;->SERVICE_AND_API:Lcom/microsoft/azure/storage/MetricsLevel;

    if-ne p2, v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-interface {p0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 12
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/MetricsProperties;->getRetentionIntervalInDays()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/microsoft/azure/storage/ServicePropertiesSerializer;->writeRetentionPolicy(Ljavax/xml/stream/XMLStreamWriter;Ljava/lang/Integer;)V

    .line 14
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    return-void
.end method

.method public static writeRetentionPolicy(Ljavax/xml/stream/XMLStreamWriter;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "RetentionPolicy"

    .line 1
    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    const-string v0, "Enabled"

    .line 2
    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    .line 3
    :goto_0
    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 4
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    if-eqz p1, :cond_1

    const-string v0, "Days"

    .line 5
    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 7
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    .line 8
    :cond_1
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    return-void
.end method

.method public static writeStaticWebsiteProperties(Ljavax/xml/stream/XMLStreamWriter;Lcom/microsoft/azure/storage/StaticWebsiteProperties;)V
    .locals 1

    const-string v0, "StaticWebsite"

    .line 1
    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    const-string v0, "Enabled"

    .line 2
    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StaticWebsiteProperties;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 4
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StaticWebsiteProperties;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "IndexDocument"

    .line 6
    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StaticWebsiteProperties;->getIndexDocument()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 8
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    const-string v0, "ErrorDocument404Path"

    .line 9
    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/azure/storage/StaticWebsiteProperties;->getErrorDocument404Path()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 11
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    .line 12
    :cond_1
    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    return-void
.end method
