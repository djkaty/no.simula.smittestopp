.class public final enum Lcom/microsoft/azure/storage/queue/QueueMessageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/storage/queue/QueueMessageType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/storage/queue/QueueMessageType;

.field public static final enum BASE_64_ENCODED:Lcom/microsoft/azure/storage/queue/QueueMessageType;

.field public static final enum RAW_STRING:Lcom/microsoft/azure/storage/queue/QueueMessageType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/queue/QueueMessageType;

    const/4 v1, 0x0

    const-string v2, "RAW_STRING"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/storage/queue/QueueMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/queue/QueueMessageType;->RAW_STRING:Lcom/microsoft/azure/storage/queue/QueueMessageType;

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/queue/QueueMessageType;

    const/4 v2, 0x1

    const-string v3, "BASE_64_ENCODED"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/storage/queue/QueueMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/queue/QueueMessageType;->BASE_64_ENCODED:Lcom/microsoft/azure/storage/queue/QueueMessageType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/microsoft/azure/storage/queue/QueueMessageType;

    .line 3
    sget-object v4, Lcom/microsoft/azure/storage/queue/QueueMessageType;->RAW_STRING:Lcom/microsoft/azure/storage/queue/QueueMessageType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/microsoft/azure/storage/queue/QueueMessageType;->$VALUES:[Lcom/microsoft/azure/storage/queue/QueueMessageType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/storage/queue/QueueMessageType;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/storage/queue/QueueMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/storage/queue/QueueMessageType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/storage/queue/QueueMessageType;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/queue/QueueMessageType;->$VALUES:[Lcom/microsoft/azure/storage/queue/QueueMessageType;

    invoke-virtual {v0}, [Lcom/microsoft/azure/storage/queue/QueueMessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/storage/queue/QueueMessageType;

    return-object v0
.end method
