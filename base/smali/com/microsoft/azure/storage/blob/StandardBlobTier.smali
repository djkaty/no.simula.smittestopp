.class public final enum Lcom/microsoft/azure/storage/blob/StandardBlobTier;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/storage/blob/StandardBlobTier;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/storage/blob/StandardBlobTier;

.field public static final enum ARCHIVE:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

.field public static final enum COOL:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

.field public static final enum HOT:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

.field public static final enum UNKNOWN:Lcom/microsoft/azure/storage/blob/StandardBlobTier;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/storage/blob/StandardBlobTier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/StandardBlobTier;->UNKNOWN:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    const/4 v2, 0x1

    const-string v3, "HOT"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/storage/blob/StandardBlobTier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/StandardBlobTier;->HOT:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    const/4 v3, 0x2

    const-string v4, "COOL"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/azure/storage/blob/StandardBlobTier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/StandardBlobTier;->COOL:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    const/4 v4, 0x3

    const-string v5, "ARCHIVE"

    invoke-direct {v0, v5, v4}, Lcom/microsoft/azure/storage/blob/StandardBlobTier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/blob/StandardBlobTier;->ARCHIVE:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    .line 5
    sget-object v6, Lcom/microsoft/azure/storage/blob/StandardBlobTier;->UNKNOWN:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    aput-object v6, v5, v1

    sget-object v1, Lcom/microsoft/azure/storage/blob/StandardBlobTier;->HOT:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    aput-object v1, v5, v2

    sget-object v1, Lcom/microsoft/azure/storage/blob/StandardBlobTier;->COOL:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/microsoft/azure/storage/blob/StandardBlobTier;->$VALUES:[Lcom/microsoft/azure/storage/blob/StandardBlobTier;

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

.method public static parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/StandardBlobTier;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/microsoft/azure/storage/blob/StandardBlobTier;->UNKNOWN:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/microsoft/azure/storage/blob/StandardBlobTier;->HOT:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    return-object p0

    .line 5
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cool"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object p0, Lcom/microsoft/azure/storage/blob/StandardBlobTier;->COOL:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    return-object p0

    .line 7
    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "archive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 8
    sget-object p0, Lcom/microsoft/azure/storage/blob/StandardBlobTier;->ARCHIVE:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    return-object p0

    .line 9
    :cond_3
    sget-object p0, Lcom/microsoft/azure/storage/blob/StandardBlobTier;->UNKNOWN:Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/storage/blob/StandardBlobTier;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/storage/blob/StandardBlobTier;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/blob/StandardBlobTier;->$VALUES:[Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    invoke-virtual {v0}, [Lcom/microsoft/azure/storage/blob/StandardBlobTier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/storage/blob/StandardBlobTier;

    return-object v0
.end method
