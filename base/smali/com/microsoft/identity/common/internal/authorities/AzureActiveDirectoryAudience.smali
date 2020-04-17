.class public abstract Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL:Ljava/lang/String; = "common"

.field public static final CONSUMERS:Ljava/lang/String; = "consumers"

.field public static final MSA_MEGA_TENANT_ID:Ljava/lang/String; = "9188040d-6c67-4c5b-b112-36a304b66dad"

.field public static final ORGANIZATIONS:Ljava/lang/String; = "organizations"

.field public static final TAG:Ljava/lang/String; = "AzureActiveDirectoryAudience"


# instance fields
.field public mCloudUrl:Ljava/lang/String;

.field public mTenantId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "tenant_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAzureActiveDirectoryAudience(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7da74660

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, -0x50c0d615

    if-eq v1, v2, :cond_1

    const v2, -0x191804c3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "consumers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "common"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v1, "organizations"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v1, ":getAzureActiveDirectoryAudience"

    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Audience: AccountsInOneOrganization"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/microsoft/identity/common/internal/authorities/AccountsInOneOrganization;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/identity/common/internal/authorities/AccountsInOneOrganization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Audience: AllAccounts"

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/microsoft/identity/common/internal/authorities/AllAccounts;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/authorities/AllAccounts;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 6
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Audience: AnyPersonalAccount"

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/microsoft/identity/common/internal/authorities/AnyPersonalAccount;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/authorities/AnyPersonalAccount;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 8
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Audience: AnyOrganizationalAccount"

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/microsoft/identity/common/internal/authorities/AnyOrganizationalAccount;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/authorities/AnyOrganizationalAccount;-><init>(Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method

.method public static isHomeTenantAlias(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "common"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "consumers"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "organizations"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static loadOpenIdProviderConfigurationMetadata(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":loadOpenIdProviderConfigurationMetadata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Loading OpenId Provider Metadata..."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfigurationClient;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfigurationClient;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfigurationClient;->loadOpenIdProviderConfiguration()Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCloudUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->mCloudUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->getDefaultCloudUrl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTenantId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->mTenantId:Ljava/lang/String;

    return-object v0
.end method

.method public getTenantUuidForAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->mTenantId:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isUuid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->mTenantId:Ljava/lang/String;

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->loadOpenIdProviderConfigurationMetadata(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdProviderConfiguration;->getIssuer()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isUuid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 10
    :cond_1
    sget-object p1, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->TAG:Ljava/lang/String;

    const-string v0, "OpenId Metadata did not contain UUID in the path "

    invoke-static {p1, v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    new-instance p1, Lcom/microsoft/identity/common/exception/ClientException;

    invoke-direct {p1, v0}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    sget-object p1, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->TAG:Ljava/lang/String;

    const-string v0, "OpenId Metadata did not contain a path to the tenant"

    invoke-static {p1, v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    new-instance p1, Lcom/microsoft/identity/common/exception/ClientException;

    invoke-direct {p1, v0}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCloudUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->mCloudUrl:Ljava/lang/String;

    return-void
.end method

.method public setTenantId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->mTenantId:Ljava/lang/String;

    return-void
.end method
