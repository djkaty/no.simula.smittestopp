.class public final enum Lcom/microsoft/azure/storage/table/EdmType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/storage/table/EdmType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/storage/table/EdmType;

.field public static final enum BINARY:Lcom/microsoft/azure/storage/table/EdmType;

.field public static final enum BOOLEAN:Lcom/microsoft/azure/storage/table/EdmType;

.field public static final enum BYTE:Lcom/microsoft/azure/storage/table/EdmType;

.field public static final enum DATE_TIME:Lcom/microsoft/azure/storage/table/EdmType;

.field public static final enum DATE_TIME_OFFSET:Lcom/microsoft/azure/storage/table/EdmType;

.field public static final enum DECIMAL:Lcom/microsoft/azure/storage/table/EdmType;

.field public static final enum DOUBLE:Lcom/microsoft/azure/storage/table/EdmType;

.field public static final enum GUID:Lcom/microsoft/azure/storage/table/EdmType;

.field public static final enum INT16:Lcom/microsoft/azure/storage/table/EdmType;

.field public static final enum INT32:Lcom/microsoft/azure/storage/table/EdmType;

.field public static final enum INT64:Lcom/microsoft/azure/storage/table/EdmType;

.field public static final enum NULL:Lcom/microsoft/azure/storage/table/EdmType;

.field public static final enum SBYTE:Lcom/microsoft/azure/storage/table/EdmType;

.field public static final enum SINGLE:Lcom/microsoft/azure/storage/table/EdmType;

.field public static final enum STRING:Lcom/microsoft/azure/storage/table/EdmType;

.field public static final enum TIME:Lcom/microsoft/azure/storage/table/EdmType;

