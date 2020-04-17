.class public final enum Ld/g/a/h/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/g/a/h/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ld/g/a/h/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Ld/g/a/h/c$a;

.field public static final enum RELAXED:Ld/g/a/h/c$a;

.field public static final enum STRICT:Ld/g/a/h/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ld/g/a/h/c$a;

    const/4 v1, 0x0

    const-string v2, "RELAXED"

    invoke-direct {v0, v2, v1}, Ld/g/a/h/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/g/a/h/c$a;->RELAXED:Ld/g/a/h/c$a;

    new-instance v0, Ld/g/a/h/c$a;

    const/4 v2, 0x1

    const-string v3, "STRICT"

    invoke-direct {v0, v3, v2}, Ld/g/a/h/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/g/a/h/c$a;->STRICT:Ld/g/a/h/c$a;

    const/4 v3, 0x2

    new-array v3, v3, [Ld/g/a/h/c$a;

    sget-object v4, Ld/g/a/h/c$a;->RELAXED:Ld/g/a/h/c$a;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Ld/g/a/h/c$a;->$VALUES:[Ld/g/a/h/c$a;

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

.method public static valueOf(Ljava/lang/String;)Ld/g/a/h/c$a;
    .locals 1

    .line 1
    const-class v0, Ld/g/a/h/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ld/g/a/h/c$a;

    return-object p0
.end method

.method public static values()[Ld/g/a/h/c$a;
    .locals 1

    .line 1
    sget-object v0, Ld/g/a/h/c$a;->$VALUES:[Ld/g/a/h/c$a;

    invoke-virtual {v0}, [Ld/g/a/h/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld/g/a/h/c$a;

    return-object v0
.end method
