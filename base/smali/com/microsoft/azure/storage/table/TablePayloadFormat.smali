.class public final enum Lcom/microsoft/azure/storage/table/TablePayloadFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/storage/table/TablePayloadFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/storage/table/TablePayloadFormat;

.field public static final enum Json:Lcom/microsoft/azure/storage/table/TablePayloadFormat;

.field public static final enum JsonFullMetadata:Lcom/microsoft/azure/storage/table/TablePayloadFormat;

.field public static final enum JsonNoMetadata:Lcom/microsoft/azure/storage/table/TablePayloadFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    const/4 v1, 0x0

    const-string v2, "JsonFullMetadata"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/storage/table/TablePayloadFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/table/TablePayloadFormat;->JsonFullMetadata:Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    const/4 v2, 0x1

    const-string v3, "Json"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/storage/table/TablePayloadFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/table/TablePayloadFormat;->Json:Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    const/4 v3, 0x2

    const-string v4, "JsonNoMetadata"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/azure/storage/table/TablePayloadFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/table/TablePayloadFormat;->JsonNoMetadata:Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    .line 4
    sget-object v5, Lcom/microsoft/azure/storage/table/TablePayloadFormat;->JsonFullMetadata:Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    aput-object v5, v4, v1

    sget-object v1, Lcom/microsoft/azure/storage/table/TablePayloadFormat;->Json:Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/microsoft/azure/storage/table/TablePayloadFormat;->$VALUES:[Lcom/microsoft/azure/storage/table/TablePayloadFormat;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/TablePayloadFormat;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/storage/table/TablePayloadFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/table/TablePayloadFormat;->$VALUES:[Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    invoke-virtual {v0}, [Lcom/microsoft/azure/storage/table/TablePayloadFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/storage/table/TablePayloadFormat;

    return-object v0
.end method
