.class public final enum Lcom/microsoft/azure/storage/file/FileRangeOperationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/storage/file/FileRangeOperationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/storage/file/FileRangeOperationType;

.field public static final enum CLEAR:Lcom/microsoft/azure/storage/file/FileRangeOperationType;

.field public static final enum UPDATE:Lcom/microsoft/azure/storage/file/FileRangeOperationType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/file/FileRangeOperationType;

    const/4 v1, 0x0

    const-string v2, "UPDATE"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/storage/file/FileRangeOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/file/FileRangeOperationType;->UPDATE:Lcom/microsoft/azure/storage/file/FileRangeOperationType;

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/file/FileRangeOperationType;

    const/4 v2, 0x1

    const-string v3, "CLEAR"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/storage/file/FileRangeOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/file/FileRangeOperationType;->CLEAR:Lcom/microsoft/azure/storage/file/FileRangeOperationType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/microsoft/azure/storage/file/FileRangeOperationType;

    .line 3
    sget-object v4, Lcom/microsoft/azure/storage/file/FileRangeOperationType;->UPDATE:Lcom/microsoft/azure/storage/file/FileRangeOperationType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/microsoft/azure/storage/file/FileRangeOperationType;->$VALUES:[Lcom/microsoft/azure/storage/file/FileRangeOperationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/storage/file/FileRangeOperationType;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/storage/file/FileRangeOperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/storage/file/FileRangeOperationType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/storage/file/FileRangeOperationType;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/file/FileRangeOperationType;->$VALUES:[Lcom/microsoft/azure/storage/file/FileRangeOperationType;

    invoke-virtual {v0}, [Lcom/microsoft/azure/storage/file/FileRangeOperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/storage/file/FileRangeOperationType;

    return-object v0
.end method
