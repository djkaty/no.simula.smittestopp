.class public Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;->showHttpAuthDialog(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;

.field public final synthetic val$ntlmChallenge:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$2;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$2;->val$ntlmChallenge:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$2;->val$ntlmChallenge:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallenge;->getHandler()Landroid/webkit/HttpAuthHandler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 2
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler$2;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;->access$000(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/NtlmChallengeHandler;)V

    return-void
.end method
