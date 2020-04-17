.class public synthetic Lcom/microsoft/azure/storage/core/Utility$3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/storage/core/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$microsoft$azure$storage$StorageLocation:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/StorageLocation;->values()[Lcom/microsoft/azure/storage/StorageLocation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/microsoft/azure/storage/core/Utility$3;->$SwitchMap$com$microsoft$azure$storage$StorageLocation:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/microsoft/azure/storage/StorageLocation;->PRIMARY:Lcom/microsoft/azure/storage/StorageLocation;

    const/4 v2, 0x0

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/microsoft/azure/storage/core/Utility$3;->$SwitchMap$com$microsoft$azure$storage$StorageLocation:[I

    sget-object v2, Lcom/microsoft/azure/storage/StorageLocation;->SECONDARY:Lcom/microsoft/azure/storage/StorageLocation;

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
