.class public final Lk/a/b/a/b/b;
.super Ljava/lang/Number;
.source "SourceFile"


# instance fields
.field public final x:Ljava/math/BigDecimal;

.field public final y:J

.field public final z:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 2
    iput-wide p1, p0, Lk/a/b/a/b/b;->y:J

    .line 3
    iput-wide p3, p0, Lk/a/b/a/b/b;->z:J

    .line 4
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 5
    iput-object p1, p0, Lk/a/b/a/b/b;->x:Ljava/math/BigDecimal;

    return-void
.end method


# virtual methods
.method public doubleValue()D
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/b/b;->x:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    const-class v2, Lk/a/b/a/b/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lk/a/b/a/b/b;

    .line 3
    iget-wide v2, p0, Lk/a/b/a/b/b;->z:J

    iget-wide v4, p1, Lk/a/b/a/b/b;->z:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 4
    :cond_2
    iget-wide v2, p0, Lk/a/b/a/b/b;->y:J

    iget-wide v4, p1, Lk/a/b/a/b/b;->y:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public floatValue()F
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/b/b;->x:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lk/a/b/a/b/b;->y:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-wide v3, p0, Lk/a/b/a/b/b;->z:J

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public intValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/b/b;->x:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/b/b;->x:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
