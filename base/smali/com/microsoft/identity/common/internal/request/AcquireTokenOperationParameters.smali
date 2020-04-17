.class public Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;
.super Lcom/microsoft/identity/common/internal/request/OperationParameters;
.source "SourceFile"


# instance fields
.field public transient mActivity:Landroid/app/Activity;

.field public mAuthorizationAgent:Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;
    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field

.field public mBrokerBrowserSupportEnabled:Z

.field public mExtraQueryStringParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field

.field public mExtraScopesToConsent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field

.field public transient mFragment:Landroidx/fragment/app/Fragment;

.field public mLoginHint:Ljava/lang/String;

.field public mOpenIdConnectPromptParameter:Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;
    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field

.field public transient mRequestHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public webViewZoomControlsEnabled:Z
    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field

.field public webViewZoomEnabled:Z
    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 3
    :cond_2
    check-cast p1, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;

    .line 4
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mLoginHint:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v3, p1, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mLoginHint:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mLoginHint:Ljava/lang/String;

    if-eqz v1, :cond_4

    :goto_0
    return v2

    .line 5
    :cond_4
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mExtraQueryStringParameters:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v3, p1, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mExtraQueryStringParameters:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_5
    iget-object v1, p1, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mExtraQueryStringParameters:Ljava/util/List;

    if-eqz v1, :cond_6

    :goto_1
    return v2

    .line 6
    :cond_6
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mExtraScopesToConsent:Ljava/util/List;

    if-eqz v1, :cond_7

    iget-object v3, p1, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mExtraScopesToConsent:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_7
    iget-object v1, p1, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mExtraScopesToConsent:Ljava/util/List;

    if-eqz v1, :cond_8

    :goto_2
    return v2

    .line 7
    :cond_8
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mOpenIdConnectPromptParameter:Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    iget-object p1, p1, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mOpenIdConnectPromptParameter:Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    if-ne v1, p1, :cond_9

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getAuthorizationAgent()Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mAuthorizationAgent:Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    return-object v0
.end method

.method public getBrowserSafeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/ui/browser/BrowserDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mBrowserSafeList:Ljava/util/List;

    return-object v0
.end method

.method public getExtraQueryStringParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mExtraQueryStringParameters:Ljava/util/List;

    return-object v0
.end method

.method public getExtraScopesToConsent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mExtraScopesToConsent:Ljava/util/List;

    return-object v0
.end method

.method public getFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getLoginHint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mLoginHint:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenIdConnectPromptParameter()Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mOpenIdConnectPromptParameter:Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mRequestHeaders:Ljava/util/HashMap;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mLoginHint:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mExtraQueryStringParameters:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mExtraScopesToConsent:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mOpenIdConnectPromptParameter:Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method

.method public isBrokerBrowserSupportEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mBrokerBrowserSupportEnabled:Z

    return v0
.end method

.method public isWebViewZoomControlsEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->webViewZoomControlsEnabled:Z

    return v0
.end method

.method public isWebViewZoomEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->webViewZoomEnabled:Z

    return v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setAuthorizationAgent(Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mAuthorizationAgent:Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    return-void
.end method

.method public setBrokerBrowserSupportEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mBrokerBrowserSupportEnabled:Z

    return-void
.end method

.method public setBrowserSafeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/ui/browser/BrowserDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mBrowserSafeList:Ljava/util/List;

    return-void
.end method

.method public setExtraQueryStringParameters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mExtraQueryStringParameters:Ljava/util/List;

    return-void
.end method

.method public setExtraScopesToConsent(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mExtraScopesToConsent:Ljava/util/List;

    return-void
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public setLoginHint(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mLoginHint:Ljava/lang/String;

    return-void
.end method

.method public setOpenIdConnectPromptParameter(Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mOpenIdConnectPromptParameter:Lcom/microsoft/identity/common/internal/providers/oauth2/OpenIdConnectPromptParameter;

    return-void
.end method

.method public setRequestHeaders(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->mRequestHeaders:Ljava/util/HashMap;

    return-void
.end method

.method public setWebViewZoomControlsEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->webViewZoomControlsEnabled:Z

    return-void
.end method

.method public setWebViewZoomEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;->webViewZoomEnabled:Z

    return-void
.end method
