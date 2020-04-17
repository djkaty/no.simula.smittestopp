.class public final enum Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;

.field public static final enum connected:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;
    .annotation runtime Le/c/c/v/c;
        value = "connected"
    .end annotation
.end field

.field public static final enum disconnected:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;
    .annotation runtime Le/c/c/v/c;
        value = "disconnected"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;

    const/4 v1, 0x0

    const-string v2, "disconnected"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;->disconnected:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;

    const/4 v2, 0x1

    const-string v3, "connected"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;->connected:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;

    .line 3
    sget-object v4, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;->disconnected:Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;->$VALUES:[Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;->$VALUES:[Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;

    invoke-virtual {v0}, [Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/sdk/iot/deps/serializer/TwinConnectionState;

    return-object v0
.end method
