.class public Lcom/microsoft/identity/common/internal/request/BrokerRequestAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "com.microsoft.identity.common.internal.request.BrokerRequestAdapterFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBrokerRequestAdapter(Landroid/os/Bundle;)Lcom/microsoft/identity/common/internal/request/IBrokerRequestAdapter;
    .locals 2

    const-string v0, ":getBrokerRequestAdapter"

    if-eqz p0, :cond_0

    const-string v1, "broker_request_v2"

    .line 1
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/request/BrokerRequestAdapterFactory;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Request from MSAL, returning MsalBrokerRequestAdapter"

    invoke-static {p0, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p0, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;

    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/request/MsalBrokerRequestAdapter;-><init>()V

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/request/BrokerRequestAdapterFactory;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Request from ADAL, returning AdalBrokerRequestAdapter"

    invoke-static {p0, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p0, Lcom/microsoft/identity/common/internal/request/AdalBrokerRequestAdapter;

    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/request/AdalBrokerRequestAdapter;-><init>()V

    return-object p0
.end method
