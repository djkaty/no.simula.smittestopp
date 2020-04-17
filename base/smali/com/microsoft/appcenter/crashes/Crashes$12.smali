.class public Lcom/microsoft/appcenter/crashes/Crashes$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/crashes/Crashes;->handleUserConfirmation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/appcenter/crashes/Crashes;

.field public final synthetic val$userConfirmation:I


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/crashes/Crashes;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/crashes/Crashes$12;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    iput p2, p0, Lcom/microsoft/appcenter/crashes/Crashes$12;->val$userConfirmation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/microsoft/appcenter/crashes/Crashes$12;->val$userConfirmation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/Crashes$12;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v0}, Lcom/microsoft/appcenter/crashes/Crashes;->access$1000(Lcom/microsoft/appcenter/crashes/Crashes;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 5
    iget-object v2, p0, Lcom/microsoft/appcenter/crashes/Crashes$12;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v2, v1}, Lcom/microsoft/appcenter/crashes/Crashes;->access$1500(Lcom/microsoft/appcenter/crashes/Crashes;Ljava/util/UUID;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const-string v0, "com.microsoft.appcenter.crashes.always.send"

    .line 6
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/storage/SharedPreferencesManager;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/microsoft/appcenter/crashes/Crashes$12;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v0}, Lcom/microsoft/appcenter/crashes/Crashes;->access$1000(Lcom/microsoft/appcenter/crashes/Crashes;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 8
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;

    .line 11
    invoke-static {v3}, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;->access$1300(Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;)Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->getDevice()Lcom/microsoft/appcenter/ingestion/models/Device;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-static {v3}, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;->access$1300(Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;)Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/model/ErrorReport;->getDevice()Lcom/microsoft/appcenter/ingestion/models/Device;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->getWrapperSdkName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "appcenter.ndk"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 12
    invoke-static {v3}, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;->access$1600(Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;)Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;->getException()Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    move-result-object v4

    .line 13
    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->getMinidumpFilePath()Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->setMinidumpFilePath(Ljava/lang/String;)V

    if-nez v6, :cond_2

    .line 15
    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->getStackTrace()Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->setStackTrace(Ljava/lang/String;)V

    :cond_2
    if-eqz v6, :cond_3

    .line 17
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-static {v5}, Lcom/microsoft/appcenter/utils/storage/FileManager;->readBytes(Ljava/io/File;)[B

    move-result-object v4

    const-string v6, "minidump.dmp"

    const-string v7, "application/octet-stream"

    .line 19
    invoke-static {v4, v6, v7}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->attachmentWithBinary([BLjava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;

    move-result-object v4

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    goto :goto_2

    :cond_3
    const-string v4, "AppCenterCrashes"

    const-string v6, "NativeException found without minidump."

    .line 20
    invoke-static {v4, v6}, Lcom/microsoft/appcenter/utils/AppCenterLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object v4, v5

    .line 21
    :goto_2
    iget-object v6, p0, Lcom/microsoft/appcenter/crashes/Crashes$12;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v6}, Lcom/microsoft/appcenter/crashes/Crashes;->access$1700(Lcom/microsoft/appcenter/crashes/Crashes;)Lcom/microsoft/appcenter/channel/Channel;

    move-result-object v6

    invoke-static {v3}, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;->access$1600(Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;)Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

    move-result-object v7

    const-string v8, "groupErrors"

    invoke-interface {v6, v7, v8, v2}, Lcom/microsoft/appcenter/channel/Channel;->enqueue(Lcom/microsoft/appcenter/ingestion/models/Log;Ljava/lang/String;I)V

    if-eqz v5, :cond_5

    .line 22
    iget-object v6, p0, Lcom/microsoft/appcenter/crashes/Crashes$12;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v3}, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;->access$1600(Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;)Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

    move-result-object v7

    invoke-virtual {v7}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->getId()Ljava/util/UUID;

    move-result-object v7

    invoke-static {v5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v6, v7, v5}, Lcom/microsoft/appcenter/crashes/Crashes;->access$900(Lcom/microsoft/appcenter/crashes/Crashes;Ljava/util/UUID;Ljava/lang/Iterable;)V

    .line 23
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 24
    :cond_5
    iget-object v4, p0, Lcom/microsoft/appcenter/crashes/Crashes$12;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v4}, Lcom/microsoft/appcenter/crashes/Crashes;->access$1200(Lcom/microsoft/appcenter/crashes/Crashes;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 25
    iget-object v4, p0, Lcom/microsoft/appcenter/crashes/Crashes$12;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v4}, Lcom/microsoft/appcenter/crashes/Crashes;->access$700(Lcom/microsoft/appcenter/crashes/Crashes;)Lcom/microsoft/appcenter/crashes/CrashesListener;

    move-result-object v4

    invoke-static {v3}, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;->access$1300(Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;)Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/microsoft/appcenter/crashes/CrashesListener;->getErrorAttachments(Lcom/microsoft/appcenter/crashes/model/ErrorReport;)Ljava/lang/Iterable;

    move-result-object v4

    .line 26
    iget-object v5, p0, Lcom/microsoft/appcenter/crashes/Crashes$12;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    invoke-static {v3}, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;->access$1600(Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;)Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/AbstractErrorLog;->getId()Ljava/util/UUID;

    move-result-object v3

    invoke-static {v5, v3, v4}, Lcom/microsoft/appcenter/crashes/Crashes;->access$900(Lcom/microsoft/appcenter/crashes/Crashes;Ljava/util/UUID;Ljava/lang/Iterable;)V

    .line 27
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    invoke-static {v1}, Lcom/microsoft/appcenter/crashes/utils/ErrorLogHelper;->removeStoredErrorLogFile(Ljava/util/UUID;)V

    goto/16 :goto_1

    :cond_7
    return-void
.end method
