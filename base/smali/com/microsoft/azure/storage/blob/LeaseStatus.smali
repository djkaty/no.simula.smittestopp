.class public final enum Lcom/microsoft/azure/storage/blob/LeaseStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/storage/blob/LeaseStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/storage/blob/LeaseStatus;

.field public static final enum LOCKED:Lcom/microsoft/azure/storage/blob/LeaseStatus;

.field public static final enum UNLOCKED:Lcom/microsoft/azure/storage/blob/LeaseStatus;

.field public static final enum UNSPECIFIED:Lcom/microsoft/azure/storage/blob/LeaseStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/blob/LeaseStatus;

    const/4 v1, 0x0

    const-string v2, "UNSPECIFIED"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/storage/blob/LeaseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/LeaseStatus;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/LeaseStatus;

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/blob/LeaseStatus;

    const/4 v2, 0x1

    const-string v3, "LOCKED"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/storage/blob/LeaseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/LeaseStatus;->LOCKED:Lcom/microsoft/azure/storage/blob/LeaseStatus;

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/blob/LeaseStatus;

    const/4 v3, 0x2

    const-string v4, "UNLOCKED"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/azure/storage/blob/LeaseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/LeaseStatus;->UNLOCKED:Lcom/microsoft/azure/storage/blob/LeaseStatus;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/microsoft/azure/storage/blob/LeaseStatus;

    .line 4
    sget-object v5, Lcom/microsoft/azure/storage/blob/LeaseStatus;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/LeaseStatus;

    aput-object v5, v4, v1

    sget-object v1, Lcom/microsoft/azure/storage/blob/LeaseStatus;->LOCKED:Lcom/microsoft/azure/storage/blob/LeaseStatus;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/microsoft/azure/storage/blob/LeaseStatus;->$VALUES:[Lcom/microsoft/azure/storage/blob/LeaseStatus;

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

.method public static parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/LeaseStatus;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/microsoft/azure/storage/blob/LeaseStatus;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/LeaseStatus;

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unlocked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/microsoft/azure/storage/blob/LeaseStatus;->UNLOCKED:Lcom/microsoft/azure/storage/blob/LeaseStatus;

    return-object p0

    .line 5
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "locked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 6
    sget-object p0, Lcom/microsoft/azure/storage/blob/LeaseStatus;->LOCKED:Lcom/microsoft/azure/storage/blob/LeaseStatus;

    return-object p0

    .line 7
    :cond_2
    sget-object p0, Lcom/microsoft/azure/storage/blob/LeaseStatus;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/LeaseStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/LeaseStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/storage/blob/LeaseStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/storage/blob/LeaseStatus;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/storage/blob/LeaseStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/blob/LeaseStatus;->$VALUES:[Lcom/microsoft/azure/storage/blob/LeaseStatus;

    invoke-virtual {v0}, [Lcom/microsoft/azure/storage/blob/LeaseStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/storage/blob/LeaseStatus;

    return-object v0
.end method
