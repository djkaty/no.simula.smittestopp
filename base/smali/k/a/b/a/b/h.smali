.class public final Lk/a/b/a/b/h;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lk/a/b/a/b/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final A:Lk/a/b/a/b/h;

.field public static final B:Lk/a/b/a/b/h;

.field public static final y:[Lk/a/b/a/b/h;

.field public static final z:Lk/a/b/a/b/h;


# instance fields
.field public final x:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x100

    new-array v1, v0, [Lk/a/b/a/b/h;

    .line 1
    sput-object v1, Lk/a/b/a/b/h;->y:[Lk/a/b/a/b/h;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    sget-object v3, Lk/a/b/a/b/h;->y:[Lk/a/b/a/b/h;

    new-instance v4, Lk/a/b/a/b/h;

    invoke-direct {v4, v2}, Lk/a/b/a/b/h;-><init>(I)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lk/a/b/a/b/h;->y:[Lk/a/b/a/b/h;

    aget-object v1, v0, v1

    sput-object v1, Lk/a/b/a/b/h;->z:Lk/a/b/a/b/h;

    const/4 v1, 0x1

    .line 4
    aget-object v0, v0, v1

    sput-object v0, Lk/a/b/a/b/h;->A:Lk/a/b/a/b/h;

    .line 5
    new-instance v0, Lk/a/b/a/b/h;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lk/a/b/a/b/h;-><init>(I)V

    sput-object v0, Lk/a/b/a/b/h;->B:Lk/a/b/a/b/h;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 2
    iput p1, p0, Lk/a/b/a/b/h;->x:I

    return-void
.end method

.method public static a(I)Lk/a/b/a/b/h;
    .locals 1

    and-int/lit16 v0, p0, -0x100

    if-nez v0, :cond_0

    .line 1
    sget-object v0, Lk/a/b/a/b/h;->y:[Lk/a/b/a/b/h;

    aget-object p0, v0, p0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lk/a/b/a/b/h;

    invoke-direct {v0, p0}, Lk/a/b/a/b/h;-><init>(I)V

    return-object v0
.end method

.method public static a(J)Lk/a/b/a/b/h;
    .locals 7

    const-wide v0, 0x100000000L

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-ltz v4, :cond_0

    cmp-long v4, p0, v0

    if-gez v4, :cond_0

    long-to-int p1, p0

    .line 5
    invoke-static {p1}, Lk/a/b/a/b/h;->a(I)Lk/a/b/a/b/h;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "\" lies outside the range ["

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;
    .locals 1

    .line 3
    iget v0, p0, Lk/a/b/a/b/h;->x:I

    iget p1, p1, Lk/a/b/a/b/h;->x:I

    add-int/2addr v0, p1

    .line 4
    invoke-static {v0}, Lk/a/b/a/b/h;->a(I)Lk/a/b/a/b/h;

    move-result-object p1

    return-object p1
.end method

.method public b(Lk/a/b/a/b/h;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/b/h;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lk/a/b/a/b/h;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result p1

    return p1
.end method

.method public c(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;
    .locals 1

    .line 1
    iget v0, p0, Lk/a/b/a/b/h;->x:I

    iget p1, p1, Lk/a/b/a/b/h;->x:I

    sub-int/2addr v0, p1

    .line 2
    invoke-static {v0}, Lk/a/b/a/b/h;->a(I)Lk/a/b/a/b/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lk/a/b/a/b/h;

    invoke-virtual {p0, p1}, Lk/a/b/a/b/h;->b(Lk/a/b/a/b/h;)I

    move-result p1

    return p1
.end method

.method public doubleValue()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/b/h;->longValue()J

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
    const-class v2, Lk/a/b/a/b/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lk/a/b/a/b/h;

    .line 3
    iget v2, p0, Lk/a/b/a/b/h;->x:I

    iget p1, p1, Lk/a/b/a/b/h;->x:I

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
    invoke-virtual {p0}, Lk/a/b/a/b/h;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lk/a/b/a/b/h;->x:I

    return v0
.end method

.method public intValue()I
    .locals 1

    .line 1
    iget v0, p0, Lk/a/b/a/b/h;->x:I

    return v0
.end method

.method public longValue()J
    .locals 4

    .line 1
    iget v0, p0, Lk/a/b/a/b/h;->x:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/b/h;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
