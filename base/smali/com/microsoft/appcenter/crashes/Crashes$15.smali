.class public Lcom/microsoft/appcenter/crashes/Crashes$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/crashes/Crashes;->sendErrorAttachments(Ljava/lang/String;Ljava/lang/Iterable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/appcenter/crashes/Crashes;

.field public final synthetic val$attachments:Ljava/lang/Iterable;

.field public final synthetic val$errorReportId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/crashes/Crashes;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/crashes/Crashes$15;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    iput-object p2, p0, Lcom/microsoft/appcenter/crashes/Crashes$15;->val$errorReportId:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/appcenter/crashes/Crashes$15;->val$attachments:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/Crashes$15;->val$errorReportId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v1, p0, Lcom/microsoft/appcenter/crashes/Crashes$15;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    iget-object v2, p0, Lcom/microsoft/appcenter/crashes/Crashes$15;->val$attachments:Ljava/lang/Iterable;

    invoke-static {v1, v0, v2}, Lcom/microsoft/appcenter/crashes/Crashes;->access$900(Lcom/microsoft/appcenter/crashes/Crashes;Ljava/util/UUID;Ljava/lang/Iterable;)V

    return-void

    :catch_0
    const-string v0, "AppCenterCrashes"

    const-string v1, "Error report identifier has an invalid format for sending attachments."

    .line 3
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
