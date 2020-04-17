.class public final enum Le/b/a/a/f$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/b/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/b/a/a/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Le/b/a/a/f$a;

.field public static final enum AUTO_CLOSE_JSON_CONTENT:Le/b/a/a/f$a;

.field public static final enum AUTO_CLOSE_TARGET:Le/b/a/a/f$a;

.field public static final enum ESCAPE_NON_ASCII:Le/b/a/a/f$a;

.field public static final enum FLUSH_PASSED_TO_STREAM:Le/b/a/a/f$a;

.field public static final enum IGNORE_UNKNOWN:Le/b/a/a/f$a;

.field public static final enum QUOTE_FIELD_NAMES:Le/b/a/a/f$a;

.field public static final enum QUOTE_NON_NUMERIC_NUMBERS:Le/b/a/a/f$a;

.field public static final enum STRICT_DUPLICATE_DETECTION:Le/b/a/a/f$a;

.field public static final enum WRITE_BIGDECIMAL_AS_PLAIN:Le/b/a/a/f$a;

.field public static final enum WRITE_NUMBERS_AS_STRINGS:Le/b/a/a/f$a;


# instance fields
.field public final _defaultState:Z

.field public final _mask:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Le/b/a/a/f$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "AUTO_CLOSE_TARGET"

    invoke-direct {v0, v3, v2, v1}, Le/b/a/a/f$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Le/b/a/a/f$a;->AUTO_CLOSE_TARGET:Le/b/a/a/f$a;

    .line 2
    new-instance v0, Le/b/a/a/f$a;

    const-string v3, "AUTO_CLOSE_JSON_CONTENT"

    invoke-direct {v0, v3, v1, v1}, Le/b/a/a/f$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Le/b/a/a/f$a;->AUTO_CLOSE_JSON_CONTENT:Le/b/a/a/f$a;

    .line 3
    new-instance v0, Le/b/a/a/f$a;

    const/4 v3, 0x2

    const-string v4, "FLUSH_PASSED_TO_STREAM"

    invoke-direct {v0, v4, v3, v1}, Le/b/a/a/f$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Le/b/a/a/f$a;->FLUSH_PASSED_TO_STREAM:Le/b/a/a/f$a;

    .line 4
    new-instance v0, Le/b/a/a/f$a;

    const/4 v4, 0x3

    const-string v5, "QUOTE_FIELD_NAMES"

    invoke-direct {v0, v5, v4, v1}, Le/b/a/a/f$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Le/b/a/a/f$a;->QUOTE_FIELD_NAMES:Le/b/a/a/f$a;

    .line 5
    new-instance v0, Le/b/a/a/f$a;

    const/4 v5, 0x4

    const-string v6, "QUOTE_NON_NUMERIC_NUMBERS"

    invoke-direct {v0, v6, v5, v1}, Le/b/a/a/f$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Le/b/a/a/f$a;->QUOTE_NON_NUMERIC_NUMBERS:Le/b/a/a/f$a;

    .line 6
    new-instance v0, Le/b/a/a/f$a;

    const/4 v6, 0x5

    const-string v7, "WRITE_NUMBERS_AS_STRINGS"

    invoke-direct {v0, v7, v6, v2}, Le/b/a/a/f$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Le/b/a/a/f$a;->WRITE_NUMBERS_AS_STRINGS:Le/b/a/a/f$a;

    .line 7
    new-instance v0, Le/b/a/a/f$a;

    const/4 v7, 0x6

    const-string v8, "WRITE_BIGDECIMAL_AS_PLAIN"

    invoke-direct {v0, v8, v7, v2}, Le/b/a/a/f$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Le/b/a/a/f$a;->WRITE_BIGDECIMAL_AS_PLAIN:Le/b/a/a/f$a;

    .line 8
    new-instance v0, Le/b/a/a/f$a;

    const/4 v8, 0x7

    const-string v9, "ESCAPE_NON_ASCII"

    invoke-direct {v0, v9, v8, v2}, Le/b/a/a/f$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Le/b/a/a/f$a;->ESCAPE_NON_ASCII:Le/b/a/a/f$a;

    .line 9
    new-instance v0, Le/b/a/a/f$a;

    const/16 v9, 0x8

    const-string v10, "STRICT_DUPLICATE_DETECTION"

    invoke-direct {v0, v10, v9, v2}, Le/b/a/a/f$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Le/b/a/a/f$a;->STRICT_DUPLICATE_DETECTION:Le/b/a/a/f$a;

    .line 10
    new-instance v0, Le/b/a/a/f$a;

    const/16 v10, 0x9

    const-string v11, "IGNORE_UNKNOWN"

    invoke-direct {v0, v11, v10, v2}, Le/b/a/a/f$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Le/b/a/a/f$a;->IGNORE_UNKNOWN:Le/b/a/a/f$a;

    const/16 v11, 0xa

    new-array v11, v11, [Le/b/a/a/f$a;

    .line 11
    sget-object v12, Le/b/a/a/f$a;->AUTO_CLOSE_TARGET:Le/b/a/a/f$a;

    aput-object v12, v11, v2

    sget-object v2, Le/b/a/a/f$a;->AUTO_CLOSE_JSON_CONTENT:Le/b/a/a/f$a;

    aput-object v2, v11, v1

    sget-object v1, Le/b/a/a/f$a;->FLUSH_PASSED_TO_STREAM:Le/b/a/a/f$a;

    aput-object v1, v11, v3

    sget-object v1, Le/b/a/a/f$a;->QUOTE_FIELD_NAMES:Le/b/a/a/f$a;

    aput-object v1, v11, v4

    sget-object v1, Le/b/a/a/f$a;->QUOTE_NON_NUMERIC_NUMBERS:Le/b/a/a/f$a;

    aput-object v1, v11, v5

    sget-object v1, Le/b/a/a/f$a;->WRITE_NUMBERS_AS_STRINGS:Le/b/a/a/f$a;

    aput-object v1, v11, v6

    sget-object v1, Le/b/a/a/f$a;->WRITE_BIGDECIMAL_AS_PLAIN:Le/b/a/a/f$a;

    aput-object v1, v11, v7

    sget-object v1, Le/b/a/a/f$a;->ESCAPE_NON_ASCII:Le/b/a/a/f$a;

    aput-object v1, v11, v8

    sget-object v1, Le/b/a/a/f$a;->STRICT_DUPLICATE_DETECTION:Le/b/a/a/f$a;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Le/b/a/a/f$a;->$VALUES:[Le/b/a/a/f$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Le/b/a/a/f$a;->_defaultState:Z

    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    shl-int p1, p2, p1

    iput p1, p0, Le/b/a/a/f$a;->_mask:I

    return-void
.end method

.method public static collectDefaults()I
    .locals 6

    .line 1
    invoke-static {}, Le/b/a/a/f$a;->values()[Le/b/a/a/f$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 2
    invoke-virtual {v4}, Le/b/a/a/f$a;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3
    invoke-virtual {v4}, Le/b/a/a/f$a;->getMask()I

    move-result v4

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Le/b/a/a/f$a;
    .locals 1

    .line 1
    const-class v0, Le/b/a/a/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/b/a/a/f$a;

    return-object p0
.end method

.method public static values()[Le/b/a/a/f$a;
    .locals 1

    .line 1
    sget-object v0, Le/b/a/a/f$a;->$VALUES:[Le/b/a/a/f$a;

    invoke-virtual {v0}, [Le/b/a/a/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/b/a/a/f$a;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/b/a/a/f$a;->_defaultState:Z

    return v0
.end method

.method public enabledIn(I)Z
    .locals 1

    .line 1
    iget v0, p0, Le/b/a/a/f$a;->_mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getMask()I
    .locals 1

    .line 1
    iget v0, p0, Le/b/a/a/f$a;->_mask:I

    return v0
.end method
