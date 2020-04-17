.class public Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mCertAuthorities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Ljava/lang/String;

.field public mNonce:Ljava/lang/String;

.field public mSubmitUrl:Ljava/lang/String;

.field public mThumbprint:Ljava/lang/String;

.field public mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;->mNonce:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;->mContext:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;->mThumbprint:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;->mNonce:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;->mContext:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;->mCertAuthorities:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;->mThumbprint:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;->mVersion:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;->mSubmitUrl:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge;-><init>(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;)V

    return-object v0
.end method

.method public self()Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;
    .locals 0

    return-object p0
.end method

.method public setCertAuthorities(Ljava/util/List;)Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;->mCertAuthorities:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;->self()Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setContext(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;->mContext:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;->self()Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setNonce(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;->mNonce:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;->self()Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSubmitUrl(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;->mSubmitUrl:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;->self()Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setThumbprint(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;->mThumbprint:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;->self()Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setVersion(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;->mVersion:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;->self()Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;

    move-result-object p1

    return-object p1
.end method
