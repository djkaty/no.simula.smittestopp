.class public final enum Lcom/microsoft/azure/storage/queue/QueueListingDetails;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/storage/queue/QueueListingDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/storage/queue/QueueListingDetails;

.field public static final enum ALL:Lcom/microsoft/azure/storage/queue/QueueListingDetails;

.field public static final enum METADATA:Lcom/microsoft/azure/storage/queue/QueueListingDetails;

.field public static final enum NONE:Lcom/microsoft/azure/storage/queue/QueueListingDetails;


# instance fields
.field public value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/queue/QueueListingDetails;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "ALL"

    invoke-direct {v0, v3, v1, v2}, Lcom/microsoft/azure/storage/queue/QueueListingDetails;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/queue/QueueListingDetails;->ALL:Lcom/microsoft/azure/storage/queue/QueueListingDetails;

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/queue/QueueListingDetails;

    const-string v3, "METADATA"

    invoke-direct {v0, v3, v2, v2}, Lcom/microsoft/azure/storage/queue/QueueListingDetails;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/queue/QueueListingDetails;->METADATA:Lcom/microsoft/azure/storage/queue/QueueListingDetails;

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/queue/QueueListingDetails;

    const/4 v3, 0x2

    const-string v4, "NONE"

    invoke-direct {v0, v4, v3, v1}, Lcom/microsoft/azure/storage/queue/QueueListingDetails;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/queue/QueueListingDetails;->NONE:Lcom/microsoft/azure/storage/queue/QueueListingDetails;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/microsoft/azure/storage/queue/QueueListingDetails;

    .line 4
    sget-object v5, Lcom/microsoft/azure/storage/queue/QueueListingDetails;->ALL:Lcom/microsoft/azure/storage/queue/QueueListingDetails;

    aput-object v5, v4, v1

    sget-object v1, Lcom/microsoft/azure/storage/queue/QueueListingDetails;->METADATA:Lcom/microsoft/azure/storage/queue/QueueListingDetails;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/microsoft/azure/storage/queue/QueueListingDetails;->$VALUES:[Lcom/microsoft/azure/storage/queue/QueueListingDetails;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/microsoft/azure/storage/queue/QueueListingDetails;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/storage/queue/QueueListingDetails;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/storage/queue/QueueListingDetails;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/storage/queue/QueueListingDetails;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/storage/queue/QueueListingDetails;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/queue/QueueListingDetails;->$VALUES:[Lcom/microsoft/azure/storage/queue/QueueListingDetails;

    invoke-virtual {v0}, [Lcom/microsoft/azure/storage/queue/QueueListingDetails;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/storage/queue/QueueListingDetails;

    return-object v0
.end method