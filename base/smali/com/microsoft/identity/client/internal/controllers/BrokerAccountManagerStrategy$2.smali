.class public Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$OperationInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;->getBrokerAuthorizationIntent(Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$OperationInfo<",
        "Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;

.field public final synthetic val$parameters:Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$2;->this$0:Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;

    iput-object p2, p0, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$2;->val$parameters:Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, ":getBrokerAuthorizationIntent"

    return-object v0
.end method

.method public getRequestBundle(Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)Landroid/os/Bundle;
    .locals 2

    .line 2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "com.microsoft.broker_accountmanager_operation_key"

    const-string v1, "GET_INTENT_FOR_INTERACTIVE_REQUEST"

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic getRequestBundle(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Landroid/os/Bundle;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$2;->getRequestBundle(Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getResultFromBundle(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2

    const-string v0, "intent"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$2;->this$0:Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;

    iget-object v1, p0, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$2;->val$parameters:Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;

    invoke-virtual {v0, p1, v1}, Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;->completeInteractiveRequestIntent(Landroid/content/Intent;Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$2;->getResultFromBundle(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
