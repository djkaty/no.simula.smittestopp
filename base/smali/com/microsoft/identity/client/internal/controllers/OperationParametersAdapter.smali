.class public Lcom/microsoft/identity/client/internal/controllers/OperationParametersAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLIENT_CAPABILITIES_CLAIM:Ljava/lang/String; = "XMS_CC"

.field public static final TAG:Ljava/lang/String; = "OperationParametersAdapter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addClientCapabilitiesToClaimsRequest(Lcom/microsoft/identity/client/claims/ClaimsRequest;Ljava/lang/String;)Lcom/microsoft/identity/client/claims/ClaimsRequest;
    .locals 2

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Lcom/microsoft/identity/client/claims/ClaimsRequest;

    invoke-direct {p0}, Lcom/microsoft/identity/client/claims/ClaimsRequest;-><init>()V

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;

    invoke-direct {v0}, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;-><init>()V

    const-string v1, ","

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->setValues(Ljava/util/List;)V

    const-string p1, "XMS_CC"

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->requestClaimInAccessToken(Ljava/lang/String;Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;)V

    :cond_1
    return-object p0
.end method

.method public static createAcquireTokenOperationParameters(Lcom/microsoft/identity/client/AcquireTokenParameters;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;)Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;
    .locals 4

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/client/TokenParameters;->getAuthenticationScheme()Lcom/microsoft/identity/client/AuthenticationScheme;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/authscheme/AuthenticationSchemeFactory;->createScheme(Lcom/microsoft/identity/common/internal/authscheme/INameable;)Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAuthenticationScheme(Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)V

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/identity/client/TokenParameters;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/identity/client/TokenParameters;->getAccount()Lcom/microsoft/identity/client/IAccount;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-static {p1}, Lcom/microsoft/identity/client/internal/controllers/OperationParametersAdapter;->getRequestAuthority(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAuthority(Lcom/microsoft/identity/common/internal/authorities/Authority;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAuthority(Lcom/microsoft/identity/common/internal/authorities/Authority;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/identity/client/TokenParameters;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityFromAuthorityUrl(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAuthority(Lcom/microsoft/identity/common/internal/authorities/Authority;)V

    .line 14
    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getBrowserSafeList()Ljava/util/List;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->setBrowserSafeList(Ljava/util/List;)V

    .line 16
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v1

    instance-of v1, v1, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;

    if-eqz v1, :cond_2

    .line 17
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;

    .line 18
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getMultipleCloudsSupported()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 19
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;->setMultipleCloudsSupported(Z)V

    .line 20
    invoke-virtual {p0}, Lcom/microsoft/identity/client/TokenParameters;->getClaimsRequest()Lcom/microsoft/identity/client/claims/ClaimsRequest;

    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getClientCapabilities()Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-static {v1, v2}, Lcom/microsoft/identity/client/internal/controllers/OperationParametersAdapter;->addClientCapabilitiesToClaimsRequest(Lcom/microsoft/identity/client/claims/ClaimsRequest;Ljava/lang/String;)Lcom/microsoft/identity/client/claims/ClaimsRequest;

    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->getJsonStringFromClaimsRequest(Lcom/microsoft/identity/client/claims/ClaimsRequest;)Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setClaimsRequest(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/microsoft/identity/client/TokenParameters;->getClaimsRequest()Lcom/microsoft/identity/client/claims/ClaimsRequest;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setForceRefresh(Z)V

    goto :goto_1

    .line 27
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/identity/client/TokenParameters;->getClaimsRequest()Lcom/microsoft/identity/client/claims/ClaimsRequest;

    move-result-object v1

    .line 28
    invoke-static {v1}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->getJsonStringFromClaimsRequest(Lcom/microsoft/identity/client/claims/ClaimsRequest;)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setClaimsRequest(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-string v1, "Using authority: ["

    .line 30
    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 31
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":createAcquireTokenOperationParameters"

    .line 33
    invoke-static {v2, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbosePII(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v1, Ljava/util/HashSet;

    .line 35
    invoke-virtual {p0}, Lcom/microsoft/identity/client/TokenParameters;->getScopes()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 36
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setScopes(Ljava/util/Set;)V

    .line 37
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getClientId()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setClientId(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getRedirectUri()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setRedirectUri(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->setActivity(Landroid/app/Activity;)V

    .line 43
    invoke-virtual {p0}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->setFragment(Landroidx/fragment/app/Fragment;)V

    .line 45
    invoke-virtual {p0}, Lcom/microsoft/identity/client/TokenParameters;->getAccount()Lcom/microsoft/identity/client/IAccount;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 46
    invoke-virtual {p0}, Lcom/microsoft/identity/client/TokenParameters;->getAccount()Lcom/microsoft/identity/client/IAccount;

    move-result-object v1

    .line 47
    invoke-static {v1}, Lcom/microsoft/identity/client/internal/controllers/OperationParametersAdapter;->getUsername(Lcom/microsoft/identity/client/IAccount;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->setLoginHint(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/microsoft/identity/client/TokenParameters;->getAccountRecord()Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAccount(Lcom/microsoft/identity/common/internal/dto/IAccountRecord;)V

    goto :goto_2

    .line 51
    :cond_4
    invoke-virtual {p0}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getLoginHint()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->setLoginHint(Ljava/lang/String;)V

    .line 53
    :goto_2
    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setTokenCache(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;)V

    .line 54
    invoke-virtual {p0}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getExtraQueryStringParameters()Ljava/util/List;

    move-result-object p2

    .line 55
    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->setExtraQueryStringParameters(Ljava/util/List;)V

    .line 56
    invoke-virtual {p0}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getExtraScopesToConsent()Ljava/util/List;

    move-result-object p2

    .line 57
    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->setExtraScopesToConsent(Ljava/util/List;)V

    .line 58
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object p2

    .line 59
    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAppContext(Landroid/content/Context;)V

    .line 60
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAuthorizationAgent()Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 61
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAuthorizationAgent()Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    move-result-object p2

    .line 62
    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->setAuthorizationAgent(Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;)V

    goto :goto_3

    .line 63
    :cond_5
    sget-object p2, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;->DEFAULT:Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->setAuthorizationAgent(Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;)V

    .line 64
    :goto_3
    instance-of p2, p0, Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters;

    if-eqz p2, :cond_6

    .line 65
    move-object p2, p0

    check-cast p2, Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters;

    .line 66
    invoke-virtual {p2}, Lcom/microsoft/identity/client/internal/IntuneAcquireTokenParameters;->isBrokerBrowserSupportEnabled()Z

    move-result p2

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/microsoft/identity/client/internal/controllers/OperationParametersAdapter;->TAG:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " IntuneAcquireTokenParameters instance, broker browser enabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->setBrokerBrowserSupportEnabled(Z)V

    .line 69
    :cond_6
    invoke-virtual {p0}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getPrompt()Lcom/microsoft/identity/client/Prompt;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getPrompt()Lcom/microsoft/identity/client/Prompt;

    move-result-object p2

    sget-object v1, Lcom/microsoft/identity/client/Prompt;->WHEN_REQUIRED:Lcom/microsoft/identity/client/Prompt;

    if-ne p2, v1, :cond_7

    goto :goto_4

    .line 70
    :cond_7
    invoke-virtual {p0}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getPrompt()Lcom/microsoft/identity/client/Prompt;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Lcom/microsoft/identity/client/Prompt;->toOpenIdConnectPromptParameter()Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    move-result-object p0

    .line 72
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->setOpenIdConnectPromptParameter(Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;)V

    goto :goto_5

    .line 73
    :cond_8
    :goto_4
    sget-object p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;->SELECT_ACCOUNT:Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->setOpenIdConnectPromptParameter(Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;)V

    .line 74
    :goto_5
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object p0

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setApplicationName(Ljava/lang/String;)V

    .line 76
    invoke-static {p0}, Lcom/microsoft/identity/client/internal/controllers/OperationParametersAdapter;->getPackageVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setApplicationVersion(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/microsoft/identity/client/PublicClientApplication;->getSdkVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setSdkVersion(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->isWebViewZoomControlsEnabled()Z

    move-result p0

    .line 79
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->setWebViewZoomControlsEnabled(Z)V

    .line 80
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->isWebViewZoomEnabled()Z

    move-result p0

    .line 81
    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->setWebViewZoomEnabled(Z)V

    return-object v0
.end method

.method public static createAcquireTokenSilentOperationParameters(Lcom/microsoft/identity/client/AcquireTokenSilentParameters;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;)Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/client/TokenParameters;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityFromAuthorityUrl(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/identity/client/TokenParameters;->getClaimsRequest()Lcom/microsoft/identity/client/claims/ClaimsRequest;

    move-result-object v2

    .line 5
    invoke-static {v2}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->getJsonStringFromClaimsRequest(Lcom/microsoft/identity/client/claims/ClaimsRequest;)Ljava/lang/String;

    move-result-object v3

    .line 6
    new-instance v4, Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;

    invoke-direct {v4}, Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAppContext(Landroid/content/Context;)V

    .line 8
    new-instance v5, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/microsoft/identity/client/TokenParameters;->getScopes()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setScopes(Ljava/util/Set;)V

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getClientId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setClientId(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v4, p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setTokenCache(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;)V

    .line 11
    invoke-virtual {v4, v1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAuthority(Lcom/microsoft/identity/common/internal/authorities/Authority;)V

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setApplicationName(Ljava/lang/String;)V

    .line 13
    invoke-static {v0}, Lcom/microsoft/identity/client/internal/controllers/OperationParametersAdapter;->getPackageVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setApplicationVersion(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/microsoft/identity/client/PublicClientApplication;->getSdkVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setSdkVersion(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/microsoft/identity/client/AcquireTokenSilentParameters;->getForceRefresh()Z

    move-result p2

    invoke-virtual {v4, p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setForceRefresh(Z)V

    .line 16
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getRedirectUri()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setRedirectUri(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/microsoft/identity/client/TokenParameters;->getAccountRecord()Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAccount(Lcom/microsoft/identity/common/internal/dto/IAccountRecord;)V

    .line 18
    invoke-virtual {p0}, Lcom/microsoft/identity/client/TokenParameters;->getAuthenticationScheme()Lcom/microsoft/identity/client/AuthenticationScheme;

    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/authscheme/AuthenticationSchemeFactory;->createScheme(Lcom/microsoft/identity/common/internal/authscheme/INameable;)Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    move-result-object p0

    .line 20
    invoke-virtual {v4, p0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAuthenticationScheme(Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)V

    .line 21
    invoke-virtual {v4}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object p0

    instance-of p0, p0, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;

    if-eqz p0, :cond_1

    .line 22
    invoke-virtual {v4}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;

    .line 23
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getMultipleCloudsSupported()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;->setMultipleCloudsSupported(Z)V

    .line 24
    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getClientCapabilities()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/microsoft/identity/client/internal/controllers/OperationParametersAdapter;->addClientCapabilitiesToClaimsRequest(Lcom/microsoft/identity/client/claims/ClaimsRequest;Ljava/lang/String;)Lcom/microsoft/identity/client/claims/ClaimsRequest;

    move-result-object p0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 25
    invoke-virtual {v4, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setForceRefresh(Z)V

    .line 26
    :cond_0
    invoke-static {p0}, Lcom/microsoft/identity/client/claims/ClaimsRequest;->getJsonStringFromClaimsRequest(Lcom/microsoft/identity/client/claims/ClaimsRequest;)Ljava/lang/String;

    move-result-object v3

    .line 27
    :cond_1
    invoke-virtual {v4, v3}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setClaimsRequest(Ljava/lang/String;)V

    return-object v4
.end method

.method public static createOperationParameters(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;)Lcom/microsoft/identity/common/internal/request/OperationParameters;
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/request/OperationParameters;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAppContext(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setTokenCache(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;)V

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getBrowserSafeList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setBrowserSafeList(Ljava/util/List;)V

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getIsSharedDevice()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setIsSharedDevice(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getClientId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setClientId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getRedirectUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setRedirectUri(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAuthority(Lcom/microsoft/identity/common/internal/authorities/Authority;)V

    .line 9
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setApplicationName(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/identity/client/internal/controllers/OperationParametersAdapter;->getPackageVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setApplicationVersion(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/microsoft/identity/client/PublicClientApplication;->getSdkVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setSdkVersion(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getRequiredBrokerProtocolVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setRequiredBrokerProtocolVersion(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPackageVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 3
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRequestAuthority(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Lcom/microsoft/identity/common/internal/authorities/Authority;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v0

    instance-of v0, v0, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryB2CAuthority;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object p0

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityFromAuthorityUrl(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static getUsername(Lcom/microsoft/identity/client/IAccount;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/microsoft/identity/client/IClaimable;->getClaims()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/microsoft/identity/client/IClaimable;->getClaims()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/identity/common/internal/cache/SchemaUtil;->getDisplayableId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    check-cast p0, Lcom/microsoft/identity/client/MultiTenantAccount;

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/identity/client/MultiTenantAccount;->getTenantProfiles()Ljava/util/Map;

    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/client/ITenantProfile;

    invoke-interface {v1}, Lcom/microsoft/identity/client/IClaimable;->getClaims()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/client/ITenantProfile;

    invoke-interface {v0}, Lcom/microsoft/identity/client/IClaimable;->getClaims()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/cache/SchemaUtil;->getDisplayableId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Missing from the token response"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object p0, v0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static isAccountHomeTenant(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tid"

    .line 2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static validateClaimsExistForTenant(Ljava/lang/String;Lcom/microsoft/identity/client/IClaimable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Lcom/microsoft/identity/client/IClaimable;->getClaims()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "Attempting to authorize for tenant: "

    const-string v0, " but no matching account was found."

    .line 2
    invoke-static {p1, p0, v0}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/client/internal/controllers/OperationParametersAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":validateClaimsExistForTenant"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/microsoft/identity/client/exception/MsalClientException;

    invoke-direct {p1, p0}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
