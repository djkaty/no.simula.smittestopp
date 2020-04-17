.class public abstract Lcom/microsoft/identity/common/internal/authorities/Authority;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/authorities/Authority$KnownAuthorityResult;
    }
.end annotation


# static fields
.field public static final ADFS_PATH_SEGMENT:Ljava/lang/String; = "adfs"

.field public static final B2C:Ljava/lang/String; = "B2C"

.field public static final B2C_PATH_SEGMENT:Ljava/lang/String; = "tfp"

.field public static final TAG:Ljava/lang/String; = "Authority"

.field public static knownAuthorities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/authorities/Authority;",
            ">;"
        }
    .end annotation
.end field

.field public static sLock:Ljava/lang/Object;


# instance fields
.field public mAuthorityTypeString:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "type"
    .end annotation
.end field

.field public mAuthorityUrl:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "authority_url"
    .end annotation
.end field

.field public mIsDefault:Z
    .annotation runtime Le/c/c/v/c;
        value = "default"
    .end annotation
.end field

.field public mKnownToDeveloper:Z

.field public mKnownToMicrosoft:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/internal/authorities/Authority;->knownAuthorities:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/internal/authorities/Authority;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/authorities/Authority;->mKnownToMicrosoft:Z

    .line 3
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/authorities/Authority;->mKnownToDeveloper:Z

    .line 4
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/authorities/Authority;->mIsDefault:Z

    return-void
.end method

