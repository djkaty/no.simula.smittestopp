.class public synthetic Lcom/microsoft/azure/storage/StorageUri$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/storage/StorageUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$microsoft$azure$storage$LocationMode:[I

.field public static final synthetic $SwitchMap$com$microsoft$azure$storage$StorageLocation:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/LocationMode;->values()[Lcom/microsoft/azure/storage/LocationMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/microsoft/azure/storage/StorageUri$1;->$SwitchMap$com$microsoft$azure$storage$LocationMode:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lcom/microsoft/azure/storage/LocationMode;->PRIMARY_ONLY:Lcom/microsoft/azure/storage/LocationMode;

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v3, Lcom/microsoft/azure/storage/StorageUri$1;->$SwitchMap$com$microsoft$azure$storage$LocationMode:[I

    sget-object v4, Lcom/microsoft/azure/storage/LocationMode;->SECONDARY_ONLY:Lcom/microsoft/azure/storage/LocationMode;

    aput v0, v3, v0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 2
    :catch_1
    invoke-static {}, Lcom/microsoft/azure/storage/StorageLocation;->values()[Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/microsoft/azure/storage/StorageUri$1;->$SwitchMap$com$microsoft$azure$storage$StorageLocation:[I

    :try_start_2
    sget-object v4, Lcom/microsoft/azure/storage/StorageLocation;->PRIMARY:Lcom/microsoft/azure/storage/StorageLocation;

    aput v2, v3, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/microsoft/azure/storage/StorageUri$1;->$SwitchMap$com$microsoft$azure$storage$StorageLocation:[I

    sget-object v3, Lcom/microsoft/azure/storage/StorageLocation;->SECONDARY:Lcom/microsoft/azure/storage/StorageLocation;

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
