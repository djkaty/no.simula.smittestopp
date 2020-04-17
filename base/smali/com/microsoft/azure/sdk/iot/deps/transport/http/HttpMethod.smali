.class public final enum Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

.field public static final enum DELETE:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

.field public static final enum GET:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

.field public static final enum PATCH:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

.field public static final enum POST:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

.field public static final enum PUT:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

    const/4 v1, 0x0

    const-string v2, "GET"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;->GET:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

    const/4 v2, 0x1

    const-string v3, "POST"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;->POST:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

    const/4 v3, 0x2

    const-string v4, "PUT"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;->PUT:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

    const/4 v4, 0x3

    const-string v5, "DELETE"

    invoke-direct {v0, v5, v4}, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;->DELETE:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

    const/4 v5, 0x4

    const-string v6, "PATCH"

    invoke-direct {v0, v6, v5}, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;->PATCH:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

    .line 2
    sget-object v7, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;->GET:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

    aput-object v7, v6, v1

    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;->POST:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

    aput-object v1, v6, v2

    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;->PUT:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

    aput-object v1, v6, v3

    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;->DELETE:Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;->$VALUES:[Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;->$VALUES:[Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

    invoke-virtual {v0}, [Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/sdk/iot/deps/transport/http/HttpMethod;

    return-object v0
.end method
