.class public Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler;->processChallenge(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler;

.field public final synthetic val$header:Ljava/util/Map;

.field public final synthetic val$pKeyAuthChallenge:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler;Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler;

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler$1;->val$pKeyAuthChallenge:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge;

    iput-object p3, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler$1;->val$header:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler$1;->val$pKeyAuthChallenge:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge;->getSubmitUrl()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Respond to pkeyAuth challenge"

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Challenge submit url:"

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler$1;->val$pKeyAuthChallenge:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge;

    invoke-virtual {v3}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallenge;->getSubmitUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->infoPII(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler$1;->this$0:Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler;

    invoke-static {v1}, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler;->access$100(Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/identity/common/internal/ui/webview/challengehandlers/PKeyAuthChallengeHandler$1;->val$header:Ljava/util/Map;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
