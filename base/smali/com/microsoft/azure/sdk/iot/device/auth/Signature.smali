.class public final Lcom/microsoft/azure/sdk/iot/device/auth/Signature;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final sig:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1, p2, p3}, Lcom/microsoft/azure/sdk/iot/device/auth/SignatureHelper;->buildRawSignature(Ljava/lang/String;J)[B

    move-result-object p1

    .line 3
    invoke-static {p4}, Lcom/microsoft/azure/sdk/iot/device/auth/SignatureHelper;->decodeDeviceKeyBase64(Ljava/lang/String;)[B

    move-result-object p2

    .line 4
    invoke-static {p1, p2}, Lcom/microsoft/azure/sdk/iot/device/auth/SignatureHelper;->encryptSignatureHmacSha256([B[B)[B

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/device/auth/SignatureHelper;->encodeSignatureBase64([B)[B

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/device/auth/SignatureHelper;->encodeSignatureUtf8([B)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/device/auth/SignatureHelper;->encodeSignatureWebSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/auth/Signature;->sig:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/auth/Signature;->sig:Ljava/lang/String;

    return-object v0
.end method
