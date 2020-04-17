.class public Lcom/microsoft/appcenter/analytics/Analytics$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/analytics/Analytics;->trackPageAsync(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/appcenter/analytics/Analytics;

.field public final synthetic val$name:Ljava/lang/String;

.field public final synthetic val$propertiesCopy:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/analytics/Analytics;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/analytics/Analytics$7;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    iput-object p2, p0, Lcom/microsoft/appcenter/analytics/Analytics$7;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/appcenter/analytics/Analytics$7;->val$propertiesCopy:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics$7;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    invoke-static {v0}, Lcom/microsoft/appcenter/analytics/Analytics;->access$600(Lcom/microsoft/appcenter/analytics/Analytics;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics$7;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    iget-object v1, p0, Lcom/microsoft/appcenter/analytics/Analytics$7;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/appcenter/analytics/Analytics$7;->val$propertiesCopy:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/microsoft/appcenter/analytics/Analytics;->access$700(Lcom/microsoft/appcenter/analytics/Analytics;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string v0, "AppCenterAnalytics"

    const-string v1, "Cannot track page if not started from app."

    .line 3
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
