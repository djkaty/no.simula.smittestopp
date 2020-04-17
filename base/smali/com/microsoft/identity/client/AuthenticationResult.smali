.class public final Lcom/microsoft/identity/client/AuthenticationResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/IAuthenticationResult;


# instance fields
.field public final mAccessToken:Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

.field public final mAccount:Lcom/microsoft/identity/client/IAccount;

.field public final mTenantId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;

    .line 3
    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getAccessToken()Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/identity/client/AuthenticationResult;->mAccessToken:Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    .line 4
    invoke-interface {v1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->getRealm()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/identity/client/AuthenticationResult;->mTenantId:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/microsoft/identity/client/AccountAdapter;->adapt(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/client/IAccount;

    iput-object p1, p0, Lcom/microsoft/identity/client/AuthenticationResult;->mAccount:Lcom/microsoft/identity/client/IAccount;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/AuthenticationResult;->mAccessToken:Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/dto/Credential;->getSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccount()Lcom/microsoft/identity/client/IAccount;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/AuthenticationResult;->mAccount:Lcom/microsoft/identity/client/IAccount;

    return-object v0
.end method

.method public getAuthenticationScheme()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/AuthenticationResult;->mAccessToken:Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->getAccessTokenType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizationHeader()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/AuthenticationResult;->mAccessToken:Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->getAccessTokenType()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    .line 2
    invoke-static {v0, v1}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/client/AuthenticationResult;->mAccessToken:Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    .line 3
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpiresOn()Ljava/util/Date;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/Date;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/microsoft/identity/client/AuthenticationResult;->mAccessToken:Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    .line 2
    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->getExpiresOn()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 4
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getScope()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/AuthenticationResult;->mAccessToken:Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->getTarget()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTenantId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/AuthenticationResult;->mTenantId:Ljava/lang/String;

    return-object v0
.end method
