.class public Lcom/microsoft/identity/common/internal/broker/BrokerRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;,
        Lcom/microsoft/identity/common/internal/broker/BrokerRequest$SerializedNames;
    }
.end annotation


# instance fields
.field public mApplicationName:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "client_app_name"
    .end annotation
.end field

.field public mApplicationVersion:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "client_app_version"
    .end annotation
.end field

.field public mAuthenticationScheme:Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;
    .annotation runtime Le/c/c/v/c;
        value = "authentication_scheme"
    .end annotation
.end field

.field public mAuthority:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "authority"
    .end annotation
.end field

.field public mAuthorizationAgent:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "authorization_agent"
    .end annotation
.end field

.field public mClaims:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "claims"
    .end annotation
.end field

.field public mClientId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "client_id"
    .end annotation
.end field

.field public mCorrelationId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "correlation_id"
    .end annotation
.end field

.field public mEnvironment:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "environment"
    .end annotation
.end field

.field public mExtraQueryStringParameter:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "extra_query_param"
    .end annotation
.end field

.field public mForceRefresh:Z
    .annotation runtime Le/c/c/v/c;
        value = "force_refresh"
    .end annotation
.end field

.field public mHomeAccountId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "home_account_id"
    .end annotation
.end field

.field public mLocalAccountId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "local_account_id"
    .end annotation
.end field

.field public mMsalVersion:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "client_version"
    .end annotation
.end field

.field public mMultipleCloudsSupported:Z
    .annotation runtime Le/c/c/v/c;
        value = "multiple_clouds_supported"
    .end annotation
.end field

.field public mPrompt:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "prompt"
    .end annotation
.end field

.field public mRedirect:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "redirect_uri"
    .end annotation
.end field

.field public mScope:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "scopes"
    .end annotation
.end field

.field public mUserName:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "username"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->access$000(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mAuthority:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->access$100(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mScope:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->access$200(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mRedirect:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->access$300(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mClientId:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->access$400(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mHomeAccountId:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->access$500(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mLocalAccountId:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->access$600(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mUserName:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->access$700(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mExtraQueryStringParameter:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->access$800(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mCorrelationId:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->access$900(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mPrompt:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->access$1000(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mClaims:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->access$1100(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mForceRefresh:Z

    .line 15
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->access$1200(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mApplicationName:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->access$1300(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mApplicationVersion:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->access$1400(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mMsalVersion:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->access$1500(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mEnvironment:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->access$1600(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mMultipleCloudsSupported:Z

    .line 20
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->access$1700(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mAuthorizationAgent:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->access$1800(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mAuthenticationScheme:Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;Lcom/microsoft/identity/common/internal/broker/BrokerRequest$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;-><init>(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getApplicationName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mApplicationName:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mApplicationVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthenticationScheme()Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mAuthenticationScheme:Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorizationAgent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mAuthorizationAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getClaims()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mClaims:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getCorrelationId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mCorrelationId:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mEnvironment:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraQueryStringParameter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mExtraQueryStringParameter:Ljava/lang/String;

    return-object v0
.end method

.method public getForceRefresh()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mForceRefresh:Z

    return v0
.end method

.method public getHomeAccountId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mHomeAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalAccountId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mLocalAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsalVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mMsalVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getMultipleCloudsSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mMultipleCloudsSupported:Z

    return v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mPrompt:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirect()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mRedirect:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mScope:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mUserName:Ljava/lang/String;

    return-object v0
.end method
