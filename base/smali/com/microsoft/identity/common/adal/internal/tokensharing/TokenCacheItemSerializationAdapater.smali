.class public final Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenCacheItemSerializationAdapater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/c/c/i;
.implements Le/c/c/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/c/c/i<",
        "Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;",
        ">;",
        "Le/c/c/r<",
        "Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TokenCacheItemSerializationAdapater"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private throwIfParameterMissing(Le/c/c/m;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p1, Le/c/c/m;->a:Le/c/c/w/r;

    .line 2
    invoke-virtual {p1, p2}, Le/c/c/w/r;->a(Ljava/lang/Object;)Le/c/c/w/r$e;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance p1, Le/c/c/n;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenCacheItemSerializationAdapater;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Attribute "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is missing for deserialization."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Le/c/c/n;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public deserialize(Le/c/c/j;Ljava/lang/reflect/Type;Le/c/c/h;)Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;
    .locals 3

    .line 2
    invoke-virtual {p1}, Le/c/c/j;->c()Le/c/c/m;

    move-result-object p1

    const-string p2, "authority"

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenCacheItemSerializationAdapater;->throwIfParameterMissing(Le/c/c/m;Ljava/lang/String;)V

    const-string p3, "id_token"

    .line 4
    invoke-direct {p0, p1, p3}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenCacheItemSerializationAdapater;->throwIfParameterMissing(Le/c/c/m;Ljava/lang/String;)V

    const-string v0, "foci"

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenCacheItemSerializationAdapater;->throwIfParameterMissing(Le/c/c/m;Ljava/lang/String;)V

    const-string v1, "refresh_token"

    .line 6
    invoke-direct {p0, p1, v1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenCacheItemSerializationAdapater;->throwIfParameterMissing(Le/c/c/m;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, p3}, Le/c/c/m;->a(Ljava/lang/String;)Le/c/c/j;

    move-result-object p3

    invoke-virtual {p3}, Le/c/c/j;->f()Ljava/lang/String;

    move-result-object p3

    .line 8
    new-instance v2, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;

    invoke-direct {v2}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;-><init>()V

    .line 9
    invoke-virtual {p1, p2}, Le/c/c/m;->a(Ljava/lang/String;)Le/c/c/j;

    move-result-object p2

    invoke-virtual {p2}, Le/c/c/j;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->setAuthority(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2, p3}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->setRawIdToken(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, v0}, Le/c/c/m;->a(Ljava/lang/String;)Le/c/c/j;

    move-result-object p2

    invoke-virtual {p2}, Le/c/c/j;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->setFamilyClientId(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, v1}, Le/c/c/m;->a(Ljava/lang/String;)Le/c/c/j;

    move-result-object p1

    invoke-virtual {p1}, Le/c/c/j;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->setRefreshToken(Ljava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic deserialize(Le/c/c/j;Ljava/lang/reflect/Type;Le/c/c/h;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenCacheItemSerializationAdapater;->deserialize(Le/c/c/j;Ljava/lang/reflect/Type;Le/c/c/h;)Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;Ljava/lang/reflect/Type;Le/c/c/q;)Le/c/c/j;
    .locals 1

    .line 2
    new-instance p2, Le/c/c/m;

    invoke-direct {p2}, Le/c/c/m;-><init>()V

    .line 3
    new-instance p3, Le/c/c/p;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Le/c/c/p;-><init>(Ljava/lang/String;)V

    const-string v0, "authority"

    invoke-virtual {p2, v0, p3}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    .line 4
    new-instance p3, Le/c/c/p;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Le/c/c/p;-><init>(Ljava/lang/String;)V

    const-string v0, "refresh_token"

    invoke-virtual {p2, v0, p3}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    .line 5
    new-instance p3, Le/c/c/p;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->getRawIdToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Le/c/c/p;-><init>(Ljava/lang/String;)V

    const-string v0, "id_token"

    invoke-virtual {p2, v0, p3}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    .line 6
    new-instance p3, Le/c/c/p;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->getFamilyClientId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Le/c/c/p;-><init>(Ljava/lang/String;)V

    const-string p1, "foci"

    invoke-virtual {p2, p1, p3}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    return-object p2
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Le/c/c/q;)Le/c/c/j;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenCacheItemSerializationAdapater;->serialize(Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;Ljava/lang/reflect/Type;Le/c/c/q;)Le/c/c/j;

    move-result-object p1

    return-object p1
.end method
