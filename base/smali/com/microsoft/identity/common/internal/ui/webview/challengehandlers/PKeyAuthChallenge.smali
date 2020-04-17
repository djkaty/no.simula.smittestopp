.class public Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0xe5d7895defba324L


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
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;->access$000(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge;->mNonce:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;->access$100(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge;->mContext:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;->access$200(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge;->mCertAuthorities:Ljava/util/List;

    .line 5
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;->access$300(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge;->mThumbprint:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;->access$400(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge;->mVersion:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;->access$500(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge;->mSubmitUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCertAuthorities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge;->mCertAuthorities:Ljava/util/List;

    return-object v0
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge;->mContext:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge;->mNonce:Ljava/lang/String;

    return-object v0
.end method

.method public getSubmitUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge;->mSubmitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbprint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge;->mThumbprint:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge;->mVersion:Ljava/lang/String;

    return-object v0
.end method