.method public static addKnownAuthorities(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/authorities/Authority;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/authorities/Authority;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/internal/authorities/Authority;->knownAuthorities:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static authorityIsKnownFromConfiguration(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getEquivalentConfiguredAuthority(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static createAadAuthority(Landroid/net/Uri;Ljava/util/List;)Lcom/microsoft/identity/common/internal/authorities/Authority;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/identity/common/internal/authorities/Authority;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 4
    invoke-static {p0, p1}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->getAzureActiveDirectoryAudience(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;

    move-result-object p0

    .line 5
    new-instance p1, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;

    invoke-direct {p1, p0}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;-><init>(Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;)V

    return-object p1
.end method

.method public static getAuthorityFromAuthorityUrl(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/authorities/Authority;
    .locals 8

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 5
    new-instance p0, Lcom/microsoft/identity/common/internal/authorities/UnknownAuthority;

    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/authorities/UnknownAuthority;-><init>()V

    return-object p0

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/authorities/Authority;->authorityIsKnownFromConfiguration(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getEquivalentConfiguredAuthority(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v2

    .line 8
    iget-object v2, v2, Lcom/microsoft/identity/common/internal/authorities/Authority;->mAuthorityTypeString:Ljava/lang/String;

    const-string v3, "B2C"

    .line 9
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    new-instance v0, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryB2CAuthority;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryB2CAuthority;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 11
    :cond_1
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/authorities/Authority;->createAadAuthority(Landroid/net/Uri;Ljava/util/List;)Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v0

    goto/16 :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 12
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 13
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x1c03e

    const/4 v7, 0x1

    if-eq v5, v6, :cond_4

    const v6, 0x2d9c30

    if-eq v5, v6, :cond_3

    goto :goto_0

    :cond_3
    const-string v5, "adfs"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_4
    const-string v2, "tfp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v2, -0x1

    :goto_1
    const-string v3, ":getAuthorityFromAuthorityUrl"

    if-eqz v2, :cond_7

    if-eq v2, v7, :cond_6

    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/authorities/Authority;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Authority type default: AAD"

    invoke-static {p0, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/authorities/Authority;->createAadAuthority(Landroid/net/Uri;Ljava/util/List;)Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v0

    goto :goto_2

    .line 16
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/authorities/Authority;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Authority type is B2C"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryB2CAuthority;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryB2CAuthority;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 18
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/authorities/Authority;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Authority type is ADFS"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/microsoft/identity/common/internal/authorities/ActiveDirectoryFederationServicesAuthority;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/authorities/ActiveDirectoryFederationServicesAuthority;-><init>(Ljava/lang/String;)V

    :goto_2
    return-object v0

    .line 20
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid authority URL"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getEquivalentConfiguredAuthority(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/authorities/Authority;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object p0

    .line 3
    sget-object v1, Lcom/microsoft/identity/common/internal/authorities/Authority;->knownAuthorities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/internal/authorities/Authority;

    .line 4
    iget-object v3, v2, Lcom/microsoft/identity/common/internal/authorities/Authority;->mAuthorityUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    new-instance v3, Ljava/net/URL;

    iget-object v4, v2, Lcom/microsoft/identity/common/internal/authorities/Authority;->mAuthorityUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    sget-object v1, Lcom/microsoft/identity/common/internal/authorities/Authority;->TAG:Ljava/lang/String;

    const-string v2, "Error parsing authority"

    invoke-static {v1, v2, p0}, Lcom/microsoft/identity/common/internal/logging/Logger;->errorPII(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getKnownAuthorityResult(Lcom/microsoft/identity/common/internal/authorities/Authority;)Lcom/microsoft/identity/common/internal/authorities/Authority$KnownAuthorityResult;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/authorities/Authority;->TAG:Ljava/lang/String;

    const-string v2, ":getKnownAuthorityResult"

    const-string v3, "Getting known authority result..."

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/authorities/Authority;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Performing cloud discovery"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/microsoft/identity/common/internal/authorities/Authority;->performCloudDiscovery()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Lcom/microsoft/identity/common/exception/ClientException;

    const-string v2, "io_error"

    const-string v3, "Unable to perform cloud discovery"

    invoke-direct {v1, v2, v3, v0}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 5
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/authorities/Authority;->isKnownAuthority(Lcom/microsoft/identity/common/internal/authorities/Authority;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 6
    new-instance v0, Lcom/microsoft/identity/common/exception/ClientException;

    const-string p0, "unknown_authority"

    const-string v2, "Provided authority is not known.  MSAL will only make requests to known authorities"

    invoke-direct {v0, p0, v2}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 7
    :cond_1
    :goto_1
    new-instance p0, Lcom/microsoft/identity/common/internal/authorities/Authority$KnownAuthorityResult;

    invoke-direct {p0, v1, v0}, Lcom/microsoft/identity/common/internal/authorities/Authority$KnownAuthorityResult;-><init>(ZLcom/microsoft/identity/common/exception/ClientException;)V

    return-object p0
.end method

.method public static isKnownAuthority(Lcom/microsoft/identity/common/internal/authorities/Authority;)Z
    .locals 6

    const-string v0, ":isKnownAuthority"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/authorities/Authority;->TAG:Ljava/lang/String;

    const-string v3, "Authority is null"

    invoke-static {p0, v2, v0, v3}, Le/a/a/a/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getKnownToDeveloper()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v2, Lcom/microsoft/identity/common/internal/authorities/Authority;->knownAuthorities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/identity/common/internal/authorities/Authority;

    .line 4
    iget-object v4, v3, Lcom/microsoft/identity/common/internal/authorities/Authority;->mAuthorityUrl:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v3, v3, Lcom/microsoft/identity/common/internal/authorities/Authority;->mAuthorityUrl:Ljava/lang/String;

    .line 7
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    move-result-object v4

    .line 9
    invoke-virtual {v4}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 12
    :goto_1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->hasCloudHost(Ljava/net/URL;)Z

    move-result p0

    if-nez v2, :cond_4

    if-eqz p0, :cond_5

    :cond_4
    const/4 v1, 0x1

    .line 13
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/microsoft/identity/common/internal/authorities/Authority;->TAG:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Authority is known to developer? ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/microsoft/identity/common/internal/authorities/Authority;->TAG:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Authority is known to Microsoft? ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static performCloudDiscovery()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/authorities/Authority;->TAG:Ljava/lang/String;

    const-string v2, ":performCloudDiscovery"

    const-string v3, "Performing cloud discovery..."

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/microsoft/identity/common/internal/authorities/Authority;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->performCloudDiscovery()V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public abstract createOAuth2Strategy(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2StrategyParameters;)Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2Strategy;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/microsoft/identity/common/internal/authorities/Authority;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 2
    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/internal/authorities/Authority;

    .line 3
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/authorities/Authority;->mAuthorityTypeString:Ljava/lang/String;

    iget-object v2, p1, Lcom/microsoft/identity/common/internal/authorities/Authority;->mAuthorityTypeString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAuthorityTypeString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/authorities/Authority;->mAuthorityTypeString:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getAuthorityURL()Ljava/net/URL;
.end method

.method public abstract getAuthorityUri()Landroid/net/Uri;
.end method

.method public getDefault()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/authorities/Authority;->mIsDefault:Z

    return v0
.end method

.method public getKnownToDeveloper()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/authorities/Authority;->mKnownToDeveloper:Z

    return v0
.end method

.method public getKnownToMicrosoft()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/authorities/Authority;->mKnownToMicrosoft:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/authorities/Authority;->mAuthorityTypeString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public setDefault(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/authorities/Authority;->mIsDefault:Z

    return-void
.end method
