.class public final Lcom/microsoft/identity/client/PublicClientApplication$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/controllers/CommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/PublicClientApplication;->create(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/internal/controllers/CommandCallback<",
        "Ljava/lang/Boolean;",
        "Lcom/microsoft/identity/common/exception/BaseException;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$config:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

.field public final synthetic val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$2;->val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;

    iput-object p2, p0, Lcom/microsoft/identity/client/PublicClientApplication$2;->val$config:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onError(Lcom/microsoft/identity/common/exception/BaseException;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$2;->val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;

    invoke-static {p1}, Lcom/microsoft/identity/client/internal/controllers/MsalExceptionAdapter;->msalExceptionFromBaseException(Lcom/microsoft/identity/common/exception/BaseException;)Lcom/microsoft/identity/client/exception/MsalException;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/exception/BaseException;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplication$2;->onError(Lcom/microsoft/identity/common/exception/BaseException;)V

    return-void
.end method

.method public onTaskCompleted(Ljava/lang/Boolean;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$2;->val$config:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->setIsSharedDevice(Z)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$2;->val$config:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAccountMode()Lcom/microsoft/identity/client/configuration/AccountMode;

    move-result-object v0

    sget-object v1, Lcom/microsoft/identity/client/configuration/AccountMode;->SINGLE:Lcom/microsoft/identity/client/configuration/AccountMode;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$2;->val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;

    new-instance v0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;

    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication$2;->val$config:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-direct {v0, v1}, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;-><init>(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V

    invoke-interface {p1, v0}, Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;->onCreated(Lcom/microsoft/identity/client/IPublicClientApplication;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$2;->val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;

    new-instance v0, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication$2;->val$config:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-direct {v0, v1}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;-><init>(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V

    invoke-interface {p1, v0}, Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;->onCreated(Lcom/microsoft/identity/client/IPublicClientApplication;)V
    :try_end_0
    .catch Lcom/microsoft/identity/client/exception/MsalClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$2;->val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;

    invoke-interface {v0, p1}, Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onTaskCompleted(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplication$2;->onTaskCompleted(Ljava/lang/Boolean;)V

    return-void
.end method
