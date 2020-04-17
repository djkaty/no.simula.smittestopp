.class public Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MICROSOFT_AUTH_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.microsoft.identity.client.MicrosoftAuthService"

.field public static final MICROSOFT_AUTH_SERVICE_INTENT_FILTER:Ljava/lang/String; = "com.microsoft.identity.client.MicrosoftAuth"

.field public static final TAG:Ljava/lang/String; = "MicrosoftAuthClient"


# instance fields
.field public mBound:Ljava/lang/Boolean;

.field public mContext:Landroid/content/Context;

.field public mMicrosoftAuthServiceConnection:Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthServiceConnection;

.field public mMicrosoftAuthServiceIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->mBound:Ljava/lang/Boolean;

    .line 3
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->getIntentForAuthService(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->mMicrosoftAuthServiceIntent:Landroid/content/Intent;

    return-void
.end method

.method private getCurrentActiveBrokerPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget-object v4, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v5, "com.microsoft.workaccount"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->isMicrosoftAuthServiceSupported(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    iget-object p1, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private isMicrosoftAuthServiceSupported(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.microsoft.identity.client.MicrosoftAuth"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.microsoft.identity.client.MicrosoftAuthService"

    .line 3
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method


# virtual methods
.method public connect()Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthServiceFuture;
    .locals 5

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthServiceFuture;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthServiceFuture;-><init>()V

    .line 2
    new-instance v1, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthServiceConnection;

    invoke-direct {v1, v0}, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthServiceConnection;-><init>(Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthServiceFuture;)V

    iput-object v1, p0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->mMicrosoftAuthServiceConnection:Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthServiceConnection;

    .line 3
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->mMicrosoftAuthServiceIntent:Landroid/content/Intent;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->mBound:Ljava/lang/Boolean;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->TAG:Ljava/lang/String;

    const-string v3, "connect"

    invoke-static {v1, v2, v3}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "The status for MicrosoftAuthService bindService call is: "

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->mBound:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->mBound:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/exception/ClientException;

    const-string v1, "Service is unavailable or does not support binding.  Microsoft Auth Service."

    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disconnect()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->mBound:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->mMicrosoftAuthServiceConnection:Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->mBound:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public getIntentForAuthService(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthClient;->getCurrentActiveBrokerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.microsoft.identity.client.MicrosoftAuth"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.microsoft.identity.client.MicrosoftAuthService"

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
