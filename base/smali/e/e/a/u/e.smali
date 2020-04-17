.class public final enum Le/e/a/u/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/e/a/u/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Le/e/a/u/e;

.field public static final enum DECRYPT:Le/e/a/u/e;

.field public static final enum DERIVE_BITS:Le/e/a/u/e;

.field public static final enum DERIVE_KEY:Le/e/a/u/e;

.field public static final enum ENCRYPT:Le/e/a/u/e;

.field public static final enum SIGN:Le/e/a/u/e;

.field public static final enum UNWRAP_KEY:Le/e/a/u/e;

.field public static final enum VERIFY:Le/e/a/u/e;

.field public static final enum WRAP_KEY:Le/e/a/u/e;


# instance fields
.field public final identifier:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Le/e/a/u/e;

    const/4 v1, 0x0

    const-string v2, "SIGN"

    const-string v3, "sign"

    invoke-direct {v0, v2, v1, v3}, Le/e/a/u/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le/e/a/u/e;->SIGN:Le/e/a/u/e;

    .line 2
    new-instance v0, Le/e/a/u/e;

    const/4 v2, 0x1

    const-string v3, "VERIFY"

    const-string v4, "verify"

    invoke-direct {v0, v3, v2, v4}, Le/e/a/u/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le/e/a/u/e;->VERIFY:Le/e/a/u/e;

    .line 3
    new-instance v0, Le/e/a/u/e;

    const/4 v3, 0x2

    const-string v4, "ENCRYPT"

    const-string v5, "encrypt"

    invoke-direct {v0, v4, v3, v5}, Le/e/a/u/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le/e/a/u/e;->ENCRYPT:Le/e/a/u/e;

    .line 4
    new-instance v0, Le/e/a/u/e;

    const/4 v4, 0x3

    const-string v5, "DECRYPT"

    const-string v6, "decrypt"

    invoke-direct {v0, v5, v4, v6}, Le/e/a/u/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le/e/a/u/e;->DECRYPT:Le/e/a/u/e;

    .line 5
    new-instance v0, Le/e/a/u/e;

    const/4 v5, 0x4

    const-string v6, "WRAP_KEY"

    const-string v7, "wrapKey"

    invoke-direct {v0, v6, v5, v7}, Le/e/a/u/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le/e/a/u/e;->WRAP_KEY:Le/e/a/u/e;

    .line 6
    new-instance v0, Le/e/a/u/e;

    const/4 v6, 0x5

    const-string v7, "UNWRAP_KEY"

    const-string v8, "unwrapKey"

    invoke-direct {v0, v7, v6, v8}, Le/e/a/u/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le/e/a/u/e;->UNWRAP_KEY:Le/e/a/u/e;

    .line 7
    new-instance v0, Le/e/a/u/e;

    const/4 v7, 0x6

    const-string v8, "DERIVE_KEY"

    const-string v9, "deriveKey"

    invoke-direct {v0, v8, v7, v9}, Le/e/a/u/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le/e/a/u/e;->DERIVE_KEY:Le/e/a/u/e;

    .line 8
    new-instance v0, Le/e/a/u/e;

    const/4 v8, 0x7

    const-string v9, "DERIVE_BITS"

    const-string v10, "deriveBits"

    invoke-direct {v0, v9, v8, v10}, Le/e/a/u/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le/e/a/u/e;->DERIVE_BITS:Le/e/a/u/e;

    const/16 v9, 0x8

    new-array v9, v9, [Le/e/a/u/e;

    .line 9
    sget-object v10, Le/e/a/u/e;->SIGN:Le/e/a/u/e;

    aput-object v10, v9, v1

    sget-object v1, Le/e/a/u/e;->VERIFY:Le/e/a/u/e;

    aput-object v1, v9, v2

    sget-object v1, Le/e/a/u/e;->ENCRYPT:Le/e/a/u/e;

    aput-object v1, v9, v3

    sget-object v1, Le/e/a/u/e;->DECRYPT:Le/e/a/u/e;

    aput-object v1, v9, v4

    sget-object v1, Le/e/a/u/e;->WRAP_KEY:Le/e/a/u/e;

    aput-object v1, v9, v5

    sget-object v1, Le/e/a/u/e;->UNWRAP_KEY:Le/e/a/u/e;

    aput-object v1, v9, v6

    sget-object v1, Le/e/a/u/e;->DERIVE_KEY:Le/e/a/u/e;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Le/e/a/u/e;->$VALUES:[Le/e/a/u/e;

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

    if-eqz p3, :cond_0

    .line 2
    iput-object p3, p0, Le/e/a/u/e;->identifier:Ljava/lang/String;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The key operation identifier must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static parse(Ljava/util/List;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Le/e/a/u/e;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Le/e/a/u/e;->values()[Le/e/a/u/e;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_3

    aget-object v7, v3, v6

    .line 4
    invoke-virtual {v7}, Le/e/a/u/e;->identifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move-object v7, v0

    :goto_2
    if-eqz v7, :cond_4

    .line 5
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_4
    new-instance p0, Ljava/text/ParseException;

    const-string v0, "Invalid JWK operation: "

    invoke-static {v0, v2}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_5
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Le/e/a/u/e;
    .locals 1

    .line 1
    const-class v0, Le/e/a/u/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/e/a/u/e;

    return-object p0
.end method

.method public static values()[Le/e/a/u/e;
    .locals 1

    .line 1
    sget-object v0, Le/e/a/u/e;->$VALUES:[Le/e/a/u/e;

    invoke-virtual {v0}, [Le/e/a/u/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/e/a/u/e;

    return-object v0
.end method


# virtual methods
.method public identifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/e/a/u/e;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/e/a/u/e;->identifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
