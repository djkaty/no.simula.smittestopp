.class public Lcom/microsoft/identity/common/internal/logging/Logger$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/internal/logging/Logger;->log(Ljava/lang/String;Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/common/internal/logging/Logger;

.field public final synthetic val$containsPII:Z

.field public final synthetic val$correlationID:Ljava/lang/String;

.field public final synthetic val$logLevel:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

.field public final synthetic val$message:Ljava/lang/String;

.field public final synthetic val$tag:Ljava/lang/String;

.field public final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/logging/Logger;Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/logging/Logger$1;->this$0:Lcom/microsoft/identity/common/internal/logging/Logger;

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/logging/Logger$1;->val$logLevel:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    iput-boolean p3, p0, Lcom/microsoft/identity/common/internal/logging/Logger$1;->val$containsPII:Z

    iput-object p4, p0, Lcom/microsoft/identity/common/internal/logging/Logger$1;->val$correlationID:Ljava/lang/String;

    iput-object p5, p0, Lcom/microsoft/identity/common/internal/logging/Logger$1;->val$message:Ljava/lang/String;

    iput-object p6, p0, Lcom/microsoft/identity/common/internal/logging/Logger$1;->val$throwable:Ljava/lang/Throwable;

    iput-object p7, p0, Lcom/microsoft/identity/common/internal/logging/Logger$1;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/logging/Logger$1;->val$logLevel:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/logging/Logger$1;->this$0:Lcom/microsoft/identity/common/internal/logging/Logger;

    invoke-static {v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->access$000(Lcom/microsoft/identity/common/internal/logging/Logger;)Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->access$100()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/logging/Logger$1;->val$containsPII:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/logging/Logger$1;->this$0:Lcom/microsoft/identity/common/internal/logging/Logger;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/logging/Logger$1;->val$correlationID:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/identity/common/internal/logging/Logger$1;->val$message:Ljava/lang/String;

    iget-object v3, p0, Lcom/microsoft/identity/common/internal/logging/Logger$1;->val$throwable:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Lcom/microsoft/identity/common/internal/logging/Logger;->access$200(Lcom/microsoft/identity/common/internal/logging/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->access$300()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/logging/Logger$1;->this$0:Lcom/microsoft/identity/common/internal/logging/Logger;

    iget-object v2, p0, Lcom/microsoft/identity/common/internal/logging/Logger$1;->val$tag:Ljava/lang/String;

    iget-object v3, p0, Lcom/microsoft/identity/common/internal/logging/Logger$1;->val$logLevel:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    invoke-static {v1, v2, v3, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->access$400(Lcom/microsoft/identity/common/internal/logging/Logger;Ljava/lang/String;Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;Ljava/lang/String;)V

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/logging/Logger$1;->this$0:Lcom/microsoft/identity/common/internal/logging/Logger;

    invoke-static {v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->access$500(Lcom/microsoft/identity/common/internal/logging/Logger;)Lcom/microsoft/identity/common/internal/logging/ILoggerCallback;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/logging/Logger$1;->this$0:Lcom/microsoft/identity/common/internal/logging/Logger;

    invoke-static {v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->access$500(Lcom/microsoft/identity/common/internal/logging/Logger;)Lcom/microsoft/identity/common/internal/logging/ILoggerCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/identity/common/internal/logging/Logger$1;->val$tag:Ljava/lang/String;

    iget-object v3, p0, Lcom/microsoft/identity/common/internal/logging/Logger$1;->val$logLevel:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    iget-boolean v4, p0, Lcom/microsoft/identity/common/internal/logging/Logger$1;->val$containsPII:Z

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/microsoft/identity/common/internal/logging/ILoggerCallback;->log(Ljava/lang/String;Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 8
    iget-boolean v1, p0, Lcom/microsoft/identity/common/internal/logging/Logger$1;->val$containsPII:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/Logger;->access$100()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/logging/Logger$1;->val$tag:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "Custom log failed to log message:%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method
