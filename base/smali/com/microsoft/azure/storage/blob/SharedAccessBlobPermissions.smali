.class public final enum Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

.field public static final enum ADD:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

.field public static final enum CREATE:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

.field public static final enum DELETE:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

.field public static final enum LIST:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

.field public static final enum READ:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

.field public static final enum WRITE:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    const/4 v1, 0x0

    const-string v2, "READ"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;->READ:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    const/4 v2, 0x1

    const-string v3, "ADD"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;->ADD:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    const/4 v3, 0x2

    const-string v4, "CREATE"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;->CREATE:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    const/4 v4, 0x3

    const-string v5, "WRITE"

    invoke-direct {v0, v5, v4}, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;->WRITE:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    .line 5
    new-instance v0, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    const/4 v5, 0x4

    const-string v6, "DELETE"

    invoke-direct {v0, v6, v5}, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;->DELETE:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    .line 6
    new-instance v0, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    const/4 v6, 0x5

    const-string v7, "LIST"

    invoke-direct {v0, v7, v6}, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;->LIST:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    .line 7
    sget-object v8, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;->READ:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    aput-object v8, v7, v1

    sget-object v1, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;->ADD:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    aput-object v1, v7, v2

    sget-object v1, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;->CREATE:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    aput-object v1, v7, v3

    sget-object v1, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;->WRITE:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    aput-object v1, v7, v4

    sget-object v1, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;->DELETE:Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;->$VALUES:[Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;->$VALUES:[Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    invoke-virtual {v0}, [Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/storage/blob/SharedAccessBlobPermissions;

    return-object v0
.end method
