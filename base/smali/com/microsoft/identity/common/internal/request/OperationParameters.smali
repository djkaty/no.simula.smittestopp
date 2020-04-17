.class public Lcom/microsoft/identity/common/internal/request/OperationParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "OperationParameters"


# instance fields
.field public clientId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field

.field public mAccount:Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

.field public transient mAppContext:Landroid/content/Context;

.field public mApplicationName:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field

.field public mApplicationVersion:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field

.field public mAuthenticationScheme:Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;
    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field

.field public mAuthority:Lcom/microsoft/identity/common/internal/authorities/Authority;
    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field

.field public transient mBrowserSafeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/ui/browser/BrowserDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public mClaimsRequestJson:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field

.field public mCorrelationId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field

.field public mForceRefresh:Z
    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field

.field public transient mIsSharedDevice:Z

.field public mRequiredBrokerProtocolVersion:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field

.field public mScopes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field

.field public mSdkType:Lcom/microsoft/identity/common/internal/request/SdkType;
    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field

.field public mSdkVersion:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field

.field public transient mTokenCache:Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

.field public redirectUri:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/microsoft/identity/common/internal/request/SdkType;->MSAL:Lcom/microsoft/identity/common/internal/request/SdkType;

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mSdkType:Lcom/microsoft/identity/common/internal/request/SdkType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_6

    .line 2
    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/internal/request/OperationParameters;

    .line 3
    iget-boolean v2, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mForceRefresh:Z

    iget-boolean v3, p1, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mForceRefresh:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mScopes:Ljava/util/Set;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mScopes:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mScopes:Ljava/util/Set;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 5
    :cond_4
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mAccount:Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mAccount:Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mAccount:Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 6
    :cond_6
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->clientId:Ljava/lang/String;

    iget-object v3, p1, Lcom/microsoft/identity/common/internal/request/OperationParameters;->clientId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 7
    :cond_7
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->redirectUri:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lcom/microsoft/identity/common/internal/request/OperationParameters;->redirectUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_2

    :cond_8
    iget-object v2, p1, Lcom/microsoft/identity/common/internal/request/OperationParameters;->redirectUri:Ljava/lang/String;

    if-eqz v2, :cond_9

    :goto_2
    return v1

    .line 8
    :cond_9
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mAuthority:Lcom/microsoft/identity/common/internal/authorities/Authority;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mAuthority:Lcom/microsoft/identity/common/internal/authorities/Authority;

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/internal/authorities/Authority;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_3

    :cond_a
    iget-object v2, p1, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mAuthority:Lcom/microsoft/identity/common/internal/authorities/Authority;

    if-eqz v2, :cond_b

    :goto_3
    return v1

    .line 9
    :cond_b
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mClaimsRequestJson:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v3, p1, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mClaimsRequestJson:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_4

    :cond_c
    iget-object v2, p1, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mClaimsRequestJson:Ljava/lang/String;

    if-eqz v2, :cond_d

    :goto_4
    return v1

    .line 10
    :cond_d
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mAuthenticationScheme:Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    iget-object p1, p1, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mAuthenticationScheme:Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    if-eqz v2, :cond_e

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5

    :cond_e
    if-nez p1, :cond_f

    goto :goto_5

    :cond_f
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_10
    :goto_6
    return v1
.end method

.method public getAccount()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mAccount:Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    return-object v0
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mApplicationName:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mApplicationVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthenticationScheme()Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mAuthenticationScheme:Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    return-object v0
.end method

.method public getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mAuthority:Lcom/microsoft/identity/common/internal/authorities/Authority;

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

.method public getClaimsRequestJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mClaimsRequestJson:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getCorrelationId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mCorrelationId:Ljava/lang/String;

    return-object v0
.end method

.method public getForceRefresh()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mForceRefresh:Z

    return v0
.end method

.method public getIsSharedDevice()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mIsSharedDevice:Z

    return v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->redirectUri:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredBrokerProtocolVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mRequiredBrokerProtocolVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getScopes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mScopes:Ljava/util/Set;

    return-object v0
