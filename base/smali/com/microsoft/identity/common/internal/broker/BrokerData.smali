.class public Lcom/microsoft/identity/common/internal/broker/BrokerData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final signatureHash:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->packageName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->signatureHash:Ljava/lang/String;

    return-void
.end method

.method public static getBrokerDataForBrokerApp(Landroid/content/Context;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerData;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/broker/BrokerValidator;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/broker/BrokerValidator;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p0, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/broker/BrokerValidator;->verifySignatureAndThrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
