.class public Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$AuthServiceOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;->hello(Lcom/microsoft/identity/common/internal/request/OperationParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$AuthServiceOperation<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;

.field public final synthetic val$parameters:Lcom/microsoft/identity/common/internal/request/OperationParameters;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;Lcom/microsoft/identity/common/internal/request/OperationParameters;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$1;->this$0:Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;

    iput-object p2, p0, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$1;->val$parameters:Lcom/microsoft/identity/common/internal/request/OperationParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOperationName()Ljava/lang/String;
    .locals 1

    const-string v0, ":helloWithMicrosoftAuthService"

    return-object v0
.end method

.method public bridge synthetic perform(Lcom/microsoft/identity/client/IMicrosoftAuthService;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$1;->perform(Lcom/microsoft/identity/client/IMicrosoftAuthService;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public perform(Lcom/microsoft/identity/client/IMicrosoftAuthService;)Ljava/lang/Void;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$1;->this$0:Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;

    iget-object v0, v0, Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;->mRequestAdapter:Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;

    iget-object v1, p0, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$1;->val$parameters:Lcom/microsoft/identity/common/internal/request/OperationParameters;

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->getRequestBundleForHello(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Landroid/os/Bundle;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$1;->this$0:Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;

    iget-object v1, v1, Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;->mResultAdapter:Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;

    .line 4
    invoke-interface {p1, v0}, Lcom/microsoft/identity/client/IMicrosoftAuthService;->hello(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 5
    invoke-virtual {v1, p1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->verifyHelloFromResultBundle(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    return-object p1
.end method
