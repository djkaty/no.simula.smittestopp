.class public final enum Lcom/microsoft/azure/storage/blob/BlobListingDetails;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/storage/blob/BlobListingDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/storage/blob/BlobListingDetails;

.field public static final enum COPY:Lcom/microsoft/azure/storage/blob/BlobListingDetails;

.field public static final enum DELETED:Lcom/microsoft/azure/storage/blob/BlobListingDetails;

.field public static final enum METADATA:Lcom/microsoft/azure/storage/blob/BlobListingDetails;

.field public static final enum SNAPSHOTS:Lcom/microsoft/azure/storage/blob/BlobListingDetails;

.field public static final enum UNCOMMITTED_BLOBS:Lcom/microsoft/azure/storage/blob/BlobListingDetails;


# instance fields
.field public value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "SNAPSHOTS"

    invoke-direct {v0, v3, v1, v2}, Lcom/microsoft/azure/storage/blob/BlobListingDetails;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/BlobListingDetails;->SNAPSHOTS:Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    const/4 v3, 0x2

    const-string v4, "METADATA"

    invoke-direct {v0, v4, v2, v3}, Lcom/microsoft/azure/storage/blob/BlobListingDetails;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/BlobListingDetails;->METADATA:Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    const/4 v4, 0x4

    const-string v5, "UNCOMMITTED_BLOBS"

    invoke-direct {v0, v5, v3, v4}, Lcom/microsoft/azure/storage/blob/BlobListingDetails;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/BlobListingDetails;->UNCOMMITTED_BLOBS:Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    const/4 v5, 0x3

    const-string v6, "COPY"

    const/16 v7, 0x8

    invoke-direct {v0, v6, v5, v7}, Lcom/microsoft/azure/storage/blob/BlobListingDetails;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/BlobListingDetails;->COPY:Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    .line 5
    new-instance v0, Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    const-string v6, "DELETED"

    const/16 v7, 0x10

    invoke-direct {v0, v6, v4, v7}, Lcom/microsoft/azure/storage/blob/BlobListingDetails;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/BlobListingDetails;->DELETED:Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    .line 6
    sget-object v7, Lcom/microsoft/azure/storage/blob/BlobListingDetails;->SNAPSHOTS:Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    aput-object v7, v6, v1

    sget-object v1, Lcom/microsoft/azure/storage/blob/BlobListingDetails;->METADATA:Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    aput-object v1, v6, v2

    sget-object v1, Lcom/microsoft/azure/storage/blob/BlobListingDetails;->UNCOMMITTED_BLOBS:Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    aput-object v1, v6, v3

    sget-object v1, Lcom/microsoft/azure/storage/blob/BlobListingDetails;->COPY:Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    aput-object v1, v6, v5

    aput-object v0, v6, v4

    sput-object v6, Lcom/microsoft/azure/storage/blob/BlobListingDetails;->$VALUES:[Lcom/microsoft/azure/storage/blob/BlobListingDetails;

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
    iput p3, p0, Lcom/microsoft/azure/storage/blob/BlobListingDetails;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/BlobListingDetails;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/storage/blob/BlobListingDetails;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobListingDetails;->$VALUES:[Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    invoke-virtual {v0}, [Lcom/microsoft/azure/storage/blob/BlobListingDetails;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/storage/blob/BlobListingDetails;

    return-object v0
.end method
