.class public Lcom/microsoft/appcenter/analytics/PropertyConfigurator;
.super Lcom/microsoft/appcenter/channel/AbstractChannelListener;
.source "SourceFile"


# static fields
.field public static final ANDROID_DEVICE_ID_PREFIX:Ljava/lang/String; = "a:"


# instance fields
.field public mAppLocale:Ljava/lang/String;

.field public mAppName:Ljava/lang/String;

.field public mAppVersion:Ljava/lang/String;

.field public mDeviceIdEnabled:Z

.field public final mEventProperties:Lcom/microsoft/appcenter/analytics/EventProperties;

.field public final mTransmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

.field public mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/appcenter/channel/AbstractChannelListener;-><init>()V

    .line 2
    new-instance v0, Lcom/microsoft/appcenter/analytics/EventProperties;

    invoke-direct {v0}, Lcom/microsoft/appcenter/analytics/EventProperties;-><init>()V

    iput-object v0, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mEventProperties:Lcom/microsoft/appcenter/analytics/EventProperties;

    .line 3
    iput-object p1, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mTransmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    return-void
.end method

.method public static synthetic access$002(Lcom/microsoft/appcenter/analytics/PropertyConfigurator;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mAppName:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$102(Lcom/microsoft/appcenter/analytics/PropertyConfigurator;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mAppVersion:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/microsoft/appcenter/analytics/PropertyConfigurator;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mAppLocale:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$302(Lcom/microsoft/appcenter/analytics/PropertyConfigurator;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mUserId:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$402(Lcom/microsoft/appcenter/analytics/PropertyConfigurator;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mDeviceIdEnabled:Z

    return p1
.end method

.method private getAppLocale()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mAppLocale:Ljava/lang/String;

    return-object v0
.end method

.method private getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method private getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method private getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method private shouldOverridePartAProperties(Lcom/microsoft/appcenter/ingestion/models/Log;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/microsoft/appcenter/ingestion/models/Log;->getTag()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mTransmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public collectDeviceId()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v0

    new-instance v1, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$5;

    invoke-direct {v1, p0}, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$5;-><init>(Lcom/microsoft/appcenter/analytics/PropertyConfigurator;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/analytics/Analytics;->postCommandEvenIfDisabled(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized mergeEventProperties(Lcom/microsoft/appcenter/analytics/EventProperties;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mEventProperties:Lcom/microsoft/appcenter/analytics/EventProperties;

    invoke-virtual {v0}, Lcom/microsoft/appcenter/analytics/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/appcenter/analytics/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/appcenter/analytics/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onPreparingLog(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->shouldOverridePartAProperties(Lcom/microsoft/appcenter/ingestion/models/Log;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 2
    check-cast p1, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;

    invoke-virtual {p1}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getApp()Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getUser()Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/appcenter/ingestion/models/one/CommonSchemaLog;->getExt()Lcom/microsoft/appcenter/ingestion/models/one/Extensions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/appcenter/ingestion/models/one/Extensions;->getDevice()Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mAppName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p2, v1}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mTransmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    :cond_1
    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mParentTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->getPropertyConfigurator()Lcom/microsoft/appcenter/analytics/PropertyConfigurator;

    move-result-object v2

    invoke-direct {v2}, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->getAppName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {p2, v2}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->setName(Ljava/lang/String;)V

    .line 10
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mAppVersion:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {p2, v1}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->setVer(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mTransmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    :cond_4
    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mParentTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {v1}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->getPropertyConfigurator()Lcom/microsoft/appcenter/analytics/PropertyConfigurator;

    move-result-object v2

    invoke-direct {v2}, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 14
    invoke-virtual {p2, v2}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->setVer(Ljava/lang/String;)V

    .line 15
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mAppLocale:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 16
    invoke-virtual {p2, v1}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->setLocale(Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_6
    iget-object v1, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mTransmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    :cond_7
    iget-object v1, v1, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mParentTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    if-eqz v1, :cond_8

    .line 18
    invoke-virtual {v1}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->getPropertyConfigurator()Lcom/microsoft/appcenter/analytics/PropertyConfigurator;

    move-result-object v2

    invoke-direct {v2}, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->getAppLocale()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 19
    invoke-virtual {p2, v2}, Lcom/microsoft/appcenter/ingestion/models/one/AppExtension;->setLocale(Ljava/lang/String;)V

    .line 20
    :cond_8
    :goto_2
    iget-object p2, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mUserId:Ljava/lang/String;

    if-eqz p2, :cond_9

    .line 21
    invoke-virtual {v0, p2}, Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;->setLocalId(Ljava/lang/String;)V

    goto :goto_3

    .line 22
    :cond_9
    iget-object p2, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mTransmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    :cond_a
    iget-object p2, p2, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mParentTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    if-eqz p2, :cond_b

    .line 23
    invoke-virtual {p2}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->getPropertyConfigurator()Lcom/microsoft/appcenter/analytics/PropertyConfigurator;

    move-result-object v1

    invoke-direct {v1}, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 24
    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/ingestion/models/one/UserExtension;->setLocalId(Ljava/lang/String;)V

    .line 25
    :cond_b
    :goto_3
    iget-boolean p2, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mDeviceIdEnabled:Z

    if-eqz p2, :cond_c

    .line 26
    iget-object p2, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mTransmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    iget-object p2, p2, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "android_id"

    invoke-static {p2, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/appcenter/ingestion/models/one/DeviceExtension;->setLocalId(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public declared-synchronized removeEventProperty(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mEventProperties:Lcom/microsoft/appcenter/analytics/EventProperties;

    invoke-virtual {v0}, Lcom/microsoft/appcenter/analytics/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAppLocale(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v0

    new-instance v1, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$3;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$3;-><init>(Lcom/microsoft/appcenter/analytics/PropertyConfigurator;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/analytics/Analytics;->postCommandEvenIfDisabled(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v0

    new-instance v1, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$1;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$1;-><init>(Lcom/microsoft/appcenter/analytics/PropertyConfigurator;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/analytics/Analytics;->postCommandEvenIfDisabled(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v0

    new-instance v1, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$2;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$2;-><init>(Lcom/microsoft/appcenter/analytics/PropertyConfigurator;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/analytics/Analytics;->postCommandEvenIfDisabled(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized setEventProperty(Ljava/lang/String;D)V
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mEventProperties:Lcom/microsoft/appcenter/analytics/EventProperties;

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/appcenter/analytics/EventProperties;->set(Ljava/lang/String;D)Lcom/microsoft/appcenter/analytics/EventProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setEventProperty(Ljava/lang/String;J)V
    .locals 1

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mEventProperties:Lcom/microsoft/appcenter/analytics/EventProperties;

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/appcenter/analytics/EventProperties;->set(Ljava/lang/String;J)Lcom/microsoft/appcenter/analytics/EventProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setEventProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mEventProperties:Lcom/microsoft/appcenter/analytics/EventProperties;

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/appcenter/analytics/EventProperties;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/analytics/EventProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setEventProperty(Ljava/lang/String;Ljava/util/Date;)V
    .locals 1

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mEventProperties:Lcom/microsoft/appcenter/analytics/EventProperties;

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/appcenter/analytics/EventProperties;->set(Ljava/lang/String;Ljava/util/Date;)Lcom/microsoft/appcenter/analytics/EventProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setEventProperty(Ljava/lang/String;Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/PropertyConfigurator;->mEventProperties:Lcom/microsoft/appcenter/analytics/EventProperties;

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/appcenter/analytics/EventProperties;->set(Ljava/lang/String;Z)Lcom/microsoft/appcenter/analytics/EventProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/microsoft/appcenter/utils/context/UserIdContext;->checkUserIdValidForOneCollector(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/microsoft/appcenter/analytics/Analytics;->getInstance()Lcom/microsoft/appcenter/analytics/Analytics;

    move-result-object v0

    new-instance v1, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$4;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/appcenter/analytics/PropertyConfigurator$4;-><init>(Lcom/microsoft/appcenter/analytics/PropertyConfigurator;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/appcenter/analytics/Analytics;->postCommandEvenIfDisabled(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
