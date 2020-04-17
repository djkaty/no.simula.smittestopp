.class public Lcom/microsoft/identity/common/internal/platform/DevicePopManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->generateAsymmetricKey(Landroid/content/Context;Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/common/internal/platform/DevicePopManager;

.field public final synthetic val$callback:Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/platform/DevicePopManager;Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/platform/DevicePopManager$1;->this$0:Lcom/microsoft/identity/common/internal/platform/DevicePopManager;

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/platform/DevicePopManager$1;->val$callback:Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError;

    iput-object p3, p0, Lcom/microsoft/identity/common/internal/platform/DevicePopManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/DevicePopManager$1;->val$callback:Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/platform/DevicePopManager$1;->this$0:Lcom/microsoft/identity/common/internal/platform/DevicePopManager;

    iget-object v2, p0, Lcom/microsoft/identity/common/internal/platform/DevicePopManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->generateAsymmetricKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallback;->onTaskCompleted(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/platform/DevicePopManager$1;->val$callback:Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError;

    invoke-interface {v1, v0}, Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError;->onError(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
