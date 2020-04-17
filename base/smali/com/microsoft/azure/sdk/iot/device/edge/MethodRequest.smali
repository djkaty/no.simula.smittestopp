.class public Lcom/microsoft/azure/sdk/iot/device/edge/MethodRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONNECT_TIMEOUT_KEY_NAME:Ljava/lang/String; = "connectTimeoutInSeconds"

.field public static final METHOD_NAME_KEY_NAME:Ljava/lang/String; = "methodName"

.field public static final PAYLOAD_KEY_NAME:Ljava/lang/String; = "payload"

.field public static final RESPONSE_TIMEOUT_KEY_NAME:Ljava/lang/String; = "responseTimeoutInSeconds"


# instance fields
.field public connectionTimeoutInSeconds:Ljava/lang/Integer;
    .annotation runtime Le/c/c/v/a;
        deserialize = false
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "connectTimeoutInSeconds"
    .end annotation
.end field

.field public methodName:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = false
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "methodName"
    .end annotation
.end field

.field public payload:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = false
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "payload"
    .end annotation
.end field

.field public responseTimeoutInSeconds:Ljava/lang/Integer;
    .annotation runtime Le/c/c/v/a;
        deserialize = false
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "responseTimeoutInSeconds"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/microsoft/azure/sdk/iot/device/edge/MethodRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/device/edge/MethodRequest;->payload:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/device/edge/MethodRequest;->methodName:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/device/edge/MethodRequest;->responseTimeoutInSeconds:Ljava/lang/Integer;

    .line 7
    iput-object p4, p0, Lcom/microsoft/azure/sdk/iot/device/edge/MethodRequest;->connectionTimeoutInSeconds:Ljava/lang/Integer;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MethodName cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
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
