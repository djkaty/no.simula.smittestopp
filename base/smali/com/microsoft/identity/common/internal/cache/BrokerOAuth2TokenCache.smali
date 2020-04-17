.class public Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;
.super Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache$ProcessUidCacheFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<GenericOAuth2Strategy:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;",
        "GenericAuthorizationRequest:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;",
        "GenericTokenResponse:",
        "Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;",
        "GenericAccount:",
        "Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAccount;",
        "GenericRefreshToken:",
        "Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;",
        ">",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache<",
        "TGenericOAuth2Strategy;TGenericAuthorizationRequest;TGenericTokenResponse;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BrokerOAuth2TokenCache"

.field public static final UNCHECKED:Ljava/lang/String; = "unchecked"


# instance fields
.field public final mApplicationMetadataCache:Lcom/microsoft/identity/common/internal/cache/IBrokerApplicationMetadataCache;

.field public final mCallingProcessUid:I

.field public mDelegate:Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache$ProcessUidCacheFactory;

.field public final mFociCache:Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/microsoft/identity/common/internal/cache/IBrokerApplicationMetadataCache;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mDelegate:Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache$ProcessUidCacheFactory;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v2, "ctor"

    invoke-static {v0, v1, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Init::"

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput p2, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    .line 5
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->initializeFociCache(Landroid/content/Context;)Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mFociCache:Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;

    .line 6
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mApplicationMetadataCache:Lcom/microsoft/identity/common/internal/cache/IBrokerApplicationMetadataCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/microsoft/identity/common/internal/cache/IBrokerApplicationMetadataCache;Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache$ProcessUidCacheFactory;Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;)V
    .locals 2

    .line 7
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mDelegate:Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache$ProcessUidCacheFactory;

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v1, "ctor"

    invoke-static {p1, v0, v1}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Init::"

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput-object p4, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mDelegate:Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache$ProcessUidCacheFactory;

    .line 11
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mApplicationMetadataCache:Lcom/microsoft/identity/common/internal/cache/IBrokerApplicationMetadataCache;

    .line 12
    iput p2, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    .line 13
    iput-object p5, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mFociCache:Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;

    return-void
.end method

