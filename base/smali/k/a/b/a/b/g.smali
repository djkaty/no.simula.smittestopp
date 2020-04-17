.class public final Lk/a/b/a/b/g;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lk/a/b/a/b/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final y:[Lk/a/b/a/b/g;


# instance fields
.field public final x:B


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x100

    new-array v1, v0, [Lk/a/b/a/b/g;

    .line 1
    sput-object v1, Lk/a/b/a/b/g;->y:[Lk/a/b/a/b/g;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    sget-object v2, Lk/a/b/a/b/g;->y:[Lk/a/b/a/b/g;

    new-instance v3, Lk/a/b/a/b/g;

    int-to-byte v4, v1

    invoke-direct {v3, v4}, Lk/a/b/a/b/g;-><init>(B)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 2
    iput-byte p1, p0, Lk/a/b/a/b/g;->x:B

    return-void
.end method

.method public static a(B)Lk/a/b/a/b/g;
    .locals 1

    and-int/lit16 p0, p0, 0xff

    .line 1
    sget-object v0, Lk/a/b/a/b/g;->y:[Lk/a/b/a/b/g;

    aget-object p0, v0, p0

    return-object p0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lk/a/b/a/b/g;->x:B

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lk/a/b/a/b/g;

    .line 2
    iget-byte v0, p0, Lk/a/b/a/b/g;->x:B

    and-int/lit16 v0, v0, 0xff

    iget-byte p1, p1, Lk/a/b/a/b/g;->x:B

    and-int/lit16 p1, p1, 0xff

    sub-int/2addr v0, p1

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result p1

    return p1
.end method

.method public doubleValue()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/b/g;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

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
    const-class v2, Lk/a/b/a/b/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lk/a/b/a/b/g;

    .line 3
    iget-byte v2, p0, Lk/a/b/a/b/g;->x:B

    iget-byte p1, p1, Lk/a/b/a/b/g;->x:B

    if-eq v2, p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public floatValue()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/b/g;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-byte v0, p0, Lk/a/b/a/b/g;->x:B

    return v0
.end method

.method public intValue()I
    .locals 1

    .line 1
    iget-byte v0, p0, Lk/a/b/a/b/g;->x:B

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public longValue()J
    .locals 4

    .line 1
    iget-byte v0, p0, Lk/a/b/a/b/g;->x:B

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    .line 1
    iget-byte v0, p0, Lk/a/b/a/b/g;->x:B

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-byte v0, p0, Lk/a/b/a/b/g;->x:B

    and-int/lit16 v0, v0, 0xff

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
