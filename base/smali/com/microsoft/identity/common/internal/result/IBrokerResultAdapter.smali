.class public interface abstract Lcom/microsoft/identity/common/internal/result/IBrokerResultAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract authenticationResultFromBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;
.end method

.method public abstract bundleFromAuthenticationResult(Lcom/microsoft/identity/common/internal/result/ILocalAuthenticationResult;)Landroid/os/Bundle;
.end method

.method public abstract bundleFromBaseException(Lcom/microsoft/identity/common/exception/BaseException;)Landroid/os/Bundle;
.end method

.method public abstract getBaseExceptionFromBundle(Landroid/os/Bundle;)Lcom/microsoft/identity/common/exception/BaseException;
.end method
