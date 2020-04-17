.class public Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;


# static fields
.field public static final TAG:Ljava/lang/String; = "com.microsoft.identity.common.internal.result.LocalAuthenticationResult"


# instance fields
.field public mAccessTokenRecord:Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

.field public mAccountRecord:Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

.field public mCompleteResultFromCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mFamilyId:Ljava/lang/String;

.field public mRawIdToken:Ljava/lang/String;

.field public mRefreshToken:Ljava/lang/String;

.field public mRefreshTokenAge:Ljava/lang/String;

.field public mSpeRing:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/cache/ICacheRecord;Lcom/microsoft/identity/common/internal/request/SdkType;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getAccessToken()Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->mAccessTokenRecord:Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    .line 5
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->mAccountRecord:Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    .line 6
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getRefreshToken()Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/dto/Credential;->getSecret()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->mRefreshToken:Ljava/lang/String;

    .line 8
    :cond_0
    sget-object v0, Lcom/microsoft/identity/common/internal/request/SdkType;->ADAL:Lcom/microsoft/identity/common/internal/request/SdkType;

    if-ne p2, v0, :cond_1

    .line 9
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getV1IdToken()Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    move-result-object p2

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getIdToken()Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/Credential;->getSecret()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->mRawIdToken:Ljava/lang/String;

    .line 12
    sget-object p1, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->TAG:Ljava/lang/String;

    const-string v0, "Id Token type: "

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 13
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/dto/Credential;->getCredentialType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_2
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getV1IdToken()Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 16
    sget-object v0, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->TAG:Ljava/lang/String;

    const-string v1, "V1 Id Token returned here, "

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/cache/ICacheRecord;->getV1IdToken()Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->getSecret()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->mRawIdToken:Ljava/lang/String;

    .line 18
    :cond_3
    :goto_1
    sget-object p1, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->TAG:Ljava/lang/String;

    const-string v0, "Constructing LocalAuthentication result, AccessTokenRecord null: "

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->mAccessTokenRecord:Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    const/4 v2, 0x1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", AccountRecord null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->mAccountRecord:Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", RefreshTokenRecord null or empty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->mRefreshToken:Ljava/lang/String;

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", IdTokenRecord null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-static {p1, p2}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/internal/cache/ICacheRecord;Ljava/util/List;Lcom/microsoft/identity/common/internal/request/SdkType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;",
            "Lcom/microsoft/identity/common/internal/request/SdkType;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;-><init>(Lcom/microsoft/identity/common/internal/cache/ICacheRecord;Lcom/microsoft/identity/common/internal/request/SdkType;)V

    .line 2
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->mCompleteResultFromCache:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->mAccessTokenRecord:Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/dto/Credential;->getSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessTokenRecord()Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->mAccessTokenRecord:Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    return-object v0
.end method

.method public getAccountRecord()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->mAccountRecord:Lcom/microsoft/identity/common/internal/dto/IAccountRecord;

    return-object v0
.end method

.method public getCacheRecordWithTenantProfileData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->mCompleteResultFromCache:Ljava/util/List;

    return-object v0
.end method

.method public getExpiresOn()Ljava/util/Date;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/Date;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->mAccessTokenRecord:Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

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

.method public getFamilyId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->mFamilyId:Ljava/lang/String;

    return-object v0
.end method

.method public getIdToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->mRawIdToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->mRefreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshTokenAge()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->mRefreshTokenAge:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->mAccessTokenRecord:Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->getTarget()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpeRing()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->mSpeRing:Ljava/lang/String;

    return-object v0
.end method

.method public getTenantId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->mAccessTokenRecord:Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->getRealm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->mAccessTokenRecord:Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/dto/Credential;->getHomeAccountId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setRefreshTokenAge(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->mRefreshTokenAge:Ljava/lang/String;

    return-void
.end method

.method public setSpeRing(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/result/LocalAuthenticationResult;->mSpeRing:Ljava/lang/String;

    return-void
.end method
