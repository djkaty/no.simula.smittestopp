.class public final Lk/a/b/a/b/i;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lk/a/b/a/b/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final A:Lk/a/b/a/b/i;

.field public static final y:Ljava/math/BigInteger;

.field public static final z:[Lk/a/b/a/b/i;


# instance fields
.field public final x:J


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    sput-object v0, Lk/a/b/a/b/i;->y:Ljava/math/BigInteger;

    const-wide v0, 0x7fffffffffffffffL

    .line 2
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    const/16 v0, 0x100

    new-array v1, v0, [Lk/a/b/a/b/i;

    .line 3
    sput-object v1, Lk/a/b/a/b/i;->z:[Lk/a/b/a/b/i;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    sget-object v3, Lk/a/b/a/b/i;->z:[Lk/a/b/a/b/i;

    new-instance v4, Lk/a/b/a/b/i;

    int-to-long v5, v2

    invoke-direct {v4, v5, v6}, Lk/a/b/a/b/i;-><init>(J)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lk/a/b/a/b/i;->z:[Lk/a/b/a/b/i;

    aget-object v0, v0, v1

    sput-object v0, Lk/a/b/a/b/i;->A:Lk/a/b/a/b/i;

    return-void

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 2
    iput-wide p1, p0, Lk/a/b/a/b/i;->x:J

    return-void
.end method

.method public static a(J)Lk/a/b/a/b/i;
    .locals 3

    const-wide/16 v0, 0xff

    and-long/2addr v0, p0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    .line 4
    sget-object v0, Lk/a/b/a/b/i;->z:[Lk/a/b/a/b/i;

    long-to-int p1, p0

    aget-object p0, v0, p1

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lk/a/b/a/b/i;

    invoke-direct {v0, p0, p1}, Lk/a/b/a/b/i;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/math/BigInteger;
    .locals 5

    .line 1
    iget-wide v0, p0, Lk/a/b/a/b/i;->x:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 2
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    sget-object v2, Lk/a/b/a/b/i;->y:Ljava/math/BigInteger;

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lk/a/b/a/b/i;

    .line 2
    invoke-virtual {p0}, Lk/a/b/a/b/i;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lk/a/b/a/b/i;->a()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    return p1
.end method

.method public doubleValue()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lk/a/b/a/b/i;->x:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lk/a/b/a/b/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lk/a/b/a/b/i;

    .line 3
    iget-wide v2, p0, Lk/a/b/a/b/i;->x:J

    iget-wide v4, p1, Lk/a/b/a/b/i;->x:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

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
    iget-wide v0, p0, Lk/a/b/a/b/i;->x:J

    long-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lk/a/b/a/b/i;->x:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public intValue()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lk/a/b/a/b/i;->x:J

    long-to-int v1, v0

    return v1
.end method

.method public longValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk/a/b/a/b/i;->x:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/b/i;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
