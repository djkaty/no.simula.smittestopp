.class public Lcom/microsoft/azure/sdk/iot/device/edge/MethodResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PAYLOAD_KEY_NAME:Ljava/lang/String; = "payload"

.field public static final STATUS_KEY_NAME:Ljava/lang/String; = "status"


# instance fields
.field public payload:Ljava/lang/Object;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = false
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "payload"
    .end annotation
.end field

.field public status:I
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = false
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Le/c/c/e;

    invoke-direct {v0}, Le/c/c/e;-><init>()V

    invoke-virtual {v0}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/microsoft/azure/sdk/iot/device/edge/MethodResult;

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-static {v1}, Le/c/c/w/t;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Lcom/microsoft/azure/sdk/iot/device/edge/MethodResult;

    .line 7
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/device/edge/MethodResult;->payload:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/edge/MethodResult;->payload:Ljava/lang/Object;

    .line 8
    iget p1, p1, Lcom/microsoft/azure/sdk/iot/device/edge/MethodResult;->status:I

    iput p1, p0, Lcom/microsoft/azure/sdk/iot/device/edge/MethodResult;->status:I

    return-void
.end method


# virtual methods
.method public getPayload()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/edge/MethodResult;->payload:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    instance-of v1, v0, [B

    if-eqz v1, :cond_1

    .line 4
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/azure/sdk/iot/device/edge/MethodResult;->payload:Ljava/lang/Object;

    check-cast v1, [B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayloadObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/device/edge/MethodResult;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/azure/sdk/iot/device/edge/MethodResult;->status:I

    return v0
.end method
