.class public Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/controllers/CommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->getCommandCallback(Lcom/microsoft/identity/client/SilentAuthenticationCallback;Lcom/microsoft/identity/client/TokenParameters;)Lcom/microsoft/identity/common/internal/controllers/CommandCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/internal/controllers/CommandCallback<",
        "Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;",
        "Lcom/microsoft/identity/common/exception/BaseException;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

.field public final synthetic val$authenticationCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

.field public final synthetic val$tokenParameters:Lcom/microsoft/identity/client/TokenParameters;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;Lcom/microsoft/identity/client/SilentAuthenticationCallback;Lcom/microsoft/identity/client/TokenParameters;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;->this$0:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    iput-object p2, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;->val$authenticationCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    iput-object p3, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;->val$tokenParameters:Lcom/microsoft/identity/client/TokenParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;->val$authenticationCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    instance-of v1, v0, Lcom/microsoft/identity/client/AuthenticationCallback;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/microsoft/identity/client/AuthenticationCallback;

    invoke-interface {v0}, Lcom/microsoft/identity/client/AuthenticationCallback;->onCancel()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Silent requests cannot be cancelled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onError(Lcom/microsoft/identity/common/exception/BaseException;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/microsoft/identity/client/internal/controllers/MsalExceptionAdapter;->msalExceptionFromBaseException(Lcom/microsoft/identity/common/exception/BaseException;)Lcom/microsoft/identity/client/exception/MsalException;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;->val$authenticationCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/microsoft/identity/client/SilentAuthenticationCallback;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "callback cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/exception/BaseException;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;->onError(Lcom/microsoft/identity/common/exception/BaseException;)V

    return-void
.end method

.method public onTaskCompleted(Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;->val$authenticationCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;->this$0:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getCacheRecordWithTenantProfileData()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->access$100(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;Ljava/util/List;)Lcom/microsoft/identity/client/MultiTenantAccount;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;->this$0:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    invoke-static {v1, v0}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->access$200(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;Lcom/microsoft/identity/client/MultiTenantAccount;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;->this$0:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    invoke-static {v0}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->access$300(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;)Lcom/microsoft/identity/client/MultiTenantAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;->val$authenticationCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    new-instance v0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string v1, "returned_account_does_not_match_current_account"

    invoke-direct {v0, v1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/microsoft/identity/client/SilentAuthenticationCallback;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;->this$0:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getCacheRecordWithTenantProfileData()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->access$400(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;Ljava/util/List;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;->this$0:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    invoke-interface {p1}, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;->getCacheRecordWithTenantProfileData()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->access$400(Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;Ljava/util/List;)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;->this$0:Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    iget-object v1, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;->val$tokenParameters:Lcom/microsoft/identity/client/TokenParameters;

    iget-object v2, p0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;->val$authenticationCallback:Lcom/microsoft/identity/client/SilentAuthenticationCallback;

    invoke-virtual {v0, p1, v1, v2}, Lcom/microsoft/identity/client/PublicClientApplication;->postAuthResult(Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;Lcom/microsoft/identity/client/TokenParameters;Lcom/microsoft/identity/client/SilentAuthenticationCallback;)V

    return-void

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "callback cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic onTaskCompleted(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication$3;->onTaskCompleted(Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;)V

    return-void
.end method
