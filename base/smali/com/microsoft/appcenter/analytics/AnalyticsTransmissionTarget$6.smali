.class public Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->resume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$6;->this$0:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$6;->this$0:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    invoke-static {v0}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->access$100(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)Lcom/microsoft/appcenter/channel/Channel;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$6;->this$0:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    invoke-static {v1}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->access$500(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "group_analytics"

    invoke-interface {v0, v2, v1}, Lcom/microsoft/appcenter/channel/Channel;->resumeGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$6;->this$0:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    invoke-static {v0}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->access$100(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)Lcom/microsoft/appcenter/channel/Channel;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget$6;->this$0:Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;

    invoke-static {v1}, Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;->access$500(Lcom/microsoft/appcenter/analytics/AnalyticsTransmissionTarget;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "group_analytics_critical"

    invoke-interface {v0, v2, v1}, Lcom/microsoft/appcenter/channel/Channel;->resumeGroup(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
