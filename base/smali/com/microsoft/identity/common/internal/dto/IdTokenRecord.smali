.class public Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;
.super Lcom/microsoft/identity/common/internal/dto/Credential;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/dto/IdTokenRecord$SerializedNames;
    }
.end annotation


# instance fields
.field public mAuthority:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "authority"
    .end annotation
.end field

.field public mRealm:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "realm"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/dto/Credential;-><init>()V

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

    if-eqz p1, :cond_7

    .line 1
    const-class v2, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/internal/dto/Credential;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 3
    :cond_2
    check-cast p1, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;

    .line 4
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;->mRealm:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;->mRealm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;->mRealm:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 5
    :cond_4
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;->mAuthority:Ljava/lang/String;

    iget-object p1, p1, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;->mAuthority:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;->mRealm:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/microsoft/identity/common/internal/dto/Credential;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;->mRealm:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;->mAuthority:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public isExpired()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;->mAuthority:Ljava/lang/String;

    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/dto/IdTokenRecord;->mRealm:Ljava/lang/String;

    return-void
.end method
