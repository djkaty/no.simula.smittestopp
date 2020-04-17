.class public Lcom/microsoft/identity/common/internal/authscheme/PopAuthenticationSchemeInternal;
.super Lcom/microsoft/identity/common/internal/authscheme/TokenAuthenticationScheme;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/authscheme/IPoPAuthenticationSchemeParams;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/authscheme/PopAuthenticationSchemeInternal$SerializedNames;
    }
.end annotation


# static fields
.field public static final SCHEME_POP:Ljava/lang/String; = "PoP"


# instance fields
.field public mHttpMethod:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "http_method"
    .end annotation
.end field

.field public mNonce:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "nonce"
    .end annotation
.end field

.field public mUrl:Ljava/net/URL;
    .annotation runtime Le/c/c/v/c;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "PoP"

    .line 1
    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/internal/authscheme/TokenAuthenticationScheme;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V
    .locals 1

    const-string v0, "PoP"

    .line 2
    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/internal/authscheme/TokenAuthenticationScheme;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/authscheme/PopAuthenticationSchemeInternal;->mHttpMethod:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/authscheme/PopAuthenticationSchemeInternal;->mUrl:Ljava/net/URL;

    .line 5
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/authscheme/PopAuthenticationSchemeInternal;->mNonce:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessTokenForScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/platform/Device;->getDevicePoPManagerInstance()Lcom/microsoft/identity/common/internal/platform/IDevicePopManager;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/authscheme/PopAuthenticationSchemeInternal;->getHttpMethod()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/authscheme/PopAuthenticationSchemeInternal;->getUrl()Ljava/net/URL;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/authscheme/PopAuthenticationSchemeInternal;->getNonce()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-interface {v0, v1, v2, p1, v3}, Lcom/microsoft/identity/common/internal/platform/IDevicePopManager;->mintSignedAccessToken(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/authscheme/PopAuthenticationSchemeInternal;->mHttpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/authscheme/PopAuthenticationSchemeInternal;->mNonce:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/authscheme/PopAuthenticationSchemeInternal;->mUrl:Ljava/net/URL;

    return-object v0
.end method
