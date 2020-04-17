.class public Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$AuthServiceOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;->getBrokerAuthorizationIntentFromAuthService(Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$AuthServiceOperation<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$2;->this$0:Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOperationName()Ljava/lang/String;
    .locals 1

    const-string v0, ":getBrokerAuthorizationIntentFromAuthService"

    return-object v0
.end method

.method public perform(Lcom/microsoft/identity/client/IMicrosoftAuthService;)Landroid/content/Intent;
    .locals 0

    .line 2
    invoke-interface {p1}, Lcom/microsoft/identity/client/IMicrosoftAuthService;->getIntentForInteractiveRequest()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic perform(Lcom/microsoft/identity/client/IMicrosoftAuthService;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/internal/controllers/BrokerAuthServiceStrategy$2;->perform(Lcom/microsoft/identity/client/IMicrosoftAuthService;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
