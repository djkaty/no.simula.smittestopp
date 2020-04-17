.class public Lcom/microsoft/identity/common/internal/broker/InactiveBrokerClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BROKER_ACCOUNT_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.microsoft.aad.adal.BrokerAccountService"

.field public static final BROKER_ACCOUNT_SERVICE_INTENT_FILTER:Ljava/lang/String; = "com.microsoft.workaccount.BrokerAccount"

.field public static final TAG:Ljava/lang/String; = "InactiveBrokerClient"


# instance fields
.field public mBound:Ljava/lang/Boolean;

.field public mBrokerAccountServiceConnection:Lcom/microsoft/identity/common/internal/broker/BrokerAccountServiceConnection;

.field public mContext:Landroid/content/Context;

.field public mInactiveBrokerPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/identity/common/internal/broker/BrokerData;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/InactiveBrokerClient;->mBound:Ljava/lang/Boolean;

    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/InactiveBrokerClient;->mContext:Landroid/content/Context;

    .line 4
    iget-object p1, p2, Lcom/microsoft/identity/common/internal/broker/BrokerData;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/InactiveBrokerClient;->mInactiveBrokerPackageName:Ljava/lang/String;

    return-void
.end method

.method private getIntentForBrokerAccountService()Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.microsoft.workaccount.BrokerAccount"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/InactiveBrokerClient;->mInactiveBrokerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/InactiveBrokerClient;->mInactiveBrokerPackageName:Ljava/lang/String;

    const-string v2, "com.microsoft.aad.adal.BrokerAccountService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public connect()Lcom/microsoft/identity/common/internal/broker/BrokerAccountServiceFuture;
    .locals 5

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/BrokerAccountServiceFuture;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerAccountServiceFuture;-><init>()V

    .line 2
    new-instance v1, Lcom/microsoft/identity/common/internal/broker/BrokerAccountServiceConnection;

    invoke-direct {v1, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerAccountServiceConnection;-><init>(Lcom/microsoft/identity/common/internal/broker/BrokerAccountServiceFuture;)V

    iput-object v1, p0, Lcom/microsoft/identity/common/internal/broker/InactiveBrokerClient;->mBrokerAccountServiceConnection:Lcom/microsoft/identity/common/internal/broker/BrokerAccountServiceConnection;

    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/InactiveBrokerClient;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/broker/InactiveBrokerClient;->getIntentForBrokerAccountService()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/identity/common/internal/broker/InactiveBrokerClient;->mBrokerAccountServiceConnection:Lcom/microsoft/identity/common/internal/broker/BrokerAccountServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/identity/common/internal/broker/InactiveBrokerClient;->mBound:Ljava/lang/Boolean;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/broker/InactiveBrokerClient;->TAG:Ljava/lang/String;

    const-string v3, "connect"

    invoke-static {v1, v2, v3}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "The status for BrokerAccountService bindService call is: "

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/identity/common/internal/broker/InactiveBrokerClient;->mBound:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/InactiveBrokerClient;->mBound:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/exception/ClientException;

    const-string v1, "Service is unavailable or does not support binding. BrokerAccountService."

    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disconnect()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/InactiveBrokerClient;->mBound:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/InactiveBrokerClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/InactiveBrokerClient;->mBrokerAccountServiceConnection:Lcom/microsoft/identity/common/internal/broker/BrokerAccountServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/InactiveBrokerClient;->mBound:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method
