.class public Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$BrokerOperationInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;->getCurrentAccount(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$BrokerOperationInfo<",
        "Lcom/microsoft/identity/common/internal/request/OperationParameters;",
        "Ljava/util/List<",
        "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$6;->this$0:Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, ":getCurrentAccount"

    return-object v0
.end method

.method public getTelemetryApiId()Ljava/lang/String;
    .locals 1

    const-string v0, "205"

    return-object v0
.end method

.method public bridge synthetic perform(Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$6;->perform(Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public perform(Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;",
            "Lcom/microsoft/identity/common/internal/request/OperationParameters;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1, p2}, Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;->getCurrentAccountInSharedDevice(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putValueInSuccessEvent(Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$6;->putValueInSuccessEvent(Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;Ljava/util/List;)V

    return-void
.end method

.method public putValueInSuccessEvent(Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/ICacheRecord;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Microsoft.MSAL.accounts_number"

    invoke-virtual {p1, v0, p2}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    return-void
.end method
