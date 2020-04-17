.class public Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$OperationInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;->getBrokerAccounts(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$OperationInfo<",
        "Lcom/microsoft/identity/common/internal/request/OperationParameters;",
        "Ljava/util/List<",
        "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$4;->this$0:Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, ":getBrokerAccountsWithAccountManager"

    return-object v0
.end method

.method public getRequestBundle(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Landroid/os/Bundle;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$4;->this$0:Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;

    iget-object v0, v0, Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;->mRequestAdapter:Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;->getRequestBundleForGetAccounts(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.microsoft.broker_accountmanager_operation_key"

    const-string v1, "GET_ACCOUNTS"

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic getResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$4;->getResultFromBundle(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getResultFromBundle(Landroid/os/Bundle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy$4;->this$0:Lcom/microsoft/identity/client/internal/controllers/BrokerAccountManagerStrategy;

    iget-object v0, v0, Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;->mResultAdapter:Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getAccountsFromResultBundle(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
