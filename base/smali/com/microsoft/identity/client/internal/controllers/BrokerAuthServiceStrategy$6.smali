.class public Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$AuthServiceOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;->getDeviceMode(Lcom/microsoft/identity/common/internal/request/OperationParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$AuthServiceOperation<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$6;->this$0:Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOperationName()Ljava/lang/String;
    .locals 1

    const-string v0, ":getDeviceModeWithAuthService"

    return-object v0
.end method

.method public perform(Lcom/microsoft/identity/client/IMicrosoftAuthService;)Ljava/lang/Boolean;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$6;->this$0:Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;

    iget-object v0, v0, Lcom/microsoft/identity/client/internal/controllers/BrokerBaseStrategy;->mResultAdapter:Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;

    .line 3
    invoke-interface {p1}, Lcom/microsoft/identity/client/IMicrosoftAuthService;->getDeviceMode()Landroid/os/Bundle;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;->getDeviceModeFromResultBundle(Landroid/os/Bundle;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic perform(Lcom/microsoft/identity/client/IMicrosoftAuthService;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$6;->perform(Lcom/microsoft/identity/client/IMicrosoftAuthService;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
