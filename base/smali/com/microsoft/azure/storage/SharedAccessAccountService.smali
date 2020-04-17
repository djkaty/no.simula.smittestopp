.class public final enum Lcom/microsoft/azure/storage/SharedAccessAccountService;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/storage/SharedAccessAccountService;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/storage/SharedAccessAccountService;

.field public static final enum BLOB:Lcom/microsoft/azure/storage/SharedAccessAccountService;

.field public static final enum FILE:Lcom/microsoft/azure/storage/SharedAccessAccountService;

.field public static final enum QUEUE:Lcom/microsoft/azure/storage/SharedAccessAccountService;

.field public static final enum TABLE:Lcom/microsoft/azure/storage/SharedAccessAccountService;


# instance fields
.field public value:C


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/SharedAccessAccountService;

    const/4 v1, 0x0

    const-string v2, "BLOB"

    const/16 v3, 0x62

    invoke-direct {v0, v2, v1, v3}, Lcom/microsoft/azure/storage/SharedAccessAccountService;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/microsoft/azure/storage/SharedAccessAccountService;->BLOB:Lcom/microsoft/azure/storage/SharedAccessAccountService;

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/SharedAccessAccountService;

    const/4 v2, 0x1

    const-string v3, "FILE"

    const/16 v4, 0x66

    invoke-direct {v0, v3, v2, v4}, Lcom/microsoft/azure/storage/SharedAccessAccountService;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/microsoft/azure/storage/SharedAccessAccountService;->FILE:Lcom/microsoft/azure/storage/SharedAccessAccountService;

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/SharedAccessAccountService;

    const/4 v3, 0x2

    const-string v4, "QUEUE"

    const/16 v5, 0x71

    invoke-direct {v0, v4, v3, v5}, Lcom/microsoft/azure/storage/SharedAccessAccountService;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/microsoft/azure/storage/SharedAccessAccountService;->QUEUE:Lcom/microsoft/azure/storage/SharedAccessAccountService;

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/SharedAccessAccountService;

    const/4 v4, 0x3

    const-string v5, "TABLE"

    const/16 v6, 0x74

    invoke-direct {v0, v5, v4, v6}, Lcom/microsoft/azure/storage/SharedAccessAccountService;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/microsoft/azure/storage/SharedAccessAccountService;->TABLE:Lcom/microsoft/azure/storage/SharedAccessAccountService;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/microsoft/azure/storage/SharedAccessAccountService;

    .line 5
    sget-object v6, Lcom/microsoft/azure/storage/SharedAccessAccountService;->BLOB:Lcom/microsoft/azure/storage/SharedAccessAccountService;

    aput-object v6, v5, v1

    sget-object v1, Lcom/microsoft/azure/storage/SharedAccessAccountService;->FILE:Lcom/microsoft/azure/storage/SharedAccessAccountService;

    aput-object v1, v5, v2

    sget-object v1, Lcom/microsoft/azure/storage/SharedAccessAccountService;->QUEUE:Lcom/microsoft/azure/storage/SharedAccessAccountService;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/microsoft/azure/storage/SharedAccessAccountService;->$VALUES:[Lcom/microsoft/azure/storage/SharedAccessAccountService;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IC)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-char p3, p0, Lcom/microsoft/azure/storage/SharedAccessAccountService;->value:C

    return-void
.end method

.method public static servicesFromString(Ljava/lang/String;)Ljava/util/EnumSet;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/SharedAccessAccountService;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/microsoft/azure/storage/SharedAccessAccountService;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-char v5, v1, v4

    .line 3
    invoke-static {}, Lcom/microsoft/azure/storage/SharedAccessAccountService;->values()[Lcom/microsoft/azure/storage/SharedAccessAccountService;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x1

    if-ge v8, v7, :cond_1

    aget-object v10, v6, v8

    .line 4
    iget-char v11, v10, Lcom/microsoft/azure/storage/SharedAccessAccountService;->value:C

    if-ne v5, v11, :cond_0

    .line 5
    invoke-virtual {v0, v10}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    goto :goto_2

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_2
    if-nez v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Services"

    aput-object v2, v1, v3

    aput-object p0, v1, v9

    const-string p0, "%s could not be parsed from \'%s\'."

    .line 7
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v0
.end method

.method public static servicesToString(Ljava/util/EnumSet;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/SharedAccessAccountService;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/azure/storage/SharedAccessAccountService;

    .line 3
    iget-char v1, v1, Lcom/microsoft/azure/storage/SharedAccessAccountService;->value:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/storage/SharedAccessAccountService;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/storage/SharedAccessAccountService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/storage/SharedAccessAccountService;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/storage/SharedAccessAccountService;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/SharedAccessAccountService;->$VALUES:[Lcom/microsoft/azure/storage/SharedAccessAccountService;

    invoke-virtual {v0}, [Lcom/microsoft/azure/storage/SharedAccessAccountService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/storage/SharedAccessAccountService;

    return-object v0
.end method
