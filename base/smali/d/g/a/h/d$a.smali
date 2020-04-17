.class public final enum Ld/g/a/h/d$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/g/a/h/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ld/g/a/h/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Ld/g/a/h/d$a;

.field public static final enum FIXED:Ld/g/a/h/d$a;

.field public static final enum MATCH_CONSTRAINT:Ld/g/a/h/d$a;

.field public static final enum MATCH_PARENT:Ld/g/a/h/d$a;

.field public static final enum WRAP_CONTENT:Ld/g/a/h/d$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ld/g/a/h/d$a;

    const/4 v1, 0x0

    const-string v2, "FIXED"

    invoke-direct {v0, v2, v1}, Ld/g/a/h/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/g/a/h/d$a;->FIXED:Ld/g/a/h/d$a;

    new-instance v0, Ld/g/a/h/d$a;

    const/4 v2, 0x1

    const-string v3, "WRAP_CONTENT"

    invoke-direct {v0, v3, v2}, Ld/g/a/h/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/g/a/h/d$a;->WRAP_CONTENT:Ld/g/a/h/d$a;

    new-instance v0, Ld/g/a/h/d$a;

    const/4 v3, 0x2

    const-string v4, "MATCH_CONSTRAINT"

    invoke-direct {v0, v4, v3}, Ld/g/a/h/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/g/a/h/d$a;->MATCH_CONSTRAINT:Ld/g/a/h/d$a;

    new-instance v0, Ld/g/a/h/d$a;

    const/4 v4, 0x3

    const-string v5, "MATCH_PARENT"

    invoke-direct {v0, v5, v4}, Ld/g/a/h/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/g/a/h/d$a;->MATCH_PARENT:Ld/g/a/h/d$a;

    const/4 v5, 0x4

    new-array v5, v5, [Ld/g/a/h/d$a;

    .line 2
    sget-object v6, Ld/g/a/h/d$a;->FIXED:Ld/g/a/h/d$a;

    aput-object v6, v5, v1

    sget-object v1, Ld/g/a/h/d$a;->WRAP_CONTENT:Ld/g/a/h/d$a;

    aput-object v1, v5, v2

    sget-object v1, Ld/g/a/h/d$a;->MATCH_CONSTRAINT:Ld/g/a/h/d$a;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Ld/g/a/h/d$a;->$VALUES:[Ld/g/a/h/d$a;

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

.method public static valueOf(Ljava/lang/String;)Ld/g/a/h/d$a;
    .locals 1

    .line 1
    const-class v0, Ld/g/a/h/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ld/g/a/h/d$a;

    return-object p0
.end method

.method public static values()[Ld/g/a/h/d$a;
    .locals 1

    .line 1
    sget-object v0, Ld/g/a/h/d$a;->$VALUES:[Ld/g/a/h/d$a;

    invoke-virtual {v0}, [Ld/g/a/h/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld/g/a/h/d$a;

    return-object v0
.end method
