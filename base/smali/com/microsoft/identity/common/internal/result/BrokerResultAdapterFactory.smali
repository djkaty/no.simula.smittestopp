.class public Lcom/microsoft/identity/common/internal/result/BrokerResultAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBrokerResultAdapter(Lcom/microsoft/identity/common/internal/request/SdkType;)Lcom/microsoft/identity/common/internal/result/IBrokerResultAdapter;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/request/SdkType;->ADAL:Lcom/microsoft/identity/common/internal/request/SdkType;

    if-ne p0, v0, :cond_0

    .line 2
    new-instance p0, Lcom/microsoft/identity/common/internal/result/AdalBrokerResultAdapter;

    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/result/AdalBrokerResultAdapter;-><init>()V

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;

    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/result/MsalBrokerResultAdapter;-><init>()V

    return-object p0
.end method
