.class public Lcom/microsoft/azure/sdk/iot/device/hsm/parser/TrustBundleResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CERTIFICATE_NAME:Ljava/lang/String; = "certificate"


# instance fields
.field public certificates:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = false
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "certificate"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/hsm/parser/TrustBundleResponse;
    .locals 2

    .line 1
    new-instance v0, Le/c/c/e;

    invoke-direct {v0}, Le/c/c/e;-><init>()V

    invoke-virtual {v0}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/microsoft/azure/sdk/iot/device/hsm/parser/TrustBundleResponse;

    .line 2
    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    invoke-static {v1}, Le/c/c/w/t;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    check-cast p0, Lcom/microsoft/azure/sdk/iot/device/hsm/parser/TrustBundleResponse;

    if-eqz p0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/hsm/parser/TrustBundleResponse;->certificates:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided json did not contain any certificates"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getCertificates()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/hsm/parser/TrustBundleResponse;->certificates:Ljava/lang/String;

    return-object v0
.end method
