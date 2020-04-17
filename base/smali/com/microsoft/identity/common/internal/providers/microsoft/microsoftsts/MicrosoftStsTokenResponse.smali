.class public Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;
.super Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;
.source "SourceFile"


# instance fields
.field public mExpiresNotBefore:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "not_before"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftTokenResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpiresNotBefore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;->mExpiresNotBefore:Ljava/lang/String;

    return-object v0
.end method

.method public setExpiresNotBefore(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/microsoftsts/MicrosoftStsTokenResponse;->mExpiresNotBefore:Ljava/lang/String;

    return-void
.end method
