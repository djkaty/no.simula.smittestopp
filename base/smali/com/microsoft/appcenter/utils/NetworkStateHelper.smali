.class public Lcom/microsoft/appcenter/utils/NetworkStateHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/utils/NetworkStateHelper$ConnectivityReceiver;,
        Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;
    }
.end annotation


# static fields
.field public static sSharedInstance:Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field public final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mConnectivityReceiver:Lcom/microsoft/appcenter/utils/NetworkStateHelper$ConnectivityReceiver;

.field public final mContext:Landroid/content/Context;

.field public final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;",
            ">;"
        }
    .end annotation
.end field

.field public mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mListeners:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 6
    invoke-virtual {p0}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->reopen()V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/appcenter/utils/NetworkStateHelper;Landroid/net/Network;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->onNetworkAvailable(Landroid/net/Network;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/microsoft/appcenter/utils/NetworkStateHelper;Landroid/net/Network;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->onNetworkLost(Landroid/net/Network;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/microsoft/appcenter/utils/NetworkStateHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->handleNetworkStateUpdate()V

    return-void
.end method

.method private getOldIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized getSharedInstance(Landroid/content/Context;)Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    .locals 2

    const-class v0, Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->sSharedInstance:Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    invoke-direct {v1, p0}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->sSharedInstance:Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    .line 3
    :cond_0
    sget-object p0, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->sSharedInstance:Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private handleNetworkStateUpdate()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->isAnyNetworkConnected()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->notifyNetworkStateUpdated(Z)V

    :cond_0
    return-void
.end method

.method private isAnyNetworkConnected()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 3
    iget-object v5, p0, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private notifyNetworkStateUpdated(Z)V
    .locals 2

    const-string v0, "Network has been "

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "connected."

    goto :goto_0

    :cond_0
    const-string v1, "disconnected."

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppCenter"

    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;

    .line 3
    invoke-interface {v1, p1}, Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;->onNetworkStateUpdated(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private onNetworkAvailable(Landroid/net/Network;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is available."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppCenter"

    invoke-static {v0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->notifyNetworkStateUpdated(Z)V

    :cond_0
    return-void
.end method

.method private onNetworkLost(Landroid/net/Network;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is lost."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppCenter"

    invoke-static {v1, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    array-length v3, v0

    if-eqz v3, :cond_1

    new-array v3, v1, [Landroid/net/Network;

    aput-object p1, v3, v2

    .line 4
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-direct {p0, v2}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->notifyNetworkStateUpdated(Z)V

    :cond_2
    return-void
.end method

.method public static declared-synchronized unsetInstance()V
    .locals 2

    const-class v0, Lcom/microsoft/appcenter/utils/NetworkStateHelper;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sput-object v1, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->sSharedInstance:Lcom/microsoft/appcenter/utils/NetworkStateHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addListener(Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public isNetworkConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->isAnyNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public removeListener(Lcom/microsoft/appcenter/utils/NetworkStateHelper$Listener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reopen()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 2
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 3
    new-instance v1, Lcom/microsoft/appcenter/utils/NetworkStateHelper$1;

    invoke-direct {v1, p0}, Lcom/microsoft/appcenter/utils/NetworkStateHelper$1;-><init>(Lcom/microsoft/appcenter/utils/NetworkStateHelper;)V

    iput-object v1, p0, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 4
    iget-object v1, p0, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppCenter"

    const-string v2, "Cannot access network state information."

    .line 5
    invoke-static {v1, v2, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/NetworkStateHelper;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method
