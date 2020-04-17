.class public final enum Lk/a/a/b/d/a/h$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/a/b/d/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk/a/a/b/d/a/h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lk/a/a/b/d/a/h$a;

.field public static final enum errorIfNoSemiColon:Lk/a/a/b/d/a/h$a;

.field public static final enum semiColonOptional:Lk/a/a/b/d/a/h$a;

.field public static final enum semiColonRequired:Lk/a/a/b/d/a/h$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lk/a/a/b/d/a/h$a;

    const/4 v1, 0x0

    const-string v2, "semiColonRequired"

    invoke-direct {v0, v2, v1}, Lk/a/a/b/d/a/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/a/b/d/a/h$a;->semiColonRequired:Lk/a/a/b/d/a/h$a;

    new-instance v0, Lk/a/a/b/d/a/h$a;

    const/4 v2, 0x1

    const-string v3, "semiColonOptional"

    invoke-direct {v0, v3, v2}, Lk/a/a/b/d/a/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/a/b/d/a/h$a;->semiColonOptional:Lk/a/a/b/d/a/h$a;

    new-instance v0, Lk/a/a/b/d/a/h$a;

    const/4 v3, 0x2

    const-string v4, "errorIfNoSemiColon"

    invoke-direct {v0, v4, v3}, Lk/a/a/b/d/a/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/a/b/d/a/h$a;->errorIfNoSemiColon:Lk/a/a/b/d/a/h$a;

    const/4 v4, 0x3

    new-array v4, v4, [Lk/a/a/b/d/a/h$a;

    sget-object v5, Lk/a/a/b/d/a/h$a;->semiColonRequired:Lk/a/a/b/d/a/h$a;

    aput-object v5, v4, v1

    sget-object v1, Lk/a/a/b/d/a/h$a;->semiColonOptional:Lk/a/a/b/d/a/h$a;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lk/a/a/b/d/a/h$a;->$VALUES:[Lk/a/a/b/d/a/h$a;

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

.method public static valueOf(Ljava/lang/String;)Lk/a/a/b/d/a/h$a;
    .locals 1

    .line 1
    const-class v0, Lk/a/a/b/d/a/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk/a/a/b/d/a/h$a;

    return-object p0
.end method

.method public static values()[Lk/a/a/b/d/a/h$a;
    .locals 1

    .line 1
    sget-object v0, Lk/a/a/b/d/a/h$a;->$VALUES:[Lk/a/a/b/d/a/h$a;

    invoke-virtual {v0}, [Lk/a/a/b/d/a/h$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/a/a/b/d/a/h$a;

    return-object v0
.end method
