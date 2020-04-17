.class public abstract Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mClaims:Ljava/lang/String;

.field public mClientId:Ljava/lang/String;

.field public mCorrelationId:Ljava/util/UUID;

.field public mExtraQueryParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mLoginHint:Ljava/lang/String;

.field public mPrompt:Ljava/lang/String;

.field public mRedirectUri:Ljava/lang/String;

.field public mRequestHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mResponseType:Ljava/lang/String;

.field public mScope:Ljava/lang/String;

.field public mState:Ljava/lang/String;

.field public webViewZoomControlsEnabled:Z

.field public webViewZoomEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "code"

    .line 2
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->mResponseType:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->mResponseType:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->mClientId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->mRedirectUri:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->mState:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->mScope:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->mClaims:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->mRequestHeaders:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->webViewZoomEnabled:Z

    return p0
.end method

.method public static synthetic access$800(Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->webViewZoomControlsEnabled:Z

    return p0
.end method


# virtual methods
.method public abstract build()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest;
.end method

.method public abstract self()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public setClaims(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->mClaims:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->self()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setClientId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->mClientId:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->self()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCorrelationId(Ljava/util/UUID;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->mCorrelationId:Ljava/util/UUID;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->self()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setExtraQueryParams(Ljava/util/List;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->mExtraQueryParams:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->self()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLoginHint(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->mLoginHint:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->self()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPrompt(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->mPrompt:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->self()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRedirectUri(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->mRedirectUri:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->self()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRequestHeaders(Ljava/util/HashMap;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->mRequestHeaders:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->self()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setResponseType(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->mResponseType:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->self()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setScope(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->mScope:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->self()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setState(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->mState:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->self()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setWebViewZoomControlsEnabled(Z)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder<",
            "TB;>;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->webViewZoomControlsEnabled:Z

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->self()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setWebViewZoomEnabled(Z)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder<",
            "TB;>;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->webViewZoomEnabled:Z

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;->self()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationRequest$Builder;

    move-result-object p1

    return-object p1
.end method