.field public static final UNANNOTATED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/microsoft/azure/storage/table/EdmType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/table/EdmType;

    const/4 v1, 0x0

    const-string v2, "NULL"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/storage/table/EdmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/table/EdmType;->NULL:Lcom/microsoft/azure/storage/table/EdmType;

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/table/EdmType;

    const/4 v2, 0x1

    const-string v3, "BINARY"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/storage/table/EdmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/table/EdmType;->BINARY:Lcom/microsoft/azure/storage/table/EdmType;

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/table/EdmType;

    const/4 v3, 0x2

    const-string v4, "BOOLEAN"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/azure/storage/table/EdmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/table/EdmType;->BOOLEAN:Lcom/microsoft/azure/storage/table/EdmType;

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/table/EdmType;

    const/4 v4, 0x3

    const-string v5, "BYTE"

    invoke-direct {v0, v5, v4}, Lcom/microsoft/azure/storage/table/EdmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/table/EdmType;->BYTE:Lcom/microsoft/azure/storage/table/EdmType;

    .line 5
    new-instance v0, Lcom/microsoft/azure/storage/table/EdmType;

    const/4 v5, 0x4

    const-string v6, "DATE_TIME"

    invoke-direct {v0, v6, v5}, Lcom/microsoft/azure/storage/table/EdmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/table/EdmType;->DATE_TIME:Lcom/microsoft/azure/storage/table/EdmType;

    .line 6
    new-instance v0, Lcom/microsoft/azure/storage/table/EdmType;

    const/4 v6, 0x5

    const-string v7, "DATE_TIME_OFFSET"

    invoke-direct {v0, v7, v6}, Lcom/microsoft/azure/storage/table/EdmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/table/EdmType;->DATE_TIME_OFFSET:Lcom/microsoft/azure/storage/table/EdmType;

    .line 7
    new-instance v0, Lcom/microsoft/azure/storage/table/EdmType;

    const/4 v7, 0x6

    const-string v8, "DECIMAL"

    invoke-direct {v0, v8, v7}, Lcom/microsoft/azure/storage/table/EdmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/table/EdmType;->DECIMAL:Lcom/microsoft/azure/storage/table/EdmType;

    .line 8
    new-instance v0, Lcom/microsoft/azure/storage/table/EdmType;

    const/4 v8, 0x7

    const-string v9, "DOUBLE"

    invoke-direct {v0, v9, v8}, Lcom/microsoft/azure/storage/table/EdmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/table/EdmType;->DOUBLE:Lcom/microsoft/azure/storage/table/EdmType;

    .line 9
    new-instance v0, Lcom/microsoft/azure/storage/table/EdmType;

    const/16 v9, 0x8

    const-string v10, "SINGLE"

    invoke-direct {v0, v10, v9}, Lcom/microsoft/azure/storage/table/EdmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/table/EdmType;->SINGLE:Lcom/microsoft/azure/storage/table/EdmType;

    .line 10
    new-instance v0, Lcom/microsoft/azure/storage/table/EdmType;

    const/16 v10, 0x9

    const-string v11, "GUID"

    invoke-direct {v0, v11, v10}, Lcom/microsoft/azure/storage/table/EdmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/table/EdmType;->GUID:Lcom/microsoft/azure/storage/table/EdmType;

    .line 11
    new-instance v0, Lcom/microsoft/azure/storage/table/EdmType;

    const/16 v11, 0xa

    const-string v12, "INT16"

    invoke-direct {v0, v12, v11}, Lcom/microsoft/azure/storage/table/EdmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/table/EdmType;->INT16:Lcom/microsoft/azure/storage/table/EdmType;

    .line 12
    new-instance v0, Lcom/microsoft/azure/storage/table/EdmType;

    const/16 v12, 0xb

    const-string v13, "INT32"

    invoke-direct {v0, v13, v12}, Lcom/microsoft/azure/storage/table/EdmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/table/EdmType;->INT32:Lcom/microsoft/azure/storage/table/EdmType;

    .line 13
    new-instance v0, Lcom/microsoft/azure/storage/table/EdmType;

    const/16 v13, 0xc

    const-string v14, "INT64"

    invoke-direct {v0, v14, v13}, Lcom/microsoft/azure/storage/table/EdmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/table/EdmType;->INT64:Lcom/microsoft/azure/storage/table/EdmType;

    .line 14
    new-instance v0, Lcom/microsoft/azure/storage/table/EdmType;

    const/16 v14, 0xd

    const-string v15, "SBYTE"

    invoke-direct {v0, v15, v14}, Lcom/microsoft/azure/storage/table/EdmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/table/EdmType;->SBYTE:Lcom/microsoft/azure/storage/table/EdmType;

    .line 15
    new-instance v0, Lcom/microsoft/azure/storage/table/EdmType;

    const/16 v15, 0xe

    const-string v14, "STRING"

    invoke-direct {v0, v14, v15}, Lcom/microsoft/azure/storage/table/EdmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/table/EdmType;->STRING:Lcom/microsoft/azure/storage/table/EdmType;

    .line 16
    new-instance v0, Lcom/microsoft/azure/storage/table/EdmType;

    const/16 v14, 0xf

    const-string v15, "TIME"

    invoke-direct {v0, v15, v14}, Lcom/microsoft/azure/storage/table/EdmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/table/EdmType;->TIME:Lcom/microsoft/azure/storage/table/EdmType;

    const/16 v15, 0x10

    new-array v15, v15, [Lcom/microsoft/azure/storage/table/EdmType;

    .line 17
    sget-object v16, Lcom/microsoft/azure/storage/table/EdmType;->NULL:Lcom/microsoft/azure/storage/table/EdmType;

    aput-object v16, v15, v1

    sget-object v1, Lcom/microsoft/azure/storage/table/EdmType;->BINARY:Lcom/microsoft/azure/storage/table/EdmType;

    aput-object v1, v15, v2

    sget-object v1, Lcom/microsoft/azure/storage/table/EdmType;->BOOLEAN:Lcom/microsoft/azure/storage/table/EdmType;

    aput-object v1, v15, v3

    sget-object v2, Lcom/microsoft/azure/storage/table/EdmType;->BYTE:Lcom/microsoft/azure/storage/table/EdmType;

    aput-object v2, v15, v4

    sget-object v2, Lcom/microsoft/azure/storage/table/EdmType;->DATE_TIME:Lcom/microsoft/azure/storage/table/EdmType;

    aput-object v2, v15, v5

    sget-object v2, Lcom/microsoft/azure/storage/table/EdmType;->DATE_TIME_OFFSET:Lcom/microsoft/azure/storage/table/EdmType;

    aput-object v2, v15, v6

    sget-object v2, Lcom/microsoft/azure/storage/table/EdmType;->DECIMAL:Lcom/microsoft/azure/storage/table/EdmType;

    aput-object v2, v15, v7

    sget-object v2, Lcom/microsoft/azure/storage/table/EdmType;->DOUBLE:Lcom/microsoft/azure/storage/table/EdmType;

    aput-object v2, v15, v8

    sget-object v3, Lcom/microsoft/azure/storage/table/EdmType;->SINGLE:Lcom/microsoft/azure/storage/table/EdmType;

    aput-object v3, v15, v9

    sget-object v3, Lcom/microsoft/azure/storage/table/EdmType;->GUID:Lcom/microsoft/azure/storage/table/EdmType;

    aput-object v3, v15, v10

    sget-object v3, Lcom/microsoft/azure/storage/table/EdmType;->INT16:Lcom/microsoft/azure/storage/table/EdmType;

    aput-object v3, v15, v11

    sget-object v3, Lcom/microsoft/azure/storage/table/EdmType;->INT32:Lcom/microsoft/azure/storage/table/EdmType;

    aput-object v3, v15, v12

    sget-object v4, Lcom/microsoft/azure/storage/table/EdmType;->INT64:Lcom/microsoft/azure/storage/table/EdmType;

    aput-object v4, v15, v13

    sget-object v4, Lcom/microsoft/azure/storage/table/EdmType;->SBYTE:Lcom/microsoft/azure/storage/table/EdmType;

    const/16 v5, 0xd

    aput-object v4, v15, v5

    sget-object v4, Lcom/microsoft/azure/storage/table/EdmType;->STRING:Lcom/microsoft/azure/storage/table/EdmType;

    const/16 v5, 0xe

    aput-object v4, v15, v5

    aput-object v0, v15, v14

    sput-object v15, Lcom/microsoft/azure/storage/table/EdmType;->$VALUES:[Lcom/microsoft/azure/storage/table/EdmType;

    .line 18
    invoke-static {v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/microsoft/azure/storage/table/EdmType;->UNANNOTATED:Ljava/util/Set;

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

.method public static parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/EdmType;
    .locals 3

    if-eqz p0, :cond_8

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Edm.DateTime"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object p0, Lcom/microsoft/azure/storage/table/EdmType;->DATE_TIME:Lcom/microsoft/azure/storage/table/EdmType;

    return-object p0

    :cond_1
    const-string v0, "Edm.Int32"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    sget-object p0, Lcom/microsoft/azure/storage/table/EdmType;->INT32:Lcom/microsoft/azure/storage/table/EdmType;

    return-object p0

    :cond_2
    const-string v0, "Edm.Boolean"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    sget-object p0, Lcom/microsoft/azure/storage/table/EdmType;->BOOLEAN:Lcom/microsoft/azure/storage/table/EdmType;

    return-object p0

    :cond_3
    const-string v0, "Edm.Double"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    sget-object p0, Lcom/microsoft/azure/storage/table/EdmType;->DOUBLE:Lcom/microsoft/azure/storage/table/EdmType;

    return-object p0

    :cond_4
    const-string v0, "Edm.Int64"

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    sget-object p0, Lcom/microsoft/azure/storage/table/EdmType;->INT64:Lcom/microsoft/azure/storage/table/EdmType;

    return-object p0

    :cond_5
    const-string v0, "Edm.Guid"

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    sget-object p0, Lcom/microsoft/azure/storage/table/EdmType;->GUID:Lcom/microsoft/azure/storage/table/EdmType;

    return-object p0

    :cond_6
    const-string v0, "Edm.Binary"

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15
    sget-object p0, Lcom/microsoft/azure/storage/table/EdmType;->BINARY:Lcom/microsoft/azure/storage/table/EdmType;

    return-object p0

    .line 16
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Invalid value \'%s\' for EdmType."

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_8
    :goto_0
    sget-object p0, Lcom/microsoft/azure/storage/table/EdmType;->STRING:Lcom/microsoft/azure/storage/table/EdmType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/storage/table/EdmType;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/storage/table/EdmType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/storage/table/EdmType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/storage/table/EdmType;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->$VALUES:[Lcom/microsoft/azure/storage/table/EdmType;

    invoke-virtual {v0}, [Lcom/microsoft/azure/storage/table/EdmType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/storage/table/EdmType;

    return-object v0
.end method


# virtual methods
.method public final mustAnnotateType()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->UNANNOTATED:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->BINARY:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne p0, v0, :cond_0

    const-string v0, "Edm.Binary"

    return-object v0

    .line 2
    :cond_0
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->STRING:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne p0, v0, :cond_1

    const-string v0, "Edm.String"

    return-object v0

    .line 3
    :cond_1
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->BOOLEAN:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne p0, v0, :cond_2

    const-string v0, "Edm.Boolean"

    return-object v0

    .line 4
    :cond_2
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->DOUBLE:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne p0, v0, :cond_3

    const-string v0, "Edm.Double"

    return-object v0

    .line 5
    :cond_3
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->GUID:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne p0, v0, :cond_4

    const-string v0, "Edm.Guid"

    return-object v0

    .line 6
    :cond_4
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->INT32:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne p0, v0, :cond_5

    const-string v0, "Edm.Int32"

    return-object v0

    .line 7
    :cond_5
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->INT64:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne p0, v0, :cond_6

    const-string v0, "Edm.Int64"

    return-object v0

    .line 8
    :cond_6
    sget-object v0, Lcom/microsoft/azure/storage/table/EdmType;->DATE_TIME:Lcom/microsoft/azure/storage/table/EdmType;

    if-ne p0, v0, :cond_7

    const-string v0, "Edm.DateTime"

    return-object v0

    :cond_7
    const-string v0, ""

    return-object v0
.end method
