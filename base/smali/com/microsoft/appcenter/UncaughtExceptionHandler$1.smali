.class public Lcom/microsoft/appcenter/UncaughtExceptionHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/appcenter/UncaughtExceptionHandler;

.field public final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/UncaughtExceptionHandler;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/UncaughtExceptionHandler$1;->this$0:Lcom/microsoft/appcenter/UncaughtExceptionHandler;

    iput-object p2, p0, Lcom/microsoft/appcenter/UncaughtExceptionHandler$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/UncaughtExceptionHandler$1;->this$0:Lcom/microsoft/appcenter/UncaughtExceptionHandler;

    invoke-static {v0}, Lcom/microsoft/appcenter/UncaughtExceptionHandler;->access$000(Lcom/microsoft/appcenter/UncaughtExceptionHandler;)Lcom/microsoft/appcenter/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/appcenter/channel/Channel;->shutdown()V

    const-string v0, "AppCenter"

    const-string v1, "Channel completed shutdown."

    .line 2
    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/microsoft/appcenter/UncaughtExceptionHandler$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
