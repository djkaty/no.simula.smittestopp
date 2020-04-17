.class public final enum Lcom/microsoft/azure/storage/StorageErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/storage/StorageErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/storage/StorageErrorCode;

.field public static final enum ACCESS_DENIED:Lcom/microsoft/azure/storage/StorageErrorCode;

.field public static final enum ACCOUNT_NOT_FOUND:Lcom/microsoft/azure/storage/StorageErrorCode;

.field public static final enum AUTHENTICATION_FAILURE:Lcom/microsoft/azure/storage/StorageErrorCode;

.field public static final enum BAD_GATEWAY:Lcom/microsoft/azure/storage/StorageErrorCode;

.field public static final enum BAD_REQUEST:Lcom/microsoft/azure/storage/StorageErrorCode;

.field public static final enum BLOB_ALREADY_EXISTS:Lcom/microsoft/azure/storage/StorageErrorCode;

.field public static final enum BLOB_NOT_FOUND:Lcom/microsoft/azure/storage/StorageErrorCode;

.field public static final enum CONDITION_FAILED:Lcom/microsoft/azure/storage/StorageErrorCode;

.field public static final enum CONTAINER_ALREADY_EXISTS:Lcom/microsoft/azure/storage/StorageErrorCode;

.field public static final enum CONTAINER_NOT_FOUND:Lcom/microsoft/azure/storage/StorageErrorCode;

.field public static final enum HTTP_VERSION_NOT_SUPPORTED:Lcom/microsoft/azure/storage/StorageErrorCode;

.field public static final enum LEASE_ID_MISMATCH:Lcom/microsoft/azure/storage/StorageErrorCode;

.field public static final enum LEASE_ID_MISSING:Lcom/microsoft/azure/storage/StorageErrorCode;

.field public static final enum LEASE_NOT_PRESENT:Lcom/microsoft/azure/storage/StorageErrorCode;

.field public static final enum NONE:Lcom/microsoft/azure/storage/StorageErrorCode;

.field public static final enum NOT_IMPLEMENTED:Lcom/microsoft/azure/storage/StorageErrorCode;

.field public static final enum RESOURCE_ALREADY_EXISTS:Lcom/microsoft/azure/storage/StorageErrorCode;

.field public static final enum RESOURCE_NOT_FOUND:Lcom/microsoft/azure/storage/StorageErrorCode;

.field public static final enum SERVER_BUSY:Lcom/microsoft/azure/storage/StorageErrorCode;

.field public static final enum SERVICE_BAD_REQUEST:Lcom/microsoft/azure/storage/StorageErrorCode;

.field public static final enum SERVICE_INTEGRITY_CHECK_FAILED:Lcom/microsoft/azure/storage/StorageErrorCode;

.field public static final enum SERVICE_INTERNAL_ERROR:Lcom/microsoft/azure/storage/StorageErrorCode;

.field public static final enum SERVICE_TIMEOUT:Lcom/microsoft/azure/storage/StorageErrorCode;

.field public static final enum TRANSPORT_ERROR:Lcom/microsoft/azure/storage/StorageErrorCode;


