.class public synthetic Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$microsoft$azure$storage$core$EncryptionAlgorithm:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;->values()[Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/microsoft/azure/storage/queue/QueueEncryptionPolicy$1;->$SwitchMap$com$microsoft$azure$storage$core$EncryptionAlgorithm:[I

    :try_start_0
    sget-object v1, Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;->AES_CBC_256:Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
