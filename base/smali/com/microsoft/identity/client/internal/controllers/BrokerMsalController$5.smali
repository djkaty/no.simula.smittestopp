.class public Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$BrokerOperationInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;->getDeviceMode(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Z
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
    iput-object p1, p0, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$5;->this$0:Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, ":getDeviceMode"

    return-object v0
.end method

.method public getTelemetryApiId()Ljava/lang/String;
    .locals 1

    const-string v0, "204"

    return-object v0
.end method

.method public perform(Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/lang/Boolean;
    .locals 0

    .line 2
    invoke-virtual {p1, p2}, Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;->getDeviceMode(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic perform(Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$5;->perform(Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public putValueInSuccessEvent(Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;Ljava/lang/Boolean;)V
    .locals 1

    .line 2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Microsoft.MSAL.is_device_shared"

    invoke-virtual {p1, v0, p2}, Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;

    return-void
.end method

.method public bridge synthetic putValueInSuccessEvent(Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$5;->putValueInSuccessEvent(Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;Ljava/lang/Boolean;)V

    return-void
.end method
