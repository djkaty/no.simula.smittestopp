.class public Lcom/microsoft/azure/sdk/iot/device/edge/HttpsHsmTrustBundleProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/sdk/iot/device/edge/TrustBundleProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTrustBundleCerts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p2}, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;->getTrustBundle(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/hsm/parser/TrustBundleResponse;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/hsm/parser/TrustBundleResponse;->getCertificates()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
