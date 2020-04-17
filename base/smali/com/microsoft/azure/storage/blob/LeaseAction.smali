.class public final enum Lcom/microsoft/azure/storage/blob/LeaseAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/storage/blob/LeaseAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/storage/blob/LeaseAction;

.field public static final enum ACQUIRE:Lcom/microsoft/azure/storage/blob/LeaseAction;

.field public static final enum BREAK:Lcom/microsoft/azure/storage/blob/LeaseAction;

.field public static final enum CHANGE:Lcom/microsoft/azure/storage/blob/LeaseAction;

.field public static final enum RELEASE:Lcom/microsoft/azure/storage/blob/LeaseAction;

.field public static final enum RENEW:Lcom/microsoft/azure/storage/blob/LeaseAction;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/blob/LeaseAction;

    const/4 v1, 0x0

    const-string v2, "ACQUIRE"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/storage/blob/LeaseAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/LeaseAction;->ACQUIRE:Lcom/microsoft/azure/storage/blob/LeaseAction;

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/blob/LeaseAction;

    const/4 v2, 0x1

    const-string v3, "RENEW"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/storage/blob/LeaseAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/LeaseAction;->RENEW:Lcom/microsoft/azure/storage/blob/LeaseAction;

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/blob/LeaseAction;

    const/4 v3, 0x2

    const-string v4, "RELEASE"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/azure/storage/blob/LeaseAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/LeaseAction;->RELEASE:Lcom/microsoft/azure/storage/blob/LeaseAction;

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/blob/LeaseAction;

    const/4 v4, 0x3

    const-string v5, "BREAK"

    invoke-direct {v0, v5, v4}, Lcom/microsoft/azure/storage/blob/LeaseAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/LeaseAction;->BREAK:Lcom/microsoft/azure/storage/blob/LeaseAction;

    .line 5
    new-instance v0, Lcom/microsoft/azure/storage/blob/LeaseAction;

    const/4 v5, 0x4

    const-string v6, "CHANGE"

    invoke-direct {v0, v6, v5}, Lcom/microsoft/azure/storage/blob/LeaseAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/LeaseAction;->CHANGE:Lcom/microsoft/azure/storage/blob/LeaseAction;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/microsoft/azure/storage/blob/LeaseAction;

    .line 6
    sget-object v7, Lcom/microsoft/azure/storage/blob/LeaseAction;->ACQUIRE:Lcom/microsoft/azure/storage/blob/LeaseAction;

    aput-object v7, v6, v1

    sget-object v1, Lcom/microsoft/azure/storage/blob/LeaseAction;->RENEW:Lcom/microsoft/azure/storage/blob/LeaseAction;

    aput-object v1, v6, v2

    sget-object v1, Lcom/microsoft/azure/storage/blob/LeaseAction;->RELEASE:Lcom/microsoft/azure/storage/blob/LeaseAction;

    aput-object v1, v6, v3

    sget-object v1, Lcom/microsoft/azure/storage/blob/LeaseAction;->BREAK:Lcom/microsoft/azure/storage/blob/LeaseAction;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/microsoft/azure/storage/blob/LeaseAction;->$VALUES:[Lcom/microsoft/azure/storage/blob/LeaseAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/LeaseAction;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/storage/blob/LeaseAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/storage/blob/LeaseAction;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/storage/blob/LeaseAction;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/blob/LeaseAction;->$VALUES:[Lcom/microsoft/azure/storage/blob/LeaseAction;

    invoke-virtual {v0}, [Lcom/microsoft/azure/storage/blob/LeaseAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/storage/blob/LeaseAction;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, "Change"

    return-object v0

    :cond_1
    const-string v0, "Break"

    return-object v0

    :cond_2
    const-string v0, "Release"

    return-object v0

    :cond_3
    const-string v0, "Renew"

    return-object v0

    :cond_4
    const-string v0, "Acquire"

    return-object v0
.end method
