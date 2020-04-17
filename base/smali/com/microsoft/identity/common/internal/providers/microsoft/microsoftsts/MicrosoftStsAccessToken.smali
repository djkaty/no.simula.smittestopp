.class public Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsAccessToken;
.super Lcom/microsoft/identity/common/internal/providers/oauth2/AccessToken;
.source "SourceFile"


# instance fields
.field public mExtExpiresIn:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AccessToken;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)V

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;->getExtExpiresIn()Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsAccessToken;->mExtExpiresIn:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getExtExpiresIn()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsAccessToken;->mExtExpiresIn:Ljava/lang/Long;

    return-object v0
.end method

.method public setExtExpiresIn(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsAccessToken;->mExtExpiresIn:Ljava/lang/Long;

    return-void
.end method
