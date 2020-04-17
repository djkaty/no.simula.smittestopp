.class public final Lk/a/b/a/b/j;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lk/a/b/a/b/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final y:[Lk/a/b/a/b/j;

.field public static final z:Lk/a/b/a/b/j;


# instance fields
.field public final x:S


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x100

    new-array v1, v0, [Lk/a/b/a/b/j;

    .line 1
    sput-object v1, Lk/a/b/a/b/j;->y:[Lk/a/b/a/b/j;

    .line 2
    new-instance v1, Lk/a/b/a/b/j;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lk/a/b/a/b/j;-><init>(S)V

    sput-object v1, Lk/a/b/a/b/j;->z:Lk/a/b/a/b/j;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    sget-object v2, Lk/a/b/a/b/j;->y:[Lk/a/b/a/b/j;

    new-instance v3, Lk/a/b/a/b/j;

    invoke-direct {v3, v1}, Lk/a/b/a/b/j;-><init>(S)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(S)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 2
    iput-short p1, p0, Lk/a/b/a/b/j;->x:S

    return-void
.end method

.method public static a(S)Lk/a/b/a/b/j;
    .locals 1

    const v0, 0xff00

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    .line 1
    sget-object v0, Lk/a/b/a/b/j;->y:[Lk/a/b/a/b/j;

    aget-object p0, v0, p0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lk/a/b/a/b/j;

    invoke-direct {v0, p0}, Lk/a/b/a/b/j;-><init>(S)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lk/a/b/a/b/j;

    .line 2
    invoke-virtual {p0}, Lk/a/b/a/b/j;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lk/a/b/a/b/j;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result p1

    return p1
.end method

.method public doubleValue()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/b/j;->intValue()I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lk/a/b/a/b/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lk/a/b/a/b/j;

    .line 3
    iget-short v2, p0, Lk/a/b/a/b/j;->x:S

    iget-short p1, p1, Lk/a/b/a/b/j;->x:S

    if-eq v2, p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public floatValue()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/b/j;->intValue()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-short v0, p0, Lk/a/b/a/b/j;->x:S

    return v0
.end method

.method public intValue()I
    .locals 2

    .line 1
    iget-short v0, p0, Lk/a/b/a/b/j;->x:S

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public longValue()J
    .locals 4

    .line 1
    iget-short v0, p0, Lk/a/b/a/b/j;->x:S

    int-to-long v0, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    .line 1
    iget-short v0, p0, Lk/a/b/a/b/j;->x:S

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/b/j;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
