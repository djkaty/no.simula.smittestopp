.class public Lcom/microsoft/identity/client/AccountAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/client/AccountAdapter$HomeAccountFilter;,
        Lcom/microsoft/identity/client/AccountAdapter$GuestAccountFilter;,
        Lcom/microsoft/identity/client/AccountAdapter$CacheRecordFilter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AccountAdapter"

.field public static final guestAccountsWithNoHomeTenantAccountFilter:Lcom/microsoft/identity/client/AccountAdapter$CacheRecordFilter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/client/AccountAdapter$1;

    invoke-direct {v0}, Lcom/microsoft/identity/client/AccountAdapter$1;-><init>()V

    sput-object v0, Lcom/microsoft/identity/client/AccountAdapter;->guestAccountsWithNoHomeTenantAccountFilter:Lcom/microsoft/identity/client/AccountAdapter$CacheRecordFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Ljava/util/List;Lcom/microsoft/identity/client/AccountAdapter$CacheRecordFilter;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/microsoft/identity/client/AccountAdapter;->filterCacheRecords(Ljava/util/List;Lcom/microsoft/identity/client/AccountAdapter$CacheRecordFilter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static adapt(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/client/IAccount;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/microsoft/identity/client/AccountAdapter$HomeAccountFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/microsoft/identity/client/AccountAdapter$HomeAccountFilter;-><init>(Lcom/microsoft/identity/client/AccountAdapter$1;)V

    invoke-static {p0, v0}, Lcom/microsoft/identity/client/AccountAdapter;->filterCacheRecords(Ljava/util/List;Lcom/microsoft/identity/client/AccountAdapter$CacheRecordFilter;)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v2, Lcom/microsoft/identity/client/AccountAdapter$GuestAccountFilter;

    invoke-direct {v2, v1}, Lcom/microsoft/identity/client/AccountAdapter$GuestAccountFilter;-><init>(Lcom/microsoft/identity/client/AccountAdapter$1;)V

    invoke-static {p0, v2}, Lcom/microsoft/identity/client/AccountAdapter;->filterCacheRecords(Ljava/util/List;Lcom/microsoft/identity/client/AccountAdapter$CacheRecordFilter;)Ljava/util/List;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/microsoft/identity/client/AccountAdapter;->guestAccountsWithNoHomeTenantAccountFilter:Lcom/microsoft/identity/client/AccountAdapter$CacheRecordFilter;

    invoke-static {p0, v2}, Lcom/microsoft/identity/client/AccountAdapter;->filterCacheRecords(Ljava/util/List;Lcom/microsoft/identity/client/AccountAdapter$CacheRecordFilter;)Ljava/util/List;

    move-result-object p0

    .line 4
    invoke-interface {v1, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 5
    invoke-static {v0}, Lcom/microsoft/identity/client/AccountAdapter;->createRootAccounts(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-static {v0, v1}, Lcom/microsoft/identity/client/AccountAdapter;->appendChildren(Ljava/util/List;Ljava/util/List;)V

    .line 7
    invoke-static {p0}, Lcom/microsoft/identity/client/AccountAdapter;->createIAccountsForGuestsNotSignedIntoHomeTenant(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 8
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static appendChildren(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/client/IAccount;",
            ">;",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/client/IAccount;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    .line 4
    invoke-interface {v3}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-interface {v0}, Lcom/microsoft/identity/client/IAccount;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    new-instance v4, Lcom/microsoft/identity/client/TenantProfile;

    const/4 v5, 0x0

    .line 7
    invoke-static {v3}, Lcom/microsoft/identity/client/AccountAdapter;->getIdToken(Lcom/microsoft/identity/common/internal/cache/ICacheRecord;)Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/microsoft/identity/client/TenantProfile;-><init>(Ljava/lang/String;Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;)V

    .line 8
    invoke-interface {v3}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getRealm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    check-cast v0, Lcom/microsoft/identity/client/MultiTenantAccount;

    .line 10
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/client/MultiTenantAccount;->setTenantProfiles(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static createIAccountsForGuestsNotSignedIntoHomeTenant(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/client/IAccount;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    .line 3
    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 9
    new-instance v2, Lcom/microsoft/identity/client/MultiTenantAccount;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Lcom/microsoft/identity/client/MultiTenantAccount;-><init>(Ljava/lang/String;Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;)V

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/microsoft/identity/common/internal/util/StringUtil;->getTenantInfo(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/microsoft/identity/client/Account;->setId(Ljava/lang/String;)V

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/microsoft/identity/common/internal/util/StringUtil;->getTenantInfo(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/microsoft/identity/client/Account;->setTenantId(Ljava/lang/String;)V

    .line 12
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    .line 13
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    .line 14
    invoke-interface {v4}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object v4

    .line 15
    invoke-virtual {v4}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {v2, v4}, Lcom/microsoft/identity/client/Account;->setEnvironment(Ljava/lang/String;)V

    .line 17
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 18
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    .line 19
    invoke-interface {v5}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getRealm()Ljava/lang/String;

    move-result-object v6

    .line 20
    new-instance v7, Lcom/microsoft/identity/client/TenantProfile;

    .line 21
    invoke-static {v5}, Lcom/microsoft/identity/client/AccountAdapter;->getIdToken(Lcom/microsoft/identity/common/internal/cache/ICacheRecord;)Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;

    move-result-object v5

    invoke-direct {v7, v3, v5}, Lcom/microsoft/identity/client/TenantProfile;-><init>(Ljava/lang/String;Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;)V

    .line 22
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 23
    :cond_2
    invoke-virtual {v2, v4}, Lcom/microsoft/identity/client/MultiTenantAccount;->setTenantProfiles(Ljava/util/Map;)V

    .line 24
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    return-object p0
.end method

.method public static createRootAccounts(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/client/IAccount;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    .line 3
    new-instance v2, Lcom/microsoft/identity/client/MultiTenantAccount;

    .line 4
    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getClientInfo()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v1}, Lcom/microsoft/identity/client/AccountAdapter;->getIdToken(Lcom/microsoft/identity/common/internal/cache/ICacheRecord;)Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/microsoft/identity/client/MultiTenantAccount;-><init>(Ljava/lang/String;Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;)V

    .line 6
    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v3}, Lcom/microsoft/identity/common/internal/util/StringUtil;->getTenantInfo(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 9
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/client/Account;->setTenantId(Ljava/lang/String;)V

    .line 10
    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {v2, v1}, Lcom/microsoft/identity/client/Account;->setEnvironment(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static filterCacheRecords(Ljava/util/List;Lcom/microsoft/identity/client/AccountAdapter$CacheRecordFilter;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;",
            "Lcom/microsoft/identity/client/AccountAdapter$CacheRecordFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Lcom/microsoft/identity/client/AccountAdapter$CacheRecordFilter;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getAccountInternal(Ljava/lang/String;Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1, v1, p0, p2, p3}, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;->getAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Lcom/microsoft/identity/client/AccountAdapter;->TAG:Ljava/lang/String;

    const-string p1, "homeAccountIdentifier was null or empty -- invalid criteria"

    invoke-static {p0, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public static getIdToken(Lcom/microsoft/identity/common/internal/cache/ICacheRecord;)Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getIdToken()Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getIdToken()Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    move-result-object p0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/dto/Credential;->getSecret()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getV1IdToken()Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p0}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getV1IdToken()Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    move-result-object p0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/dto/Credential;->getSecret()Ljava/lang/String;

    move-result-object p0

    .line 5
    :goto_0
    :try_start_0
    new-instance v0, Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to restore IdToken"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
