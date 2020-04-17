.class public Lcom/microsoft/azure/sdk/iot/deps/serializer/RegistryStatisticsParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DISABLED_DEVICE_COUNT_NAME:Ljava/lang/String; = "disabledDeviceCount"

.field public static final ENABLED_DEVICE_COUNT_NAME:Ljava/lang/String; = "enableDeviceCount"

.field public static final TOTAL_DEVICE_COUNT_NAME:Ljava/lang/String; = "totalDeviceCount"

.field public static transient gson:Lcom/google/gson/Gson;


# instance fields
.field public disabledDeviceCount:J
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "disabledDeviceCount"
    .end annotation
.end field

.field public enabledDeviceCount:J
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "enableDeviceCount"
    .end annotation
.end field

.field public totalDeviceCount:J
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "totalDeviceCount"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegistryStatisticsParser;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    :try_start_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegistryStatisticsParser;->gson:Lcom/google/gson/Gson;

    const-class v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegistryStatisticsParser;

    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {v1}, Le/c/c/w/t;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegistryStatisticsParser;
    :try_end_0
    .catch Le/c/c/s; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    iget-wide v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegistryStatisticsParser;->totalDeviceCount:J

    iput-wide v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegistryStatisticsParser;->totalDeviceCount:J

    .line 9
    iget-wide v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegistryStatisticsParser;->enabledDeviceCount:J

    iput-wide v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegistryStatisticsParser;->enabledDeviceCount:J

    .line 10
    iget-wide v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegistryStatisticsParser;->disabledDeviceCount:J

    iput-wide v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegistryStatisticsParser;->disabledDeviceCount:J

    return-void

    .line 11
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided json could not be parsed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided json cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDisabledDeviceCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegistryStatisticsParser;->disabledDeviceCount:J

    return-wide v0
.end method

.method public getEnabledDeviceCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegistryStatisticsParser;->enabledDeviceCount:J

    return-wide v0
.end method

.method public getTotalDeviceCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegistryStatisticsParser;->totalDeviceCount:J

    return-wide v0
.end method

.method public setDisabledDeviceCount(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegistryStatisticsParser;->disabledDeviceCount:J

    return-void
.end method

.method public setEnabledDeviceCount(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegistryStatisticsParser;->enabledDeviceCount:J

    return-void
.end method

.method public setTotalDeviceCount(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegistryStatisticsParser;->totalDeviceCount:J

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/RegistryStatisticsParser;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
