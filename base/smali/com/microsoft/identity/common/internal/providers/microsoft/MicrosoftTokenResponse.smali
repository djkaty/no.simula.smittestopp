.class public Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;
.super Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;
.source "SourceFile"


# static fields
.field public static final CLIENT_INFO:Ljava/lang/String; = "client_info"

.field public static final EXT_EXPIRES_IN:Ljava/lang/String; = "ext_expires_in"

.field public static final FAMILY_ID:Ljava/lang/String; = "foci"


# instance fields
.field public mAuthority:Ljava/lang/String;

.field public mCliTelemErrorCode:Ljava/lang/String;

.field public mCliTelemSubErrorCode:Ljava/lang/String;

.field public transient mClientId:Ljava/lang/String;

.field public mClientInfo:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "client_info"
    .end annotation
.end field

.field public mCloudInstanceHostName:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "cloud_instance_host_name"
    .end annotation
.end field

.field public mExtExpiresOn:Ljava/util/Date;

.field public mExtendedExpiresIn:Ljava/lang/Long;
    .annotation runtime Le/c/c/v/a;
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "ext_expires_in"
    .end annotation
.end field

.field public mFamilyId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "foci"
    .end annotation
.end field

.field public mRefreshTokenAge:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field

.field public mSpeRing:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAuthority()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getCliTelemErrorCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->mCliTelemErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCliTelemSubErrorCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->mCliTelemSubErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->mClientInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudInstanceHostName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->mCloudInstanceHostName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtExpiresIn()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->mExtendedExpiresIn:Ljava/lang/Long;

    return-object v0
.end method

.method public getExtExpiresOn()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->mExtExpiresOn:Ljava/util/Date;

    return-object v0
.end method

.method public getFamilyId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->mFamilyId:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshTokenAge()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->mRefreshTokenAge:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeRing()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->mSpeRing:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->mAuthority:Ljava/lang/String;

    return-void
.end method

.method public setCliTelemErrorCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->mCliTelemErrorCode:Ljava/lang/String;

    return-void
.end method

.method public setCliTelemSubErrorCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->mCliTelemSubErrorCode:Ljava/lang/String;

    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->mClientId:Ljava/lang/String;

    return-void
.end method

.method public setClientInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->mClientInfo:Ljava/lang/String;

    return-void
.end method

.method public setCloudInstanceHostName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->mCloudInstanceHostName:Ljava/lang/String;

    return-void
.end method

.method public setExtExpiresIn(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->mExtendedExpiresIn:Ljava/lang/Long;

    return-void
.end method

.method public setExtExpiresOn(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->mExtExpiresOn:Ljava/util/Date;

    return-void
.end method

.method public setFamilyId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->mFamilyId:Ljava/lang/String;

    return-void
.end method

.method public setRefreshTokenAge(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->mRefreshTokenAge:Ljava/lang/String;

    return-void
.end method

.method public setSpeRing(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->mSpeRing:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "MicrosoftTokenResponse{mExtExpiresOn="

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->mExtExpiresOn:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mClientInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->mClientInfo:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", mClientId=\'"

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->mClientId:Ljava/lang/String;

    const-string v3, ", mExtendedExpiresIn="

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->mExtendedExpiresIn:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFamilyId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->mFamilyId:Ljava/lang/String;

    const-string v3, "} "

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 2
    invoke-super {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
