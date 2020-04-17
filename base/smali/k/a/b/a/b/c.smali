.class public final Lk/a/b/a/b/c;
.super Ljava/lang/Number;
.source "SourceFile"


# instance fields
.field public final x:Ljava/math/BigDecimal;

.field public final y:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 2
    iput p1, p0, Lk/a/b/a/b/c;->y:I

    .line 3
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 4
    iput-object p1, p0, Lk/a/b/a/b/c;->x:Ljava/math/BigDecimal;

    return-void
.end method


# virtual methods
.method public doubleValue()D
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/b/c;->x:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

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
    const-class v2, Lk/a/b/a/b/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lk/a/b/a/b/c;

    .line 3
    iget v2, p0, Lk/a/b/a/b/c;->y:I

    iget p1, p1, Lk/a/b/a/b/c;->y:I

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
    iget-object v0, p0, Lk/a/b/a/b/c;->x:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lk/a/b/a/b/c;->y:I

    return v0
.end method

.method public intValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/b/c;->x:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/b/c;->x:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
