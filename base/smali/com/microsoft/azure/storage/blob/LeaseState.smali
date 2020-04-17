.class public final enum Lcom/microsoft/azure/storage/blob/LeaseState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/storage/blob/LeaseState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/storage/blob/LeaseState;

.field public static final enum AVAILABLE:Lcom/microsoft/azure/storage/blob/LeaseState;

.field public static final enum BREAKING:Lcom/microsoft/azure/storage/blob/LeaseState;

.field public static final enum BROKEN:Lcom/microsoft/azure/storage/blob/LeaseState;

.field public static final enum EXPIRED:Lcom/microsoft/azure/storage/blob/LeaseState;

.field public static final enum LEASED:Lcom/microsoft/azure/storage/blob/LeaseState;

.field public static final enum UNSPECIFIED:Lcom/microsoft/azure/storage/blob/LeaseState;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/blob/LeaseState;

    const/4 v1, 0x0

    const-string v2, "UNSPECIFIED"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/storage/blob/LeaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/LeaseState;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/LeaseState;

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/blob/LeaseState;

    const/4 v2, 0x1

    const-string v3, "AVAILABLE"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/storage/blob/LeaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/LeaseState;->AVAILABLE:Lcom/microsoft/azure/storage/blob/LeaseState;

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/blob/LeaseState;

    const/4 v3, 0x2

    const-string v4, "LEASED"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/azure/storage/blob/LeaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/LeaseState;->LEASED:Lcom/microsoft/azure/storage/blob/LeaseState;

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/blob/LeaseState;

    const/4 v4, 0x3

    const-string v5, "EXPIRED"

    invoke-direct {v0, v5, v4}, Lcom/microsoft/azure/storage/blob/LeaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/LeaseState;->EXPIRED:Lcom/microsoft/azure/storage/blob/LeaseState;

    .line 5
    new-instance v0, Lcom/microsoft/azure/storage/blob/LeaseState;

    const/4 v5, 0x4

    const-string v6, "BREAKING"

    invoke-direct {v0, v6, v5}, Lcom/microsoft/azure/storage/blob/LeaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/LeaseState;->BREAKING:Lcom/microsoft/azure/storage/blob/LeaseState;

    .line 6
    new-instance v0, Lcom/microsoft/azure/storage/blob/LeaseState;

    const/4 v6, 0x5

    const-string v7, "BROKEN"

    invoke-direct {v0, v7, v6}, Lcom/microsoft/azure/storage/blob/LeaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/LeaseState;->BROKEN:Lcom/microsoft/azure/storage/blob/LeaseState;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/microsoft/azure/storage/blob/LeaseState;

    .line 7
    sget-object v8, Lcom/microsoft/azure/storage/blob/LeaseState;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/LeaseState;

    aput-object v8, v7, v1

    sget-object v1, Lcom/microsoft/azure/storage/blob/LeaseState;->AVAILABLE:Lcom/microsoft/azure/storage/blob/LeaseState;

    aput-object v1, v7, v2

    sget-object v1, Lcom/microsoft/azure/storage/blob/LeaseState;->LEASED:Lcom/microsoft/azure/storage/blob/LeaseState;

    aput-object v1, v7, v3

    sget-object v1, Lcom/microsoft/azure/storage/blob/LeaseState;->EXPIRED:Lcom/microsoft/azure/storage/blob/LeaseState;

    aput-object v1, v7, v4

    sget-object v1, Lcom/microsoft/azure/storage/blob/LeaseState;->BREAKING:Lcom/microsoft/azure/storage/blob/LeaseState;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/microsoft/azure/storage/blob/LeaseState;->$VALUES:[Lcom/microsoft/azure/storage/blob/LeaseState;

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

.method public static parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/LeaseState;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/microsoft/azure/storage/blob/LeaseState;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/LeaseState;

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "available"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/microsoft/azure/storage/blob/LeaseState;->AVAILABLE:Lcom/microsoft/azure/storage/blob/LeaseState;

    return-object p0

    .line 5
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "leased"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object p0, Lcom/microsoft/azure/storage/blob/LeaseState;->LEASED:Lcom/microsoft/azure/storage/blob/LeaseState;

    return-object p0

    .line 7
    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "expired"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    sget-object p0, Lcom/microsoft/azure/storage/blob/LeaseState;->EXPIRED:Lcom/microsoft/azure/storage/blob/LeaseState;

    return-object p0

    .line 9
    :cond_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "breaking"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    sget-object p0, Lcom/microsoft/azure/storage/blob/LeaseState;->BREAKING:Lcom/microsoft/azure/storage/blob/LeaseState;

    return-object p0

    .line 11
    :cond_4
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "broken"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 12
    sget-object p0, Lcom/microsoft/azure/storage/blob/LeaseState;->BROKEN:Lcom/microsoft/azure/storage/blob/LeaseState;

    return-object p0

    .line 13
    :cond_5
    sget-object p0, Lcom/microsoft/azure/storage/blob/LeaseState;->UNSPECIFIED:Lcom/microsoft/azure/storage/blob/LeaseState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/LeaseState;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/storage/blob/LeaseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/storage/blob/LeaseState;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/storage/blob/LeaseState;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/blob/LeaseState;->$VALUES:[Lcom/microsoft/azure/storage/blob/LeaseState;

    invoke-virtual {v0}, [Lcom/microsoft/azure/storage/blob/LeaseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/storage/blob/LeaseState;

    return-object v0
.end method
