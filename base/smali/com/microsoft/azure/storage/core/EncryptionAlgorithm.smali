.class public final enum Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;

.field public static final enum AES_CBC_256:Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;

    const/4 v1, 0x0

    const-string v2, "AES_CBC_256"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;->AES_CBC_256:Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;

    aput-object v0, v2, v1

    .line 2
    sput-object v2, Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;->$VALUES:[Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;->$VALUES:[Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;

    invoke-virtual {v0}, [Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;

    return-object v0
.end method
