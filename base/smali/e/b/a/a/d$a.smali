.class public final enum Le/b/a/a/d$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/b/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/b/a/a/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Le/b/a/a/d$a;

.field public static final enum CANONICALIZE_FIELD_NAMES:Le/b/a/a/d$a;

.field public static final enum FAIL_ON_SYMBOL_HASH_OVERFLOW:Le/b/a/a/d$a;

.field public static final enum INTERN_FIELD_NAMES:Le/b/a/a/d$a;

.field public static final enum USE_THREAD_LOCAL_FOR_BUFFER_RECYCLING:Le/b/a/a/d$a;


# instance fields
.field public final _defaultState:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Le/b/a/a/d$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "INTERN_FIELD_NAMES"

    invoke-direct {v0, v3, v1, v2}, Le/b/a/a/d$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Le/b/a/a/d$a;->INTERN_FIELD_NAMES:Le/b/a/a/d$a;

    .line 2
    new-instance v0, Le/b/a/a/d$a;

    const-string v3, "CANONICALIZE_FIELD_NAMES"

    invoke-direct {v0, v3, v2, v2}, Le/b/a/a/d$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Le/b/a/a/d$a;->CANONICALIZE_FIELD_NAMES:Le/b/a/a/d$a;

    .line 3
    new-instance v0, Le/b/a/a/d$a;

    const/4 v3, 0x2

    const-string v4, "FAIL_ON_SYMBOL_HASH_OVERFLOW"

    invoke-direct {v0, v4, v3, v2}, Le/b/a/a/d$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Le/b/a/a/d$a;->FAIL_ON_SYMBOL_HASH_OVERFLOW:Le/b/a/a/d$a;

    .line 4
    new-instance v0, Le/b/a/a/d$a;

    const/4 v4, 0x3

    const-string v5, "USE_THREAD_LOCAL_FOR_BUFFER_RECYCLING"

    invoke-direct {v0, v5, v4, v2}, Le/b/a/a/d$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Le/b/a/a/d$a;->USE_THREAD_LOCAL_FOR_BUFFER_RECYCLING:Le/b/a/a/d$a;

    const/4 v5, 0x4

    new-array v5, v5, [Le/b/a/a/d$a;

    .line 5
    sget-object v6, Le/b/a/a/d$a;->INTERN_FIELD_NAMES:Le/b/a/a/d$a;

    aput-object v6, v5, v1

    sget-object v1, Le/b/a/a/d$a;->CANONICALIZE_FIELD_NAMES:Le/b/a/a/d$a;

    aput-object v1, v5, v2

    sget-object v1, Le/b/a/a/d$a;->FAIL_ON_SYMBOL_HASH_OVERFLOW:Le/b/a/a/d$a;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Le/b/a/a/d$a;->$VALUES:[Le/b/a/a/d$a;

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

    iput-boolean p3, p0, Le/b/a/a/d$a;->_defaultState:Z

    return-void
.end method

.method public static collectDefaults()I
    .locals 6

    .line 1
    invoke-static {}, Le/b/a/a/d$a;->values()[Le/b/a/a/d$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 2
    invoke-virtual {v4}, Le/b/a/a/d$a;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Le/b/a/a/d$a;->getMask()I

    move-result v4

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Le/b/a/a/d$a;
    .locals 1

    .line 1
    const-class v0, Le/b/a/a/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/b/a/a/d$a;

    return-object p0
.end method

.method public static values()[Le/b/a/a/d$a;
    .locals 1

    .line 1
    sget-object v0, Le/b/a/a/d$a;->$VALUES:[Le/b/a/a/d$a;

    invoke-virtual {v0}, [Le/b/a/a/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/b/a/a/d$a;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/b/a/a/d$a;->_defaultState:Z

    return v0
.end method

.method public enabledIn(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/b/a/a/d$a;->getMask()I

    move-result v0

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
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method