.end method

.method public getSdkType()Lcom/microsoft/identity/common/internal/request/SdkType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mSdkType:Lcom/microsoft/identity/common/internal/request/SdkType;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenCache()Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mTokenCache:Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mScopes:Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mAccount:Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->clientId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 4
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->redirectUri:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 5
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mAuthority:Lcom/microsoft/identity/common/internal/authorities/Authority;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/authorities/Authority;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 6
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mClaimsRequestJson:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 7
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mForceRefresh:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 8
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mAuthenticationScheme:Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v2, v1

    return v2
.end method

.method public setAccount(Lcom/microsoft/identity/common/internal/dto/IAccountRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mAccount:Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    return-void
.end method

.method public setAppContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mAppContext:Landroid/content/Context;

    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mApplicationName:Ljava/lang/String;

    return-void
.end method

.method public setApplicationVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mApplicationVersion:Ljava/lang/String;

    return-void
.end method

.method public setAuthenticationScheme(Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mAuthenticationScheme:Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    return-void
.end method

.method public setAuthority(Lcom/microsoft/identity/common/internal/authorities/Authority;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mAuthority:Lcom/microsoft/identity/common/internal/authorities/Authority;

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

.method public setClaimsRequest(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mClaimsRequestJson:Ljava/lang/String;

    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setCorrelationId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mCorrelationId:Ljava/lang/String;

    return-void
.end method

.method public setForceRefresh(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mForceRefresh:Z

    return-void
.end method

.method public setIsSharedDevice(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mIsSharedDevice:Z

    return-void
.end method

.method public setRedirectUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->redirectUri:Ljava/lang/String;

    return-void
.end method

.method public setRequiredBrokerProtocolVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mRequiredBrokerProtocolVersion:Ljava/lang/String;

    return-void
.end method

.method public setScopes(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mScopes:Ljava/util/Set;

    return-void
.end method

.method public setSdkType(Lcom/microsoft/identity/common/internal/request/SdkType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mSdkType:Lcom/microsoft/identity/common/internal/request/SdkType;

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mSdkVersion:Ljava/lang/String;

    return-void
.end method

.method public setTokenCache(Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mTokenCache:Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    return-void
.end method

.method public validate()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/request/OperationParameters;->TAG:Ljava/lang/String;

    const-string v2, ":validate"

    const-string v3, "Validating operation params..."

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mScopes:Ljava/util/Set;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, ""

    .line 3
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 4
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mScopes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "acquireToken"

    const-string v2, "acquireTokenSilent"

    if-nez v0, :cond_3

    .line 5
    instance-of v0, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;

    const-string v3, "scope is empty or null"

    const-string v4, "scopes"

    if-nez v0, :cond_2

    .line 6
    instance-of v0, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;

    if-nez v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance v0, Lcom/microsoft/identity/common/exception/ArgumentException;

    invoke-direct {v0, v1, v4, v3}, Lcom/microsoft/identity/common/exception/ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    new-instance v0, Lcom/microsoft/identity/common/exception/ArgumentException;

    invoke-direct {v0, v2, v4, v3}, Lcom/microsoft/identity/common/exception/ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/request/OperationParameters;->mAuthenticationScheme:Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    if-nez v0, :cond_6

    .line 10
    instance-of v0, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;

    const-string v3, "authentication scheme is undefined"

    const-string v4, "authentication_scheme"

    if-nez v0, :cond_5

    .line 11
    instance-of v0, p0, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;

    if-nez v0, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    new-instance v0, Lcom/microsoft/identity/common/exception/ArgumentException;

    invoke-direct {v0, v1, v4, v3}, Lcom/microsoft/identity/common/exception/ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_5
    new-instance v0, Lcom/microsoft/identity/common/exception/ArgumentException;

    invoke-direct {v0, v2, v4, v3}, Lcom/microsoft/identity/common/exception/ArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    return-void
.end method
