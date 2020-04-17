.class public Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaDataUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DATA_TYPE_DATETIME:I = 0x9

.field public static final DATA_TYPE_DOUBLE:I = 0x6

.field public static final DATA_TYPE_INT64:I = 0x4

.field public static final METADATA_FIELDS:Ljava/lang/String; = "f"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCommonSchemaData(Ljava/util/List;Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;",
            ">;",
            "Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p1

    const-string v2, "baseType"

    const-string v3, "baseData"

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    new-instance v4, Lcom/microsoft/appcenter/ingestion/models/one/Data;

    invoke-direct {v4}, Lcom/microsoft/appcenter/ingestion/models/one/Data;-><init>()V

    .line 2
    invoke-virtual {v1, v4}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->setData(Lcom/microsoft/appcenter/ingestion/models/one/Data;)V

    .line 3
    new-instance v5, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;

    invoke-direct {v5}, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;-><init>()V

    .line 4
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v7, "AppCenter"

    if-eqz v0, :cond_5

    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5
    :try_start_2
    invoke-static {v0}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaDataUtils;->validateProperty(Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;)Ljava/lang/Object;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 6
    :try_start_3
    invoke-static {v0}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaDataUtils;->getMetadataType(Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;)Ljava/lang/Integer;

    move-result-object v9

    .line 7
    invoke-virtual {v0}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v10, "\\."

    const/4 v11, -0x1

    .line 8
    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 9
    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    .line 10
    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/one/Data;->getProperties()Lorg/json/JSONObject;

    move-result-object v11

    .line 11
    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;->getMetadata()Lorg/json/JSONObject;

    move-result-object v12
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v13, 0x0

    :goto_1
    const-string v14, "\' already has a value, the old value will be overridden."

    const-string v15, "Property key \'"

    if-ge v13, v10, :cond_3

    move-object/from16 p0, v6

    .line 12
    :try_start_4
    aget-object v6, v0, v13

    .line 13
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    if-nez v16, :cond_2

    .line 14
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 17
    invoke-virtual {v11, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v11, v1

    goto :goto_2

    :cond_2
    move-object/from16 v11, v16

    .line 18
    :goto_2
    invoke-static {v12, v6}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaDataUtils;->addIntermediateMetadata(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    goto :goto_1

    :cond_3
    move-object/from16 p0, v6

    .line 19
    aget-object v0, v0, v10

    .line 20
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_4
    invoke-virtual {v11, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    invoke-static {v9, v12, v0}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaDataUtils;->addLeafMetadata(Ljava/lang/Integer;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v0

    move-object/from16 p0, v6

    move-object v1, v0

    .line 24
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object/from16 v6, p0

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 25
    :cond_5
    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/one/Data;->getProperties()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v1, :cond_6

    if-eqz v4, :cond_6

    const-string v6, "baseData was set but baseType is missing."

    .line 28
    invoke-static {v7, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;->getMetadata()Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "f"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 31
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_6
    if-eqz v1, :cond_7

    if-nez v4, :cond_7

    const-string v1, "baseType was set but baseData is missing."

    .line 32
    invoke-static {v7, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    :cond_7
    invoke-virtual {v5}, Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;->getMetadata()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaDataUtils;->cleanUpEmptyObjectsInMetadata(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v0

    if-nez v0, :cond_8

    .line 36
    new-instance v0, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    invoke-direct {v0}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;-><init>()V

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->setExt(Lcom/microsoft/appcenter/ingestion/models/one/Extensions;)V

    goto :goto_4

    :cond_8
    move-object/from16 v1, p1

    .line 37
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->setMetadata(Lcom/microsoft/appcenter/ingestion/models/one/MetadataExtension;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_9
    return-void
.end method

.method public static addIntermediateMetadata(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    const-string v0, "f"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    :cond_0
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_1

    .line 5
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-object p0
.end method

.method public static addLeafMetadata(Ljava/lang/Integer;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    const-string v0, "f"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz p0, :cond_1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    :cond_0
    invoke-virtual {v1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public static cleanUpEmptyObjectsInMetadata(Lorg/json/JSONObject;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v1}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaDataUtils;->cleanUpEmptyObjectsInMetadata(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getMetadataType(Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;)Ljava/lang/Integer;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;

    if-eqz v0, :cond_1

    const/4 p0, 0x6

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    instance-of p0, p0, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;

    if-eqz p0, :cond_2

    const/16 p0, 0x9

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static validateProperty(Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "baseType"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "baseType must be a string."

    if-eqz v1, :cond_1

    instance-of v1, p0, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-string v1, "baseType."

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "baseData"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 6
    instance-of v1, p0, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;

    if-eqz v1, :cond_2

    .line 7
    check-cast p0, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;->getValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 9
    :cond_2
    instance-of v1, p0, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;

    if-eqz v1, :cond_3

    .line 10
    check-cast p0, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;

    .line 11
    invoke-virtual {p0}, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;->getValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_1

    .line 12
    :cond_3
    instance-of v1, p0, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;

    if-eqz v1, :cond_4

    .line 13
    check-cast p0, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;

    .line 14
    invoke-virtual {p0}, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;->getValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_1

    .line 15
    :cond_4
    instance-of v1, p0, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;

    if-eqz v1, :cond_5

    .line 16
    check-cast p0, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;

    invoke-virtual {p0}, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;->getValue()Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/appcenter/ingestion/models/json/JSONDateUtils;->toString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 17
    :cond_5
    instance-of v1, p0, Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;

    if-eqz v1, :cond_7

    .line 18
    check-cast p0, Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;

    .line 19
    invoke-virtual {p0}, Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;->getValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_6

    return-object p0

    .line 20
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value of property with key \'"

    const-string v2, "\' cannot be null."

    invoke-static {v1, v0, v2}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported property type: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "baseData must be an object."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Property key cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
