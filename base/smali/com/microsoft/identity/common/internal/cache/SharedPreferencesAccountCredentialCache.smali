.class public Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;
.super Lcom/microsoft/identity/common/internal/cache/AbstractAccountCredentialCache;
.source "SourceFile"


# static fields
.field public static final ACCOUNT_RECORD_DESERIALIZATION_FAILED:Ljava/lang/String;

.field public static final BROKER_FOCI_ACCOUNT_CREDENTIAL_SHARED_PREFERENCES:Ljava/lang/String; = "com.microsoft.identity.client.account_credential_cache.foci-1"

.field public static final CREDENTIAL_DESERIALIZATION_FAILED:Ljava/lang/String;

.field public static final DEFAULT_ACCOUNT_CREDENTIAL_SHARED_PREFERENCES:Ljava/lang/String; = "com.microsoft.identity.client.account_credential_cache"

.field public static final DESERIALIZATION_FAILED:Ljava/lang/String; = "Deserialization failed. Skipping "

.field public static final EMPTY_ACCOUNT:Lcom/microsoft/identity/common/internal/dto/AccountRecord;

.field public static final EMPTY_AT:Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

.field public static final EMPTY_ID:Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

.field public static final EMPTY_RT:Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

.field public static final TAG:Ljava/lang/String; = "SharedPreferencesAccountCredentialCache"


# instance fields
.field public final mCacheValueDelegate:Lcom/microsoft/identity/common/internal/cache/ICacheKeyValueDelegate;

.field public final mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->EMPTY_ACCOUNT:Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->EMPTY_AT:Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    .line 3
    new-instance v0, Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->EMPTY_RT:Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    .line 4
    new-instance v0, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->EMPTY_ID:Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    const-string v0, "Deserialization failed. Skipping "

    .line 5
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->ACCOUNT_RECORD_DESERIALIZATION_FAILED:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/microsoft/identity/common/internal/dto/Credential;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->CREDENTIAL_DESERIALIZATION_FAILED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/internal/cache/ICacheKeyValueDelegate;Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/cache/AbstractAccountCredentialCache;-><init>()V

    .line 2
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    const-string v1, "Init: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;

    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->mCacheValueDelegate:Lcom/microsoft/identity/common/internal/cache/ICacheKeyValueDelegate;

    return-void
.end method

