.class public final enum Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

.field public static final enum BASIC:Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

.field public static final enum DIGEST:Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

.field public static final enum NONE:Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;->NONE:Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    .line 2
    new-instance v0, Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    const/4 v2, 0x1

    const-string v3, "BASIC"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;->BASIC:Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    .line 3
    new-instance v0, Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    const/4 v3, 0x2

    const-string v4, "DIGEST"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;->DIGEST:Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    .line 4
    sget-object v5, Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;->NONE:Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;->BASIC:Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;->$VALUES:[Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;->$VALUES:[Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    invoke-virtual {v0}, [Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/proton/transport/proxy/ProxyAuthenticationType;

    return-object v0
.end method
