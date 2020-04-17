.class public final Lj/b/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/b/a/h$b;,
        Lj/b/a/h$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/android/volley/RequestQueue;

.field public b:Lcom/microsoft/azure/sdk/iot/device/DeviceClient;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/b/a/h;->i:Landroid/app/Application;

    .line 2
    invoke-static {p1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object p1

    iput-object p1, p0, Lj/b/a/h;->a:Lcom/android/volley/RequestQueue;

    const-string p1, "1.0.2"

    .line 3
    iput-object p1, p0, Lj/b/a/h;->f:Ljava/lang/String;

    const-string p1, "utf-8"

    .line 4
    iput-object p1, p0, Lj/b/a/h;->g:Ljava/lang/String;

    const-string p1, "application/json"

    .line 5
    iput-object p1, p0, Lj/b/a/h;->h:Ljava/lang/String;

    return-void

    :cond_0
    const-string p1, "appContext"

    .line 6
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lj/b/a/h;->c:Z

    if-nez v0, :cond_3

    .line 2
    iget-boolean v0, p0, Lj/b/a/h;->e:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lj/b/a/h;->i:Landroid/app/Application;

    invoke-static {v0}, Lj/b/a/a0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    new-array v0, v3, [Ljava/lang/Object;

    .line 5
    sget-object v1, Ll/a/a;->d:Ll/a/a$b;

    const-string v2, "Error: device is not provision"

    invoke-virtual {v1, v2, v0}, Ll/a/a$b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    new-array v1, v3, [Ljava/lang/Object;

    .line 6
    sget-object v4, Ll/a/a;->d:Ll/a/a$b;

    const-string v5, "Trying to connect device"

    invoke-virtual {v4, v5, v1}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iput-boolean v2, p0, Lj/b/a/h;->e:Z

    const/4 v1, 0x0

    .line 8
    :try_start_0
    new-instance v2, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;

    sget-object v4, Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;->HTTPS:Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;

    invoke-direct {v2, v0, v4}, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;-><init>(Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/IotHubClientProtocol;)V

    .line 9
    sget-object v0, Lj/b/a/j;->a:Lj/b/a/j;

    invoke-virtual {v2, v0}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->setRetryPolicy(Lcom/microsoft/azure/sdk/iot/device/transport/RetryPolicy;)V

    .line 10
    new-instance v0, Lj/b/a/i;

    invoke-direct {v0, p0}, Lj/b/a/i;-><init>(Lj/b/a/h;)V

    invoke-virtual {v2, v0, v1}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->registerConnectionStatusChangeCallback(Lcom/microsoft/azure/sdk/iot/device/IotHubConnectionStatusChangeCallback;Ljava/lang/Object;)V

    const-wide/16 v4, 0x3e8

    .line 11
    invoke-virtual {v2, v4, v5}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->setOperationTimeout(J)V

    const-string v0, "SetMinimumPollingInterval"

    const-wide/32 v4, 0x1b7740

    .line 12
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->setOption(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v2}, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->open()V

    .line 14
    new-instance v0, Lj/b/a/h$a;

    invoke-direct {v0, p0}, Lj/b/a/h$a;-><init>(Lj/b/a/h;)V

    invoke-virtual {v2, v0, v1}, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->setMessageCallback(Lcom/microsoft/azure/sdk/iot/device/MessageCallback;Ljava/lang/Object;)Lcom/microsoft/azure/sdk/iot/device/DeviceClient;

    .line 15
    iput-object v2, p0, Lj/b/a/h;->b:Lcom/microsoft/azure/sdk/iot/device/DeviceClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 16
    iput-boolean v3, p0, Lj/b/a/h;->e:Z

    .line 17
    iput-object v1, p0, Lj/b/a/h;->b:Lcom/microsoft/azure/sdk/iot/device/DeviceClient;

    .line 18
    sget-object v2, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v2, v0}, Ll/a/a$b;->a(Ljava/lang/Throwable;)V

    .line 19
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v3, "where"

    const-string v4, "IoTHubDevice::connect"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {v0, v2, v1}, Lcom/microsoft/appcenter/crashes/Crashes;->trackError(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/Iterable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Ljava/lang/String;Lj/b/a/h$b;)V
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 21
    iget-object v1, p0, Lj/b/a/h;->i:Landroid/app/Application;

    if-eqz v1, :cond_3

    .line 22
    invoke-static {v1}, Lj/b/a/a0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 24
    invoke-interface {p2, v0, v2}, Lj/b/a/h$b;->a(Lorg/json/JSONObject;Z)V

    .line 25
    :cond_1
    new-instance v6, Lj/b/a/h$c;

    invoke-direct {v6, p0, p2}, Lj/b/a/h$c;-><init>(Lj/b/a/h;Lj/b/a/h$b;)V

    .line 26
    iget-boolean p2, p0, Lj/b/a/h;->d:Z

    if-eqz p2, :cond_2

    .line 27
    new-instance p2, Lcom/android/volley/VolleyError;

    const-string v0, "Provisioning already started"

    invoke-direct {p2, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, p2}, Lj/b/a/h$b;->a(Lcom/android/volley/VolleyError;)V

    :cond_2
    new-array p2, v3, [Ljava/lang/Object;

    .line 28
    sget-object v0, Ll/a/a;->d:Ll/a/a$b;

    const-string v1, "Starting device provisioning"

    invoke-virtual {v0, v1, p2}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iput-boolean v2, p0, Lj/b/a/h;->d:Z

    .line 30
    new-instance p2, Lj/b/a/k;

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 31
    new-instance v10, Lj/b/a/l;

    invoke-direct {v10, v6}, Lj/b/a/l;-><init>(Lj/b/a/h$b;)V

    .line 32
    new-instance v11, Lj/b/a/m;

    invoke-direct {v11, v6}, Lj/b/a/m;-><init>(Lj/b/a/h$b;)V

    const-string v8, "https://api-smittestopp-prod.azure-api.net/onboarding/register-device"

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v4 .. v11}, Lj/b/a/k;-><init>(Ljava/lang/String;Lj/b/a/h$b;ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 33
    new-instance p1, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v0, 0x2710

    const/4 v1, 0x0

    invoke-direct {p1, v0, v3, v1}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 34
    invoke-virtual {p2, p1}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 35
    iget-object p1, p0, Lj/b/a/h;->a:Lcom/android/volley/RequestQueue;

    invoke-virtual {p1, p2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void

    :cond_3
    const-string p1, "context"

    .line 36
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string p1, "listener"

    .line 37
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string p1, "token"

    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0
.end method
