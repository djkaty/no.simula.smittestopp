.class public final enum Lcom/microsoft/azure/storage/table/TableOperationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/storage/table/TableOperationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/storage/table/TableOperationType;

.field public static final enum DELETE:Lcom/microsoft/azure/storage/table/TableOperationType;

.field public static final enum INSERT:Lcom/microsoft/azure/storage/table/TableOperationType;

.field public static final enum INSERT_OR_MERGE:Lcom/microsoft/azure/storage/table/TableOperationType;

.field public static final enum INSERT_OR_REPLACE:Lcom/microsoft/azure/storage/table/TableOperationType;

.field public static final enum MERGE:Lcom/microsoft/azure/storage/table/TableOperationType;

.field public static final enum REPLACE:Lcom/microsoft/azure/storage/table/TableOperationType;

.field public static final enum RETRIEVE:Lcom/microsoft/azure/storage/table/TableOperationType;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/table/TableOperationType;

    const/4 v1, 0x0

    const-string v2, "INSERT"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/storage/table/TableOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/table/TableOperationType;->INSERT:Lcom/microsoft/azure/storage/table/TableOperationType;

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/table/TableOperationType;

    const/4 v2, 0x1

    const-string v3, "DELETE"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/storage/table/TableOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/table/TableOperationType;->DELETE:Lcom/microsoft/azure/storage/table/TableOperationType;

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/table/TableOperationType;

    const/4 v3, 0x2

    const-string v4, "REPLACE"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/azure/storage/table/TableOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/table/TableOperationType;->REPLACE:Lcom/microsoft/azure/storage/table/TableOperationType;

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/table/TableOperationType;

    const/4 v4, 0x3

    const-string v5, "RETRIEVE"

    invoke-direct {v0, v5, v4}, Lcom/microsoft/azure/storage/table/TableOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/table/TableOperationType;->RETRIEVE:Lcom/microsoft/azure/storage/table/TableOperationType;

    .line 5
    new-instance v0, Lcom/microsoft/azure/storage/table/TableOperationType;

    const/4 v5, 0x4

    const-string v6, "MERGE"

    invoke-direct {v0, v6, v5}, Lcom/microsoft/azure/storage/table/TableOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/table/TableOperationType;->MERGE:Lcom/microsoft/azure/storage/table/TableOperationType;

    .line 6
    new-instance v0, Lcom/microsoft/azure/storage/table/TableOperationType;

    const/4 v6, 0x5

    const-string v7, "INSERT_OR_REPLACE"

    invoke-direct {v0, v7, v6}, Lcom/microsoft/azure/storage/table/TableOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/table/TableOperationType;->INSERT_OR_REPLACE:Lcom/microsoft/azure/storage/table/TableOperationType;

    .line 7
    new-instance v0, Lcom/microsoft/azure/storage/table/TableOperationType;

    const/4 v7, 0x6

    const-string v8, "INSERT_OR_MERGE"

    invoke-direct {v0, v8, v7}, Lcom/microsoft/azure/storage/table/TableOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/table/TableOperationType;->INSERT_OR_MERGE:Lcom/microsoft/azure/storage/table/TableOperationType;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/microsoft/azure/storage/table/TableOperationType;

    .line 8
    sget-object v9, Lcom/microsoft/azure/storage/table/TableOperationType;->INSERT:Lcom/microsoft/azure/storage/table/TableOperationType;

    aput-object v9, v8, v1

    sget-object v1, Lcom/microsoft/azure/storage/table/TableOperationType;->DELETE:Lcom/microsoft/azure/storage/table/TableOperationType;

    aput-object v1, v8, v2

    sget-object v1, Lcom/microsoft/azure/storage/table/TableOperationType;->REPLACE:Lcom/microsoft/azure/storage/table/TableOperationType;

    aput-object v1, v8, v3

    sget-object v1, Lcom/microsoft/azure/storage/table/TableOperationType;->RETRIEVE:Lcom/microsoft/azure/storage/table/TableOperationType;

    aput-object v1, v8, v4

    sget-object v1, Lcom/microsoft/azure/storage/table/TableOperationType;->MERGE:Lcom/microsoft/azure/storage/table/TableOperationType;

    aput-object v1, v8, v5

    sget-object v1, Lcom/microsoft/azure/storage/table/TableOperationType;->INSERT_OR_REPLACE:Lcom/microsoft/azure/storage/table/TableOperationType;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/microsoft/azure/storage/table/TableOperationType;->$VALUES:[Lcom/microsoft/azure/storage/table/TableOperationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/TableOperationType;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/storage/table/TableOperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/storage/table/TableOperationType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/storage/table/TableOperationType;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/table/TableOperationType;->$VALUES:[Lcom/microsoft/azure/storage/table/TableOperationType;

    invoke-virtual {v0}, [Lcom/microsoft/azure/storage/table/TableOperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/storage/table/TableOperationType;

    return-object v0
.end method


# virtual methods
.method public getUpdateType()Lcom/microsoft/azure/storage/table/TableUpdateType;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/table/TableOperationType;->INSERT_OR_MERGE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-ne p0, v0, :cond_0

    .line 2
    sget-object v0, Lcom/microsoft/azure/storage/table/TableUpdateType;->MERGE:Lcom/microsoft/azure/storage/table/TableUpdateType;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lcom/microsoft/azure/storage/table/TableOperationType;->INSERT_OR_REPLACE:Lcom/microsoft/azure/storage/table/TableOperationType;

    if-ne p0, v0, :cond_1

    .line 4
    sget-object v0, Lcom/microsoft/azure/storage/table/TableUpdateType;->REPLACE:Lcom/microsoft/azure/storage/table/TableUpdateType;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
