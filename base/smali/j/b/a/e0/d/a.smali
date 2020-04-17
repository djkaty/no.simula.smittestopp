.class public final Lj/b/a/e0/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/b/a/h$b;


# instance fields
.field public final synthetic a:Lno/simula/corona/ui/register/RegisterActivity;


# direct methods
.method public constructor <init>(Lno/simula/corona/ui/register/RegisterActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lj/b/a/e0/d/a;->a:Lno/simula/corona/ui/register/RegisterActivity;

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

    const-string v3, "PostPhoneVerProvision"

    .line 4
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/crashes/Crashes;->trackError(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/Iterable;)V

    .line 6
    iget-object p1, p0, Lj/b/a/e0/d/a;->a:Lno/simula/corona/ui/register/RegisterActivity;

    invoke-static {p1}, Lno/simula/corona/ui/register/RegisterActivity;->a(Lno/simula/corona/ui/register/RegisterActivity;)V

    return-void

    :cond_0
    const-string p1, "error"

    .line 7
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lorg/json/JSONObject;Z)V
    .locals 0

    const-string p1, "User provisioned"

    .line 1
    invoke-static {p1}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lj/b/a/e0/d/a;->a:Lno/simula/corona/ui/register/RegisterActivity;

    invoke-static {p1}, Lno/simula/corona/ui/register/RegisterActivity;->a(Lno/simula/corona/ui/register/RegisterActivity;)V

    return-void
.end method
