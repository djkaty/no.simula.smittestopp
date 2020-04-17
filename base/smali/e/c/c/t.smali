.class public abstract enum Le/c/c/t;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/c/c/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Le/c/c/t;

.field public static final enum DEFAULT:Le/c/c/t;

.field public static final enum STRING:Le/c/c/t;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Le/c/c/t$a;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1}, Le/c/c/t$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/c/c/t;->DEFAULT:Le/c/c/t;

    .line 2
    new-instance v0, Le/c/c/t$b;

    const/4 v2, 0x1

    const-string v3, "STRING"

    invoke-direct {v0, v3, v2}, Le/c/c/t$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/c/c/t;->STRING:Le/c/c/t;

    const/4 v3, 0x2

    new-array v3, v3, [Le/c/c/t;

    .line 3
    sget-object v4, Le/c/c/t;->DEFAULT:Le/c/c/t;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Le/c/c/t;->$VALUES:[Le/c/c/t;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILe/c/c/t$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Le/c/c/t;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/c/c/t;
    .locals 1

    .line 1
    const-class v0, Le/c/c/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/c/c/t;

    return-object p0
.end method

.method public static values()[Le/c/c/t;
    .locals 1

    .line 1
    sget-object v0, Le/c/c/t;->$VALUES:[Le/c/c/t;

    invoke-virtual {v0}, [Le/c/c/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/c/c/t;

    return-object v0
.end method


# virtual methods
.method public abstract serialize(Ljava/lang/Long;)Le/c/c/j;
.end method
