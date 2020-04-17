.class public Lcom/microsoft/appcenter/crashes/Crashes$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/crashes/Crashes$6;->processCallback(Lcom/microsoft/appcenter/ingestion/models/Log;Lcom/microsoft/appcenter/crashes/Crashes$CallbackProcessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/microsoft/appcenter/crashes/Crashes$6;

.field public final synthetic val$callbackProcessor:Lcom/microsoft/appcenter/crashes/Crashes$CallbackProcessor;

.field public final synthetic val$log:Lcom/microsoft/appcenter/ingestion/models/Log;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/crashes/Crashes$6;Lcom/microsoft/appcenter/ingestion/models/Log;Lcom/microsoft/appcenter/crashes/Crashes$CallbackProcessor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/crashes/Crashes$6$1;->this$1:Lcom/microsoft/appcenter/crashes/Crashes$6;

    iput-object p2, p0, Lcom/microsoft/appcenter/crashes/Crashes$6$1;->val$log:Lcom/microsoft/appcenter/ingestion/models/Log;

    iput-object p3, p0, Lcom/microsoft/appcenter/crashes/Crashes$6$1;->val$callbackProcessor:Lcom/microsoft/appcenter/crashes/Crashes$CallbackProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/Crashes$6$1;->val$log:Lcom/microsoft/appcenter/ingestion/models/Log;

    instance-of v1, v0, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

    const-string v2, "AppCenterCrashes"

    if-eqz v1, :cond_2

    .line 2
    check-cast v0, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

    .line 3
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/Crashes$6$1;->this$1:Lcom/microsoft/appcenter/crashes/Crashes$6;

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/Crashes$6;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-virtual {v1, v0}, Lcom/microsoft/appcenter/crashes/Crashes;->buildErrorReport(Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;)Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->getId()Ljava/util/UUID;

    move-result-object v0

    if-eqz v1, :cond_1

    .line 5
    iget-object v2, p0, Lcom/microsoft/appcenter/crashes/Crashes$6$1;->val$callbackProcessor:Lcom/microsoft/appcenter/crashes/Crashes$CallbackProcessor;

    invoke-interface {v2}, Lcom/microsoft/appcenter/crashes/Crashes$CallbackProcessor;->shouldDeleteThrowable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/microsoft/appcenter/crashes/Crashes$6$1;->this$1:Lcom/microsoft/appcenter/crashes/Crashes$6;

    iget-object v2, v2, Lcom/microsoft/appcenter/crashes/Crashes$6;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v2, v0}, Lcom/microsoft/appcenter/crashes/Crashes;->access$500(Lcom/microsoft/appcenter/crashes/Crashes;Ljava/util/UUID;)V

    .line 7
    :cond_0
    new-instance v0, Lcom/microsoft/appcenter/crashes/Crashes$6$1$1;

    invoke-direct {v0, p0, v1}, Lcom/microsoft/appcenter/crashes/Crashes$6$1$1;-><init>(Lcom/microsoft/appcenter/crashes/Crashes$6$1;Lcom/microsoft/appcenter/crashes/model/ErrorReport;)V

    invoke-static {v0}, Lcom/microsoft/appcenter/utils/HandlerUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find crash report for the error log: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_2
    instance-of v1, v0, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;

    if-nez v1, :cond_3

    instance-of v0, v0, Lcom/microsoft/appcenter/crashes/ingestion/models/HandledErrorLog;

    if-nez v0, :cond_3

    const-string v0, "A different type of log comes to crashes: "

    .line 10
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/Crashes$6$1;->val$log:Lcom/microsoft/appcenter/ingestion/models/Log;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
