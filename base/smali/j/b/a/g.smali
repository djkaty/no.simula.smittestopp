.class public final Lj/b/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/b/a/h$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/VolleyError;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "where"

    const-string v3, "DataCollector retryProvisioning"

    .line 4
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/crashes/Crashes;->trackError(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/Iterable;)V

    return-void

    :cond_0
    const-string p1, "error"

    .line 6
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lorg/json/JSONObject;Z)V
    .locals 1

    .line 1
    new-instance p1, Lcom/microsoft/appcenter/analytics/EventProperties;

    invoke-direct {p1}, Lcom/microsoft/appcenter/analytics/EventProperties;-><init>()V

    const-string p2, "where"

    const-string v0, "DataCollector retryProvisioning"

    invoke-virtual {p1, p2, v0}, Lcom/microsoft/appcenter/analytics/EventProperties;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/analytics/EventProperties;

    const-string p2, "Provisioned"

    .line 2
    invoke-static {p2, p1}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/EventProperties;)V

    return-void
.end method
