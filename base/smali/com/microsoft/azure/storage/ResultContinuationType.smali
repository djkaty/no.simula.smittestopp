.class public final enum Lcom/microsoft/azure/storage/ResultContinuationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/storage/ResultContinuationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/storage/ResultContinuationType;

.field public static final enum BLOB:Lcom/microsoft/azure/storage/ResultContinuationType;

.field public static final enum CONTAINER:Lcom/microsoft/azure/storage/ResultContinuationType;

.field public static final enum FILE:Lcom/microsoft/azure/storage/ResultContinuationType;

.field public static final enum NONE:Lcom/microsoft/azure/storage/ResultContinuationType;

.field public static final enum QUEUE:Lcom/microsoft/azure/storage/ResultContinuationType;

.field public static final enum SHARE:Lcom/microsoft/azure/storage/ResultContinuationType;

.field public static final enum TABLE:Lcom/microsoft/azure/storage/ResultContinuationType;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/ResultContinuationType;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/storage/ResultContinuationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/ResultContinuationType;->NONE:Lcom/microsoft/azure/storage/ResultContinuationType;

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/ResultContinuationType;

    const/4 v2, 0x1

    const-string v3, "BLOB"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/storage/ResultContinuationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/ResultContinuationType;->BLOB:Lcom/microsoft/azure/storage/ResultContinuationType;

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/ResultContinuationType;

    const/4 v3, 0x2

    const-string v4, "CONTAINER"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/azure/storage/ResultContinuationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/ResultContinuationType;->CONTAINER:Lcom/microsoft/azure/storage/ResultContinuationType;

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/ResultContinuationType;

    const/4 v4, 0x3

    const-string v5, "FILE"

    invoke-direct {v0, v5, v4}, Lcom/microsoft/azure/storage/ResultContinuationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/ResultContinuationType;->FILE:Lcom/microsoft/azure/storage/ResultContinuationType;

    .line 5
    new-instance v0, Lcom/microsoft/azure/storage/ResultContinuationType;

    const/4 v5, 0x4

    const-string v6, "QUEUE"

    invoke-direct {v0, v6, v5}, Lcom/microsoft/azure/storage/ResultContinuationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/ResultContinuationType;->QUEUE:Lcom/microsoft/azure/storage/ResultContinuationType;

    .line 6
    new-instance v0, Lcom/microsoft/azure/storage/ResultContinuationType;

    const/4 v6, 0x5

    const-string v7, "TABLE"

    invoke-direct {v0, v7, v6}, Lcom/microsoft/azure/storage/ResultContinuationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/ResultContinuationType;->TABLE:Lcom/microsoft/azure/storage/ResultContinuationType;

    .line 7
    new-instance v0, Lcom/microsoft/azure/storage/ResultContinuationType;

    const/4 v7, 0x6

    const-string v8, "SHARE"

    invoke-direct {v0, v8, v7}, Lcom/microsoft/azure/storage/ResultContinuationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/ResultContinuationType;->SHARE:Lcom/microsoft/azure/storage/ResultContinuationType;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/microsoft/azure/storage/ResultContinuationType;

    .line 8
    sget-object v9, Lcom/microsoft/azure/storage/ResultContinuationType;->NONE:Lcom/microsoft/azure/storage/ResultContinuationType;

    aput-object v9, v8, v1

    sget-object v1, Lcom/microsoft/azure/storage/ResultContinuationType;->BLOB:Lcom/microsoft/azure/storage/ResultContinuationType;

    aput-object v1, v8, v2

    sget-object v1, Lcom/microsoft/azure/storage/ResultContinuationType;->CONTAINER:Lcom/microsoft/azure/storage/ResultContinuationType;

    aput-object v1, v8, v3

    sget-object v1, Lcom/microsoft/azure/storage/ResultContinuationType;->FILE:Lcom/microsoft/azure/storage/ResultContinuationType;

    aput-object v1, v8, v4

    sget-object v1, Lcom/microsoft/azure/storage/ResultContinuationType;->QUEUE:Lcom/microsoft/azure/storage/ResultContinuationType;

    aput-object v1, v8, v5

    sget-object v1, Lcom/microsoft/azure/storage/ResultContinuationType;->TABLE:Lcom/microsoft/azure/storage/ResultContinuationType;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/microsoft/azure/storage/ResultContinuationType;->$VALUES:[Lcom/microsoft/azure/storage/ResultContinuationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/storage/ResultContinuationType;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/storage/ResultContinuationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/storage/ResultContinuationType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/storage/ResultContinuationType;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/ResultContinuationType;->$VALUES:[Lcom/microsoft/azure/storage/ResultContinuationType;

    invoke-virtual {v0}, [Lcom/microsoft/azure/storage/ResultContinuationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/storage/ResultContinuationType;

    return-object v0
.end method
