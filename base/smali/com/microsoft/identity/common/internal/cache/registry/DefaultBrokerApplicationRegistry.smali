.class public Lcom/microsoft/identity/common/internal/cache/registry/DefaultBrokerApplicationRegistry;
.super Lcom/microsoft/identity/common/internal/cache/SharedPreferencesSimpleCacheImpl;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/cache/registry/IBrokerApplicationRegistry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/identity/common/internal/cache/SharedPreferencesSimpleCacheImpl<",
        "Lcom/microsoft/identity/common/internal/cache/registry/BrokerApplicationRegistryData;",
        ">;",
        "Lcom/microsoft/identity/common/internal/cache/registry/IBrokerApplicationRegistry;"
    }
.end annotation


# static fields
.field public static final DEFAULT_APP_REGISTRY_CACHE_NAME:Ljava/lang/String; = "com.microsoft.identity.app-registry"

.field public static final KEY_APP_REGISTRY:Ljava/lang/String; = "app-registry"

.field public static final TAG:Ljava/lang/String; = "DefaultBrokerApplicationRegistry"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "com.microsoft.identity.app-registry"

    const-string v1, "app-registry"

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesSimpleCacheImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getListTypeToken()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/cache/registry/DefaultBrokerApplicationRegistry$1;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/cache/registry/DefaultBrokerApplicationRegistry$1;-><init>(Lcom/microsoft/identity/common/internal/cache/registry/DefaultBrokerApplicationRegistry;)V

    .line 2
    invoke-virtual {v0}, Le/c/c/x/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata(Ljava/lang/String;Ljava/lang/String;I)Lcom/microsoft/identity/common/internal/cache/registry/BrokerApplicationRegistryData;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesSimpleCacheImpl;->getAll()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/common/internal/cache/registry/BrokerApplicationRegistryData;

    .line 3
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/cache/AbstractApplicationMetadata;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/cache/AbstractApplicationMetadata;->getUid()I

    move-result v2

    if-ne p3, v2, :cond_0

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/cache/AbstractApplicationMetadata;->getEnvironment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/common/internal/cache/registry/DefaultBrokerApplicationRegistry;->TAG:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Metadata located."

    invoke-static {p3, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/common/internal/cache/registry/DefaultBrokerApplicationRegistry;->TAG:Ljava/lang/String;

    const-string v2, ":getMetadata"

    invoke-static {p3, v0, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata could not be found for clientId, environment: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v1
.end method
