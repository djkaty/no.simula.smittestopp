.class public Lcom/microsoft/identity/client/PublicClientApplication$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/PublicClientApplication;->acquireTokenInternal(Lcom/microsoft/identity/client/AcquireTokenParameters;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/client/PublicClientApplication;

.field public final synthetic val$acquireTokenParameters:Lcom/microsoft/identity/client/AcquireTokenParameters;

.field public final synthetic val$publicApiId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/PublicClientApplication;Lcom/microsoft/identity/client/AcquireTokenParameters;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$5;->this$0:Lcom/microsoft/identity/client/PublicClientApplication;

    iput-object p2, p0, Lcom/microsoft/identity/client/PublicClientApplication$5;->val$acquireTokenParameters:Lcom/microsoft/identity/client/AcquireTokenParameters;

    iput-object p3, p0, Lcom/microsoft/identity/client/PublicClientApplication$5;->val$publicApiId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$5;->this$0:Lcom/microsoft/identity/client/PublicClientApplication;

    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication$5;->val$acquireTokenParameters:Lcom/microsoft/identity/client/AcquireTokenParameters;

    .line 2
    invoke-virtual {v1}, Lcom/microsoft/identity/client/AcquireTokenParameters;->getCallback()Lcom/microsoft/identity/client/AuthenticationCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplication$5;->val$acquireTokenParameters:Lcom/microsoft/identity/client/AcquireTokenParameters;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/identity/client/PublicClientApplication;->getCommandCallback(Lcom/microsoft/identity/client/SilentAuthenticationCallback;Lcom/microsoft/identity/client/TokenParameters;)Lcom/microsoft/identity/common/internal/controllers/CommandCallback;

    move-result-object v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication$5;->this$0:Lcom/microsoft/identity/client/PublicClientApplication;

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplication$5;->val$acquireTokenParameters:Lcom/microsoft/identity/client/AcquireTokenParameters;

    invoke-virtual {v1, v2}, Lcom/microsoft/identity/client/PublicClientApplication;->validateAcquireTokenParameters(Lcom/microsoft/identity/client/AcquireTokenParameters;)V

    .line 5
    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication$5;->val$acquireTokenParameters:Lcom/microsoft/identity/client/AcquireTokenParameters;

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplication$5;->this$0:Lcom/microsoft/identity/client/PublicClientApplication;

    iget-object v3, p0, Lcom/microsoft/identity/client/PublicClientApplication$5;->this$0:Lcom/microsoft/identity/client/PublicClientApplication;

    iget-object v3, v3, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    iget-object v4, p0, Lcom/microsoft/identity/client/PublicClientApplication$5;->val$acquireTokenParameters:Lcom/microsoft/identity/client/AcquireTokenParameters;

    .line 6
    invoke-static {v2, v3, v4}, Lcom/microsoft/identity/client/PublicClientApplication;->access$000(Lcom/microsoft/identity/client/PublicClientApplication;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/client/TokenParameters;)Lcom/microsoft/identity/common/internal/dto/AccountRecord;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v2}, Lcom/microsoft/identity/client/TokenParameters;->setAccountRecord(Lcom/microsoft/identity/common/internal/dto/AccountRecord;)V

    .line 8
    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication$5;->val$acquireTokenParameters:Lcom/microsoft/identity/client/AcquireTokenParameters;

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplication$5;->this$0:Lcom/microsoft/identity/client/PublicClientApplication;

    iget-object v2, v2, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    iget-object v3, p0, Lcom/microsoft/identity/client/PublicClientApplication$5;->this$0:Lcom/microsoft/identity/client/PublicClientApplication;

    iget-object v3, v3, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 9
    invoke-virtual {v3}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;

    move-result-object v3

    .line 10
    invoke-static {v1, v2, v3}, Lcom/microsoft/identity/client/internal/controllers/OperationParametersAdapter;->createAcquireTokenOperationParameters(Lcom/microsoft/identity/client/AcquireTokenParameters;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2TokenCache;)Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;

    move-result-object v1

    .line 11
    new-instance v2, Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;

    iget-object v3, p0, Lcom/microsoft/identity/client/PublicClientApplication$5;->this$0:Lcom/microsoft/identity/client/PublicClientApplication;

    iget-object v3, v3, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 12
    invoke-virtual {v3}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v3

    .line 13
    invoke-virtual {v1}, Lcom/microsoft/identity/common/internal/request/OperationParameters;->getAuthority()Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object v4

    iget-object v5, p0, Lcom/microsoft/identity/client/PublicClientApplication$5;->this$0:Lcom/microsoft/identity/client/PublicClientApplication;

    iget-object v5, v5, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    .line 14
    invoke-static {v3, v4, v5}, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->getDefaultController(Landroid/content/Context;Lcom/microsoft/identity/common/internal/authorities/Authority;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Lcom/microsoft/identity/common/internal/controllers/BaseController;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;-><init>(Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;Lcom/microsoft/identity/common/internal/controllers/BaseController;Lcom/microsoft/identity/common/internal/controllers/CommandCallback;)V

    .line 15
    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication$5;->val$publicApiId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/microsoft/identity/common/internal/controllers/BaseCommand;->setPublicApiId(Ljava/lang/String;)V

    .line 16
    invoke-static {v2}, Lcom/microsoft/identity/common/internal/controllers/CommandDispatcher;->beginInteractive(Lcom/microsoft/identity/common/internal/controllers/InteractiveTokenCommand;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 17
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/controllers/ExceptionAdapter;->baseExceptionFromException(Ljava/lang/Exception;)Lcom/microsoft/identity/common/exception/BaseException;

    move-result-object v1

    .line 18
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    new-instance v3, Lcom/microsoft/identity/client/PublicClientApplication$5$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/microsoft/identity/client/PublicClientApplication$5$1;-><init>(Lcom/microsoft/identity/client/PublicClientApplication$5;Lcom/microsoft/identity/common/internal/controllers/CommandCallback;Lcom/microsoft/identity/common/exception/BaseException;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
