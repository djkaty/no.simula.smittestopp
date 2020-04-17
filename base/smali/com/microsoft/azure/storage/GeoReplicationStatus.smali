.class public final enum Lcom/microsoft/azure/storage/GeoReplicationStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/storage/GeoReplicationStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/storage/GeoReplicationStatus;

.field public static final enum BOOTSTRAP:Lcom/microsoft/azure/storage/GeoReplicationStatus;

.field public static final enum LIVE:Lcom/microsoft/azure/storage/GeoReplicationStatus;

.field public static final enum UNAVAILABLE:Lcom/microsoft/azure/storage/GeoReplicationStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/GeoReplicationStatus;

    const/4 v1, 0x0

    const-string v2, "UNAVAILABLE"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/storage/GeoReplicationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/GeoReplicationStatus;->UNAVAILABLE:Lcom/microsoft/azure/storage/GeoReplicationStatus;

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/GeoReplicationStatus;

    const/4 v2, 0x1

    const-string v3, "LIVE"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/storage/GeoReplicationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/GeoReplicationStatus;->LIVE:Lcom/microsoft/azure/storage/GeoReplicationStatus;

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/GeoReplicationStatus;

    const/4 v3, 0x2

    const-string v4, "BOOTSTRAP"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/azure/storage/GeoReplicationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/GeoReplicationStatus;->BOOTSTRAP:Lcom/microsoft/azure/storage/GeoReplicationStatus;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/microsoft/azure/storage/GeoReplicationStatus;

    .line 4
    sget-object v5, Lcom/microsoft/azure/storage/GeoReplicationStatus;->UNAVAILABLE:Lcom/microsoft/azure/storage/GeoReplicationStatus;

    aput-object v5, v4, v1

    sget-object v1, Lcom/microsoft/azure/storage/GeoReplicationStatus;->LIVE:Lcom/microsoft/azure/storage/GeoReplicationStatus;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/microsoft/azure/storage/GeoReplicationStatus;->$VALUES:[Lcom/microsoft/azure/storage/GeoReplicationStatus;

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

.method public static parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/GeoReplicationStatus;
    .locals 4

    if-eqz p0, :cond_2

    const-string v0, "unavailable"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/microsoft/azure/storage/GeoReplicationStatus;->UNAVAILABLE:Lcom/microsoft/azure/storage/GeoReplicationStatus;

    return-object p0

    :cond_0
    const-string v0, "live"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/microsoft/azure/storage/GeoReplicationStatus;->LIVE:Lcom/microsoft/azure/storage/GeoReplicationStatus;

    return-object p0

    :cond_1
    const-string v0, "bootstrap"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object p0, Lcom/microsoft/azure/storage/GeoReplicationStatus;->BOOTSTRAP:Lcom/microsoft/azure/storage/GeoReplicationStatus;

    return-object p0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, "Null or Invalid geo-replication status in response: %s."

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/storage/GeoReplicationStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/storage/GeoReplicationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/storage/GeoReplicationStatus;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/storage/GeoReplicationStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/GeoReplicationStatus;->$VALUES:[Lcom/microsoft/azure/storage/GeoReplicationStatus;

    invoke-virtual {v0}, [Lcom/microsoft/azure/storage/GeoReplicationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/storage/GeoReplicationStatus;

    return-object v0
.end method
