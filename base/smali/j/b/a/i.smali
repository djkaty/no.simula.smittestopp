.class public final Lj/b/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeCallback;


# instance fields
.field public final synthetic a:Lj/b/a/h;


# direct methods
.method public constructor <init>(Lj/b/a/h;)V
    .locals 0

    iput-object p1, p0, Lj/b/a/i;->a:Lj/b/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/microsoft/azure/sdk/iot/device/transport/IotHubConnectionStatus;Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeReason;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 1
    new-instance p4, Ljava/util/LinkedHashMap;

    invoke-direct {p4}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v0, "where"

    const-string v1, "IoTHubDevice::registerConnectionStatus"

    .line 2
    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    invoke-static {p3, p4, v0}, Lcom/microsoft/appcenter/crashes/Crashes;->trackError(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/Iterable;)V

    .line 4
    :cond_0
    iget-object p3, p0, Lj/b/a/i;->a:Lj/b/a/h;

    const/4 p4, 0x0

    .line 5
    iput-boolean p4, p3, Lj/b/a/h;->e:Z

    if-nez p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 7
    :goto_1
    iput-boolean v0, p3, Lj/b/a/h;->c:Z

    if-eqz p2, :cond_3

    .line 8
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const-string p2, "null"

    :goto_2
    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const-string p1, "null-status"

    :goto_3
    const-string p3, " because "

    .line 10
    invoke-static {p1, p3, p2}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, p4, [Ljava/lang/Object;

    .line 11
    sget-object p3, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {p3, p1, p2}, Ll/a/a$b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    invoke-static {p1}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;)V

    return-void
.end method
