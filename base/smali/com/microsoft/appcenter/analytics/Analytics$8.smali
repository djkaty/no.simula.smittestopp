.class public Lcom/microsoft/appcenter/analytics/Analytics$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/analytics/Analytics;->trackEventAsync(Ljava/lang/String;Ljava/util/List;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/appcenter/analytics/Analytics;

.field public final synthetic val$flags:I

.field public final synthetic val$name:Ljava/lang/String;

.field public final synthetic val$properties:Ljava/util/List;

.field public final synthetic val$transmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

.field public final synthetic val$userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/analytics/Analytics;Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/analytics/Analytics$8;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    iput-object p2, p0, Lcom/microsoft/appcenter/analytics/Analytics$8;->val$transmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    iput-object p3, p0, Lcom/microsoft/appcenter/analytics/Analytics$8;->val$userId:Ljava/lang/String;

    iput-object p4, p0, Lcom/microsoft/appcenter/analytics/Analytics$8;->val$name:Ljava/lang/String;

    iput-object p5, p0, Lcom/microsoft/appcenter/analytics/Analytics$8;->val$properties:Ljava/util/List;

    iput p6, p0, Lcom/microsoft/appcenter/analytics/Analytics$8;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics$8;->val$transmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics$8;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    iget-object v0, v0, Lcom/microsoft/appcenter/analytics/Analytics;->mDefaultTransmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    .line 2
    :cond_0
    new-instance v1, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;

    invoke-direct {v1}, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;-><init>()V

    const-string v2, "AppCenterAnalytics"

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->getTransmissionTargetToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->addTransmissionTarget(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v0}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v2, p0, Lcom/microsoft/appcenter/analytics/Analytics$8;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    iget-object v2, v2, Lcom/microsoft/appcenter/analytics/Analytics;->mDefaultTransmissionTarget:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    if-ne v0, v2, :cond_3

    .line 7
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics$8;->val$userId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->setUserId(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "This transmission target is disabled."

    .line 8
    invoke-static {v2, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics$8;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    invoke-static {v0}, Lcom/microsoft/appcenter/analytics/Analytics;->access$600(Lcom/microsoft/appcenter/analytics/Analytics;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Cannot track event using Analytics.trackEvent if not started from app, please start from the application or use Analytics.getTransmissionTarget."

    .line 10
    invoke-static {v2, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_3
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->setId(Ljava/util/UUID;)V

    .line 12
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics$8;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/microsoft/appcenter/analytics/ingestion/models/LogWithNameAndProperties;->setName(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/Analytics$8;->val$properties:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/microsoft/appcenter/analytics/ingestion/models/EventLog;->setTypedProperties(Ljava/util/List;)V

    .line 14
    iget v0, p0, Lcom/microsoft/appcenter/analytics/Analytics$8;->val$flags:I

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/microsoft/appcenter/Flags;->getPersistenceFlag(IZ)I

    move-result v0

    .line 15
    iget-object v2, p0, Lcom/microsoft/appcenter/analytics/Analytics$8;->this$0:Lcom/microsoft/appcenter/analytics/Analytics;

    invoke-static {v2}, Lcom/microsoft/appcenter/analytics/Analytics;->access$800(Lcom/microsoft/appcenter/analytics/Analytics;)Lcom/microsoft/appcenter/channel/Channel;

    move-result-object v2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    const-string v3, "group_analytics_critical"

    goto :goto_1

    :cond_4
    const-string v3, "group_analytics"

    :goto_1
    invoke-interface {v2, v1, v3, v0}, Lcom/microsoft/appcenter/channel/Channel;->enqueue(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V

    return-void
.end method
