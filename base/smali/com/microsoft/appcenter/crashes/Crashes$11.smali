.class public Lcom/microsoft/appcenter/crashes/Crashes$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/crashes/Crashes;->sendCrashReportsOrAwaitUserConfirmation()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/appcenter/crashes/Crashes;

.field public final synthetic val$alwaysSend:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/crashes/Crashes;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/crashes/Crashes$11;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    iput-boolean p2, p0, Lcom/microsoft/appcenter/crashes/Crashes$11;->val$alwaysSend:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/Crashes$11;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v0}, Lcom/microsoft/appcenter/crashes/Crashes;->access$1000(Lcom/microsoft/appcenter/crashes/Crashes;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2
    iget-boolean v0, p0, Lcom/microsoft/appcenter/crashes/Crashes$11;->val$alwaysSend:Z

    const/4 v1, 0x0

    const-string v2, "AppCenterCrashes"

    if-eqz v0, :cond_0

    const-string v0, "The flag for user confirmation is set to ALWAYS_SEND, will send logs."

    .line 3
    invoke-static {v2, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/Crashes$11;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v0, v1}, Lcom/microsoft/appcenter/crashes/Crashes;->access$1100(Lcom/microsoft/appcenter/crashes/Crashes;I)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/Crashes$11;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v0}, Lcom/microsoft/appcenter/crashes/Crashes;->access$1200(Lcom/microsoft/appcenter/crashes/Crashes;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Automatic processing disabled, will wait for explicit user confirmation."

    .line 6
    invoke-static {v2, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/Crashes$11;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v0}, Lcom/microsoft/appcenter/crashes/Crashes;->access$700(Lcom/microsoft/appcenter/crashes/Crashes;)Lcom/microsoft/appcenter/crashes/CrashesListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/appcenter/crashes/CrashesListener;->shouldAwaitUserConfirmation()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CrashesListener.shouldAwaitUserConfirmation returned false, will send logs."

    .line 8
    invoke-static {v2, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/Crashes$11;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v0, v1}, Lcom/microsoft/appcenter/crashes/Crashes;->access$1100(Lcom/microsoft/appcenter/crashes/Crashes;I)V

    goto :goto_0

    :cond_2
    const-string v0, "CrashesListener.shouldAwaitUserConfirmation returned true, wait sending logs."

    .line 10
    invoke-static {v2, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
