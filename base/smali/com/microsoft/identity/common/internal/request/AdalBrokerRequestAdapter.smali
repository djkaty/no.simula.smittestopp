.class public Lcom/microsoft/identity/common/internal/request/AdalBrokerRequestAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/request/IBrokerRequestAdapter;


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/internal/result/AdalBrokerResultAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/internal/request/AdalBrokerRequestAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getExtraQueryParamAsList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "&"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 5
    invoke-static {v4}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "="

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 7
    aget-object v5, v4, v2

    .line 8
    array-length v6, v4

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    aget-object v4, v4, v7

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 9
    :goto_1
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getPackageNameFromBundle(Landroid/os/Bundle;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "caller.info.package"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "x-app-name"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Lcom/microsoft/identity/common/internal/request/AdalBrokerRequestAdapter;->TAG:Ljava/lang/String;

    const-string v0, "Caller package name not set by app, getting from context"

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getRequestAuthorityWithExtraQP(Ljava/lang/String;Ljava/util/List;)Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityFromAuthorityUrl(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;

    if-eqz p1, :cond_7

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 5
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    sget-object v2, Lcom/microsoft/identity/common/internal/request/AdalBrokerRequestAdapter;->TAG:Ljava/lang/String;

    const-string v3, "The extra query parameter.first is empty."

    invoke-static {v2, v3}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "instance_aware"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8
    sget-object v3, Lcom/microsoft/identity/common/internal/request/AdalBrokerRequestAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Set the extra query parameter mMultipleCloudAware for MicrosoftStsAuthorizationRequest."

    invoke-static {v3, v4}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v3, Lcom/microsoft/identity/common/internal/request/AdalBrokerRequestAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Set the mMultipleCloudAware to "

    invoke-static {v4}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v5, :cond_2

    const-string v5, "null"

    goto :goto_1

    :cond_2
    check-cast v5, Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/microsoft/identity/common/internal/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, p0, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;->mMultipleCloudsSupported:Z

    .line 12
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_4
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "slice"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 14
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;->setSlice(Ljava/lang/String;)V

    .line 15
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_5
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "dc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;->setDataCenter(Ljava/lang/String;)V

    .line 18
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 19
    :cond_6
    sget-object p1, Lcom/microsoft/identity/common/internal/request/AdalBrokerRequestAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Set the extra query parameter mSlice for MicrosoftStsAuthorizationRequest."

    invoke-static {p1, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object p1, Lcom/microsoft/identity/common/internal/request/AdalBrokerRequestAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Set the mSlice to "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;->mSlice:Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    :cond_7
    return-object p0
.end method

.method private packageNameWasProvidedInBundle(Landroid/os/Bundle;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "caller.info.package"

    .line 1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-app-name"

    .line 2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method


# virtual methods
.method public brokerInteractiveParametersFromActivity(Landroid/app/Activity;)Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/request/AdalBrokerRequestAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "brokerInteractiveParametersFromActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Constructing BrokerAcquireTokenOperationParameters from activity "

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/microsoft/identity/common/internal/authscheme/BearerAuthenticationSchemeInternal;

    invoke-direct {v2}, Lcom/microsoft/identity/common/internal/authscheme/BearerAuthenticationSchemeInternal;-><init>()V

    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAuthenticationScheme(Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->setActivity(Landroid/app/Activity;)V

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAppContext(Landroid/content/Context;)V

    .line 7
    sget-object v2, Lcom/microsoft/identity/common/internal/request/SdkType;->ADAL:Lcom/microsoft/identity/common/internal/request/SdkType;

    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setSdkType(Lcom/microsoft/identity/common/internal/request/SdkType;)V

    const-string v2, "caller.info.uid"

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 9
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;->setCallerUId(I)V

    .line 10
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/microsoft/identity/common/internal/request/AdalBrokerRequestAdapter;->packageNameWasProvidedInBundle(Landroid/os/Bundle;)Z

    move-result v2

    .line 11
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 13
    invoke-direct {p0, v3, v4}, Lcom/microsoft/identity/common/internal/request/AdalBrokerRequestAdapter;->getPackageNameFromBundle(Landroid/os/Bundle;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;->setCallerPackageName(Ljava/lang/String;)V

    const-string v3, "x-app-ver"

    .line 15
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;->setCallerAppVersion(Ljava/lang/String;)V

    const-string v3, "account.extra.query.param"

    .line 16
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-direct {p0, v3}, Lcom/microsoft/identity/common/internal/request/AdalBrokerRequestAdapter;->getExtraQueryParamAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string v4, "account.authority"

    .line 18
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-static {v4, v3}, Lcom/microsoft/identity/common/internal/request/AdalBrokerRequestAdapter;->getRequestAuthorityWithExtraQP(Ljava/lang/String;Ljava/util/List;)Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;

    move-result-object v4

    .line 20
    invoke-virtual {v4}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;->getAudience()Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->getTenantId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "common"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 21
    invoke-virtual {v4}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;->getAudience()Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;

    move-result-object v5

    const-string v6, "organizations"

    invoke-virtual {v5, v6}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->setTenantId(Ljava/lang/String;)V

    .line 22
    :cond_0
    invoke-virtual {v0, v4}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAuthority(Lcom/microsoft/identity/common/internal/authorities/Authority;)V

    .line 23
    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->setExtraQueryStringParameters(Ljava/util/List;)V

    const-string v3, "account.resource"

    .line 24
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 25
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 26
    invoke-static {v3}, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter;->getScopeFromResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {v0, v4}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setScopes(Ljava/util/Set;)V

    const-string v3, "account.clientid.key"

    .line 28
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setClientId(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    .line 29
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;->getCallerPackageName()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-static {p1, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerValidator;->getBrokerRedirectUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setRedirectUri(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "account.redirect"

    .line 32
    invoke-virtual {v1, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setRedirectUri(Ljava/lang/String;)V

    :goto_0
    const-string p1, "account.name"

    .line 34
    invoke-virtual {v1, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->setLoginHint(Ljava/lang/String;)V

    const-string p1, "account.correlationid"

    .line 35
    invoke-virtual {v1, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    sget-object p1, Lcom/microsoft/identity/common/internal/request/AdalBrokerRequestAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Correlation id not set by Adal, creating a new one"

    invoke-static {p1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    .line 40
    :cond_2
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setCorrelationId(Ljava/lang/String;)V

    const-string p1, "account.claims"

    .line 41
    invoke-virtual {v1, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setClaimsRequest(Ljava/lang/String;)V

    const-string p1, "account.prompt"

    .line 42
    invoke-virtual {v1, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;->_fromPromptBehavior(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->setOpenIdConnectPromptParameter(Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;)V

    .line 45
    sget-object p1, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;->WEBVIEW:Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->setAuthorizationAgent(Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;)V

    return-object v0
.end method

.method public brokerRequestFromAcquireTokenParameters(Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public brokerRequestFromSilentOperationParameters(Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public brokerSilentParametersFromBundle(Landroid/os/Bundle;Landroid/content/Context;Landroid/accounts/Account;)Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/request/AdalBrokerRequestAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":brokerSilentParametersFromBundle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Constructing BrokerAcquireTokenOperationParameters from activity "

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;-><init>()V

    .line 3
    new-instance v1, Lcom/microsoft/identity/common/internal/authscheme/BearerAuthenticationSchemeInternal;

    invoke-direct {v1}, Lcom/microsoft/identity/common/internal/authscheme/BearerAuthenticationSchemeInternal;-><init>()V

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAuthenticationScheme(Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAppContext(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0, p3}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->setAccountManagerAccount(Landroid/accounts/Account;)V

    .line 6
    sget-object p3, Lcom/microsoft/identity/common/internal/request/SdkType;->ADAL:Lcom/microsoft/identity/common/internal/request/SdkType;

    invoke-virtual {v0, p3}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setSdkType(Lcom/microsoft/identity/common/internal/request/SdkType;)V

    const-string p3, "caller.info.uid"

    .line 7
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    .line 8
    invoke-virtual {v0, p3}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->setCallerUId(I)V

    .line 9
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/request/AdalBrokerRequestAdapter;->packageNameWasProvidedInBundle(Landroid/os/Bundle;)Z

    move-result p3

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/request/AdalBrokerRequestAdapter;->getPackageNameFromBundle(Landroid/os/Bundle;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->setCallerPackageName(Ljava/lang/String;)V

    const-string v2, "x-app-ver"

    .line 12
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->setCallerAppVersion(Ljava/lang/String;)V

    const-string v2, "account.authority"

    .line 14
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {v2}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityFromAuthorityUrl(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v2

    .line 16
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAuthority(Lcom/microsoft/identity/common/internal/authorities/Authority;)V

    const-string v2, "account.correlationid"

    .line 17
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 19
    sget-object v2, Lcom/microsoft/identity/common/internal/request/AdalBrokerRequestAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Correlation id not set by Adal, creating a new one"

    invoke-static {v2, v3}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 22
    :cond_0
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setCorrelationId(Ljava/lang/String;)V

    const-string v2, "account.resource"

    .line 23
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 25
    invoke-static {v2}, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter;->getScopeFromResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setScopes(Ljava/util/Set;)V

    const-string v2, "account.clientid.key"

    .line 27
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setClientId(Ljava/lang/String;)V

    const-string v2, "account.userinfo.userid"

    .line 29
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->setLocalAccountId(Ljava/lang/String;)V

    const-string v2, "account.redirect"

    .line 31
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p3, :cond_1

    .line 32
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 33
    :cond_1
    invoke-static {p2, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerValidator;->getBrokerRedirectUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    :cond_2
    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setRedirectUri(Ljava/lang/String;)V

    const-string p2, "force.refresh"

    .line 35
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 36
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setForceRefresh(Z)V

    const-string p2, "account.claims"

    .line 37
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 38
    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setClaimsRequest(Ljava/lang/String;)V

    const-string p2, "account.name"

    .line 39
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 40
    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->setLoginHint(Ljava/lang/String;)V

    const-string p2, "account.extra.query.param"

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/request/AdalBrokerRequestAdapter;->getExtraQueryParamAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 43
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->setExtraQueryStringParameters(Ljava/util/List;)V

    return-object v0
.end method
