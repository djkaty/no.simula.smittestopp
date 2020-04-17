.class public interface abstract Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAccessToken()Ljava/lang/String;
.end method

.method public abstract getAccessTokenRecord()Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;
.end method

.method public abstract getAccountRecord()Lcom/microsoft/identity/common/internal/dto/IAccountRecord;
.end method

.method public abstract getCacheRecordWithTenantProfileData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExpiresOn()Ljava/util/Date;
.end method

.method public abstract getFamilyId()Ljava/lang/String;
.end method

.method public abstract getIdToken()Ljava/lang/String;
.end method

.method public abstract getRefreshToken()Ljava/lang/String;
.end method

.method public abstract getRefreshTokenAge()Ljava/lang/String;
.end method

.method public abstract getScope()[Ljava/lang/String;
.end method

.method public abstract getSpeRing()Ljava/lang/String;
.end method

.method public abstract getTenantId()Ljava/lang/String;
.end method

.method public abstract getUniqueId()Ljava/lang/String;
.end method
