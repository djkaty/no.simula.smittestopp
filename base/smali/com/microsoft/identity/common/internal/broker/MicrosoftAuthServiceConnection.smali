.class public Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthServiceConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mMicrosoftAuthService:Lcom/microsoft/identity/client/IMicrosoftAuthService;

.field public mMicrosoftAuthServiceFuture:Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthServiceFuture;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthServiceConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthServiceConnection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthServiceFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthServiceConnection;->mMicrosoftAuthServiceFuture:Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthServiceFuture;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthServiceConnection;->TAG:Ljava/lang/String;

    const-string v0, "MicrosoftAuthService is connected."

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lcom/microsoft/identity/client/IMicrosoftAuthService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/microsoft/identity/client/IMicrosoftAuthService;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthServiceConnection;->mMicrosoftAuthService:Lcom/microsoft/identity/client/IMicrosoftAuthService;

    .line 3
    iget-object p2, p0, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthServiceConnection;->mMicrosoftAuthServiceFuture:Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthServiceFuture;

    invoke-virtual {p2, p1}, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthServiceFuture;->setMicrosoftAuthService(Lcom/microsoft/identity/client/IMicrosoftAuthService;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/microsoft/identity/common/internal/broker/MicrosoftAuthServiceConnection;->TAG:Ljava/lang/String;

    const-string v0, "MicrosoftAuthService is disconnected."

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
