.class public Lcom/microsoft/azure/sdk/iot/device/hsm/parser/SignRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALGO_NAME:Ljava/lang/String; = "algo"

.field public static final DATA_NAME:Ljava/lang/String; = "data"

.field public static final KEY_ID_NAME:Ljava/lang/String; = "keyId"


# instance fields
.field public transient algo:Ljavax/crypto/Mac;

.field public algoString:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = false
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "algo"
    .end annotation
.end field

.field public data:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = false
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "data"
    .end annotation
.end field

.field public keyId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = false
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "keyId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/hsm/parser/SignRequest;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public setAlgo(Ljavax/crypto/Mac;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/hsm/parser/SignRequest;->algo:Ljavax/crypto/Mac;

    .line 2
    invoke-virtual {p1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/hsm/parser/SignRequest;->algoString:Ljava/lang/String;

    return-void
.end method

.method public setData([B)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/util/Base64;->encodeBase64StringLocal([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/hsm/parser/SignRequest;->data:Ljava/lang/String;

    return-void
.end method

.method public setKeyId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/hsm/parser/SignRequest;->keyId:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Le/c/c/e;

    invoke-direct {v0}, Le/c/c/e;-><init>()V

    invoke-virtual {v0}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
