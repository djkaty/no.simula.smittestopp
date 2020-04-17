.class public abstract Lk/b/f/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/b/f/a/d$a;,
        Lk/b/f/a/d$b;,
        Lk/b/f/a/d$c;,
        Lk/b/f/a/d$d;
    }
.end annotation


# static fields
.field public static final e:[Lk/b/f/a/c;


# instance fields
.field public a:Lk/b/f/a/b;

.field public b:Lk/b/f/a/c;

.field public c:Lk/b/f/a/c;

.field public d:[Lk/b/f/a/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lk/b/f/a/c;

    sput-object v0, Lk/b/f/a/d;->e:[Lk/b/f/a/c;

    return-void
.end method

.method public constructor <init>(Lk/b/f/a/b;Lk/b/f/a/c;Lk/b/f/a/c;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget v1, p1, Lk/b/f/a/b;->d:I

    :goto_0
    if-eqz v1, :cond_5

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    .line 2
    sget-object v2, Lk/b/f/a/a;->b:Ljava/math/BigInteger;

    invoke-virtual {p1, v2}, Lk/b/f/a/b;->a(Ljava/math/BigInteger;)Lk/b/f/a/c;

    move-result-object v2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    const/4 v5, 0x4

    if-eq v1, v5, :cond_2

    const/4 v4, 0x6

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown coordinate system"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-array v1, v4, [Lk/b/f/a/c;

    aput-object v2, v1, v0

    .line 3
    iget-object v0, p1, Lk/b/f/a/b;->b:Lk/b/f/a/c;

    aput-object v0, v1, v3

    goto :goto_2

    :cond_3
    new-array v1, v5, [Lk/b/f/a/c;

    aput-object v2, v1, v0

    aput-object v2, v1, v3

    aput-object v2, v1, v4

    goto :goto_2

    :cond_4
    :goto_1
    new-array v1, v3, [Lk/b/f/a/c;

    aput-object v2, v1, v0

    goto :goto_2

    .line 4
    :cond_5
    sget-object v1, Lk/b/f/a/d;->e:[Lk/b/f/a/c;

    .line 5
    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/b/f/a/d;->a:Lk/b/f/a/b;

    iput-object p2, p0, Lk/b/f/a/d;->b:Lk/b/f/a/c;

    iput-object p3, p0, Lk/b/f/a/d;->c:Lk/b/f/a/c;

    iput-object v1, p0, Lk/b/f/a/d;->d:[Lk/b/f/a/c;

    return-void
.end method

.method public constructor <init>(Lk/b/f/a/b;Lk/b/f/a/c;Lk/b/f/a/c;[Lk/b/f/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/b/f/a/d;->a:Lk/b/f/a/b;

    iput-object p2, p0, Lk/b/f/a/d;->b:Lk/b/f/a/c;

    iput-object p3, p0, Lk/b/f/a/d;->c:Lk/b/f/a/c;

    iput-object p4, p0, Lk/b/f/a/d;->d:[Lk/b/f/a/c;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lk/b/f/a/d;->a:Lk/b/f/a/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget v0, v0, Lk/b/f/a/b;->d:I

    :goto_0
    return v0
.end method

.method public a(I)Lk/b/f/a/c;
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lk/b/f/a/d;->d:[Lk/b/f/a/c;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public a(Lk/b/f/a/c;)Lk/b/f/a/d;
    .locals 3

    invoke-virtual {p0}, Lk/b/f/a/d;->a()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not a projective coordinate system"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lk/b/f/a/c;->g()Lk/b/f/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk/b/f/a/c;->c(Lk/b/f/a/c;)Lk/b/f/a/c;

    move-result-object p1

    .line 2
    iget-object v1, p0, Lk/b/f/a/d;->a:Lk/b/f/a/b;

    .line 3
    iget-object v2, p0, Lk/b/f/a/d;->b:Lk/b/f/a/c;

    .line 4
    invoke-virtual {v2, v0}, Lk/b/f/a/c;->c(Lk/b/f/a/c;)Lk/b/f/a/c;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lk/b/f/a/d;->c:Lk/b/f/a/c;

    .line 6
    invoke-virtual {v2, p1}, Lk/b/f/a/c;->c(Lk/b/f/a/c;)Lk/b/f/a/c;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lk/b/f/a/b;->a(Lk/b/f/a/c;Lk/b/f/a/c;)Lk/b/f/a/d;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lk/b/f/a/d;->a:Lk/b/f/a/b;

    .line 8
    iget-object v1, p0, Lk/b/f/a/d;->b:Lk/b/f/a/c;

    .line 9
    invoke-virtual {v1, p1}, Lk/b/f/a/c;->c(Lk/b/f/a/c;)Lk/b/f/a/c;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lk/b/f/a/d;->c:Lk/b/f/a/c;

    .line 11
    invoke-virtual {v2, p1}, Lk/b/f/a/c;->c(Lk/b/f/a/c;)Lk/b/f/a/c;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lk/b/f/a/b;->a(Lk/b/f/a/c;Lk/b/f/a/c;)Lk/b/f/a/d;

    move-result-object p1

    return-object p1
.end method

.method public b()Lk/b/f/a/c;
    .locals 1

    iget-object v0, p0, Lk/b/f/a/d;->c:Lk/b/f/a/c;

    return-object v0
.end method

.method public c()Z
    .locals 3

    iget-object v0, p0, Lk/b/f/a/d;->b:Lk/b/f/a/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk/b/f/a/d;->c:Lk/b/f/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk/b/f/a/d;->d:[Lk/b/f/a/c;

    array-length v2, v0

    if-lez v2, :cond_1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lk/b/f/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public d()Lk/b/f/a/d;
    .locals 2

    invoke-virtual {p0}, Lk/b/f/a/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lk/b/f/a/d;->a()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lk/b/f/a/d;->a(I)Lk/b/f/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/f/a/c;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lk/b/f/a/c;->c()Lk/b/f/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk/b/f/a/d;->a(Lk/b/f/a/c;)Lk/b/f/a/d;

    move-result-object v0

    return-object v0

    :cond_2
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lk/b/f/a/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lk/b/f/a/d;

    if-nez p1, :cond_2

    goto/16 :goto_f

    .line 1
    :cond_2
    iget-object v1, p0, Lk/b/f/a/d;->a:Lk/b/f/a/b;

    iget-object v3, p1, Lk/b/f/a/d;->a:Lk/b/f/a/b;

    if-nez v1, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-nez v3, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    .line 2
    :goto_1
    invoke-virtual {p0}, Lk/b/f/a/d;->c()Z

    move-result v6

    invoke-virtual {p1}, Lk/b/f/a/d;->c()Z

    move-result v7

    if-nez v6, :cond_15

    if-eqz v7, :cond_5

    goto/16 :goto_d

    :cond_5
    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {p1}, Lk/b/f/a/d;->d()Lk/b/f/a/d;

    move-result-object p1

    :goto_2
    move-object v1, p0

    goto/16 :goto_c

    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lk/b/f/a/d;->d()Lk/b/f/a/d;

    move-result-object v1

    goto/16 :goto_c

    :cond_8
    invoke-virtual {v1, v3}, Lk/b/f/a/b;->a(Lk/b/f/a/b;)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_f

    :cond_9
    const/4 v3, 0x2

    new-array v4, v3, [Lk/b/f/a/d;

    aput-object p0, v4, v2

    invoke-virtual {v1, p1}, Lk/b/f/a/b;->a(Lk/b/f/a/d;)Lk/b/f/a/d;

    move-result-object p1

    aput-object p1, v4, v0

    const/4 p1, 0x0

    :goto_3
    if-ge p1, v3, :cond_c

    add-int v5, v2, p1

    .line 3
    aget-object v5, v4, v5

    if-eqz v5, :cond_b

    .line 4
    iget-object v5, v5, Lk/b/f/a/d;->a:Lk/b/f/a/b;

    if-ne v1, v5, :cond_a

    goto :goto_4

    .line 5
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'points\' entries must be null or on this curve"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 6
    :cond_c
    iget p1, v1, Lk/b/f/a/b;->d:I

    if-eqz p1, :cond_14

    const/4 v1, 0x5

    if-eq p1, v1, :cond_14

    new-array p1, v3, [Lk/b/f/a/c;

    new-array v5, v3, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_5
    if-ge v6, v3, :cond_10

    add-int v8, v2, v6

    .line 7
    aget-object v9, v4, v8

    if-eqz v9, :cond_f

    .line 8
    invoke-virtual {v9}, Lk/b/f/a/d;->a()I

    move-result v10

    if-eqz v10, :cond_e

    if-eq v10, v1, :cond_e

    invoke-virtual {v9}, Lk/b/f/a/d;->c()Z

    move-result v10

    if-nez v10, :cond_e

    iget-object v10, v9, Lk/b/f/a/d;->d:[Lk/b/f/a/c;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Lk/b/f/a/c;->d()Z

    move-result v10

    if-eqz v10, :cond_d

    goto :goto_6

    :cond_d
    const/4 v10, 0x0

    goto :goto_7

    :cond_e
    :goto_6
    const/4 v10, 0x1

    :goto_7
    if-nez v10, :cond_f

    .line 9
    invoke-virtual {v9, v2}, Lk/b/f/a/d;->a(I)Lk/b/f/a/c;

    move-result-object v9

    aput-object v9, p1, v7

    add-int/lit8 v9, v7, 0x1

    aput v8, v5, v7

    move v7, v9

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_10
    if-nez v7, :cond_11

    goto :goto_b

    .line 10
    :cond_11
    new-array v1, v7, [Lk/b/f/a/c;

    aget-object v3, p1, v2

    aput-object v3, v1, v2

    const/4 v3, 0x0

    :goto_8
    add-int/2addr v3, v0

    if-ge v3, v7, :cond_12

    add-int/lit8 v6, v3, -0x1

    aget-object v6, v1, v6

    add-int v8, v2, v3

    aget-object v8, p1, v8

    invoke-virtual {v6, v8}, Lk/b/f/a/c;->c(Lk/b/f/a/c;)Lk/b/f/a/c;

    move-result-object v6

    aput-object v6, v1, v3

    goto :goto_8

    :cond_12
    add-int/lit8 v3, v3, -0x1

    aget-object v6, v1, v3

    invoke-virtual {v6}, Lk/b/f/a/c;->c()Lk/b/f/a/c;

    move-result-object v6

    :goto_9
    if-lez v3, :cond_13

    add-int/lit8 v8, v3, -0x1

    add-int/lit8 v3, v3, 0x0

    aget-object v9, p1, v3

    aget-object v10, v1, v8

    invoke-virtual {v10, v6}, Lk/b/f/a/c;->c(Lk/b/f/a/c;)Lk/b/f/a/c;

    move-result-object v10

    aput-object v10, p1, v3

    invoke-virtual {v6, v9}, Lk/b/f/a/c;->c(Lk/b/f/a/c;)Lk/b/f/a/c;

    move-result-object v6

    move v3, v8

    goto :goto_9

    :cond_13
    aput-object v6, p1, v2

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v7, :cond_14

    .line 11
    aget v3, v5, v1

    aget-object v6, v4, v3

    aget-object v8, p1, v1

    invoke-virtual {v6, v8}, Lk/b/f/a/d;->a(Lk/b/f/a/c;)Lk/b/f/a/d;

    move-result-object v6

    aput-object v6, v4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 12
    :cond_14
    :goto_b
    aget-object v1, v4, v2

    aget-object p1, v4, v0

    .line 13
    :goto_c
    iget-object v3, v1, Lk/b/f/a/d;->b:Lk/b/f/a/c;

    iget-object v4, p1, Lk/b/f/a/d;->b:Lk/b/f/a/c;

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v1}, Lk/b/f/a/d;->b()Lk/b/f/a/c;

    move-result-object v1

    invoke-virtual {p1}, Lk/b/f/a/d;->b()Lk/b/f/a/c;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_e

    :cond_15
    :goto_d
    if-eqz v6, :cond_16

    if-eqz v7, :cond_16

    if-nez v4, :cond_17

    if-nez v5, :cond_17

    invoke-virtual {v1, v3}, Lk/b/f/a/b;->a(Lk/b/f/a/b;)Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_e

    :cond_16
    const/4 v0, 0x0

    :cond_17
    :goto_e
    move v2, v0

    :goto_f
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lk/b/f/a/d;->a:Lk/b/f/a/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lk/b/f/a/b;->hashCode()I

    move-result v0

    not-int v0, v0

    :goto_0
    invoke-virtual {p0}, Lk/b/f/a/d;->c()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lk/b/f/a/d;->d()Lk/b/f/a/d;

    move-result-object v1

    .line 3
    iget-object v2, v1, Lk/b/f/a/d;->b:Lk/b/f/a/c;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0x11

    xor-int/2addr v0, v2

    invoke-virtual {v1}, Lk/b/f/a/d;->b()Lk/b/f/a/c;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit16 v1, v1, 0x101

    xor-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lk/b/f/a/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "INF"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1
    iget-object v1, p0, Lk/b/f/a/d;->b:Lk/b/f/a/c;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3
    iget-object v2, p0, Lk/b/f/a/d;->c:Lk/b/f/a/c;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lk/b/f/a/d;->d:[Lk/b/f/a/c;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lk/b/f/a/d;->d:[Lk/b/f/a/c;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
