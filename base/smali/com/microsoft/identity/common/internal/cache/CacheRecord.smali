.class public Lcom/microsoft/identity/common/internal/cache/CacheRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/cache/ICacheRecord;


# instance fields
.field public mAccessToken:Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

.field public mAccount:Lcom/microsoft/identity/common/internal/dto/AccountRecord;

.field public mIdToken:Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

.field public mRefreshToken:Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

.field public mV1IdToken:Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    if-eqz p1, :cond_a

    .line 1
    const-class v2, Lcom/microsoft/identity/common/internal/cache/CacheRecord;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_4

    .line 2
    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/internal/cache/CacheRecord;

    .line 3
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->mAccount:Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->mAccount:Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->mAccount:Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 4
    :cond_3
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->mAccessToken:Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->mAccessToken:Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/internal/dto/Credential;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->mAccessToken:Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 5
    :cond_5
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->mRefreshToken:Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->mRefreshToken:Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, p1, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->mRefreshToken:Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    if-eqz v2, :cond_7

    :goto_2
    return v1

    .line 6
    :cond_7
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->mIdToken:Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    iget-object p1, p1, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->mIdToken:Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    if-eqz v2, :cond_8

    invoke-virtual {v2, p1}, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_8
    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_a
    :goto_4
    return v1
.end method

.method public getAccessToken()Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->mAccessToken:Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    return-object v0
.end method

.method public getAccount()Lcom/microsoft/identity/common/internal/dto/AccountRecord;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->mAccount:Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    return-object v0
.end method

.method public getIdToken()Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->mIdToken:Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    return-object v0
.end method

.method public getRefreshToken()Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->mRefreshToken:Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    return-object v0
.end method

.method public getV1IdToken()Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->mV1IdToken:Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->mAccount:Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/dto/AccountRecord;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->mAccessToken:Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/dto/Credential;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->mRefreshToken:Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->mIdToken:Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public setAccessToken(Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->mAccessToken:Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;

    return-void
.end method

.method public setAccount(Lcom/microsoft/identity/common/internal/dto/AccountRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->mAccount:Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    return-void
.end method

.method public setIdToken(Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->mIdToken:Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    return-void
.end method

.method public setRefreshToken(Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->mRefreshToken:Lcom/microsoft/identity/common/internal/dto/RefreshTokenRecord;

    return-void
.end method

.method public setV1IdToken(Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/CacheRecord;->mV1IdToken:Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    return-void
.end method
