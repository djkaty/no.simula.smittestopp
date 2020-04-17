.class public Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/request/IBrokerRequestAdapter;


# static fields
.field public static final TAG:Ljava/lang/String; = "com.microsoft.identity.common.internal.request.MsalBrokerRequestAdapter"

.field public static sRequestAdapterGsonInstance:Lcom/google/gson/Gson;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Le/c/c/e;

    invoke-direct {v0}, Le/c/c/e;-><init>()V

    const-class v1, Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    new-instance v2, Lcom/microsoft/identity/common/internal/request/AuthenticationSchemeTypeAdapter;

    invoke-direct {v2}, Lcom/microsoft/identity/common/internal/request/AuthenticationSchemeTypeAdapter;-><init>()V

    .line 2
    invoke-virtual {v0, v1, v2}, Le/c/c/e;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Le/c/c/e;

    .line 3
    invoke-virtual {v0}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->sRequestAdapterGsonInstance:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthenticationScheme(Lcom/microsoft/identity/common/internal/broker/BrokerRequest;)Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getAuthenticationScheme()Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Lcom/microsoft/identity/common/internal/authscheme/BearerAuthenticationSchemeInternal;

    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/authscheme/BearerAuthenticationSchemeInternal;-><init>()V

    :cond_0
    return-object p0
.end method

