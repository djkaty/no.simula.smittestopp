.class public Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$BrokerOperationInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;->removeAccount(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Z
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$4;->this$0:Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, ":removeAccount"

    return-object v0
.end method

.method public getTelemetryApiId()Ljava/lang/String;
    .locals 1

    const-string v0, "207"

    return-object v0
.end method

.method public perform(Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/lang/Boolean;
    .locals 0

    .line 2
    invoke-virtual {p1, p2}, Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;->removeBrokerAccount(Lcom/microsoft/identity/common/internal/request/OperationParameters;)V

    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic perform(Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$4;->perform(Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public putValueInSuccessEvent(Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic putValueInSuccessEvent(Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$4;->putValueInSuccessEvent(Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;Ljava/lang/Boolean;)V

    return-void
.end method
