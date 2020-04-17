.class public Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;
.super Lcom/microsoft/identity/common/internal/dto/Credential;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord$SerializedNames;
    }
.end annotation


# instance fields
.field public mAccessTokenType:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "access_token_type"
    .end annotation
.end field

.field public mAuthority:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "authority"
    .end annotation
.end field

.field public mExpiresOn:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "expires_on"
    .end annotation
.end field

.field public mExtendedExpiresOn:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "extended_expires_on"
    .end annotation
.end field

.field public mKid:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "kid"
    .end annotation
.end field

.field public mRealm:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "realm"
    .end annotation
.end field

.field public mTarget:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "target"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/dto/Credential;-><init>()V

    return-void
.end method

.method private isExpired(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 3
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 4
    new-instance p1, Ljava/util/Date;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getAccessTokenType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->mAccessTokenType:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresOn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->mExpiresOn:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendedExpiresOn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->mExtendedExpiresOn:Ljava/lang/String;

    return-object v0
.end method

.method public getKid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->mKid:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->mRealm:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->mTarget:Ljava/lang/String;

    return-object v0
.end method

.method public isExpired()Z
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->getExpiresOn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->isExpired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAccessTokenType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->mAccessTokenType:Ljava/lang/String;

    return-void
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->mAuthority:Ljava/lang/String;

    return-void
.end method

.method public setExpiresOn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->mExpiresOn:Ljava/lang/String;

    return-void
.end method

.method public setExtendedExpiresOn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->mExtendedExpiresOn:Ljava/lang/String;

    return-void
.end method

.method public setKid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->mKid:Ljava/lang/String;

    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->mRealm:Ljava/lang/String;

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/dto/AccessTokenRecord;->mTarget:Ljava/lang/String;

    return-void
.end method
