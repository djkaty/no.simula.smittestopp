.class public interface abstract Lcom/microsoft/identity/common/internal/request/IBrokerRequestAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract brokerInteractiveParametersFromActivity(Landroid/app/Activity;)Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenOperationParameters;
.end method

.method public abstract brokerRequestFromAcquireTokenParameters(Lcom/microsoft/identity/common/internal/request/AcquireTokenOperationParameters;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest;
.end method

.method public abstract brokerRequestFromSilentOperationParameters(Lcom/microsoft/identity/common/internal/request/AcquireTokenSilentOperationParameters;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest;
.end method

.method public abstract brokerSilentParametersFromBundle(Landroid/os/Bundle;Landroid/content/Context;Landroid/accounts/Account;)Lcom/microsoft/identity/common/internal/request/BrokerAcquireTokenSilentOperationParameters;
.end method
