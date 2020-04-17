.class public Lcom/microsoft/identity/common/internal/result/AdalBrokerResultAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/result/IBrokerResultAdapter;


# static fields
.field public static final TAG:Ljava/lang/String; = "com.microsoft.identity.common.internal.result.AdalBrokerResultAdapter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAuthority(Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getAccessTokenRecord()Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getTenantId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getTenantId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_0
    const-string p1, "common"

    .line 5
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 6
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private mapExceptionToBundle(Landroid/os/Bundle;Lcom/microsoft/identity/common/exception/BaseException;)V
    .locals 2

    .line 1
    instance-of v0, p2, Lcom/microsoft/identity/common/exception/UserCancelException;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/microsoft/identity/common/internal/result/AdalBrokerResultAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Setting Bundle result from UserCancelException."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p2}, Lcom/microsoft/identity/common/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-direct {p0, p1, v0, p2}, Lcom/microsoft/identity/common/internal/result/AdalBrokerResultAdapter;->setErrorToResultBundle(Landroid/os/Bundle;ILjava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p2, Lcom/microsoft/identity/common/exception/ArgumentException;

    if-eqz v0, :cond_1

    .line 6
    sget-object v0, Lcom/microsoft/identity/common/internal/result/AdalBrokerResultAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Setting Bundle result from ArgumentException."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 7
    invoke-virtual {p2}, Lcom/microsoft/identity/common/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-direct {p0, p1, v0, p2}, Lcom/microsoft/identity/common/internal/result/AdalBrokerResultAdapter;->setErrorToResultBundle(Landroid/os/Bundle;ILjava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    instance-of v0, p2, Lcom/microsoft/identity/common/exception/ClientException;

    if-eqz v0, :cond_2

    .line 10
    check-cast p2, Lcom/microsoft/identity/common/exception/ClientException;

    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/result/AdalBrokerResultAdapter;->setClientExceptionPropertiesToBundle(Landroid/os/Bundle;Lcom/microsoft/identity/common/exception/ClientException;)V

    goto :goto_0

    .line 11
    :cond_2
    instance-of v0, p2, Lcom/microsoft/identity/common/exception/ServiceException;

    if-eqz v0, :cond_3

    .line 12
    check-cast p2, Lcom/microsoft/identity/common/exception/ServiceException;

    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/result/AdalBrokerResultAdapter;->setServiceExceptionPropertiesToBundle(Landroid/os/Bundle;Lcom/microsoft/identity/common/exception/ServiceException;)V

    goto :goto_0

    .line 13
    :cond_3
    sget-object v0, Lcom/microsoft/identity/common/internal/result/AdalBrokerResultAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Setting Bundle result for Unknown Exception/Bad result."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 14
    invoke-virtual {p2}, Lcom/microsoft/identity/common/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-direct {p0, p1, v0, p2}, Lcom/microsoft/identity/common/internal/result/AdalBrokerResultAdapter;->setErrorToResultBundle(Landroid/os/Bundle;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setClientExceptionPropertiesToBundle(Landroid/os/Bundle;Lcom/microsoft/identity/common/exception/ClientException;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/result/AdalBrokerResultAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Setting properties from ClientException."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/microsoft/identity/common/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_network_not_available"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 3
    sget-object p2, Lcom/microsoft/identity/common/adal/internal/ADALError;->DEVICE_CONNECTION_IS_NOT_AVAILABLE:Lcom/microsoft/identity/common/adal/internal/ADALError;

    .line 4
    invoke-virtual {p2}, Lcom/microsoft/identity/common/adal/internal/ADALError;->getDescription()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-direct {p0, p1, v1, p2}, Lcom/microsoft/identity/common/internal/result/AdalBrokerResultAdapter;->setErrorToResultBundle(Landroid/os/Bundle;ILjava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/microsoft/identity/common/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "device_network_not_available_doze_mode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    sget-object p2, Lcom/microsoft/identity/common/adal/internal/ADALError;->NO_NETWORK_CONNECTION_POWER_OPTIMIZATION:Lcom/microsoft/identity/common/adal/internal/ADALError;

    .line 8
    invoke-virtual {p2}, Lcom/microsoft/identity/common/adal/internal/ADALError;->getDescription()Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-direct {p0, p1, v1, p2}, Lcom/microsoft/identity/common/internal/result/AdalBrokerResultAdapter;->setErrorToResultBundle(Landroid/os/Bundle;ILjava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p2}, Lcom/microsoft/identity/common/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    const-string v0, "io_error"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    sget-object p2, Lcom/microsoft/identity/common/adal/internal/ADALError;->IO_EXCEPTION:Lcom/microsoft/identity/common/adal/internal/ADALError;

    .line 12
    invoke-virtual {p2}, Lcom/microsoft/identity/common/adal/internal/ADALError;->getDescription()Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-direct {p0, p1, v1, p2}, Lcom/microsoft/identity/common/internal/result/AdalBrokerResultAdapter;->setErrorToResultBundle(Landroid/os/Bundle;ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setErrorToResultBundle(Landroid/os/Bundle;ILjava/lang/String;)V
    .locals 1

    const-string v0, "errorCode"

    .line 1
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "errorMessage"

    .line 2
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setIntuneAppProtectionPropertiesToBundle(Landroid/os/Bundle;Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/result/AdalBrokerResultAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Setting properties from IntuneAppProtectionPolicyRequiredException."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/microsoft/identity/common/adal/internal/ADALError;->AUTH_FAILED_INTUNE_POLICY_REQUIRED:Lcom/microsoft/identity/common/adal/internal/ADALError;

    const-string v0, "com.microsoft.aad.adal:BrowserErrorCode"

    const-string v1, "AUTH_FAILED_INTUNE_POLICY_REQUIRED"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;->getTenantId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "account.userinfo.tenantid"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;->getAuthorityUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "account.authority"

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;->getAccountUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "account.userinfo.userid"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;->getAccountUpn()Ljava/lang/String;

    move-result-object p2

    const-string v0, "account.name"

    .line 10
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setServiceExceptionPropertiesToBundle(Landroid/os/Bundle;Lcom/microsoft/identity/common/exception/ServiceException;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/result/AdalBrokerResultAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Setting properties from ServiceException."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/microsoft/identity/common/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/microsoft/identity/common/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "error_description"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lcom/microsoft/identity/common/exception/ServiceException;->getOAuthSubErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "suberror"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/microsoft/identity/common/exception/ServiceException;->getHttpResponseBody()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p2}, Lcom/microsoft/identity/common/exception/ServiceException;->getHttpResponseBody()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "response_body"

    .line 7
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/microsoft/identity/common/exception/ServiceException;->getHttpResponseHeaders()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p2}, Lcom/microsoft/identity/common/exception/ServiceException;->getHttpResponseHeaders()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "response_headers"

    .line 10
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 11
    :cond_1
    invoke-virtual {p2}, Lcom/microsoft/identity/common/exception/ServiceException;->getHttpStatusCode()I

    move-result v0

    const-string v3, "status_code"

    .line 12
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    instance-of v0, p2, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;

    if-eqz v0, :cond_2

    .line 14
    move-object v0, p2

    check-cast v0, Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;

    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/common/internal/result/AdalBrokerResultAdapter;->setIntuneAppProtectionPropertiesToBundle(Landroid/os/Bundle;Lcom/microsoft/identity/common/exception/IntuneAppProtectionPolicyRequiredException;)V

    .line 15
    :cond_2
    invoke-virtual {p2}, Lcom/microsoft/identity/common/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "invalid_grant"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    invoke-virtual {p2}, Lcom/microsoft/identity/common/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "interaction_required"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    :cond_3
    sget-object v0, Lcom/microsoft/identity/common/adal/internal/ADALError;->AUTH_REFRESH_FAILED_PROMPT_NOT_ALLOWED:Lcom/microsoft/identity/common/adal/internal/ADALError;

    .line 18
    invoke-virtual {v0}, Lcom/microsoft/identity/common/adal/internal/ADALError;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2}, Lcom/microsoft/identity/common/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public authenticationResultFromBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bundleFromAuthenticationResult(Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;)Landroid/os/Bundle;
    .locals 4

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/result/AdalBrokerResultAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Constructing success bundle from Authentication Result."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getAccountRecord()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/dto/IAccountRecord;->getUsername()Ljava/lang/String;

    move-result-object v2

    const-string v3, "account.login.hint"

    .line 5
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/dto/IAccountRecord;->getLocalAccountId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "account.userinfo.userid"

    .line 7
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/dto/IAccountRecord;->getUsername()Ljava/lang/String;

    move-result-object v2

    const-string v3, "account.userinfo.userid.displayable"

    .line 9
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/dto/IAccountRecord;->getFirstName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "account.userinfo.given.name"

    .line 11
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/dto/IAccountRecord;->getFamilyName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "account.userinfo.family.name"

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getIdToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/identity/common/internal/cache/SchemaUtil;->getIdentityProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "account.userinfo.identity.provider"

    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getTenantId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "account.userinfo.tenantid"

    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getExpiresOn()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-string v3, "account.expiredate"

    .line 19
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 20
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/result/AdalBrokerResultAdapter;->getAuthority(Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "account.authority"

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "account.access.token"

    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getIdToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "account.idtoken"

    .line 25
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getSpeRing()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cliteleminfo.spe_ring"

    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getRefreshTokenAge()Ljava/lang/String;

    move-result-object p1

    const-string v1, "cliteleminfo.rt_age"

    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bundleFromBaseException(Lcom/microsoft/identity/common/exception/BaseException;)Landroid/os/Bundle;
    .locals 3

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/result/AdalBrokerResultAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Constructing error bundle from exception."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.microsoft.aad.adal:BrowserErrorCode"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.microsoft.aad.adal:BrowserErrorMessage"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BaseException;->getSpeRing()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cliteleminfo.spe_ring"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BaseException;->getRefreshTokenAge()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cliteleminfo.rt_age"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BaseException;->getCliTelemErrorCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cliteleminfo.server_error"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BaseException;->getCliTelemSubErrorCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cliteleminfo.server_suberror"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, v0, p1}, Lcom/microsoft/identity/common/internal/result/AdalBrokerResultAdapter;->mapExceptionToBundle(Landroid/os/Bundle;Lcom/microsoft/identity/common/exception/BaseException;)V

    return-object v0
.end method

.method public getBaseExceptionFromBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/exception/BaseException;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
