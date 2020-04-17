.class public final enum Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;

.field public static final enum APPLIED:Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;
    .annotation runtime Le/c/c/v/c;
        value = "applied"
    .end annotation
.end field

.field public static final enum TARGETED:Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;
    .annotation runtime Le/c/c/v/c;
        value = "targeted"
    .end annotation
.end field


# instance fields
.field public numVal:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "TARGETED"

    invoke-direct {v0, v3, v1, v2}, Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;->TARGETED:Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;

    const/4 v3, 0x2

    const-string v4, "APPLIED"

    invoke-direct {v0, v4, v2, v3}, Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;->APPLIED:Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;

    new-array v3, v3, [Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;

    .line 3
    sget-object v4, Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;->TARGETED:Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;->$VALUES:[Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;

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
    iput p3, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;->numVal:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;->$VALUES:[Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;

    invoke-virtual {v0}, [Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;

    return-object v0
.end method


# virtual methods
.method public getNumVal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/azure/sdk/iot/deps/twin/ConfigurationStatus;->numVal:I

    return v0
.end method
