.class public abstract Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;
.super Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest<",
        "TT;>;>",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE_AWARE:Ljava/lang/String; = "instance_aware"

.field public static final TAG:Ljava/lang/String;

.field public static final serialVersionUID:J = 0x5f640e8d7558398eL


# instance fields
.field public transient mAuthority:Ljava/net/URL;

.field public mCodeChallenge:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "code_challenge"
    .end annotation
.end field

.field public mCodeChallengeMethod:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "code_challenge_method"
    .end annotation
.end field

.field public mCorrelationId:Ljava/util/UUID;
    .annotation runtime Le/c/c/v/a;
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "client-request-id"
    .end annotation
.end field

.field public mDiagnosticCPU:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "x-client-CPU"
    .end annotation
.end field

.field public mDiagnosticDM:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "x-client-DM"
    .end annotation
.end field

.field public mDiagnosticOS:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "x-client-OS"
    .end annotation
.end field

.field public transient mFlightParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLibraryName:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "x-client-SKU"
    .end annotation
.end field

.field public mLibraryVersion:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "x-client-Ver"
    .end annotation
.end field

.field public mLoginHint:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "login_hint"
    .end annotation
.end field

.field public mMultipleCloudAware:Ljava/lang/Boolean;
    .annotation runtime Le/c/c/v/a;
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "instance_aware"
    .end annotation
.end field

.field public transient mPkceChallenge:Lcom/microsoft/identity/common/internal/providers/oauth2/PkceChallenge;

.field public transient mSlice:Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;-><init>(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;)V

    .line 2
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest$Builder;->access$000(Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest$Builder;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->mAuthority:Ljava/net/URL;

    .line 3
    iget-object v0, p1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->mLoginHint:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->mLoginHint:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->mCorrelationId:Ljava/util/UUID;

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->mCorrelationId:Ljava/util/UUID;

    .line 5
    invoke-static {}, Lcom/microsoft/identity/common/internal/providers/oauth2/PkceChallenge;->newPkceChallenge()Lcom/microsoft/identity/common/internal/providers/oauth2/PkceChallenge;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->mPkceChallenge:Lcom/microsoft/identity/common/internal/providers/oauth2/PkceChallenge;

    .line 6
    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/PkceChallenge;->getCodeChallengeMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->mCodeChallengeMethod:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->mPkceChallenge:Lcom/microsoft/identity/common/internal/providers/oauth2/PkceChallenge;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/PkceChallenge;->getCodeChallenge()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->mCodeChallenge:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->generateEncodedState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;->mState:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest$Builder;->access$100(Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest$Builder;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest$Builder;->access$100(Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest$Builder;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->mSlice:Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest$Builder;->access$200(Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->mFlightParameters:Ljava/util/Map;

    .line 12
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest$Builder;->access$300(Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->mMultipleCloudAware:Ljava/lang/Boolean;

    .line 13
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest$Builder;->access$400(Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->mLibraryVersion:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest$Builder;->access$500(Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->mLibraryName:Ljava/lang/String;

    .line 15
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->mDiagnosticOS:Ljava/lang/String;

    .line 16
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->mDiagnosticDM:Ljava/lang/String;

    .line 17
    sget-object p1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 18
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 19
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->mDiagnosticCPU:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static decodeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->TAG:Ljava/lang/String;

    const-string v0, "Decode state failed because the input state is empty."

    invoke-static {p0, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x9

    .line 3
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 4
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static generateEncodedState()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "UTF-8"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error generating encoded state parameter for Authorization Request"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getAuthority()Ljava/net/URL;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->mAuthority:Ljava/net/URL;

    return-object v0
.end method

.method public getCodeChallenge()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->mCodeChallenge:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeChallengeMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->mCodeChallengeMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getCorrelationId()Ljava/util/UUID;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->mCorrelationId:Ljava/util/UUID;

    return-object v0
.end method

.method public getDiagnosticCPU()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->mDiagnosticCPU:Ljava/lang/String;

    return-object v0
.end method

.method public getDiagnosticDM()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->mDiagnosticDM:Ljava/lang/String;

    return-object v0
.end method

.method public getDiagnosticOS()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->mDiagnosticOS:Ljava/lang/String;

    return-object v0
.end method

.method public getLibraryName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->mLibraryName:Ljava/lang/String;

    return-object v0
.end method

.method public getLibraryVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->mLibraryVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginHint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->mLoginHint:Ljava/lang/String;

    return-object v0
.end method

.method public getMultipleCloudAware()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->mMultipleCloudAware:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPkceChallenge()Lcom/microsoft/identity/common/internal/providers/oauth2/PkceChallenge;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAuthorizationRequest;->mPkceChallenge:Lcom/microsoft/identity/common/internal/providers/oauth2/PkceChallenge;

    return-object v0
.end method
