.class public final enum Lcom/microsoft/identity/client/HttpMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/client/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/identity/client/HttpMethod;

.field public static final enum CONNECT:Lcom/microsoft/identity/client/HttpMethod;

.field public static final enum DELETE:Lcom/microsoft/identity/client/HttpMethod;

.field public static final enum GET:Lcom/microsoft/identity/client/HttpMethod;

.field public static final enum HEAD:Lcom/microsoft/identity/client/HttpMethod;

.field public static final enum OPTIONS:Lcom/microsoft/identity/client/HttpMethod;

.field public static final enum PATCH:Lcom/microsoft/identity/client/HttpMethod;

.field public static final enum POST:Lcom/microsoft/identity/client/HttpMethod;

.field public static final enum PUT:Lcom/microsoft/identity/client/HttpMethod;

.field public static final enum TRACE:Lcom/microsoft/identity/client/HttpMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/microsoft/identity/client/HttpMethod;

    const/4 v1, 0x0

    const-string v2, "GET"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/identity/client/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/client/HttpMethod;->GET:Lcom/microsoft/identity/client/HttpMethod;

    .line 2
    new-instance v0, Lcom/microsoft/identity/client/HttpMethod;

    const/4 v2, 0x1

    const-string v3, "HEAD"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/identity/client/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/client/HttpMethod;->HEAD:Lcom/microsoft/identity/client/HttpMethod;

    .line 3
    new-instance v0, Lcom/microsoft/identity/client/HttpMethod;

    const/4 v3, 0x2

    const-string v4, "POST"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/identity/client/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/client/HttpMethod;->POST:Lcom/microsoft/identity/client/HttpMethod;

    .line 4
    new-instance v0, Lcom/microsoft/identity/client/HttpMethod;

    const/4 v4, 0x3

    const-string v5, "PUT"

    invoke-direct {v0, v5, v4}, Lcom/microsoft/identity/client/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/client/HttpMethod;->PUT:Lcom/microsoft/identity/client/HttpMethod;

    .line 5
    new-instance v0, Lcom/microsoft/identity/client/HttpMethod;

    const/4 v5, 0x4

    const-string v6, "DELETE"

    invoke-direct {v0, v6, v5}, Lcom/microsoft/identity/client/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/client/HttpMethod;->DELETE:Lcom/microsoft/identity/client/HttpMethod;

    .line 6
    new-instance v0, Lcom/microsoft/identity/client/HttpMethod;

    const/4 v6, 0x5

    const-string v7, "CONNECT"

    invoke-direct {v0, v7, v6}, Lcom/microsoft/identity/client/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/client/HttpMethod;->CONNECT:Lcom/microsoft/identity/client/HttpMethod;

    .line 7
    new-instance v0, Lcom/microsoft/identity/client/HttpMethod;

    const/4 v7, 0x6

    const-string v8, "OPTIONS"

    invoke-direct {v0, v8, v7}, Lcom/microsoft/identity/client/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/client/HttpMethod;->OPTIONS:Lcom/microsoft/identity/client/HttpMethod;

    .line 8
    new-instance v0, Lcom/microsoft/identity/client/HttpMethod;

    const/4 v8, 0x7

    const-string v9, "TRACE"

    invoke-direct {v0, v9, v8}, Lcom/microsoft/identity/client/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/client/HttpMethod;->TRACE:Lcom/microsoft/identity/client/HttpMethod;

    .line 9
    new-instance v0, Lcom/microsoft/identity/client/HttpMethod;

    const/16 v9, 0x8

    const-string v10, "PATCH"

    invoke-direct {v0, v10, v9}, Lcom/microsoft/identity/client/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/client/HttpMethod;->PATCH:Lcom/microsoft/identity/client/HttpMethod;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/microsoft/identity/client/HttpMethod;

    .line 10
    sget-object v11, Lcom/microsoft/identity/client/HttpMethod;->GET:Lcom/microsoft/identity/client/HttpMethod;

    aput-object v11, v10, v1

    sget-object v1, Lcom/microsoft/identity/client/HttpMethod;->HEAD:Lcom/microsoft/identity/client/HttpMethod;

    aput-object v1, v10, v2

    sget-object v1, Lcom/microsoft/identity/client/HttpMethod;->POST:Lcom/microsoft/identity/client/HttpMethod;

    aput-object v1, v10, v3

    sget-object v1, Lcom/microsoft/identity/client/HttpMethod;->PUT:Lcom/microsoft/identity/client/HttpMethod;

    aput-object v1, v10, v4

    sget-object v1, Lcom/microsoft/identity/client/HttpMethod;->DELETE:Lcom/microsoft/identity/client/HttpMethod;

    aput-object v1, v10, v5

    sget-object v1, Lcom/microsoft/identity/client/HttpMethod;->CONNECT:Lcom/microsoft/identity/client/HttpMethod;

    aput-object v1, v10, v6

    sget-object v1, Lcom/microsoft/identity/client/HttpMethod;->OPTIONS:Lcom/microsoft/identity/client/HttpMethod;

    aput-object v1, v10, v7

    sget-object v1, Lcom/microsoft/identity/client/HttpMethod;->TRACE:Lcom/microsoft/identity/client/HttpMethod;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/microsoft/identity/client/HttpMethod;->$VALUES:[Lcom/microsoft/identity/client/HttpMethod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/client/HttpMethod;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/client/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/client/HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/client/HttpMethod;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/client/HttpMethod;->$VALUES:[Lcom/microsoft/identity/client/HttpMethod;

    invoke-virtual {v0}, [Lcom/microsoft/identity/client/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/client/HttpMethod;

    return-object v0
.end method
