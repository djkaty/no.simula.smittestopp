.class public final Lcom/microsoft/identity/common/adal/internal/tokensharing/SSOStateSerializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GSON:Lcom/google/gson/Gson;


# instance fields
.field public final mTokenCacheItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "tokenCacheItems"
    .end annotation
.end field

.field public final version:I
    .annotation runtime Le/c/c/v/c;
        value = "version"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Le/c/c/e;

    invoke-direct {v0}, Le/c/c/e;-><init>()V

    const-class v1, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;

    new-instance v2, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenCacheItemSerializationAdapater;

    invoke-direct {v2}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenCacheItemSerializationAdapater;-><init>()V

    .line 2
    invoke-virtual {v0, v1, v2}, Le/c/c/e;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Le/c/c/e;

    .line 3
    invoke-virtual {v0}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/adal/internal/tokensharing/SSOStateSerializer;->GSON:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/SSOStateSerializer;->version:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/SSOStateSerializer;->mTokenCacheItems:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/SSOStateSerializer;->version:I

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/SSOStateSerializer;->mTokenCacheItems:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "tokenItem is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/adal/internal/tokensharing/SSOStateSerializer;

    invoke-direct {v0}, Lcom/microsoft/identity/common/adal/internal/tokensharing/SSOStateSerializer;-><init>()V

    .line 2
    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/adal/internal/tokensharing/SSOStateSerializer;->internalDeserialize(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;

    move-result-object p0

    return-object p0
.end method

.method private getTokenItem()Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/SSOStateSerializer;->mTokenCacheItems:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/SSOStateSerializer;->mTokenCacheItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/exception/ClientException;

    const-string v1, "token_cache_item_not_found"

    const-string v2, "There is no token cache item in the SSOStateContainer."

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private getVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private internalDeserialize(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;
    .locals 5

    const-string v0, "version"

    const-string v1, "token_sharing_deserialization_error"

    .line 1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0}, Lcom/microsoft/identity/common/adal/internal/tokensharing/SSOStateSerializer;->getVersion()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 3
    sget-object v0, Lcom/microsoft/identity/common/adal/internal/tokensharing/SSOStateSerializer;->GSON:Lcom/google/gson/Gson;

    const-class v2, Lcom/microsoft/identity/common/adal/internal/tokensharing/SSOStateSerializer;

    .line 4
    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-static {v2}, Le/c/c/w/t;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Lcom/microsoft/identity/common/adal/internal/tokensharing/SSOStateSerializer;

    invoke-direct {p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/SSOStateSerializer;->getTokenItem()Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Lcom/microsoft/identity/common/exception/ClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to deserialize because the blob version is incompatible. The version of the serializedBlob is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". And the target class version is "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {p0}, Lcom/microsoft/identity/common/adal/internal/tokensharing/SSOStateSerializer;->getVersion()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Le/c/c/n; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 10
    :goto_0
    new-instance v0, Lcom/microsoft/identity/common/exception/ClientException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private internalSerialize()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/adal/internal/tokensharing/SSOStateSerializer;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static serialize(Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/adal/internal/tokensharing/SSOStateSerializer;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/adal/internal/tokensharing/SSOStateSerializer;-><init>(Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;)V

    .line 2
    invoke-direct {v0}, Lcom/microsoft/identity/common/adal/internal/tokensharing/SSOStateSerializer;->internalSerialize()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
