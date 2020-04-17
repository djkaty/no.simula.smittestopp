.class public abstract enum Le/c/c/c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Le/c/c/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/c/c/c;",
        ">;",
        "Le/c/c/d;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Le/c/c/c;

.field public static final enum IDENTITY:Le/c/c/c;

.field public static final enum LOWER_CASE_WITH_DASHES:Le/c/c/c;

.field public static final enum LOWER_CASE_WITH_DOTS:Le/c/c/c;

.field public static final enum LOWER_CASE_WITH_UNDERSCORES:Le/c/c/c;

.field public static final enum UPPER_CAMEL_CASE:Le/c/c/c;

.field public static final enum UPPER_CAMEL_CASE_WITH_SPACES:Le/c/c/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Le/c/c/c$a;

    const/4 v1, 0x0

    const-string v2, "IDENTITY"

    invoke-direct {v0, v2, v1}, Le/c/c/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/c/c/c;->IDENTITY:Le/c/c/c;

    .line 2
    new-instance v0, Le/c/c/c$b;

    const/4 v2, 0x1

    const-string v3, "UPPER_CAMEL_CASE"

    invoke-direct {v0, v3, v2}, Le/c/c/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/c/c/c;->UPPER_CAMEL_CASE:Le/c/c/c;

    .line 3
    new-instance v0, Le/c/c/c$c;

    const/4 v3, 0x2

    const-string v4, "UPPER_CAMEL_CASE_WITH_SPACES"

    invoke-direct {v0, v4, v3}, Le/c/c/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/c/c/c;->UPPER_CAMEL_CASE_WITH_SPACES:Le/c/c/c;

    .line 4
    new-instance v0, Le/c/c/c$d;

    const/4 v4, 0x3

    const-string v5, "LOWER_CASE_WITH_UNDERSCORES"

    invoke-direct {v0, v5, v4}, Le/c/c/c$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/c/c/c;->LOWER_CASE_WITH_UNDERSCORES:Le/c/c/c;

    .line 5
    new-instance v0, Le/c/c/c$e;

    const/4 v5, 0x4

    const-string v6, "LOWER_CASE_WITH_DASHES"

    invoke-direct {v0, v6, v5}, Le/c/c/c$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/c/c/c;->LOWER_CASE_WITH_DASHES:Le/c/c/c;

    .line 6
    new-instance v0, Le/c/c/c$f;

    const/4 v6, 0x5

    const-string v7, "LOWER_CASE_WITH_DOTS"

    invoke-direct {v0, v7, v6}, Le/c/c/c$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/c/c/c;->LOWER_CASE_WITH_DOTS:Le/c/c/c;

    const/4 v7, 0x6

    new-array v7, v7, [Le/c/c/c;

    .line 7
    sget-object v8, Le/c/c/c;->IDENTITY:Le/c/c/c;

    aput-object v8, v7, v1

    sget-object v1, Le/c/c/c;->UPPER_CAMEL_CASE:Le/c/c/c;

    aput-object v1, v7, v2

    sget-object v1, Le/c/c/c;->UPPER_CAMEL_CASE_WITH_SPACES:Le/c/c/c;

    aput-object v1, v7, v3

    sget-object v1, Le/c/c/c;->LOWER_CASE_WITH_UNDERSCORES:Le/c/c/c;

    aput-object v1, v7, v4

    sget-object v1, Le/c/c/c;->LOWER_CASE_WITH_DASHES:Le/c/c/c;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Le/c/c/c;->$VALUES:[Le/c/c/c;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILe/c/c/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Le/c/c/c;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static modifyString(CLjava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static separateCamelCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 4
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-ge v1, v4, :cond_1

    .line 4
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 8
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, p0, v1}, Le/c/c/c;->modifyString(CLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Le/c/c/c;
    .locals 1

    .line 1
    const-class v0, Le/c/c/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/c/c/c;

    return-object p0
.end method

.method public static values()[Le/c/c/c;
    .locals 1

    .line 1
    sget-object v0, Le/c/c/c;->$VALUES:[Le/c/c/c;

    invoke-virtual {v0}, [Le/c/c/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/c/c/c;

    return-object v0
.end method
