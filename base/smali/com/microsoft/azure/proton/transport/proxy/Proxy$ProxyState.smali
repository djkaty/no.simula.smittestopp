.class public final enum Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/proton/transport/proxy/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProxyState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

.field public static final enum PN_PROXY_CHALLENGE:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

.field public static final enum PN_PROXY_CHALLENGE_RESPONDED:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

.field public static final enum PN_PROXY_CONNECTED:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

.field public static final enum PN_PROXY_CONNECTING:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

.field public static final enum PN_PROXY_FAILED:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

.field public static final enum PN_PROXY_NOT_STARTED:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    const/4 v1, 0x0

    const-string v2, "PN_PROXY_NOT_STARTED"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;->PN_PROXY_NOT_STARTED:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    .line 2
    new-instance v0, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    const/4 v2, 0x1

    const-string v3, "PN_PROXY_CONNECTING"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;->PN_PROXY_CONNECTING:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    .line 3
    new-instance v0, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    const/4 v3, 0x2

    const-string v4, "PN_PROXY_CHALLENGE"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;->PN_PROXY_CHALLENGE:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    .line 4
    new-instance v0, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    const/4 v4, 0x3

    const-string v5, "PN_PROXY_CHALLENGE_RESPONDED"

    invoke-direct {v0, v5, v4}, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;->PN_PROXY_CHALLENGE_RESPONDED:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    .line 5
    new-instance v0, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    const/4 v5, 0x4

    const-string v6, "PN_PROXY_CONNECTED"

    invoke-direct {v0, v6, v5}, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;->PN_PROXY_CONNECTED:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    .line 6
    new-instance v0, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    const/4 v6, 0x5

    const-string v7, "PN_PROXY_FAILED"

    invoke-direct {v0, v7, v6}, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;->PN_PROXY_FAILED:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    .line 7
    sget-object v8, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;->PN_PROXY_NOT_STARTED:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    aput-object v8, v7, v1

    sget-object v1, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;->PN_PROXY_CONNECTING:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    aput-object v1, v7, v2

    sget-object v1, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;->PN_PROXY_CHALLENGE:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    aput-object v1, v7, v3

    sget-object v1, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;->PN_PROXY_CHALLENGE_RESPONDED:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    aput-object v1, v7, v4

    sget-object v1, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;->PN_PROXY_CONNECTED:Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;->$VALUES:[Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;->$VALUES:[Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    invoke-virtual {v0}, [Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/proton/transport/proxy/Proxy$ProxyState;

    return-object v0
.end method
