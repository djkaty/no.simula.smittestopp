.class public final enum Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

.field public static final enum BAD_FORMAT:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

.field public static final enum ERROR:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

.field public static final enum HUB_OR_DEVICE_ID_NOT_FOUND:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

.field public static final enum INTERNAL_SERVER_ERROR:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

.field public static final enum MESSAGE_CANCELLED_ONCLOSE:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

.field public static final enum MESSAGE_EXPIRED:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

.field public static final enum OK:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

.field public static final enum OK_EMPTY:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

.field public static final enum PRECONDITION_FAILED:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

.field public static final enum REQUEST_ENTITY_TOO_LARGE:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

.field public static final enum SERVER_BUSY:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

.field public static final enum THROTTLED:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

.field public static final enum TOO_MANY_DEVICES:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

.field public static final enum UNAUTHORIZED:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    const/4 v2, 0x1

    const-string v3, "OK_EMPTY"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK_EMPTY:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    .line 3
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    const/4 v3, 0x2

    const-string v4, "BAD_FORMAT"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->BAD_FORMAT:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    .line 4
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    const/4 v4, 0x3

    const-string v5, "UNAUTHORIZED"

    invoke-direct {v0, v5, v4}, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->UNAUTHORIZED:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    .line 5
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    const/4 v5, 0x4

    const-string v6, "TOO_MANY_DEVICES"

    invoke-direct {v0, v6, v5}, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->TOO_MANY_DEVICES:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    .line 6
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    const/4 v6, 0x5

    const-string v7, "HUB_OR_DEVICE_ID_NOT_FOUND"

    invoke-direct {v0, v7, v6}, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->HUB_OR_DEVICE_ID_NOT_FOUND:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    .line 7
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    const/4 v7, 0x6

    const-string v8, "PRECONDITION_FAILED"

    invoke-direct {v0, v8, v7}, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->PRECONDITION_FAILED:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    .line 8
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    const/4 v8, 0x7

    const-string v9, "REQUEST_ENTITY_TOO_LARGE"

    invoke-direct {v0, v9, v8}, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->REQUEST_ENTITY_TOO_LARGE:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    .line 9
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    const/16 v9, 0x8

    const-string v10, "THROTTLED"

    invoke-direct {v0, v10, v9}, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->THROTTLED:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    .line 10
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    const/16 v10, 0x9

    const-string v11, "INTERNAL_SERVER_ERROR"

    invoke-direct {v0, v11, v10}, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->INTERNAL_SERVER_ERROR:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    .line 11
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    const/16 v11, 0xa

    const-string v12, "SERVER_BUSY"

    invoke-direct {v0, v12, v11}, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->SERVER_BUSY:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    .line 12
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    const/16 v12, 0xb

    const-string v13, "ERROR"

    invoke-direct {v0, v13, v12}, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->ERROR:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    .line 13
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    const/16 v13, 0xc

    const-string v14, "MESSAGE_EXPIRED"

    invoke-direct {v0, v14, v13}, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->MESSAGE_EXPIRED:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    .line 14
    new-instance v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    const/16 v14, 0xd

    const-string v15, "MESSAGE_CANCELLED_ONCLOSE"

    invoke-direct {v0, v15, v14}, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->MESSAGE_CANCELLED_ONCLOSE:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    const/16 v15, 0xe

    new-array v15, v15, [Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    .line 15
    sget-object v16, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    aput-object v16, v15, v1

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK_EMPTY:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    aput-object v1, v15, v2

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->BAD_FORMAT:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    aput-object v1, v15, v3

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->UNAUTHORIZED:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    aput-object v1, v15, v4

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->TOO_MANY_DEVICES:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    aput-object v1, v15, v5

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->HUB_OR_DEVICE_ID_NOT_FOUND:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    aput-object v1, v15, v6

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->PRECONDITION_FAILED:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    aput-object v1, v15, v7

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->REQUEST_ENTITY_TOO_LARGE:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    aput-object v1, v15, v8

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->THROTTLED:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    aput-object v1, v15, v9

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->INTERNAL_SERVER_ERROR:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    aput-object v1, v15, v10

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->SERVER_BUSY:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    aput-object v1, v15, v11

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->ERROR:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    aput-object v1, v15, v12

    sget-object v1, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->MESSAGE_EXPIRED:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    aput-object v1, v15, v13

    aput-object v0, v15, v14

    sput-object v15, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->$VALUES:[Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

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

.method public static getConnectionStatusException(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/exceptions/IotHubServiceException;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "Service gave unknown status code: "

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/IotHubServiceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/IotHubServiceException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :pswitch_0
    new-instance p1, Lcom/microsoft/azure/sdk/iot/device/exceptions/ServiceUnknownException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ServiceUnknownException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :pswitch_1
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/exceptions/ServerBusyException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ServerBusyException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :pswitch_2
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/exceptions/InternalServerErrorException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/InternalServerErrorException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :pswitch_3
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/exceptions/ThrottledException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/ThrottledException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :pswitch_4
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/exceptions/RequestEntityTooLargeException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/RequestEntityTooLargeException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :pswitch_5
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/exceptions/PreconditionFailedException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/PreconditionFailedException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :pswitch_6
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/exceptions/HubOrDeviceIdNotFoundException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/HubOrDeviceIdNotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :pswitch_7
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/exceptions/TooManyDevicesException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/TooManyDevicesException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :pswitch_8
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/exceptions/UnauthorizedException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/UnauthorizedException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :pswitch_9
    new-instance p0, Lcom/microsoft/azure/sdk/iot/device/exceptions/BadFormatException;

    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/device/exceptions/BadFormatException;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object p1, p0

    goto :goto_1

    :pswitch_a
    const/4 p1, 0x0

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public static getIotHubStatusCode(I)Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;
    .locals 1

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_a

    const/16 v0, 0xcc

    if-eq p0, v0, :cond_9

    const/16 v0, 0x1ad

    if-eq p0, v0, :cond_8

    const/16 v0, 0x1f4

    if-eq p0, v0, :cond_7

    const/16 v0, 0x1f7

    if-eq p0, v0, :cond_6

    const/16 v0, 0x190

    if-eq p0, v0, :cond_5

    const/16 v0, 0x191

    if-eq p0, v0, :cond_4

    const/16 v0, 0x193

    if-eq p0, v0, :cond_3

    const/16 v0, 0x194

    if-eq p0, v0, :cond_2

    const/16 v0, 0x19c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x19d

    if-eq p0, v0, :cond_0

    .line 1
    sget-object p0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->ERROR:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    goto :goto_0

    .line 2
    :cond_0
    sget-object p0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->REQUEST_ENTITY_TOO_LARGE:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->PRECONDITION_FAILED:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    goto :goto_0

    .line 4
    :cond_2
    sget-object p0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->HUB_OR_DEVICE_ID_NOT_FOUND:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    goto :goto_0

    .line 5
    :cond_3
    sget-object p0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->TOO_MANY_DEVICES:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    goto :goto_0

    .line 6
    :cond_4
    sget-object p0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->UNAUTHORIZED:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    goto :goto_0

    .line 7
    :cond_5
    sget-object p0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->BAD_FORMAT:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    goto :goto_0

    .line 8
    :cond_6
    sget-object p0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->SERVER_BUSY:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    goto :goto_0

    .line 9
    :cond_7
    sget-object p0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->INTERNAL_SERVER_ERROR:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    goto :goto_0

    .line 10
    :cond_8
    sget-object p0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->THROTTLED:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    goto :goto_0

    .line 11
    :cond_9
    sget-object p0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK_EMPTY:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    goto :goto_0

    .line 12
    :cond_a
    sget-object p0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->OK:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->$VALUES:[Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    invoke-virtual {v0}, [Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    return-object v0
.end method
