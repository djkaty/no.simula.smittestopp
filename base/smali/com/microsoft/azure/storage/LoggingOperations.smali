.class public final enum Lcom/microsoft/azure/storage/LoggingOperations;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/storage/LoggingOperations;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/storage/LoggingOperations;

.field public static final enum DELETE:Lcom/microsoft/azure/storage/LoggingOperations;

.field public static final enum READ:Lcom/microsoft/azure/storage/LoggingOperations;

.field public static final enum WRITE:Lcom/microsoft/azure/storage/LoggingOperations;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/LoggingOperations;

    const/4 v1, 0x0

    const-string v2, "READ"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/storage/LoggingOperations;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/LoggingOperations;->READ:Lcom/microsoft/azure/storage/LoggingOperations;

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/LoggingOperations;

    const/4 v2, 0x1

    const-string v3, "WRITE"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/storage/LoggingOperations;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/LoggingOperations;->WRITE:Lcom/microsoft/azure/storage/LoggingOperations;

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/LoggingOperations;

    const/4 v3, 0x2

    const-string v4, "DELETE"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/azure/storage/LoggingOperations;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/LoggingOperations;->DELETE:Lcom/microsoft/azure/storage/LoggingOperations;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/microsoft/azure/storage/LoggingOperations;

    .line 4
    sget-object v5, Lcom/microsoft/azure/storage/LoggingOperations;->READ:Lcom/microsoft/azure/storage/LoggingOperations;

    aput-object v5, v4, v1

    sget-object v1, Lcom/microsoft/azure/storage/LoggingOperations;->WRITE:Lcom/microsoft/azure/storage/LoggingOperations;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/microsoft/azure/storage/LoggingOperations;->$VALUES:[Lcom/microsoft/azure/storage/LoggingOperations;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/storage/LoggingOperations;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/storage/LoggingOperations;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/storage/LoggingOperations;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/storage/LoggingOperations;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/LoggingOperations;->$VALUES:[Lcom/microsoft/azure/storage/LoggingOperations;

    invoke-virtual {v0}, [Lcom/microsoft/azure/storage/LoggingOperations;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/storage/LoggingOperations;

    return-object v0
.end method
