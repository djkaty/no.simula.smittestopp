.class public interface abstract Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController$BrokerOperationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/client/internal/controllers/BrokerMsalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BrokerOperationInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/microsoft/identity/common/internal/request/OperationParameters;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getMethodName()Ljava/lang/String;
.end method

.method public abstract getTelemetryApiId()Ljava/lang/String;
.end method

.method public abstract perform(Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;Lcom/microsoft/identity/common/internal/request/OperationParameters;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;",
            "TT;)TU;"
        }
    .end annotation
.end method

.method public abstract putValueInSuccessEvent(Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;",
            "TU;)V"
        }
    .end annotation
.end method
