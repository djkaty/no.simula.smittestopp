.class public final Lj/b/a/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/b/a/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/b/a/h;->a(Ljava/lang/String;Lj/b/a/h$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj/b/a/h;

.field public final synthetic b:Lj/b/a/h$b;


# direct methods
.method public constructor <init>(Lj/b/a/h;Lj/b/a/h$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/b/a/h$b;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lj/b/a/h$c;->a:Lj/b/a/h;

    iput-object p2, p0, Lj/b/a/h$c;->b:Lj/b/a/h$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/VolleyError;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 15
    iget-object v0, p0, Lj/b/a/h$c;->b:Lj/b/a/h$b;

    invoke-interface {v0, p1}, Lj/b/a/h$b;->a(Lcom/android/volley/VolleyError;)V

    return-void

    :cond_0
    const-string p1, "error"

    .line 16
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Lorg/json/JSONObject;Z)V
    .locals 8

    .line 1
    iget-object p2, p0, Lj/b/a/h$c;->b:Lj/b/a/h$b;

    iget-object v0, p0, Lj/b/a/h$c;->a:Lj/b/a/h;

    .line 2
    iget-object v0, v0, Lj/b/a/h;->i:Landroid/app/Application;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    const-string v1, "DeviceId"

    const-string v2, "HostName"

    const-string v3, "SharedAccessKey"

    const-string v4, "ConnectionString"

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    xor-int/2addr v7, v6

    or-int/2addr v5, v7

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    xor-int/2addr v7, v6

    or-int/2addr v5, v7

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    xor-int/2addr v7, v6

    or-int/2addr v5, v7

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    const-string v0, "Invalid provision response"

    .line 4
    invoke-static {v0}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    const-string v5, "settings"

    .line 5
    invoke-virtual {v0, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "device-id-string"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "host-name"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 9
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "access-key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 10
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "connection-data"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 11
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 12
    :goto_0
    invoke-interface {p2, p1, v6}, Lj/b/a/h$b;->a(Lorg/json/JSONObject;Z)V

    return-void

    :cond_1
    const-string p1, "context"

    .line 13
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_2
    invoke-static {}, Lh/k/b/g;->a()V

    throw v1
.end method