.method public static getTokenCache(Landroid/content/Context;Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;Z)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;",
            "Z)TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/cache/CacheKeyValueDelegate;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/cache/CacheKeyValueDelegate;-><init>()V

    .line 2
    new-instance v1, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;

    invoke-direct {v1, v0, p1}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;-><init>(Lcom/microsoft/identity/common/internal/cache/ICacheKeyValueDelegate;Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;)V

    .line 3
    new-instance p1, Lcom/microsoft/identity/common/internal/cache/MicrosoftStsAccountCredentialAdapter;

    invoke-direct {p1}, Lcom/microsoft/identity/common/internal/cache/MicrosoftStsAccountCredentialAdapter;-><init>()V

    if-eqz p2, :cond_0

    .line 4
    new-instance p2, Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;

    invoke-direct {p2, p0, v1, p1}, Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;-><init>(Landroid/content/Context;Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    invoke-direct {p2, p0, v1, p1}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;-><init>(Landroid/content/Context;Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;Lcom/microsoft/identity/common/internal/cache/IAccountCredentialAdapter;)V

    :goto_0
    return-object p2
.end method

.method private getTokenCacheForClient(Ljava/lang/String;Ljava/lang/String;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mApplicationMetadataCache:Lcom/microsoft/identity/common/internal/cache/IBrokerApplicationMetadataCache;

    invoke-interface {v0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/IBrokerApplicationMetadataCache;->getMetadata(Ljava/lang/String;Ljava/lang/String;I)Lcom/microsoft/identity/common/internal/cache/BrokerApplicationMetadata;

    move-result-object p1

    const-string p2, ":getTokenCacheForClient"

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/cache/BrokerApplicationMetadata;->getFoci()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is Foci? ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mFociCache:Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->initializeProcessUidCache(Landroid/content/Context;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_3

    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v1, "Could not locate a cache for this app."

    invoke-static {p3, v0, p2, v1}, Le/a/a/a/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object p1
.end method

.method private getTokenCachesForClientId(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mApplicationMetadataCache:Lcom/microsoft/identity/common/internal/cache/IBrokerApplicationMetadataCache;

    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/cache/ISimpleCache;->getAll()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/identity/common/internal/cache/BrokerApplicationMetadata;

    .line 4
    invoke-virtual {v3}, Lcom/microsoft/identity/common/internal/cache/AbstractApplicationMetadata;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v3}, Lcom/microsoft/identity/common/internal/cache/BrokerApplicationMetadata;->getFoci()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mFociCache:Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v3}, Lcom/microsoft/identity/common/internal/cache/AbstractApplicationMetadata;->getClientId()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v3}, Lcom/microsoft/identity/common/internal/cache/AbstractApplicationMetadata;->getEnvironment()Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    .line 9
    invoke-direct {p0, v4, v3, v5}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCacheForClient(Ljava/lang/String;Ljava/lang/String;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 10
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static initializeFociCache(Landroid/content/Context;)Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":initializeFociCache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Initializing foci cache"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v1, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    const-string v2, "com.microsoft.identity.client.account_credential_cache.foci-1"

    invoke-direct {v1, p0, v2, v0}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/identity/common/adal/internal/cache/IStorageHelper;)V

    const/4 v0, 0x1

    .line 4
    invoke-static {p0, v1, v0}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCache(Landroid/content/Context;Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;Z)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;

    return-object p0
.end method

.method private initializeProcessUidCache(Landroid/content/Context;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v2, ":initializeProcessUidCache"

    const-string v3, "Initializing uid cache."

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mDelegate:Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache$ProcessUidCacheFactory;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v3, "Using swapped delegate cache."

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mDelegate:Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache$ProcessUidCacheFactory;

    invoke-interface {v0, p1, p2}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache$ProcessUidCacheFactory;->getTokenCache(Landroid/content/Context;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;

    invoke-direct {v0, p1}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v1, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;

    .line 7
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesAccountCredentialCache;->getBrokerUidSequesteredFilename(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2, v0}, Lcom/microsoft/identity/common/internal/cache/SharedPreferencesFileManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/microsoft/identity/common/adal/internal/cache/IStorageHelper;)V

    const/4 p2, 0x0

    .line 8
    invoke-static {p1, v1, p2}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCache(Landroid/content/Context;Lcom/microsoft/identity/common/internal/cache/ISharedPreferencesFileManager;Z)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object p1

    return-object p1
.end method

.method private removeAccountInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/microsoft/identity/common/internal/cache/AccountDeletionRecord;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mApplicationMetadataCache:Lcom/microsoft/identity/common/internal/cache/IBrokerApplicationMetadataCache;

    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/cache/ISimpleCache;->getAll()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/internal/cache/BrokerApplicationMetadata;

    .line 4
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/cache/AbstractApplicationMetadata;->getClientId()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/cache/AbstractApplicationMetadata;->getEnvironment()Ljava/lang/String;

    move-result-object v4

    if-eqz p5, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/cache/AbstractApplicationMetadata;->getUid()I

    move-result v2

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    .line 7
    :goto_1
    invoke-direct {p0, v3, v4, v2}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCacheForClient(Ljava/lang/String;Ljava/lang/String;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->removeAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/cache/AccountDeletionRecord;

    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/microsoft/identity/common/internal/cache/AccountDeletionRecord;

    .line 12
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 13
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string p4, ":removeAccountInternal"

    invoke-static {p2, p3, p4}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Deleted ["

    invoke-static {p3}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "] AccountRecords."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 15
    invoke-static {p2, p3}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance p2, Lcom/microsoft/identity/common/internal/cache/AccountDeletionRecord;

    invoke-direct {p2, p1}, Lcom/microsoft/identity/common/internal/cache/AccountDeletionRecord;-><init>(Ljava/util/List;)V

    return-object p2
.end method

.method private updateApplicationMetadataCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/cache/BrokerApplicationMetadata;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/cache/BrokerApplicationMetadata;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/cache/AbstractApplicationMetadata;->setClientId(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/internal/cache/AbstractApplicationMetadata;->setEnvironment(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3}, Lcom/microsoft/identity/common/internal/cache/BrokerApplicationMetadata;->setFoci(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p4}, Lcom/microsoft/identity/common/internal/cache/AbstractApplicationMetadata;->setUid(I)V

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string p4, ":updateApplicationMetadataCache"

    invoke-static {p2, p3, p4}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding cache entry for clientId: ["

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mApplicationMetadataCache:Lcom/microsoft/identity/common/internal/cache/IBrokerApplicationMetadataCache;

    invoke-interface {p2, v0}, Lcom/microsoft/identity/common/internal/cache/ISimpleCache;->insert(Ljava/lang/Object;)Z

    move-result p2

    .line 8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {p3, v0, p4}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cache updated successfully? ["

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is unsupported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    invoke-direct {p0, p2, p1, v0}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCacheForClient(Ljava/lang/String;Ljava/lang/String;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v2, ":getAccount"

    const-string v3, "Target cache was null. Using FOCI cache."

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mFociCache:Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;

    .line 4
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object p1

    goto :goto_1

    .line 5
    :cond_1
    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCachesForClientId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    .line 9
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;->getAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_1
    return-object p1
.end method

.method public getAccountByHomeAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v2, "getAccountByHomeAccountId"

    const-string v3, "Loading account by home account id."

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 2
    iget v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    invoke-direct {p0, p2, p1, v0}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCacheForClient(Ljava/lang/String;Ljava/lang/String;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Loading from FOCI cache? ["

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccountByHomeAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mFociCache:Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccountByHomeAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCachesForClientId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    if-nez v0, :cond_3

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    .line 10
    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;->getAccountByHomeAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object v0

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public getAccountByLocalAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v2, ":getAccountByLocalAccountId"

    const-string v3, "Loading account by local account id."

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 2
    iget v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    invoke-direct {p0, p2, p1, v0}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCacheForClient(Ljava/lang/String;Ljava/lang/String;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Loading from FOCI cache? ["

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccountByLocalAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mFociCache:Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccountByLocalAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCachesForClientId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    if-nez v0, :cond_3

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    .line 10
    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;->getAccountByLocalAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object v0

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public getAccountWithAggregatedAccountDataByLocalAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;
    .locals 4

    if-eqz p1, :cond_2

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    invoke-direct {p0, p2, p1, v0}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCacheForClient(Ljava/lang/String;Ljava/lang/String;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v3, ":getAccountWithAggregatedAccountDataByLocalAccountId"

    invoke-static {v1, v2, v3}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Loading from FOCI cache? ["

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccountWithAggregatedAccountDataByLocalAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mFociCache:Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccountWithAggregatedAccountDataByLocalAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCachesForClientId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    if-nez v0, :cond_3

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;->getAccountWithAggregatedAccountDataByLocalAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    move-result-object v0

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public getAccounts()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/dto/AccountRecord;",
            ">;"
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 13
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mApplicationMetadataCache:Lcom/microsoft/identity/common/internal/cache/IBrokerApplicationMetadataCache;

    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/cache/ISimpleCache;->getAll()Ljava/util/List;

    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/internal/cache/BrokerApplicationMetadata;

    .line 15
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/cache/AbstractApplicationMetadata;->getClientId()Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/cache/AbstractApplicationMetadata;->getEnvironment()Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/cache/AbstractApplicationMetadata;->getUid()I

    move-result v2

    .line 18
    invoke-direct {p0, v3, v4, v2}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCacheForClient(Ljava/lang/String;Ljava/lang/String;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 19
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccountCredentialCache()Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    move-result-object v2

    .line 20
    invoke-interface {v2}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->getAccounts()Ljava/util/List;

    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mFociCache:Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;

    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccountCredentialCache()Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->getAccounts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v3, ":getAccounts"

    invoke-static {v0, v2, v3}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Found ["

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] accounts."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-static {v0, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getAccounts(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/dto/AccountRecord;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ":getAccounts (2 param)"

    if-eqz p1, :cond_1

    .line 2
    iget v2, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    invoke-direct {p0, p2, p1, v2}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCacheForClient(Ljava/lang/String;Ljava/lang/String;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2, p1, p2}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccounts(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v2, "No caches to inspect."

    invoke-static {p1, p2, v1, v2}, Le/a/a/a/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCachesForClientId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    .line 7
    invoke-virtual {v3, p1, p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;->getAccounts(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 8
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Found ["

    invoke-static {p2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] accounts."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-static {p1, p2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public getAccountsWithAggregatedAccountData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 10
    iget v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    invoke-direct {p0, p2, p1, v0}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCacheForClient(Ljava/lang/String;Ljava/lang/String;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object v0

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v2, ":getAccountsWithAggregatedAccountData"

    const-string v3, "Falling back to FoCI cache..."

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mFociCache:Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;

    .line 13
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccountsWithAggregatedAccountData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 14
    :cond_1
    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCachesForClientId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    .line 17
    invoke-virtual {v2, p1, p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;->getAccountsWithAggregatedAccountData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_1
    return-object p1
.end method

.method public getAccountsWithAggregatedAccountData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    invoke-direct {p0, p2, p1, v0}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCacheForClient(Ljava/lang/String;Ljava/lang/String;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v2, ":getAccountsWithAggregatedAccountData"

    const-string v3, "Falling back to FoCI cache..."

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mFociCache:Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;

    .line 4
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccountsWithAggregatedAccountData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 5
    :cond_1
    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCachesForClientId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    .line 8
    invoke-virtual {v2, p1, p2, p3}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;->getAccountsWithAggregatedAccountData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_1
    return-object p1
.end method

.method public getAllClientIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mApplicationMetadataCache:Lcom/microsoft/identity/common/internal/cache/IBrokerApplicationMetadataCache;

    invoke-interface {v0}, Lcom/microsoft/identity/common/internal/cache/IBrokerApplicationMetadataCache;->getAllClientIds()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getAllTenantAccountsForAccountByClientId(Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/AccountRecord;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/internal/dto/AccountRecord;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/dto/AccountRecord;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCacheForClient(Ljava/lang/String;Ljava/lang/String;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAllTenantAccountsForAccountByClientId(Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/AccountRecord;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getFociCacheRecords()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v2, v0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mApplicationMetadataCache:Lcom/microsoft/identity/common/internal/cache/IBrokerApplicationMetadataCache;

    .line 3
    invoke-interface {v2}, Lcom/microsoft/identity/common/internal/cache/IBrokerApplicationMetadataCache;->getAllFociApplicationMetadata()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/identity/common/internal/cache/BrokerApplicationMetadata;

    .line 5
    iget-object v4, v0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mFociCache:Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;

    .line 6
    invoke-virtual {v3}, Lcom/microsoft/identity/common/internal/cache/AbstractApplicationMetadata;->getEnvironment()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {v3}, Lcom/microsoft/identity/common/internal/cache/AbstractApplicationMetadata;->getClientId()Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-virtual {v4, v5, v6}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccounts(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 9
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    .line 10
    invoke-virtual {v5}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object v14

    .line 11
    invoke-virtual {v5}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object v15

    .line 12
    invoke-virtual {v3}, Lcom/microsoft/identity/common/internal/cache/AbstractApplicationMetadata;->getClientId()Ljava/lang/String;

    move-result-object v16

    .line 13
    invoke-virtual {v5}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getRealm()Ljava/lang/String;

    move-result-object v17

    .line 14
    iget-object v6, v0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mFociCache:Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;

    .line 15
    invoke-virtual {v6}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccountCredentialCache()Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    move-result-object v6

    sget-object v9, Lcom/microsoft/identity/common/internal/dto/CredentialType;->RefreshToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    const/4 v11, 0x0

    const/16 v18, 0x0

    const/4 v13, 0x0

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v10, v16

    move-object/from16 v12, v18

    .line 16
    invoke-interface/range {v6 .. v13}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 17
    iget-object v6, v0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mFociCache:Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;

    .line 18
    invoke-virtual {v6}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccountCredentialCache()Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    move-result-object v6

    sget-object v9, Lcom/microsoft/identity/common/internal/dto/CredentialType;->V1IdToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    const/16 v19, 0x0

    move-object/from16 v11, v17

    move-object/from16 v20, v13

    move-object/from16 v13, v19

    .line 19
    invoke-interface/range {v6 .. v13}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 20
    iget-object v6, v0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mFociCache:Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;

    .line 21
    invoke-virtual {v6}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getAccountCredentialCache()Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;

    move-result-object v6

    sget-object v9, Lcom/microsoft/identity/common/internal/dto/CredentialType;->IdToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    move-object v14, v13

    move-object/from16 v13, v19

    .line 22
    invoke-interface/range {v6 .. v13}, Lcom/microsoft/identity/common/internal/cache/IAccountCredentialCache;->getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 23
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 24
    new-instance v7, Lcom/microsoft/identity/common/internal/cache/CacheRecord;

    invoke-direct {v7}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;-><init>()V

    .line 25
    invoke-virtual {v7, v5}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->setAccount(Lcom/microsoft/identity/common/internal/dto/AccountRecord;)V

    const/4 v5, 0x0

    move-object/from16 v8, v20

    .line 26
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    invoke-virtual {v7, v8}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->setRefreshToken(Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;)V

    .line 27
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v8

    const-string v9, "Found ["

    const-string v10, ":getFociCacheRecords"

    if-nez v8, :cond_2

    .line 28
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {v8, v11, v10}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 29
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "] V1IdTokens"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 30
    invoke-static {v8, v11}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    invoke-virtual {v7, v8}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->setV1IdToken(Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)V

    goto :goto_1

    .line 32
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v12, "No V1IdTokens exist for this account."

    invoke-static {v8, v11, v10, v12}, Le/a/a/a/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 34
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {v8, v11, v10}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 35
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] IdTokens"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 36
    invoke-static {v8, v9}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    invoke-virtual {v7, v5}, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->setIdToken(Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)V

    goto :goto_2

    .line 38
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v8, "No IdTokens exist for this account."

    invoke-static {v5, v6, v10, v8}, Le/a/a/a/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :goto_2
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    return-object v1
.end method

.method public getIdTokensForAccountRecord(Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/AccountRecord;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/internal/dto/AccountRecord;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2
    iget v1, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCacheForClient(Ljava/lang/String;Ljava/lang/String;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->getIdTokensForAccountRecord(Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/AccountRecord;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Aggregating IdTokens across ClientIds is not supported - do you have a feature request?"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isClientIdKnownToCache(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getAllClientIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v2, ":load"

    const-string v3, "Performing lookup in app-specific cache."

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mApplicationMetadataCache:Lcom/microsoft/identity/common/internal/cache/IBrokerApplicationMetadataCache;

    .line 3
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    .line 4
    invoke-interface {v0, p1, v1, v3}, Lcom/microsoft/identity/common/internal/cache/IBrokerApplicationMetadataCache;->getMetadata(Ljava/lang/String;Ljava/lang/String;I)Lcom/microsoft/identity/common/internal/cache/BrokerApplicationMetadata;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/cache/BrokerApplicationMetadata;->getFoci()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App is known foci? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 7
    :goto_1
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    .line 8
    invoke-direct {p0, p1, v3, v4}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCacheForClient(Ljava/lang/String;Ljava/lang/String;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    .line 9
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading from FOCI cache? ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mFociCache:Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;->loadByFamilyId(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    move-result-object p1

    goto :goto_4

    .line 11
    :cond_4
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->load(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    move-result-object p1

    .line 12
    :goto_4
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    move-result-object p2

    if-eqz p2, :cond_5

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    .line 13
    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {p2, p3, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Result found? ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public loadWithAggregatedAccountData(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/internal/dto/AccountRecord;",
            "Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mApplicationMetadataCache:Lcom/microsoft/identity/common/internal/cache/IBrokerApplicationMetadataCache;

    .line 3
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    .line 4
    invoke-interface {v0, p1, v1, v2}, Lcom/microsoft/identity/common/internal/cache/IBrokerApplicationMetadataCache;->getMetadata(Ljava/lang/String;Ljava/lang/String;I)Lcom/microsoft/identity/common/internal/cache/BrokerApplicationMetadata;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/cache/BrokerApplicationMetadata;->getFoci()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":loadWithAggregatedAccountData"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App is known foci? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 7
    :goto_1
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    .line 8
    invoke-direct {p0, p1, v3, v4}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCacheForClient(Ljava/lang/String;Ljava/lang/String;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 9
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":loadWithAggregatedAccountData"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loading from FOCI cache? ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v7, 0x1

    :goto_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_5

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mFociCache:Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;

    .line 12
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;->loadByFamilyId(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    if-eqz v0, :cond_6

    .line 14
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mFociCache:Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;

    .line 15
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;->loadByFamilyIdWithAggregatedAccountData(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)Ljava/util/List;

    move-result-object v0

    goto :goto_5

    .line 16
    :cond_6
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->loadWithAggregatedAccountData(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)Ljava/util/List;

    move-result-object v0

    .line 17
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 18
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    move-result-object p1

    if-eqz p1, :cond_7

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    .line 19
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":loadWithAggregatedAccountData"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Result found? ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/cache/AccountDeletionRecord;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->removeAccountInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/microsoft/identity/common/internal/cache/AccountDeletionRecord;

    move-result-object p1

    return-object p1
.end method

.method public removeAccountFromDevice(Lcom/microsoft/identity/common/internal/dto/AccountRecord;)Lcom/microsoft/identity/common/internal/cache/AccountDeletionRecord;
    .locals 10

    const-string v0, ":removeAccountFromDevice"

    if-eqz p1, :cond_2

    .line 1
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mApplicationMetadataCache:Lcom/microsoft/identity/common/internal/cache/IBrokerApplicationMetadataCache;

    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/cache/IBrokerApplicationMetadataCache;->getAllClientIds()Ljava/util/Set;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Found ["

    invoke-static {v3}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] client ids."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v2, v3}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v4, p0

    .line 9
    invoke-direct/range {v4 .. v9}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->removeAccountInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/microsoft/identity/common/internal/cache/AccountDeletionRecord;

    move-result-object v3

    .line 10
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/internal/cache/AccountDeletionRecord;

    .line 13
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 14
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Deleted ["

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] AccountRecords."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/microsoft/identity/common/internal/cache/AccountDeletionRecord;

    invoke-direct {v0, p1}, Lcom/microsoft/identity/common/internal/cache/AccountDeletionRecord;-><init>(Ljava/util/List;)V

    return-object v0

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Illegal arg. Cannot delete a null AccountRecord!"

    invoke-static {p1, v1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AccountRecord may not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeCredential(Lcom/microsoft/identity/common/internal/dto/Credential;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getClientId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    .line 3
    invoke-direct {p0, v0, v1, v2}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCacheForClient(Ljava/lang/String;Ljava/lang/String;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object v0

    const-string v1, ":removeCredential"

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->removeCredential(Lcom/microsoft/identity/common/internal/dto/Credential;)Z

    move-result p1

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v2, "Could not remove credential. Cache not found."

    invoke-static {p1, v0, v1, v2}, Le/a/a/a/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 6
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Credential removed? ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public save(Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;
    .locals 0

    .line 32
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This method is unsupported."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public save(Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;
    .locals 5

    .line 2
    invoke-static {p4}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v3, ":save"

    invoke-static {v1, v2, v3}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saving to FOCI cache? ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mFociCache:Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->save(Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/Credential;->getClientId()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/Credential;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    .line 7
    invoke-direct {p0, v0, v1, v2}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCacheForClient(Ljava/lang/String;Ljava/lang/String;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Existing cache not found. A new one will be created."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    .line 10
    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->initializeProcessUidCache(Landroid/content/Context;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object v0

    .line 11
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->save(Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getAccessToken()Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/Credential;->getClientId()Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getAccessToken()Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    move-result-object p3

    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/dto/Credential;->getEnvironment()Ljava/lang/String;

    move-result-object p3

    iget v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    .line 14
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->updateApplicationMetadataCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1
.end method

.method public save(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGenericOAuth2Strategy;TGenericAuthorizationRequest;TGenericTokenResponse;)",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;"
        }
    .end annotation

    .line 15
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "]"

    const-string v2, ":save"

    if-eqz v0, :cond_0

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Received FOCI value: ["

    invoke-static {v4}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 17
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->getFamilyId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-static {v3, v4}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saving to FOCI cache? ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mFociCache:Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;->getClientId()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-virtual {p1, p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->getIssuerCacheIdentifier(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    .line 23
    invoke-direct {p0, v0, v1, v3}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCacheForClient(Ljava/lang/String;Ljava/lang/String;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object v0

    if-nez v0, :cond_2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Existing cache not found. A new one will be created."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    .line 26
    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->initializeProcessUidCache(Landroid/content/Context;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object v0

    .line 27
    :cond_2
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->save(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    move-result-object p1

    .line 28
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/Credential;->getClientId()Ljava/lang/String;

    move-result-object p2

    .line 29
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    move-result-object p3

    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/dto/Credential;->getEnvironment()Ljava/lang/String;

    move-result-object p3

    .line 30
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    .line 31
    invoke-direct {p0, p2, p3, v0, v1}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->updateApplicationMetadataCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1
.end method

.method public bridge synthetic save(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;
    .locals 0

    .line 1
    check-cast p3, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->save(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized saveAndLoadAggregatedAccountData(Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;Ljava/lang/String;Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/dto/AccountRecord;",
            "Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;",
            "Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->save(Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getAccessToken()Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/Credential;->getClientId()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getAccessToken()Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    move-result-object p3

    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->getTarget()Ljava/lang/String;

    move-result-object p3

    .line 6
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getAccessToken()Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    move-result-object p4

    invoke-virtual {p4}, Lcom/microsoft/identity/common/internal/dto/Credential;->getEnvironment()Ljava/lang/String;

    move-result-object p4

    .line 7
    iget v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    invoke-direct {p0, p2, p4, v0}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCacheForClient(Ljava/lang/String;Ljava/lang/String;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object p4

    .line 8
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object p1

    .line 9
    invoke-virtual {p4, p2, p3, p1, p5}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->loadWithAggregatedAccountData(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/dto/AccountRecord;Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)Ljava/util/List;

    move-result-object p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public saveAndLoadAggregatedAccountData(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGenericOAuth2Strategy;TGenericAuthorizationRequest;TGenericTokenResponse;)",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->getFamilyId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":saveAndLoadAggregatedAccountData"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saving to FOCI cache? ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mFociCache:Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;->getClientId()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {p1, p2}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;->getIssuerCacheIdentifier(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    .line 17
    invoke-direct {p0, v0, v2, v3}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCacheForClient(Ljava/lang/String;Ljava/lang/String;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object v0

    if-nez v0, :cond_2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":saveAndLoadAggregatedAccountData"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Existing cache not found. A new one will be created."

    invoke-static {v0, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    .line 20
    invoke-direct {p0, v0, v2}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->initializeProcessUidCache(Landroid/content/Context;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object v0

    .line 21
    :cond_2
    :goto_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->saveAndLoadAggregatedAccountData(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)Ljava/util/List;

    move-result-object p1

    .line 22
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    .line 23
    invoke-interface {p2}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    move-result-object p3

    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/dto/Credential;->getClientId()Ljava/lang/String;

    move-result-object p3

    .line 24
    invoke-interface {p2}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/dto/Credential;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-interface {p2}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;->getFamilyId()Ljava/lang/String;

    move-result-object p2

    iget v1, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    .line 26
    invoke-direct {p0, p3, v0, p2, v1}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->updateApplicationMetadataCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 27
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 28
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic saveAndLoadAggregatedAccountData(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)Ljava/util/List;
    .locals 0

    .line 1
    check-cast p3, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->saveAndLoadAggregatedAccountData(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public setSingleSignOnState(Ljava/lang/String;Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAccount;Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TGenericAccount;TGenericRefreshToken;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->getIsFamilyRefreshToken()Z

    move-result v0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v1, ":setSingleSignOnState"

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string v3, "Saving tokens to foci cache."

    invoke-static {v0, v2, v1, v3}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mFociCache:Lcom/microsoft/identity/common/internal/cache/MicrosoftFamilyOAuth2TokenCache;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->getClientId()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->getEnvironment()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->mCallingProcessUid:I

    .line 7
    invoke-direct {p0, v0, v2, v3}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->getTokenCacheForClient(Ljava/lang/String;Ljava/lang/String;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Existing cache could not be found. Creating a new one..."

    invoke-static {v0, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 10
    invoke-direct {p0, v0, p1}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->initializeProcessUidCache(Landroid/content/Context;I)Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;

    move-result-object v0

    .line 11
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v0, p2, p3}, Lcom/microsoft/identity/common/internal/cache/MsalOAuth2TokenCache;->setSingleSignOnState(Lcom/microsoft/identity/common/BaseAccount;Lcom/microsoft/identity/common/internal/providers/oauth2/RefreshToken;)V

    .line 12
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->getClientId()Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p3}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;->getFamilyId()Ljava/lang/String;

    move-result-object p3

    .line 15
    invoke-direct {p0, p2, v0, p3, p1}, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->updateApplicationMetadataCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 16
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/microsoft/identity/common/internal/cache/BrokerOAuth2TokenCache;->TAG:Ljava/lang/String;

    const-string p3, "Failed to save account/refresh token. Skipping."

    invoke-static {p1, p2, v1, p3}, Le/a/a/a/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
