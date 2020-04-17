.class public interface abstract Lcom/microsoft/identity/common/internal/platform/IDevicePopManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract asymmetricKeyExists()Z
.end method

.method public abstract asymmetricKeyExists(Ljava/lang/String;)Z
.end method

.method public abstract clearAsymmetricKey()Z
.end method

.method public abstract generateAsymmetricKey(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract generateAsymmetricKey(Landroid/content/Context;Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError<",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/exception/ClientException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAsymmetricKeyThumbprint()Ljava/lang/String;
.end method

.method public abstract getRequestConfirmation()Ljava/lang/String;
.end method

.method public abstract getRequestConfirmation(Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError<",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/exception/ClientException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract mintSignedAccessToken(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
