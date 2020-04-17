.class public final enum Le/e/a/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/e/a/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Le/e/a/r;

.field public static final enum OPTIONAL:Le/e/a/r;

.field public static final enum RECOMMENDED:Le/e/a/r;

.field public static final enum REQUIRED:Le/e/a/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Le/e/a/r;

    const/4 v1, 0x0

    const-string v2, "REQUIRED"

    invoke-direct {v0, v2, v1}, Le/e/a/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/e/a/r;->REQUIRED:Le/e/a/r;

    .line 2
    new-instance v0, Le/e/a/r;

    const/4 v2, 0x1

    const-string v3, "RECOMMENDED"

    invoke-direct {v0, v3, v2}, Le/e/a/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/e/a/r;->RECOMMENDED:Le/e/a/r;

    .line 3
    new-instance v0, Le/e/a/r;

    const/4 v3, 0x2

    const-string v4, "OPTIONAL"

    invoke-direct {v0, v4, v3}, Le/e/a/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const/4 v4, 0x3

    new-array v4, v4, [Le/e/a/r;

    .line 4
    sget-object v5, Le/e/a/r;->REQUIRED:Le/e/a/r;

    aput-object v5, v4, v1

    sget-object v1, Le/e/a/r;->RECOMMENDED:Le/e/a/r;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Le/e/a/r;->$VALUES:[Le/e/a/r;

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

.method public static valueOf(Ljava/lang/String;)Le/e/a/r;
    .locals 1

    .line 1
    const-class v0, Le/e/a/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/e/a/r;

    return-object p0
.end method

.method public static values()[Le/e/a/r;
    .locals 1

    .line 1
    sget-object v0, Le/e/a/r;->$VALUES:[Le/e/a/r;

    invoke-virtual {v0}, [Le/e/a/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/e/a/r;

    return-object v0
.end method