.method private credentialClassForType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/identity/common/internal/dto/Credential;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    const-string v1, "Resolving class for key/CredentialType..."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supplied key: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->getCredentialTypeForCredentialCacheKey(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/CredentialType;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CredentialType matched: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/common/internal/cache/AbstractAccountCredentialCache;->getTargetClassForCredentialType(Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/CredentialType;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method private getAccountsWithKeys()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/internal/dto/AccountRecord;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    const-string v1, "Loading Accounts + keys..."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;

    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-direct {p0, v3}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->isAccount(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    iget-object v4, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->mCacheValueDelegate:Lcom/microsoft/identity/common/internal/cache/ICacheKeyValueDelegate;

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v5, Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    .line 9
    invoke-interface {v4, v2, v5}, Lcom/microsoft/identity/common/internal/cache/ICacheKeyValueDelegate;->fromCacheValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/microsoft/identity/common/internal/dto/AccountCredentialBase;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    if-nez v2, :cond_1

    .line 10
    sget-object v2, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    sget-object v3, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->ACCOUNT_RECORD_DESERIALIZATION_FAILED:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_2
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    const-string v2, "Returning ["

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] Accounts w/ keys..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getBrokerUidSequesteredFilename(I)Ljava/lang/String;
    .locals 1

    const-string v0, "com.microsoft.identity.client.account_credential_cache.uid-"

    .line 1
    invoke-static {v0, p0}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCredentialTypeForCredentialCacheKey(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/CredentialType;
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Evaluating cache key for CredentialType ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    invoke-static {}, Lcom/microsoft/identity/common/internal/dto/CredentialType;->valueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    sget-object v4, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    const-string v5, "Cache key is a Credential type..."

    invoke-static {v4, v5}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v4, Lcom/microsoft/identity/common/internal/dto/CredentialType;->AccessToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    const-string v4, "AccessToken"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    sget-object v1, Lcom/microsoft/identity/common/internal/dto/CredentialType;->AccessToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    goto :goto_2

    .line 11
    :cond_2
    sget-object v4, Lcom/microsoft/identity/common/internal/dto/CredentialType;->AccessToken_With_AuthScheme:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    const-string v4, "AccessToken_With_AuthScheme"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 12
    sget-object v1, Lcom/microsoft/identity/common/internal/dto/CredentialType;->AccessToken_With_AuthScheme:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    goto :goto_2

    .line 13
    :cond_3
    sget-object v4, Lcom/microsoft/identity/common/internal/dto/CredentialType;->RefreshToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    const-string v4, "RefreshToken"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 14
    sget-object v1, Lcom/microsoft/identity/common/internal/dto/CredentialType;->RefreshToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    goto :goto_2

    .line 15
    :cond_4
    sget-object v4, Lcom/microsoft/identity/common/internal/dto/CredentialType;->IdToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    const-string v4, "IdToken"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 16
    sget-object v1, Lcom/microsoft/identity/common/internal/dto/CredentialType;->IdToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    goto :goto_2

    .line 17
    :cond_5
    sget-object v4, Lcom/microsoft/identity/common/internal/dto/CredentialType;->V1IdToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    const-string v4, "V1IdToken"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 18
    sget-object v1, Lcom/microsoft/identity/common/internal/dto/CredentialType;->V1IdToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    goto :goto_2

    .line 19
    :cond_6
    sget-object v3, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    const-string v4, "Unexpected credential type."

    invoke-static {v3, v4}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_7
    :goto_2
    sget-object p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache key was type: ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 21
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Param [cacheKey] cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getCredentialsWithKeys()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/internal/dto/Credential;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    const-string v1, "Loading Credentials with keys..."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;

    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-direct {p0, v3}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->isCredential(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    iget-object v4, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->mCacheValueDelegate:Lcom/microsoft/identity/common/internal/cache/ICacheKeyValueDelegate;

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-direct {p0, v3}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->credentialClassForType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 10
    invoke-interface {v4, v2, v5}, Lcom/microsoft/identity/common/internal/cache/ICacheKeyValueDelegate;->fromCacheValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/microsoft/identity/common/internal/dto/AccountCredentialBase;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/internal/dto/Credential;

    if-nez v2, :cond_1

    .line 11
    sget-object v2, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    sget-object v3, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->CREDENTIAL_DESERIALIZATION_FAILED:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_2
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    const-string v2, "Loaded ["

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] Credentials..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private isAccount(Ljava/lang/String;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Evaluating cache key: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->getCredentialTypeForCredentialCacheKey(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/CredentialType;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAccount? ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private isCredential(Ljava/lang/String;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Evaluating cache key: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->getCredentialTypeForCredentialCacheKey(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/CredentialType;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCredential? ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method


# virtual methods
.method public clearAll()V
    .locals 2

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    const-string v1, "Clearing all SharedPreferences entries..."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;

    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;->clear()V

    .line 3
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    const-string v1, "SharedPreferences cleared."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized getAccount(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    const-string v1, "Loading Account by key..."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->mCacheValueDelegate:Lcom/microsoft/identity/common/internal/cache/ICacheKeyValueDelegate;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;

    .line 3
    invoke-interface {v1, p1}, Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    .line 4
    invoke-interface {v0, v1, v2}, Lcom/microsoft/identity/common/internal/cache/ICacheKeyValueDelegate;->fromCacheValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/microsoft/identity/common/internal/dto/AccountCredentialBase;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    if-nez v0, :cond_0

    .line 5
    sget-object p1, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->ACCOUNT_RECORD_DESERIALIZATION_FAILED:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->EMPTY_ACCOUNT:Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    const-string v1, "The returned Account was uninitialized. Removing..."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;

    invoke-interface {v0, p1}, Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 9
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAccounts()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/dto/AccountRecord;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    const-string v1, "Loading Accounts...(no arg)"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->getAccountsWithKeys()Ljava/util/Map;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] Accounts..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAccountsFilteredBy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/dto/AccountRecord;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    const-string v1, "Loading Accounts..."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->getAccounts()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/microsoft/identity/common/internal/cache/AbstractAccountCredentialCache;->getAccountsFilteredByInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 4
    sget-object p2, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    const-string p3, "Found ["

    invoke-static {p3}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] matching Accounts..."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public declared-synchronized getCredential(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/Credential;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    const-string v1, "getCredential()"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using cache key: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->getCredentialTypeForCredentialCacheKey(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/CredentialType;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/common/internal/cache/AbstractAccountCredentialCache;->getTargetClassForCredentialType(Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/CredentialType;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->mCacheValueDelegate:Lcom/microsoft/identity/common/internal/cache/ICacheKeyValueDelegate;

    iget-object v3, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;

    .line 6
    invoke-interface {v3, p1}, Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-interface {v2, v3, v0}, Lcom/microsoft/identity/common/internal/cache/ICacheKeyValueDelegate;->fromCacheValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/microsoft/identity/common/internal/dto/AccountCredentialBase;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/internal/dto/Credential;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_2

    .line 8
    sget-object p1, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->CREDENTIAL_DESERIALIZATION_FAILED:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 9
    :cond_2
    const-class v3, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    if-ne v3, v0, :cond_3

    sget-object v3, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->EMPTY_AT:Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    invoke-virtual {v3, v2}, Lcom/microsoft/identity/common/internal/dto/Credential;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    const-class v3, Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    if-ne v3, v0, :cond_4

    sget-object v3, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->EMPTY_RT:Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    .line 10
    invoke-virtual {v3, v2}, Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    const-class v3, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    if-ne v3, v0, :cond_6

    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->EMPTY_ID:Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    .line 11
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12
    :cond_5
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    const-string v2, "The returned Credential was uninitialized. Removing..."

    invoke-static {v0, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;

    invoke-interface {v0, p1}, Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_6
    :goto_2
    move-object v1, v2

    .line 14
    :goto_3
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCredentials()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/dto/Credential;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    const-string v1, "Loading Credentials..."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->getCredentialsWithKeys()Ljava/util/Map;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/internal/dto/CredentialType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/dto/Credential;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    const-string v1, "getCredentialsFilteredBy()"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->getCredentials()Ljava/util/List;

    move-result-object v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 3
    invoke-virtual/range {v2 .. v10}, Lcom/microsoft/identity/common/internal/cache/AbstractAccountCredentialCache;->getCredentialsFilteredByInternal(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    const-string v2, "Found ["

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] matching Credentials..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public removeAccount(Lcom/microsoft/identity/common/internal/dto/AccountRecord;)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    const-string v1, "Removing Account..."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->getAccountsWithKeys()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "]"

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    sget-object v4, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    const-string v5, "Inspecting: ["

    invoke-static {v5}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    .line 6
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;->remove(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 8
    :cond_1
    sget-object p1, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account was removed? ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Param [accountToRemove] cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeCredential(Lcom/microsoft/identity/common/internal/dto/Credential;)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    const-string v1, "Removing Credential..."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->getCredentialsWithKeys()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "]"

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    sget-object v4, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    const-string v5, "Inspecting: ["

    invoke-static {v5}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/identity/common/internal/dto/Credential;

    .line 6
    invoke-virtual {v4, p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;->remove(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 8
    :cond_1
    sget-object p1, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Credential was removed? ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Param [credentialToRemove] cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized saveAccount(Lcom/microsoft/identity/common/internal/dto/AccountRecord;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    const-string v1, "Saving Account..."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account type: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->mCacheValueDelegate:Lcom/microsoft/identity/common/internal/cache/ICacheKeyValueDelegate;

    invoke-interface {v0, p1}, Lcom/microsoft/identity/common/internal/cache/ICacheKeyValueDelegate;->generateCacheKey(Lcom/microsoft/identity/common/internal/dto/AccountRecord;)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generated cache key: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->mCacheValueDelegate:Lcom/microsoft/identity/common/internal/cache/ICacheKeyValueDelegate;

    invoke-interface {v1, p1}, Lcom/microsoft/identity/common/internal/cache/ICacheKeyValueDelegate;->generateCacheValue(Lcom/microsoft/identity/common/internal/dto/AccountRecord;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;

    invoke-interface {v1, v0, p1}, Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized saveCredential(Lcom/microsoft/identity/common/internal/dto/Credential;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    const-string v1, "Saving credential..."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->mCacheValueDelegate:Lcom/microsoft/identity/common/internal/cache/ICacheKeyValueDelegate;

    invoke-interface {v0, p1}, Lcom/microsoft/identity/common/internal/cache/ICacheKeyValueDelegate;->generateCacheKey(Lcom/microsoft/identity/common/internal/dto/Credential;)Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generated cache key: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->mCacheValueDelegate:Lcom/microsoft/identity/common/internal/cache/ICacheKeyValueDelegate;

    invoke-interface {v1, p1}, Lcom/microsoft/identity/common/internal/cache/ICacheKeyValueDelegate;->generateCacheValue(Lcom/microsoft/identity/common/internal/dto/Credential;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->mSharedPreferencesFileManager:Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;

    invoke-interface {v1, v0, p1}, Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
