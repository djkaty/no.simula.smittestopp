.class public Lcom/microsoft/identity/common/internal/platform/DevicePopManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->getRequestConfirmation(Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/common/internal/platform/DevicePopManager;

.field public final synthetic val$callback:Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/platform/DevicePopManager;Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/platform/DevicePopManager$3;->this$0:Lcom/microsoft/identity/common/internal/platform/DevicePopManager;

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/platform/DevicePopManager$3;->val$callback:Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/DevicePopManager$3;->this$0:Lcom/microsoft/identity/common/internal/platform/DevicePopManager;

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->access$000(Lcom/microsoft/identity/common/internal/platform/DevicePopManager;)Ljava/security/KeyStore;

    move-result-object v0

    const-string v1, "microsoft-device-pop"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->access$100(Ljava/security/KeyStore$Entry;)Ljava/security/KeyPair;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->access$200(Ljava/security/KeyPair;)Le/e/a/u/k;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->access$300(Le/e/a/u/k;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/platform/DevicePopManager$3;->val$callback:Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError;

    invoke-interface {v1, v0}, Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallback;->onTaskCompleted(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Le/e/a/f; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "json_construction_failed"

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "failed_to_compute_thumbprint_with_sha256"

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "protection_params_invalid"

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "no_such_algorithm"

    goto :goto_0

    :catch_4
    move-exception v0

    const-string v1, "keystore_not_initialized"

    .line 6
    :goto_0
    new-instance v2, Lcom/microsoft/identity/common/exception/ClientException;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    invoke-static {}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->access$400()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {v2}, Lcom/microsoft/identity/common/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v0, v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/DevicePopManager$3;->val$callback:Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError;

    invoke-interface {v0, v2}, Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError;->onError(Ljava/lang/Object;)V

    return-void
.end method
