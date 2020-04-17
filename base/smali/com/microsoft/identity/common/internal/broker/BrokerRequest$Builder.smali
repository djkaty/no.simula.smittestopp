.class public Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/broker/BrokerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mApplicationName:Ljava/lang/String;

.field public mApplicationVersion:Ljava/lang/String;

.field public mAuthenticationScheme:Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

.field public mAuthority:Ljava/lang/String;

.field public mAuthorizationAgent:Ljava/lang/String;

.field public mClaims:Ljava/lang/String;

.field public mClientId:Ljava/lang/String;

.field public mCorrelationId:Ljava/lang/String;

.field public mEnvironment:Ljava/lang/String;

.field public mExtraQueryStringParameter:Ljava/lang/String;

.field public mForceRefresh:Z

.field public mHomeAccountId:Ljava/lang/String;

.field public mLocalAccountId:Ljava/lang/String;

.field public mMsalVersion:Ljava/lang/String;

.field public mMultipleCloudsSupported:Z

.field public mPrompt:Ljava/lang/String;

.field public mRedirect:Ljava/lang/String;

.field public mScope:Ljava/lang/String;

.field public mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mScope:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mClaims:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mForceRefresh:Z

    return p0
.end method

.method public static synthetic access$1200(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mApplicationName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mApplicationVersion:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mMsalVersion:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mEnvironment:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mMultipleCloudsSupported:Z

    return p0
.end method

.method public static synthetic access$1700(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mAuthorizationAgent:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mAuthenticationScheme:Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mRedirect:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mClientId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mHomeAccountId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mLocalAccountId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mUserName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mExtraQueryStringParameter:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mCorrelationId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mPrompt:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public applicationName(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mApplicationName:Ljava/lang/String;

    return-object p0
.end method

.method public applicationVersion(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mApplicationVersion:Ljava/lang/String;

    return-object p0
.end method

.method public authenticationScheme(Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mAuthenticationScheme:Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    return-object p0
.end method

.method public authority(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public authorizationAgent(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mAuthorizationAgent:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/microsoft/identity/common/internal/broker/BrokerRequest;
    .locals 2

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;-><init>(Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;Lcom/microsoft/identity/common/internal/broker/BrokerRequest$1;)V

    return-object v0
.end method

.method public claims(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mClaims:Ljava/lang/String;

    return-object p0
.end method

.method public clientId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mClientId:Ljava/lang/String;

    return-object p0
.end method

.method public correlationId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mCorrelationId:Ljava/lang/String;

    return-object p0
.end method

.method public environment(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mEnvironment:Ljava/lang/String;

    return-object p0
.end method

.method public extraQueryStringParameter(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mExtraQueryStringParameter:Ljava/lang/String;

    return-object p0
.end method

.method public forceRefresh(Z)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mForceRefresh:Z

    return-object p0
.end method

.method public homeAccountId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mHomeAccountId:Ljava/lang/String;

    return-object p0
.end method

.method public localAccountId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mLocalAccountId:Ljava/lang/String;

    return-object p0
.end method

.method public msalVersion(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mMsalVersion:Ljava/lang/String;

    return-object p0
.end method

.method public multipleCloudsSupported(Z)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mMultipleCloudsSupported:Z

    return-object p0
.end method

.method public prompt(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mPrompt:Ljava/lang/String;

    return-object p0
.end method

.method public redirect(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mRedirect:Ljava/lang/String;

    return-object p0
.end method

.method public scope(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mScope:Ljava/lang/String;

    return-object p0
.end method

.method public username(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$Builder;->mUserName:Ljava/lang/String;

    return-object p0
.end method
