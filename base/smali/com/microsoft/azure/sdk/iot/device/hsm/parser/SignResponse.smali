.class public Lcom/microsoft/azure/sdk/iot/device/hsm/parser/SignResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DIGEST_NAME:Ljava/lang/String; = "digest"


# instance fields
.field public digest:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "digest"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/hsm/parser/SignResponse;
    .locals 2

    .line 1
    new-instance v0, Le/c/c/e;

    invoke-direct {v0}, Le/c/c/e;-><init>()V

    invoke-virtual {v0}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/microsoft/azure/sdk/iot/device/hsm/parser/SignResponse;

    .line 2
    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    invoke-static {v1}, Le/c/c/w/t;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    check-cast p0, Lcom/microsoft/azure/sdk/iot/device/hsm/parser/SignResponse;

    return-object p0
.end method


# virtual methods
.method public getDigest()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/hsm/parser/SignResponse;->digest:Ljava/lang/String;

    return-object v0
.end method
