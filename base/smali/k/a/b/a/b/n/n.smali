.class public final enum Lk/a/b/a/b/n/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk/a/b/a/b/n/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lk/a/b/a/b/n/n;

.field public static final enum FIRST:Lk/a/b/a/b/n/n;

.field public static final enum SECOND:Lk/a/b/a/b/n/n;


# instance fields
.field public value:Lk/a/b/a/b/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lk/a/b/a/b/n/n;

    const/4 v1, 0x0

    const-string v2, "FIRST"

    invoke-direct {v0, v2, v1, v1}, Lk/a/b/a/b/n/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lk/a/b/a/b/n/n;->FIRST:Lk/a/b/a/b/n/n;

    .line 2
    new-instance v0, Lk/a/b/a/b/n/n;

    const/4 v2, 0x1

    const-string v3, "SECOND"

    invoke-direct {v0, v3, v2, v2}, Lk/a/b/a/b/n/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lk/a/b/a/b/n/n;->SECOND:Lk/a/b/a/b/n/n;

    const/4 v3, 0x2

    new-array v3, v3, [Lk/a/b/a/b/n/n;

    .line 3
    sget-object v4, Lk/a/b/a/b/n/n;->FIRST:Lk/a/b/a/b/n/n;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lk/a/b/a/b/n/n;->$VALUES:[Lk/a/b/a/b/n/n;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-byte p1, p3

    .line 2
    invoke-static {p1}, Lk/a/b/a/b/g;->a(B)Lk/a/b/a/b/g;

    move-result-object p1

    iput-object p1, p0, Lk/a/b/a/b/n/n;->value:Lk/a/b/a/b/g;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lk/a/b/a/b/n/n;
    .locals 1

    .line 1
    const-class v0, Lk/a/b/a/b/n/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk/a/b/a/b/n/n;

    return-object p0
.end method

.method public static valueOf(Lk/a/b/a/b/g;)Lk/a/b/a/b/n/n;
    .locals 1

    .line 2
    iget-byte p0, p0, Lk/a/b/a/b/g;->x:B

    and-int/lit16 p0, p0, 0xff

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 3
    sget-object p0, Lk/a/b/a/b/n/n;->SECOND:Lk/a/b/a/b/n/n;

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The value can be only 0 (for FIRST) and 1 (for SECOND)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    sget-object p0, Lk/a/b/a/b/n/n;->FIRST:Lk/a/b/a/b/n/n;

    return-object p0
.end method

.method public static values()[Lk/a/b/a/b/n/n;
    .locals 1

    .line 1
    sget-object v0, Lk/a/b/a/b/n/n;->$VALUES:[Lk/a/b/a/b/n/n;

    invoke-virtual {v0}, [Lk/a/b/a/b/n/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/a/b/a/b/n/n;

    return-object v0
.end method


# virtual methods
.method public getValue()Lk/a/b/a/b/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/b/n/n;->value:Lk/a/b/a/b/g;

    return-object v0
.end method
