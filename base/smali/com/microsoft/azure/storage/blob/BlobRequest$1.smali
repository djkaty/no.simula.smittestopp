.class public synthetic Lcom/microsoft/azure/storage/blob/BlobRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/storage/blob/BlobRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$microsoft$azure$storage$blob$DeleteSnapshotsOption:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/blob/DeleteSnapshotsOption;->values()[Lcom/microsoft/azure/storage/blob/DeleteSnapshotsOption;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/microsoft/azure/storage/blob/BlobRequest$1;->$SwitchMap$com$microsoft$azure$storage$blob$DeleteSnapshotsOption:[I

    const/4 v1, 0x1

    const/4 v2, 0x2

    :try_start_0
    sget-object v3, Lcom/microsoft/azure/storage/blob/DeleteSnapshotsOption;->NONE:Lcom/microsoft/azure/storage/blob/DeleteSnapshotsOption;

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobRequest$1;->$SwitchMap$com$microsoft$azure$storage$blob$DeleteSnapshotsOption:[I

    sget-object v3, Lcom/microsoft/azure/storage/blob/DeleteSnapshotsOption;->INCLUDE_SNAPSHOTS:Lcom/microsoft/azure/storage/blob/DeleteSnapshotsOption;

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/microsoft/azure/storage/blob/BlobRequest$1;->$SwitchMap$com$microsoft$azure$storage$blob$DeleteSnapshotsOption:[I

    sget-object v1, Lcom/microsoft/azure/storage/blob/DeleteSnapshotsOption;->DELETE_SNAPSHOTS_ONLY:Lcom/microsoft/azure/storage/blob/DeleteSnapshotsOption;

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
