.class public Lcom/microsoft/azure/sdk/iot/device/hsm/HttpHsmSignatureProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/sdk/iot/device/auth/SignatureProvider;


# static fields
.field public static final DEFAULT_KEY_ID:Ljava/lang/String; = "primary"

.field public static final ENCODING_CHARSET:Ljava/lang/String; = "UTF-8"

.field public static final MAC:Ljava/lang/String; = "HmacSHA256"

.field public static final log:Lk/f/b;


# instance fields
.field public apiVersion:Ljava/lang/String;

.field public defaultSignRequestAlgo:Ljavax/crypto/Mac;

.field public httpClient:Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpHsmSignatureProvider;

    invoke-static {v0}, Lk/f/c;->a(Ljava/lang/Class;)Lk/f/b;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpHsmSignatureProvider;->log:Lk/f/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HmacSHA256"

    .line 2
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpHsmSignatureProvider;->defaultSignRequestAlgo:Ljavax/crypto/Mac;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpHsmSignatureProvider;->log:Lk/f/b;

    const-string v1, "Creating HttpHsmSignatureProvider with providerUri {}"

    invoke-interface {v0, v1, p1}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;

    invoke-direct {v0, p1}, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpHsmSignatureProvider;->httpClient:Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;

    .line 7
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpHsmSignatureProvider;->apiVersion:Ljava/lang/String;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "apiVersion cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "provider uri cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/hsm/parser/SignRequest;

    invoke-direct {v0}, Lcom/microsoft/azure/sdk/iot/device/hsm/parser/SignRequest;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpHsmSignatureProvider;->defaultSignRequestAlgo:Ljavax/crypto/Mac;

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/sdk/iot/device/hsm/parser/SignRequest;->setAlgo(Ljavax/crypto/Mac;)V

    const-string v1, "UTF-8"

    .line 4
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/microsoft/azure/sdk/iot/device/hsm/parser/SignRequest;->setData([B)V

    const-string p2, "primary"

    .line 5
    invoke-virtual {v0, p2}, Lcom/microsoft/azure/sdk/iot/device/hsm/parser/SignRequest;->setKeyId(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpHsmSignatureProvider;->httpClient:Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;

    iget-object v2, p0, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpHsmSignatureProvider;->apiVersion:Ljava/lang/String;

    invoke-virtual {p2, v2, p1, v0, p3}, Lcom/microsoft/azure/sdk/iot/device/hsm/HttpsHsmClient;->sign(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/azure/sdk/iot/device/hsm/parser/SignRequest;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/hsm/parser/SignResponse;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/device/hsm/parser/SignResponse;->getDigest()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Data cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