.method public static getBrowserSafeListForBroker()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/ui/browser/BrowserDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "7fmduHKTdHHrlMvldlEqAIlSfii1tl35bxj1OXN5Ve8c4lU6URVu4xtSHc3BVZxS6WWJnxMDhIfQN0N0K2NDJg=="

    .line 3
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v2, Lcom/microsoft/identity/common/internal/ui/browser/BrowserDescriptor;

    const/4 v3, 0x0

    const-string v4, "com.android.chrome"

    invoke-direct {v2, v4, v1, v3, v3}, Lcom/microsoft/identity/common/internal/ui/browser/BrowserDescriptor;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getMultipleCloudsSupported(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v0

    instance-of v0, v0, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;->getMultipleCloudsSupported()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getRedirectUri(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getRedirectUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getApplicationName()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v0, p1}, Lcom/microsoft/identity/common/internal/broker/BrokerValidator;->getBrokerRedirectUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getRedirectUri()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getScopesAsSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    :cond_0
    const-string v0, " "

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private isCallingPackageIntune(Ljava/lang/String;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->TAG:Ljava/lang/String;

    const-string v2, ":isCallingPackageIntune"

    invoke-static {v0, v1, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling package name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.microsoft.intune"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public brokerInteractiveParametersFromActivity(Landroid/app/Activity;)Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;
    .locals 5

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Constructing BrokerAcquireTokenOperationParameters from calling activity"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->sRequestAdapterGsonInstance:Lcom/google/gson/Gson;

    const-string v3, "broker_request_v2"

    .line 5
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;

    .line 6
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;

    .line 7
    invoke-static {v2}, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->getAuthenticationScheme(Lcom/microsoft/identity/common/internal/broker/BrokerRequest;)Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAuthenticationScheme(Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)V

    .line 8
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->setActivity(Landroid/app/Activity;)V

    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAppContext(Landroid/content/Context;)V

    .line 10
    sget-object p1, Lcom/microsoft/identity/common/internal/request/SdkType;->MSAL:Lcom/microsoft/identity/common/internal/request/SdkType;

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setSdkType(Lcom/microsoft/identity/common/internal/request/SdkType;)V

    const-string p1, "caller.info.uid"

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 12
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;->setCallerUId(I)V

    .line 13
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getApplicationName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;->setCallerPackageName(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getApplicationVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;->setCallerAppVersion(Ljava/lang/String;)V

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getExtraQueryStringParameter()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 17
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getExtraQueryStringParameter()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/util/QueryParamsAdapter;->_fromJson(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->setExtraQueryStringParameters(Ljava/util/List;)V

    .line 19
    :cond_0
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v1, p1}, Lcom/microsoft/identity/common/internal/request/AdalBrokerRequestAdapter;->getRequestAuthorityWithExtraQP(Ljava/lang/String;Ljava/util/List;)Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 21
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getMultipleCloudsSupported()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;->setMultipleCloudsSupported(Z)V

    .line 22
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAuthority(Lcom/microsoft/identity/common/internal/authorities/Authority;)V

    .line 23
    :cond_1
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getScope()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->getScopesAsSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setScopes(Ljava/util/Set;)V

    .line 24
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getClientId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setClientId(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getRedirect()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setRedirectUri(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getUserName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->setLoginHint(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getCorrelationId()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    :cond_2
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setCorrelationId(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getClaims()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setClaimsRequest(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getPrompt()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 34
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getPrompt()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;->valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    move-result-object p1

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;->NONE:Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    .line 35
    :goto_0
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->setOpenIdConnectPromptParameter(Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;)V

    .line 36
    sget-object p1, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Authorization agent passed in by MSAL: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getAuthorizationAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getAuthorizationAgent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 38
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getAuthorizationAgent()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;->BROWSER:Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    const-string v1, "BROWSER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 39
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;->getCallerPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->isCallingPackageIntune(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 40
    sget-object p1, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Setting Authorization Agent to Browser for Intune app"

    invoke-static {p1, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object p1, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;->BROWSER:Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->setAuthorizationAgent(Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;)V

    const/4 p1, 0x1

    .line 42
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->setBrokerBrowserSupportEnabled(Z)V

    .line 43
    invoke-static {}, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->getBrowserSafeListForBroker()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->setBrowserSafeList(Ljava/util/List;)V

    goto :goto_1

    .line 44
    :cond_4
    sget-object p1, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;->WEBVIEW:Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->setAuthorizationAgent(Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;)V

    .line 45
    :goto_1
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getEnvironment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 46
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getEnvironment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/authorities/Environment;->valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/authorities/Environment;

    move-result-object p1

    .line 47
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->setEnvironment(Lcom/microsoft/identity/common/internal/authorities/Environment;)V

    :cond_5
    return-object v0
.end method

.method public brokerRequestFromAcquireTokenParameters(Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest;
    .locals 3

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Constructing result bundle from AcquireTokenOperationParameters."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->authority(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getScopes()Ljava/util/Set;

    move-result-object v1

    const-string v2, " "

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->scope(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 5
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->getRedirectUri(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->redirect(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->clientId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getLoginHint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->username(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getExtraQueryStringParameters()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getExtraQueryStringParameters()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/identity/common/internal/util/QueryParamsAdapter;->_toJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->extraQueryStringParameter(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->getOpenIdConnectPromptParameter()Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->prompt(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getClaimsRequestJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->claims(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getForceRefresh()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->forceRefresh(Z)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 14
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/internal/logging/IRequestContext;

    move-result-object v1

    const-string v2, "correlation_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->correlationId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->applicationName(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getApplicationVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->applicationVersion(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->msalVersion(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 18
    invoke-static {}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->getEnvironment()Lcom/microsoft/identity/common/internal/authorities/Environment;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->environment(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 19
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->getMultipleCloudsSupported(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->multipleCloudsSupported(Z)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->isBrokerBrowserSupportEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;->BROWSER:Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    const-string v1, "BROWSER"

    goto :goto_1

    .line 21
    :cond_1
    sget-object v1, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;->WEBVIEW:Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    const-string v1, "WEBVIEW"

    .line 22
    :goto_1
    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->authorizationAgent(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthenticationScheme()Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->authenticationScheme(Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->build()Lcom/microsoft/identity/common/internal/broker/BrokerRequest;

    move-result-object p1

    return-object p1
.end method

.method public brokerRequestFromSilentOperationParameters(Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest;
    .locals 3

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Constructing result bundle from AcquireTokenSilentOperationParameters."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->authority(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getScopes()Ljava/util/Set;

    move-result-object v1

    const-string v2, " "

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->scope(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 5
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->getRedirectUri(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->redirect(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->clientId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAccount()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/dto/IAccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->homeAccountId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAccount()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/dto/IAccountRecord;->getLocalAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->localAccountId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAccount()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/dto/IAccountRecord;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->username(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getClaimsRequestJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->claims(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getForceRefresh()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->forceRefresh(Z)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 12
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/internal/logging/IRequestContext;

    move-result-object v1

    const-string v2, "correlation_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->correlationId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->applicationName(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getApplicationVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->applicationVersion(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->msalVersion(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 16
    invoke-static {}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->getEnvironment()Lcom/microsoft/identity/common/internal/authorities/Environment;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->environment(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 17
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->getMultipleCloudsSupported(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->multipleCloudsSupported(Z)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthenticationScheme()Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->authenticationScheme(Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->build()Lcom/microsoft/identity/common/internal/broker/BrokerRequest;

    move-result-object p1

    return-object p1
.end method

.method public brokerSilentParametersFromBundle(Landroid/os/Bundle;Landroid/content/Context;Landroid/accounts/Account;)Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;
    .locals 3

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Constructing BrokerAcquireTokenSilentOperationParameters from result bundle"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->sRequestAdapterGsonInstance:Lcom/google/gson/Gson;

    const-string v1, "broker_request_v2"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;

    .line 5
    new-instance v1, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;

    invoke-direct {v1}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;-><init>()V

    .line 6
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->getAuthenticationScheme(Lcom/microsoft/identity/common/internal/broker/BrokerRequest;)Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAuthenticationScheme(Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)V

    .line 7
    invoke-virtual {v1, p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAppContext(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v1, p3}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->setAccountManagerAccount(Landroid/accounts/Account;)V

    .line 9
    sget-object p2, Lcom/microsoft/identity/common/internal/request/SdkType;->MSAL:Lcom/microsoft/identity/common/internal/request/SdkType;

    invoke-virtual {v1, p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setSdkType(Lcom/microsoft/identity/common/internal/request/SdkType;)V

    const-string p2, "caller.info.uid"

    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 11
    invoke-virtual {v1, p2}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->setCallerUId(I)V

    .line 12
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getApplicationName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->setCallerPackageName(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getApplicationVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->setCallerAppVersion(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getAuthority()Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/authorities/Authority;->getAuthorityFromAuthorityUrl(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object p2

    .line 16
    instance-of p3, p2, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;

    if-eqz p3, :cond_0

    .line 17
    move-object p3, p2

    check-cast p3, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;

    .line 18
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getMultipleCloudsSupported()Z

    move-result v2

    .line 19
    invoke-virtual {p3, v2}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;->setMultipleCloudsSupported(Z)V

    .line 20
    :cond_0
    invoke-virtual {v1, p2}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setAuthority(Lcom/microsoft/identity/common/internal/authorities/Authority;)V

    .line 21
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getCorrelationId()Ljava/lang/String;

    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 24
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    :cond_1
    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setCorrelationId(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getScope()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->getScopesAsSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 28
    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setScopes(Ljava/util/Set;)V

    .line 29
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getRedirect()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setRedirectUri(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getClientId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setClientId(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getForceRefresh()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setForceRefresh(Z)V

    .line 32
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getClaims()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->setClaimsRequest(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getUserName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->setLoginHint(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getHomeAccountId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->setHomeAccountId(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getLocalAccountId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->setLocalAccountId(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getExtraQueryStringParameter()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 37
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getExtraQueryStringParameter()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/util/QueryParamsAdapter;->_fromJson(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 38
    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;->setExtraQueryStringParameters(Ljava/util/List;)V

    .line 39
    :cond_2
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getEnvironment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 40
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->getEnvironment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/authorities/Environment;->valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/authorities/Environment;

    move-result-object p1

    .line 41
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectory;->setEnvironment(Lcom/microsoft/identity/common/internal/authorities/Environment;)V

    :cond_3
    return-object v1
.end method

.method public getRequestBundleForAcquireTokenSilent(Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;)Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->brokerRequestFromSilentOperationParameters(Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest;

    move-result-object v0

    .line 4
    sget-object v2, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->sRequestAdapterGsonInstance:Lcom/google/gson/Gson;

    const-class v3, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;

    .line 5
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "broker_request_v2"

    .line 6
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v0, "caller.info.uid"

    .line 8
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method public getRequestBundleForGetAccounts(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getClientId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "account.clientid.key"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getRedirectUri()Ljava/lang/String;

    move-result-object p1

    const-string v1, "account.redirect"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getRequestBundleForHello(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "broker.protocol.version.name"

    const-string v2, "4.0"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getRequiredBrokerProtocolVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getRequiredBrokerProtocolVersion()Ljava/lang/String;

    move-result-object p1

    const-string v1, "required.broker.protocol.version.name"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getRequestBundleForRemoveAccount(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAccount()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getClientId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "account.clientid.key"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAccount()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/dto/IAccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    const-string v2, "environment"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAccount()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    move-result-object p1

    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/dto/IAccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "account.home.account.id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getRequestBundleForRemoveAccountFromSharedDevice(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getBrowserSafeList()Ljava/util/List;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/microsoft/identity/common/internal/ui/browser/BrowserSelector;->select(Landroid/content/Context;Ljava/util/List;)Lcom/microsoft/identity/common/internal/ui/browser/Browser;

    move-result-object p1

    const-string v1, "default.browser.package.name"

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/ui/browser/Browser;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    sget-object v1, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method
