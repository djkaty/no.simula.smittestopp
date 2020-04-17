.class public Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/adal/internal/tokensharing/ITokenShareInternal;


# static fields
.field public static final AUDIENCE_PATH_CONSUMERS:Ljava/lang/String; = "/consumers"

.field public static final TAG:Ljava/lang/String; = "TokenShareUtility"

.field public static final sClaimRemapper:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sHomeTenantAuthority:Ljava/lang/String; = "https://login.windows.net/common"


# instance fields
.field public final mClientId:Ljava/lang/String;

.field public final mDefaultAuthority:Ljava/lang/String;

.field public final mRedirectUri:Ljava/lang/String;

.field public final mTokenCache:Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->sClaimRemapper:Ljava/util/Map;

    .line 2
    invoke-static {}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->applyV1ToV2Mappings()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mClientId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mRedirectUri:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mDefaultAuthority:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mTokenCache:Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mClientId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mRedirectUri:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mDefaultAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->createTokenCacheItem(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;

    move-result-object p0

    return-object p0
.end method

.method public static adapt(Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;)Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->setClientId(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->setRefreshToken(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/dto/Credential;->getSecret()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mintV1IdTokenFromRawV2IdToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->setRawIdToken(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;->getFamilyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->setFamilyClientId(Ljava/lang/String;)V

    .line 6
    invoke-static {p0}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->isFromHomeTenant(Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "https://login.windows.net/common"

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;->getAuthority()Ljava/lang/String;

    move-result-object p0

    .line 8
    :goto_0
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->setAuthority(Ljava/lang/String;)V

    return-object v0
.end method

.method public static applyV1ToV2Mappings()V
    .locals 3

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->sClaimRemapper:Ljava/util/Map;

    const-string v1, "preferred_username"

    const-string v2, "upn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private createTokenCacheItem(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;-><init>()V

    .line 2
    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->setAuthority(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->setClientId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;->setRefreshToken(Ljava/lang/String;)V

    return-object v0
.end method

.method private getAccountRecordForIdentifier(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mTokenCache:Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mClientId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p1}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccountByLocalAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mTokenCache:Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    iget-object v3, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccountsByUsername(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    .line 5
    :cond_1
    new-instance p1, Lcom/microsoft/identity/common/exception/ClientException;

    const-string v0, "token_cache_item_not_found"

    invoke-direct {p1, v0}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getCacheRecordForIdentifier(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->getAccountRecordForIdentifier(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mTokenCache:Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mClientId:Ljava/lang/String;

    new-instance v2, Lcom/microsoft/identity/common/internal/authscheme/BearerAuthenticationSchemeInternal;

    invoke-direct {v2}, Lcom/microsoft/identity/common/internal/authscheme/BearerAuthenticationSchemeInternal;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p1, v2}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->load(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    move-result-object p1

    return-object p1
.end method

.method public static isFromHomeTenant(Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)Z
    .locals 4

    const-string v0, ":isFromHomeTenant"

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/dto/Credential;->getHomeAccountId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/dto/Credential;->getSecret()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;->parseJWT(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    const-string v3, "oid"

    .line 3
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "OID claims was missing from token."

    invoke-static {p0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->TAG:Ljava/lang/String;

    const-string v3, "Failed to parse IdToken."

    invoke-static {p0, v1, v0, v3}, Le/a/a/a/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2
.end method

.method public static mintV1IdTokenFromRawV2IdToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;->parseJWT(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "ver"

    .line 6
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "1"

    .line 7
    :cond_0
    invoke-static {v2}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->remap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_1
    new-instance p0, Le/e/b/c;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Le/e/b/c;-><init>(Ljava/util/Map;Le/e/b/c$a;)V

    .line 10
    new-instance v0, Le/e/a/q;

    sget-object v3, Le/e/a/h;->y:Le/e/a/h;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Le/e/a/q;-><init>(Le/e/a/h;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Le/e/a/v/c;)V

    .line 11
    new-instance v1, Le/e/b/d;

    invoke-direct {v1, v0, p0}, Le/e/b/d;-><init>(Le/e/a/q;Le/e/b/c;)V

    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v1, Le/e/b/d;->z:Le/e/a/q;

    invoke-virtual {v0}, Le/e/a/e;->a()Le/e/a/v/c;

    move-result-object v0

    .line 13
    iget-object v0, v0, Le/e/a/v/a;->x:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    iget-object v1, v1, Le/e/a/g;->x:Le/e/a/p;

    .line 16
    invoke-virtual {v1}, Le/e/a/p;->a()Le/e/a/v/c;

    move-result-object v1

    .line 17
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static remap(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->sClaimRemapper:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private saveResult(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAccount;",
            "Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->mTokenCache:Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/microsoft/identity/common/BaseAccount;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/microsoft/identity/common/internal/providers/oauth2/RefreshToken;

    invoke-virtual {v0, v1, p1}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->setSingleSignOnState(Lcom/microsoft/identity/common/BaseAccount;Lcom/microsoft/identity/common/internal/providers/oauth2/RefreshToken;)V

    :cond_0
    return-void
.end method

.method private throwIfCacheRecordIncomplete(Ljava/lang/String;Lcom/microsoft/identity/common/internal/cache/ICacheRecord;)V
    .locals 2

    .line 1
    invoke-interface {p2}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getIdToken()Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    move-result-object p2

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->TAG:Ljava/lang/String;

    const-string v1, ":throwIfCacheRecordIncomplete"

    invoke-static {p2, v0, v1}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "That\'s strange, we had an AccountRecord for identifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but couldn\'t find tokens for them."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/microsoft/identity/common/exception/ClientException;

    const-string p2, "token_cache_item_not_found"

    invoke-direct {p1, p2}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getMsaFamilyRefreshToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->getCacheRecordForIdentifier(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->throwIfCacheRecordIncomplete(Ljava/lang/String;Lcom/microsoft/identity/common/internal/cache/ICacheRecord;)V

    .line 3
    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getSecret()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOrgIdFamilyRefreshToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->getCacheRecordForIdentifier(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->throwIfCacheRecordIncomplete(Ljava/lang/String;Lcom/microsoft/identity/common/internal/cache/ICacheRecord;)V

    .line 3
    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getIdToken()Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    move-result-object p1

    .line 4
    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->adapt(Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;)Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/SSOStateSerializer;->serialize(Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public saveMsaFamilyRefreshToken(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter;->sBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$2;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$2;-><init>(Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    .line 4
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->saveResult(Landroid/util/Pair;)V

    return-void
.end method

.method public saveOrgIdFamilyRefreshToken(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter;->sBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$1;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$1;-><init>(Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    .line 4
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->saveResult(Landroid/util/Pair;)V

    return-void
.end method
