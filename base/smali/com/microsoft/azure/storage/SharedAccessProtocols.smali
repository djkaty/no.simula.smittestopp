.class public final enum Lcom/microsoft/azure/storage/SharedAccessProtocols;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/storage/SharedAccessProtocols;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/storage/SharedAccessProtocols;

.field public static final enum HTTPS_HTTP:Lcom/microsoft/azure/storage/SharedAccessProtocols;

.field public static final enum HTTPS_ONLY:Lcom/microsoft/azure/storage/SharedAccessProtocols;


# instance fields
.field public final protocols:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/SharedAccessProtocols;

    const/4 v1, 0x0

    const-string v2, "HTTPS_ONLY"

    const-string v3, "https"

    invoke-direct {v0, v2, v1, v3}, Lcom/microsoft/azure/storage/SharedAccessProtocols;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/azure/storage/SharedAccessProtocols;->HTTPS_ONLY:Lcom/microsoft/azure/storage/SharedAccessProtocols;

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/SharedAccessProtocols;

    const/4 v2, 0x1

    const-string v3, "HTTPS_HTTP"

    const-string v4, "https,http"

    invoke-direct {v0, v3, v2, v4}, Lcom/microsoft/azure/storage/SharedAccessProtocols;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/azure/storage/SharedAccessProtocols;->HTTPS_HTTP:Lcom/microsoft/azure/storage/SharedAccessProtocols;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/microsoft/azure/storage/SharedAccessProtocols;

    .line 3
    sget-object v4, Lcom/microsoft/azure/storage/SharedAccessProtocols;->HTTPS_ONLY:Lcom/microsoft/azure/storage/SharedAccessProtocols;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/microsoft/azure/storage/SharedAccessProtocols;->$VALUES:[Lcom/microsoft/azure/storage/SharedAccessProtocols;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/microsoft/azure/storage/SharedAccessProtocols;->protocols:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/storage/SharedAccessProtocols;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/storage/SharedAccessProtocols;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/storage/SharedAccessProtocols;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/storage/SharedAccessProtocols;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/SharedAccessProtocols;->$VALUES:[Lcom/microsoft/azure/storage/SharedAccessProtocols;

    invoke-virtual {v0}, [Lcom/microsoft/azure/storage/SharedAccessProtocols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/storage/SharedAccessProtocols;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/SharedAccessProtocols;->protocols:Ljava/lang/String;

    return-object v0
.end method
