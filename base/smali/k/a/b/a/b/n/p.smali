.class public final enum Lk/a/b/a/b/n/p;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk/a/b/a/b/n/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lk/a/b/a/b/n/p;

.field public static final enum MIXED:Lk/a/b/a/b/n/p;

.field public static final enum SETTLED:Lk/a/b/a/b/n/p;

.field public static final enum UNSETTLED:Lk/a/b/a/b/n/p;


# instance fields
.field public value:Lk/a/b/a/b/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lk/a/b/a/b/n/p;

    const/4 v1, 0x0

    const-string v2, "UNSETTLED"

    invoke-direct {v0, v2, v1, v1}, Lk/a/b/a/b/n/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lk/a/b/a/b/n/p;->UNSETTLED:Lk/a/b/a/b/n/p;

    .line 2
    new-instance v0, Lk/a/b/a/b/n/p;

    const/4 v2, 0x1

    const-string v3, "SETTLED"

    invoke-direct {v0, v3, v2, v2}, Lk/a/b/a/b/n/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lk/a/b/a/b/n/p;->SETTLED:Lk/a/b/a/b/n/p;

    .line 3
    new-instance v0, Lk/a/b/a/b/n/p;

    const/4 v3, 0x2

    const-string v4, "MIXED"

    invoke-direct {v0, v4, v3, v3}, Lk/a/b/a/b/n/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lk/a/b/a/b/n/p;->MIXED:Lk/a/b/a/b/n/p;

    const/4 v4, 0x3

    new-array v4, v4, [Lk/a/b/a/b/n/p;

    .line 4
    sget-object v5, Lk/a/b/a/b/n/p;->UNSETTLED:Lk/a/b/a/b/n/p;

    aput-object v5, v4, v1

    sget-object v1, Lk/a/b/a/b/n/p;->SETTLED:Lk/a/b/a/b/n/p;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lk/a/b/a/b/n/p;->$VALUES:[Lk/a/b/a/b/n/p;

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

    iput-object p1, p0, Lk/a/b/a/b/n/p;->value:Lk/a/b/a/b/g;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lk/a/b/a/b/n/p;
    .locals 1

    .line 1
    const-class v0, Lk/a/b/a/b/n/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk/a/b/a/b/n/p;

    return-object p0
.end method

.method public static valueOf(Lk/a/b/a/b/g;)Lk/a/b/a/b/n/p;
    .locals 1

    .line 2
    iget-byte p0, p0, Lk/a/b/a/b/g;->x:B

    and-int/lit16 p0, p0, 0xff

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 3
    sget-object p0, Lk/a/b/a/b/n/p;->MIXED:Lk/a/b/a/b/n/p;

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The value can be only 0 (for UNSETTLED), 1 (for SETTLED) and 2 (for MIXED)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    sget-object p0, Lk/a/b/a/b/n/p;->SETTLED:Lk/a/b/a/b/n/p;

    return-object p0

    .line 6
    :cond_2
    sget-object p0, Lk/a/b/a/b/n/p;->UNSETTLED:Lk/a/b/a/b/n/p;

    return-object p0
.end method

.method public static values()[Lk/a/b/a/b/n/p;
    .locals 1

    .line 1
    sget-object v0, Lk/a/b/a/b/n/p;->$VALUES:[Lk/a/b/a/b/n/p;

    invoke-virtual {v0}, [Lk/a/b/a/b/n/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/a/b/a/b/n/p;

    return-object v0
.end method


# virtual methods
.method public getValue()Lk/a/b/a/b/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/b/n/p;->value:Lk/a/b/a/b/g;

    return-object v0
.end method
