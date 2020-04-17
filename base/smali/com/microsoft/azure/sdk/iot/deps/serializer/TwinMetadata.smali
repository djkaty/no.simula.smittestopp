.class public Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DATEFORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

.field public static final TIMEZONE:Ljava/lang/String; = "UTC"


# instance fields
.field public lastUpdated:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "$lastUpdated"
    .end annotation
.end field

.field public lastUpdatedVersion:Ljava/lang/Integer;
    .annotation runtime Le/c/c/v/c;
        value = "$lastUpdatedVersion"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinMetadata;->update()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinMetadata;->lastUpdatedVersion:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinMetadata;->update()V

    .line 6
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinMetadata;->lastUpdatedVersion:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinMetadata;->lastUpdated:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinMetadata;->lastUpdatedVersion:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public declared-synchronized getLastUpdate()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinMetadata;->lastUpdated:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastUpdateVersion()Ljava/lang/Integer;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinMetadata;->lastUpdatedVersion:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toJsonElement()Le/c/c/j;
    .locals 1

    .line 1
    new-instance v0, Le/c/c/e;

    invoke-direct {v0}, Le/c/c/e;-><init>()V

    invoke-virtual {v0}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->b(Ljava/lang/Object;)Le/c/c/j;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized update()V
    .locals 2

    monitor-enter p0

    .line 10
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "UTC"

    .line 11
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 12
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinMetadata;->lastUpdated:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update(I)V
    .locals 0

    monitor-enter p0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinMetadata;->update()V

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinMetadata;->lastUpdatedVersion:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized update(Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinMetadata;->lastUpdated:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinMetadata;->lastUpdatedVersion:Ljava/lang/Integer;

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinMetadata;->lastUpdatedVersion:Ljava/lang/Integer;

    invoke-virtual {v0, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    :goto_0
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinMetadata;->lastUpdated:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinMetadata;->lastUpdatedVersion:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
