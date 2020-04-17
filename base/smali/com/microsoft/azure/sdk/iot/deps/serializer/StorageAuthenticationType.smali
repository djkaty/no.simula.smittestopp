.class public final enum Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;

.field public static final enum IDENTITY:Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;
    .annotation runtime Le/c/c/v/c;
        value = "identityBased"
    .end annotation
.end field

.field public static final enum KEY:Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;
    .annotation runtime Le/c/c/v/c;
        value = "keyBased"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;

    const/4 v1, 0x0

    const-string v2, "KEY"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;->KEY:Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;

    const/4 v2, 0x1

    const-string v3, "IDENTITY"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;->IDENTITY:Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;

    .line 3
    sget-object v4, Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;->KEY:Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;->$VALUES:[Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;->$VALUES:[Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;

    invoke-virtual {v0}, [Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/sdk/iot/deps/serializer/StorageAuthenticationType;

    return-object v0
.end method
