.class public Lcom/microsoft/appcenter/ingestion/models/properties/TypedPropertyUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;
    .locals 2

    const-string v0, "boolean"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p0, Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;

    invoke-direct {p0}, Lcom/microsoft/appcenter/ingestion/models/properties/BooleanTypedProperty;-><init>()V

    return-object p0

    :cond_0
    const-string v0, "dateTime"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance p0, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;

    invoke-direct {p0}, Lcom/microsoft/appcenter/ingestion/models/properties/DateTimeTypedProperty;-><init>()V

    return-object p0

    :cond_1
    const-string v0, "double"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance p0, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;

    invoke-direct {p0}, Lcom/microsoft/appcenter/ingestion/models/properties/DoubleTypedProperty;-><init>()V

    return-object p0

    :cond_2
    const-string v0, "long"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    new-instance p0, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;

    invoke-direct {p0}, Lcom/microsoft/appcenter/ingestion/models/properties/LongTypedProperty;-><init>()V

    return-object p0

    :cond_3
    const-string v0, "string"

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    new-instance p0, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;

    invoke-direct {p0}, Lcom/microsoft/appcenter/ingestion/models/properties/StringTypedProperty;-><init>()V

    return-object p0

    .line 11
    :cond_4
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Unsupported type: "

    invoke-static {v1, p0}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static read(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;",
            ">;"
        }
    .end annotation

    const-string v0, "typedProperties"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "type"

    .line 5
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedPropertyUtils;->create(Ljava/lang/String;)Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;

    move-result-object v3

    .line 6
    invoke-virtual {v3, v2}, Lcom/microsoft/appcenter/ingestion/models/properties/TypedProperty;->read(Lorg/json/JSONObject;)V

    .line 7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