# instance fields
.field public value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/StorageErrorCode;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const-string v3, "ACCESS_DENIED"

    invoke-direct {v0, v3, v2, v1}, Lcom/microsoft/azure/storage/StorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/StorageErrorCode;->ACCESS_DENIED:Lcom/microsoft/azure/storage/StorageErrorCode;

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/StorageErrorCode;

    const/16 v3, 0x8

    const/4 v4, 0x1

    const-string v5, "ACCOUNT_NOT_FOUND"

    invoke-direct {v0, v5, v4, v3}, Lcom/microsoft/azure/storage/StorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/StorageErrorCode;->ACCOUNT_NOT_FOUND:Lcom/microsoft/azure/storage/StorageErrorCode;

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/StorageErrorCode;

    const/16 v5, 0xb

    const-string v6, "AUTHENTICATION_FAILURE"

    const/4 v7, 0x2

    invoke-direct {v0, v6, v7, v5}, Lcom/microsoft/azure/storage/StorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/StorageErrorCode;->AUTHENTICATION_FAILURE:Lcom/microsoft/azure/storage/StorageErrorCode;

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/StorageErrorCode;

    const/16 v6, 0x12

    const/4 v7, 0x3

    const-string v8, "BAD_GATEWAY"

    invoke-direct {v0, v8, v7, v6}, Lcom/microsoft/azure/storage/StorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/StorageErrorCode;->BAD_GATEWAY:Lcom/microsoft/azure/storage/StorageErrorCode;

    .line 5
    new-instance v0, Lcom/microsoft/azure/storage/StorageErrorCode;

    const/16 v8, 0x10

    const/4 v9, 0x4

    const-string v10, "BAD_REQUEST"

    invoke-direct {v0, v10, v9, v8}, Lcom/microsoft/azure/storage/StorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/StorageErrorCode;->BAD_REQUEST:Lcom/microsoft/azure/storage/StorageErrorCode;

    .line 6
    new-instance v0, Lcom/microsoft/azure/storage/StorageErrorCode;

    const/16 v10, 0xf

    const/4 v11, 0x5

    const-string v12, "BLOB_ALREADY_EXISTS"

    invoke-direct {v0, v12, v11, v10}, Lcom/microsoft/azure/storage/StorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/StorageErrorCode;->BLOB_ALREADY_EXISTS:Lcom/microsoft/azure/storage/StorageErrorCode;

    .line 7
    new-instance v0, Lcom/microsoft/azure/storage/StorageErrorCode;

    const/16 v12, 0xa

    const/4 v13, 0x6

    const-string v14, "BLOB_NOT_FOUND"

    invoke-direct {v0, v14, v13, v12}, Lcom/microsoft/azure/storage/StorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/StorageErrorCode;->BLOB_NOT_FOUND:Lcom/microsoft/azure/storage/StorageErrorCode;

    .line 8
    new-instance v0, Lcom/microsoft/azure/storage/StorageErrorCode;

    const/16 v14, 0x11

    const/4 v15, 0x7

    const-string v11, "CONDITION_FAILED"

    invoke-direct {v0, v11, v15, v14}, Lcom/microsoft/azure/storage/StorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/StorageErrorCode;->CONDITION_FAILED:Lcom/microsoft/azure/storage/StorageErrorCode;

    .line 9
    new-instance v0, Lcom/microsoft/azure/storage/StorageErrorCode;

    const/16 v11, 0xe

    const-string v6, "CONTAINER_ALREADY_EXISTS"

    invoke-direct {v0, v6, v3, v11}, Lcom/microsoft/azure/storage/StorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/StorageErrorCode;->CONTAINER_ALREADY_EXISTS:Lcom/microsoft/azure/storage/StorageErrorCode;

    .line 10
    new-instance v0, Lcom/microsoft/azure/storage/StorageErrorCode;

    const/16 v6, 0x9

    const-string v3, "CONTAINER_NOT_FOUND"

    invoke-direct {v0, v3, v6, v6}, Lcom/microsoft/azure/storage/StorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/StorageErrorCode;->CONTAINER_NOT_FOUND:Lcom/microsoft/azure/storage/StorageErrorCode;

    .line 11
    new-instance v0, Lcom/microsoft/azure/storage/StorageErrorCode;

    const/16 v3, 0x14

    const-string v6, "HTTP_VERSION_NOT_SUPPORTED"

    invoke-direct {v0, v6, v12, v3}, Lcom/microsoft/azure/storage/StorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/StorageErrorCode;->HTTP_VERSION_NOT_SUPPORTED:Lcom/microsoft/azure/storage/StorageErrorCode;

    .line 12
    new-instance v0, Lcom/microsoft/azure/storage/StorageErrorCode;

    const-string v6, "NONE"

    invoke-direct {v0, v6, v5, v2}, Lcom/microsoft/azure/storage/StorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/StorageErrorCode;->NONE:Lcom/microsoft/azure/storage/StorageErrorCode;

    .line 13
    new-instance v0, Lcom/microsoft/azure/storage/StorageErrorCode;

    const/16 v6, 0x13

    const-string v5, "NOT_IMPLEMENTED"

    invoke-direct {v0, v5, v1, v6}, Lcom/microsoft/azure/storage/StorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/StorageErrorCode;->NOT_IMPLEMENTED:Lcom/microsoft/azure/storage/StorageErrorCode;

    .line 14
    new-instance v0, Lcom/microsoft/azure/storage/StorageErrorCode;

    const/16 v5, 0xd

    const-string v1, "RESOURCE_ALREADY_EXISTS"

    invoke-direct {v0, v1, v5, v5}, Lcom/microsoft/azure/storage/StorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/StorageErrorCode;->RESOURCE_ALREADY_EXISTS:Lcom/microsoft/azure/storage/StorageErrorCode;

    .line 15
    new-instance v0, Lcom/microsoft/azure/storage/StorageErrorCode;

    const-string v1, "RESOURCE_NOT_FOUND"

    invoke-direct {v0, v1, v11, v15}, Lcom/microsoft/azure/storage/StorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/StorageErrorCode;->RESOURCE_NOT_FOUND:Lcom/microsoft/azure/storage/StorageErrorCode;

    .line 16
    new-instance v0, Lcom/microsoft/azure/storage/StorageErrorCode;

    const-string v1, "SERVICE_BAD_REQUEST"

    invoke-direct {v0, v1, v10, v13}, Lcom/microsoft/azure/storage/StorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/StorageErrorCode;->SERVICE_BAD_REQUEST:Lcom/microsoft/azure/storage/StorageErrorCode;

    .line 17
    new-instance v0, Lcom/microsoft/azure/storage/StorageErrorCode;

    const-string v1, "SERVICE_INTEGRITY_CHECK_FAILED"

    invoke-direct {v0, v1, v8, v9}, Lcom/microsoft/azure/storage/StorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/StorageErrorCode;->SERVICE_INTEGRITY_CHECK_FAILED:Lcom/microsoft/azure/storage/StorageErrorCode;

    .line 18
    new-instance v0, Lcom/microsoft/azure/storage/StorageErrorCode;

    const-string v1, "SERVICE_INTERNAL_ERROR"

    invoke-direct {v0, v1, v14, v4}, Lcom/microsoft/azure/storage/StorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/StorageErrorCode;->SERVICE_INTERNAL_ERROR:Lcom/microsoft/azure/storage/StorageErrorCode;

    .line 19
    new-instance v0, Lcom/microsoft/azure/storage/StorageErrorCode;

    const-string v1, "SERVICE_TIMEOUT"

    const/16 v14, 0x12

    invoke-direct {v0, v1, v14, v7}, Lcom/microsoft/azure/storage/StorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/StorageErrorCode;->SERVICE_TIMEOUT:Lcom/microsoft/azure/storage/StorageErrorCode;

    .line 20
    new-instance v0, Lcom/microsoft/azure/storage/StorageErrorCode;

    const-string v1, "TRANSPORT_ERROR"

    const/4 v14, 0x5

    invoke-direct {v0, v1, v6, v14}, Lcom/microsoft/azure/storage/StorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/StorageErrorCode;->TRANSPORT_ERROR:Lcom/microsoft/azure/storage/StorageErrorCode;

    .line 21
    new-instance v0, Lcom/microsoft/azure/storage/StorageErrorCode;

    const/16 v1, 0x15

    const-string v14, "LEASE_ID_MISSING"

    invoke-direct {v0, v14, v3, v1}, Lcom/microsoft/azure/storage/StorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/StorageErrorCode;->LEASE_ID_MISSING:Lcom/microsoft/azure/storage/StorageErrorCode;

    .line 22
    new-instance v0, Lcom/microsoft/azure/storage/StorageErrorCode;

    const/16 v14, 0x16

    const-string v3, "LEASE_ID_MISMATCH"

    invoke-direct {v0, v3, v1, v14}, Lcom/microsoft/azure/storage/StorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/StorageErrorCode;->LEASE_ID_MISMATCH:Lcom/microsoft/azure/storage/StorageErrorCode;

    .line 23
    new-instance v0, Lcom/microsoft/azure/storage/StorageErrorCode;

    const-string v3, "LEASE_NOT_PRESENT"

    const/16 v1, 0x17

    invoke-direct {v0, v3, v14, v1}, Lcom/microsoft/azure/storage/StorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/StorageErrorCode;->LEASE_NOT_PRESENT:Lcom/microsoft/azure/storage/StorageErrorCode;

    .line 24
    new-instance v0, Lcom/microsoft/azure/storage/StorageErrorCode;

    const-string v1, "SERVER_BUSY"

    const/16 v3, 0x17

    const/16 v14, 0x18

    invoke-direct {v0, v1, v3, v14}, Lcom/microsoft/azure/storage/StorageErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/storage/StorageErrorCode;->SERVER_BUSY:Lcom/microsoft/azure/storage/StorageErrorCode;

    const/16 v1, 0x18

    new-array v1, v1, [Lcom/microsoft/azure/storage/StorageErrorCode;

    .line 25
    sget-object v3, Lcom/microsoft/azure/storage/StorageErrorCode;->ACCESS_DENIED:Lcom/microsoft/azure/storage/StorageErrorCode;

    aput-object v3, v1, v2

    sget-object v2, Lcom/microsoft/azure/storage/StorageErrorCode;->ACCOUNT_NOT_FOUND:Lcom/microsoft/azure/storage/StorageErrorCode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/microsoft/azure/storage/StorageErrorCode;->AUTHENTICATION_FAILURE:Lcom/microsoft/azure/storage/StorageErrorCode;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/microsoft/azure/storage/StorageErrorCode;->BAD_GATEWAY:Lcom/microsoft/azure/storage/StorageErrorCode;

    aput-object v2, v1, v7

    sget-object v2, Lcom/microsoft/azure/storage/StorageErrorCode;->BAD_REQUEST:Lcom/microsoft/azure/storage/StorageErrorCode;

    aput-object v2, v1, v9

    sget-object v2, Lcom/microsoft/azure/storage/StorageErrorCode;->BLOB_ALREADY_EXISTS:Lcom/microsoft/azure/storage/StorageErrorCode;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/microsoft/azure/storage/StorageErrorCode;->BLOB_NOT_FOUND:Lcom/microsoft/azure/storage/StorageErrorCode;

    aput-object v2, v1, v13

    sget-object v2, Lcom/microsoft/azure/storage/StorageErrorCode;->CONDITION_FAILED:Lcom/microsoft/azure/storage/StorageErrorCode;

    aput-object v2, v1, v15

    sget-object v2, Lcom/microsoft/azure/storage/StorageErrorCode;->CONTAINER_ALREADY_EXISTS:Lcom/microsoft/azure/storage/StorageErrorCode;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/microsoft/azure/storage/StorageErrorCode;->CONTAINER_NOT_FOUND:Lcom/microsoft/azure/storage/StorageErrorCode;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/microsoft/azure/storage/StorageErrorCode;->HTTP_VERSION_NOT_SUPPORTED:Lcom/microsoft/azure/storage/StorageErrorCode;

    aput-object v2, v1, v12

    sget-object v2, Lcom/microsoft/azure/storage/StorageErrorCode;->NONE:Lcom/microsoft/azure/storage/StorageErrorCode;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/microsoft/azure/storage/StorageErrorCode;->NOT_IMPLEMENTED:Lcom/microsoft/azure/storage/StorageErrorCode;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/microsoft/azure/storage/StorageErrorCode;->RESOURCE_ALREADY_EXISTS:Lcom/microsoft/azure/storage/StorageErrorCode;

    aput-object v2, v1, v5

    sget-object v2, Lcom/microsoft/azure/storage/StorageErrorCode;->RESOURCE_NOT_FOUND:Lcom/microsoft/azure/storage/StorageErrorCode;

    aput-object v2, v1, v11

    sget-object v2, Lcom/microsoft/azure/storage/StorageErrorCode;->SERVICE_BAD_REQUEST:Lcom/microsoft/azure/storage/StorageErrorCode;

    aput-object v2, v1, v10

    sget-object v2, Lcom/microsoft/azure/storage/StorageErrorCode;->SERVICE_INTEGRITY_CHECK_FAILED:Lcom/microsoft/azure/storage/StorageErrorCode;

    aput-object v2, v1, v8

    sget-object v2, Lcom/microsoft/azure/storage/StorageErrorCode;->SERVICE_INTERNAL_ERROR:Lcom/microsoft/azure/storage/StorageErrorCode;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/microsoft/azure/storage/StorageErrorCode;->SERVICE_TIMEOUT:Lcom/microsoft/azure/storage/StorageErrorCode;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/microsoft/azure/storage/StorageErrorCode;->TRANSPORT_ERROR:Lcom/microsoft/azure/storage/StorageErrorCode;

    aput-object v2, v1, v6

    sget-object v2, Lcom/microsoft/azure/storage/StorageErrorCode;->LEASE_ID_MISSING:Lcom/microsoft/azure/storage/StorageErrorCode;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/microsoft/azure/storage/StorageErrorCode;->LEASE_ID_MISMATCH:Lcom/microsoft/azure/storage/StorageErrorCode;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/microsoft/azure/storage/StorageErrorCode;->LEASE_NOT_PRESENT:Lcom/microsoft/azure/storage/StorageErrorCode;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const/16 v2, 0x17

    aput-object v0, v1, v2

    sput-object v1, Lcom/microsoft/azure/storage/StorageErrorCode;->$VALUES:[Lcom/microsoft/azure/storage/StorageErrorCode;

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
    iput p3, p0, Lcom/microsoft/azure/storage/StorageErrorCode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/storage/StorageErrorCode;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/storage/StorageErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/storage/StorageErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/storage/StorageErrorCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/StorageErrorCode;->$VALUES:[Lcom/microsoft/azure/storage/StorageErrorCode;

    invoke-virtual {v0}, [Lcom/microsoft/azure/storage/StorageErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/storage/StorageErrorCode;

    return-object v0
.end method
