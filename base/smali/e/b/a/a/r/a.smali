.class public final Le/b/a/a/r/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/a/a/r/a$a;
    }
.end annotation


# instance fields
.field public final a:Le/b/a/a/r/a;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Le/b/a/a/r/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:I

.field public d:Z

.field public final e:Z

.field public f:[I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:[Ljava/lang/String;

.field public m:I

.field public n:I

.field public transient o:Z

.field public p:Z


# direct methods
.method public constructor <init>(IZIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/b/a/a/r/a;->a:Le/b/a/a/r/a;

    .line 3
    iput p3, p0, Le/b/a/a/r/a;->c:I

    .line 4
    iput-boolean p2, p0, Le/b/a/a/r/a;->d:Z

    .line 5
    iput-boolean p4, p0, Le/b/a/a/r/a;->e:Z

    const/16 p2, 0x10

    if-ge p1, p2, :cond_0

    const/16 p1, 0x10

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p1, -0x1

    and-int/2addr p3, p1

    if-eqz p3, :cond_2

    :goto_0
    if-ge p2, p1, :cond_1

    add-int/2addr p2, p2

    goto :goto_0

    :cond_1
    move p1, p2

    .line 6
    :cond_2
    :goto_1
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Le/b/a/a/r/a$a;->a(I)Le/b/a/a/r/a$a;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Le/b/a/a/r/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Le/b/a/a/r/a;ZIZLe/b/a/a/r/a$a;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Le/b/a/a/r/a;->a:Le/b/a/a/r/a;

    .line 9
    iput p3, p0, Le/b/a/a/r/a;->c:I

    .line 10
    iput-boolean p2, p0, Le/b/a/a/r/a;->d:Z

    .line 11
    iput-boolean p4, p0, Le/b/a/a/r/a;->e:Z

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Le/b/a/a/r/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    iget p1, p5, Le/b/a/a/r/a$a;->b:I

    iput p1, p0, Le/b/a/a/r/a;->k:I

    .line 14
    iget p1, p5, Le/b/a/a/r/a$a;->a:I

    iput p1, p0, Le/b/a/a/r/a;->g:I

    shl-int/lit8 p1, p1, 0x2

    .line 15
    iput p1, p0, Le/b/a/a/r/a;->h:I

    shr-int/lit8 p2, p1, 0x1

    add-int/2addr p1, p2

    .line 16
    iput p1, p0, Le/b/a/a/r/a;->i:I

    .line 17
    iget p1, p5, Le/b/a/a/r/a$a;->c:I

    iput p1, p0, Le/b/a/a/r/a;->j:I

    .line 18
    iget-object p1, p5, Le/b/a/a/r/a$a;->d:[I

    iput-object p1, p0, Le/b/a/a/r/a;->f:[I

    .line 19
    iget-object p1, p5, Le/b/a/a/r/a$a;->e:[Ljava/lang/String;

    iput-object p1, p0, Le/b/a/a/r/a;->l:[Ljava/lang/String;

    .line 20
    iget p1, p5, Le/b/a/a/r/a$a;->f:I

    iput p1, p0, Le/b/a/a/r/a;->m:I

    .line 21
    iget p1, p5, Le/b/a/a/r/a$a;->g:I

    iput p1, p0, Le/b/a/a/r/a;->n:I

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Le/b/a/a/r/a;->o:Z

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Le/b/a/a/r/a;->p:Z

    return-void
.end method

.method public static d(I)I
    .locals 1

    shr-int/lit8 p0, p0, 0x2

    const/16 v0, 0x40

    if-ge p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/16 v0, 0x100

    if-gt p0, v0, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    const/16 v0, 0x400

    if-gt p0, v0, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    const/4 p0, 0x7

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 94
    iget v0, p0, Le/b/a/a/r/a;->g:I

    shl-int/lit8 v1, v0, 0x3

    sub-int/2addr v1, v0

    return v1
.end method

.method public final a(I)I
    .locals 1

    .line 1
    iget v0, p0, Le/b/a/a/r/a;->g:I

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public a(II)I
    .locals 1

    ushr-int/lit8 v0, p1, 0xf

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x9

    xor-int/2addr p1, v0

    mul-int/lit8 p2, p2, 0x21

    add-int/2addr p2, p1

    .line 82
    iget p1, p0, Le/b/a/a/r/a;->c:I

    xor-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0x10

    add-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0x4

    xor-int/2addr p1, p2

    shl-int/lit8 p2, p1, 0x3

    add-int/2addr p1, p2

    return p1
.end method

.method public a(III)I
    .locals 1

    .line 83
    iget v0, p0, Le/b/a/a/r/a;->c:I

    xor-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x9

    add-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x1f

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x21

    ushr-int/lit8 p2, p1, 0xf

    add-int/2addr p1, p2

    xor-int/2addr p1, p3

    ushr-int/lit8 p2, p1, 0x4

    add-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0xf

    add-int/2addr p1, p2

    shl-int/lit8 p2, p1, 0x9

    xor-int/2addr p1, p2

    return p1
.end method

.method public a([II)I
    .locals 4

    const/4 v0, 0x4

    if-lt p2, v0, :cond_1

    const/4 v0, 0x0

    .line 84
    aget v0, p1, v0

    iget v1, p0, Le/b/a/a/r/a;->c:I

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x9

    add-int/2addr v0, v1

    const/4 v1, 0x1

    .line 85
    aget v1, p1, v1

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0xf

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x21

    const/4 v1, 0x2

    .line 86
    aget v1, p1, v1

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    const/4 v1, 0x3

    :goto_0
    if-ge v1, p2, :cond_0

    .line 87
    aget v2, p1, v1

    shr-int/lit8 v3, v2, 0x15

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const p1, 0x1003f

    mul-int v0, v0, p1

    ushr-int/lit8 p1, v0, 0x13

    add-int/2addr v0, p1

    shl-int/lit8 p1, v0, 0x5

    xor-int/2addr p1, v0

    return p1

    .line 88
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public a(Ljava/lang/String;[II)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 12
    iget-boolean v3, v0, Le/b/a/a/r/a;->p:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 13
    iget-object v3, v0, Le/b/a/a/r/a;->f:[I

    array-length v5, v3

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v0, Le/b/a/a/r/a;->f:[I

    .line 14
    iget-object v3, v0, Le/b/a/a/r/a;->l:[Ljava/lang/String;

    array-length v5, v3

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, v0, Le/b/a/a/r/a;->l:[Ljava/lang/String;

    .line 15
    iput-boolean v4, v0, Le/b/a/a/r/a;->p:Z

    .line 16
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/r/a;->b()V

    .line 17
    :cond_0
    iget-boolean v3, v0, Le/b/a/a/r/a;->o:Z

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-eqz v3, :cond_9

    .line 18
    iput-boolean v4, v0, Le/b/a/a/r/a;->o:Z

    .line 19
    iput-boolean v4, v0, Le/b/a/a/r/a;->p:Z

    .line 20
    iget-object v3, v0, Le/b/a/a/r/a;->f:[I

    .line 21
    iget-object v8, v0, Le/b/a/a/r/a;->l:[Ljava/lang/String;

    .line 22
    iget v9, v0, Le/b/a/a/r/a;->g:I

    .line 23
    iget v10, v0, Le/b/a/a/r/a;->k:I

    add-int v11, v9, v9

    .line 24
    iget v12, v0, Le/b/a/a/r/a;->m:I

    const/high16 v13, 0x10000

    if-le v11, v13, :cond_1

    .line 25
    invoke-virtual {v0, v6}, Le/b/a/a/r/a;->a(Z)V

    goto/16 :goto_2

    .line 26
    :cond_1
    array-length v13, v3

    shl-int/2addr v9, v7

    add-int/2addr v13, v9

    new-array v9, v13, [I

    iput-object v9, v0, Le/b/a/a/r/a;->f:[I

    .line 27
    iput v11, v0, Le/b/a/a/r/a;->g:I

    shl-int/lit8 v9, v11, 0x2

    .line 28
    iput v9, v0, Le/b/a/a/r/a;->h:I

    shr-int/lit8 v13, v9, 0x1

    add-int/2addr v9, v13

    .line 29
    iput v9, v0, Le/b/a/a/r/a;->i:I

    .line 30
    invoke-static {v11}, Le/b/a/a/r/a;->d(I)I

    move-result v9

    iput v9, v0, Le/b/a/a/r/a;->j:I

    .line 31
    array-length v9, v8

    shl-int/2addr v9, v6

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, v0, Le/b/a/a/r/a;->l:[Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v4}, Le/b/a/a/r/a;->a(Z)V

    const/16 v9, 0x10

    new-array v9, v9, [I

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v11, v12, :cond_7

    add-int/lit8 v14, v11, 0x3

    .line 33
    aget v14, v3, v14

    if-nez v14, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v13, v13, 0x1

    shr-int/lit8 v15, v11, 0x2

    .line 34
    aget-object v15, v8, v15

    if-eq v14, v6, :cond_6

    if-eq v14, v5, :cond_5

    if-eq v14, v7, :cond_4

    .line 35
    array-length v7, v9

    if-le v14, v7, :cond_3

    .line 36
    new-array v9, v14, [I

    :cond_3
    add-int/lit8 v7, v11, 0x1

    .line 37
    aget v7, v3, v7

    .line 38
    invoke-static {v3, v7, v9, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    invoke-virtual {v0, v15, v9, v14}, Le/b/a/a/r/a;->a(Ljava/lang/String;[II)Ljava/lang/String;

    goto :goto_1

    .line 40
    :cond_4
    aget v7, v3, v11

    aput v7, v9, v4

    add-int/lit8 v7, v11, 0x1

    .line 41
    aget v7, v3, v7

    aput v7, v9, v6

    add-int/lit8 v7, v11, 0x2

    .line 42
    aget v7, v3, v7

    aput v7, v9, v5

    const/4 v7, 0x3

    .line 43
    invoke-virtual {v0, v15, v9, v7}, Le/b/a/a/r/a;->a(Ljava/lang/String;[II)Ljava/lang/String;

    goto :goto_1

    .line 44
    :cond_5
    aget v7, v3, v11

    aput v7, v9, v4

    add-int/lit8 v7, v11, 0x1

    .line 45
    aget v7, v3, v7

    aput v7, v9, v6

    .line 46
    invoke-virtual {v0, v15, v9, v5}, Le/b/a/a/r/a;->a(Ljava/lang/String;[II)Ljava/lang/String;

    goto :goto_1

    .line 47
    :cond_6
    aget v7, v3, v11

    aput v7, v9, v4

    .line 48
    invoke-virtual {v0, v15, v9, v6}, Le/b/a/a/r/a;->a(Ljava/lang/String;[II)Ljava/lang/String;

    :goto_1
    add-int/lit8 v11, v11, 0x4

    const/4 v7, 0x3

    goto :goto_0

    :cond_7
    if-ne v13, v10, :cond_8

    goto :goto_2

    .line 49
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed rehash(): old count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", copyCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_9
    :goto_2
    iget-boolean v3, v0, Le/b/a/a/r/a;->d:Z

    if-eqz v3, :cond_a

    .line 51
    sget-object v3, Le/b/a/a/s/e;->y:Le/b/a/a/s/e;

    move-object/from16 v7, p1

    invoke-virtual {v3, v7}, Le/b/a/a/s/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_a
    move-object/from16 v7, p1

    move-object v3, v7

    :goto_3
    if-eq v2, v6, :cond_e

    if-eq v2, v5, :cond_d

    const/4 v7, 0x3

    if-eq v2, v7, :cond_c

    .line 52
    invoke-virtual {v0, v1, v2}, Le/b/a/a/r/a;->a([II)I

    move-result v7

    .line 53
    invoke-virtual {v0, v7}, Le/b/a/a/r/a;->b(I)I

    move-result v8

    .line 54
    iget-object v9, v0, Le/b/a/a/r/a;->f:[I

    aput v7, v9, v8

    .line 55
    iget v7, v0, Le/b/a/a/r/a;->n:I

    add-int v10, v7, v2

    .line 56
    array-length v11, v9

    if-le v10, v11, :cond_b

    .line 57
    array-length v9, v9

    sub-int/2addr v10, v9

    const/16 v9, 0x1000

    .line 58
    iget v11, v0, Le/b/a/a/r/a;->g:I

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 59
    iget-object v11, v0, Le/b/a/a/r/a;->f:[I

    array-length v11, v11

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/2addr v9, v11

    .line 60
    iget-object v10, v0, Le/b/a/a/r/a;->f:[I

    invoke-static {v10, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    iput-object v9, v0, Le/b/a/a/r/a;->f:[I

    .line 61
    :cond_b
    iget-object v9, v0, Le/b/a/a/r/a;->f:[I

    invoke-static {v1, v4, v9, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget v1, v0, Le/b/a/a/r/a;->n:I

    add-int/2addr v1, v2

    iput v1, v0, Le/b/a/a/r/a;->n:I

    .line 63
    iget-object v1, v0, Le/b/a/a/r/a;->f:[I

    add-int/lit8 v4, v8, 0x1

    aput v7, v1, v4

    add-int/lit8 v4, v8, 0x3

    .line 64
    aput v2, v1, v4

    goto :goto_4

    .line 65
    :cond_c
    aget v2, v1, v4

    aget v7, v1, v6

    aget v8, v1, v5

    invoke-virtual {v0, v2, v7, v8}, Le/b/a/a/r/a;->a(III)I

    move-result v2

    invoke-virtual {v0, v2}, Le/b/a/a/r/a;->b(I)I

    move-result v8

    .line 66
    iget-object v2, v0, Le/b/a/a/r/a;->f:[I

    aget v4, v1, v4

    aput v4, v2, v8

    add-int/lit8 v4, v8, 0x1

    .line 67
    aget v7, v1, v6

    aput v7, v2, v4

    add-int/lit8 v4, v8, 0x2

    .line 68
    aget v1, v1, v5

    aput v1, v2, v4

    add-int/lit8 v1, v8, 0x3

    const/4 v4, 0x3

    .line 69
    aput v4, v2, v1

    goto :goto_4

    .line 70
    :cond_d
    aget v2, v1, v4

    aget v7, v1, v6

    invoke-virtual {v0, v2, v7}, Le/b/a/a/r/a;->a(II)I

    move-result v2

    invoke-virtual {v0, v2}, Le/b/a/a/r/a;->b(I)I

    move-result v8

    .line 71
    iget-object v2, v0, Le/b/a/a/r/a;->f:[I

    aget v4, v1, v4

    aput v4, v2, v8

    add-int/lit8 v4, v8, 0x1

    .line 72
    aget v1, v1, v6

    aput v1, v2, v4

    add-int/lit8 v1, v8, 0x3

    .line 73
    aput v5, v2, v1

    goto :goto_4

    .line 74
    :cond_e
    aget v2, v1, v4

    .line 75
    iget v7, v0, Le/b/a/a/r/a;->c:I

    xor-int/2addr v2, v7

    ushr-int/lit8 v7, v2, 0x10

    add-int/2addr v2, v7

    shl-int/lit8 v7, v2, 0x3

    xor-int/2addr v2, v7

    ushr-int/lit8 v7, v2, 0xc

    add-int/2addr v2, v7

    .line 76
    invoke-virtual {v0, v2}, Le/b/a/a/r/a;->b(I)I

    move-result v8

    .line 77
    iget-object v2, v0, Le/b/a/a/r/a;->f:[I

    aget v1, v1, v4

    aput v1, v2, v8

    add-int/lit8 v1, v8, 0x3

    .line 78
    aput v6, v2, v1

    .line 79
    :goto_4
    iget-object v1, v0, Le/b/a/a/r/a;->l:[Ljava/lang/String;

    shr-int/lit8 v2, v8, 0x2

    aput-object v3, v1, v2

    .line 80
    iget v1, v0, Le/b/a/a/r/a;->k:I

    add-int/2addr v1, v6

    iput v1, v0, Le/b/a/a/r/a;->k:I

    .line 81
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/r/a;->b()V

    return-object v3
.end method

.method public final a(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Le/b/a/a/r/a;->k:I

    .line 90
    invoke-virtual {p0}, Le/b/a/a/r/a;->a()I

    move-result v1

    iput v1, p0, Le/b/a/a/r/a;->m:I

    .line 91
    iget v1, p0, Le/b/a/a/r/a;->g:I

    shl-int/lit8 v1, v1, 0x3

    iput v1, p0, Le/b/a/a/r/a;->n:I

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Le/b/a/a/r/a;->f:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 93
    iget-object p1, p0, Le/b/a/a/r/a;->l:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a([III)Z
    .locals 6

    .line 2
    iget-object v0, p0, Le/b/a/a/r/a;->f:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_4

    .line 3
    :pswitch_0
    aget p2, p1, v1

    add-int/lit8 v3, p3, 0x1

    aget p3, v0, p3

    if-eq p2, p3, :cond_0

    return v1

    :cond_0
    move p3, v3

    const/4 p2, 0x1

    goto :goto_0

    :pswitch_1
    const/4 p2, 0x0

    :goto_0
    add-int/lit8 v3, p2, 0x1

    .line 4
    aget p2, p1, p2

    add-int/lit8 v4, p3, 0x1

    aget p3, v0, p3

    if-eq p2, p3, :cond_1

    return v1

    :cond_1
    move p3, v4

    goto :goto_1

    :pswitch_2
    const/4 v3, 0x0

    :goto_1
    add-int/lit8 p2, v3, 0x1

    .line 5
    aget v3, p1, v3

    add-int/lit8 v4, p3, 0x1

    aget p3, v0, p3

    if-eq v3, p3, :cond_2

    return v1

    :cond_2
    move p3, v4

    goto :goto_2

    :pswitch_3
    const/4 p2, 0x0

    :goto_2
    add-int/lit8 v3, p2, 0x1

    .line 6
    aget p2, p1, p2

    add-int/lit8 v4, p3, 0x1

    aget p3, v0, p3

    if-eq p2, p3, :cond_3

    return v1

    :cond_3
    move p3, v4

    goto :goto_3

    :pswitch_4
    const/4 v3, 0x0

    :goto_3
    add-int/lit8 p2, v3, 0x1

    .line 7
    aget v3, p1, v3

    add-int/lit8 v4, p3, 0x1

    aget p3, v0, p3

    if-eq v3, p3, :cond_4

    return v1

    :cond_4
    add-int/lit8 p3, p2, 0x1

    .line 8
    aget p2, p1, p2

    add-int/lit8 v3, v4, 0x1

    aget v4, v0, v4

    if-eq p2, v4, :cond_5

    return v1

    :cond_5
    add-int/lit8 p2, p3, 0x1

    .line 9
    aget p3, p1, p3

    add-int/lit8 v4, v3, 0x1

    aget v3, v0, v3

    if-eq p3, v3, :cond_6

    return v1

    .line 10
    :cond_6
    aget p1, p1, p2

    aget p2, v0, v4

    if-eq p1, p2, :cond_7

    return v1

    :cond_7
    return v2

    :goto_4
    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v3, v0, 0x1

    .line 11
    aget v0, p1, v0

    iget-object v4, p0, Le/b/a/a/r/a;->f:[I

    add-int/lit8 v5, p3, 0x1

    aget p3, v4, p3

    if-eq v0, p3, :cond_8

    goto :goto_6

    :cond_8
    if-lt v3, p2, :cond_9

    const/4 v1, 0x1

    :goto_6
    return v1

    :cond_9
    move v0, v3

    move p3, v5

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(I)I
    .locals 4

    .line 60
    iget v0, p0, Le/b/a/a/r/a;->g:I

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x2

    .line 61
    iget-object v0, p0, Le/b/a/a/r/a;->f:[I

    add-int/lit8 v1, p1, 0x3

    .line 62
    aget v1, v0, v1

    if-nez v1, :cond_0

    return p1

    .line 63
    :cond_0
    iget v1, p0, Le/b/a/a/r/a;->h:I

    shr-int/lit8 v2, p1, 0x3

    shl-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x3

    .line 64
    aget v2, v0, v2

    if-nez v2, :cond_1

    return v1

    .line 65
    :cond_1
    iget v1, p0, Le/b/a/a/r/a;->i:I

    iget v2, p0, Le/b/a/a/r/a;->j:I

    add-int/lit8 v3, v2, 0x2

    shr-int/2addr p1, v3

    shl-int/2addr p1, v2

    add-int/2addr v1, p1

    const/4 p1, 0x1

    shl-int v2, p1, v2

    add-int/2addr v2, v1

    :goto_0
    if-ge v1, v2, :cond_3

    add-int/lit8 v3, v1, 0x3

    .line 66
    aget v3, v0, v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 67
    :cond_3
    iget v0, p0, Le/b/a/a/r/a;->m:I

    add-int/lit8 v1, v0, 0x4

    .line 68
    iput v1, p0, Le/b/a/a/r/a;->m:I

    .line 69
    iget v2, p0, Le/b/a/a/r/a;->g:I

    shl-int/lit8 v3, v2, 0x3

    if-lt v1, v3, :cond_6

    .line 70
    iget-boolean v1, p0, Le/b/a/a/r/a;->e:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x400

    if-gt v2, v1, :cond_4

    goto :goto_1

    .line 71
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Spill-over slots in symbol table with "

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/b/a/a/r/a;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " entries, hash area of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/b/a/a/r/a;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " slots is now full (all "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/b/a/a/r/a;->g:I

    shr-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " slots -- suspect a DoS attack based on hash collisions."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " You can disable the check via `JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_5
    :goto_1
    iput-boolean p1, p0, Le/b/a/a/r/a;->o:Z

    :cond_6
    return v0
.end method

.method public b(II)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0, p1, p2}, Le/b/a/a/r/a;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Le/b/a/a/r/a;->a(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Le/b/a/a/r/a;->f:[I

    add-int/lit8 v2, v0, 0x3

    .line 3
    aget v2, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 4
    aget v2, v1, v0

    if-ne p1, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget v2, v1, v2

    if-ne p2, v2, :cond_1

    .line 5
    iget-object p1, p0, Le/b/a/a/r/a;->l:[Ljava/lang/String;

    shr-int/lit8 p2, v0, 0x2

    aget-object p1, p1, p2

    return-object p1

    :cond_0
    if-nez v2, :cond_1

    return-object v3

    .line 6
    :cond_1
    iget v2, p0, Le/b/a/a/r/a;->h:I

    shr-int/lit8 v5, v0, 0x3

    shl-int/2addr v5, v4

    add-int/2addr v2, v5

    add-int/lit8 v5, v2, 0x3

    .line 7
    aget v5, v1, v5

    if-ne v5, v4, :cond_2

    .line 8
    aget v5, v1, v2

    if-ne p1, v5, :cond_3

    add-int/lit8 v5, v2, 0x1

    aget v1, v1, v5

    if-ne p2, v1, :cond_3

    .line 9
    iget-object p1, p0, Le/b/a/a/r/a;->l:[Ljava/lang/String;

    shr-int/lit8 p2, v2, 0x2

    aget-object p1, p1, p2

    return-object p1

    :cond_2
    if-nez v5, :cond_3

    return-object v3

    .line 10
    :cond_3
    iget v1, p0, Le/b/a/a/r/a;->i:I

    iget v2, p0, Le/b/a/a/r/a;->j:I

    add-int/lit8 v5, v2, 0x2

    shr-int/2addr v0, v5

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 11
    iget-object v0, p0, Le/b/a/a/r/a;->f:[I

    const/4 v5, 0x1

    shl-int v2, v5, v2

    add-int/2addr v2, v1

    :goto_0
    if-ge v1, v2, :cond_6

    add-int/lit8 v5, v1, 0x3

    .line 12
    aget v5, v0, v5

    .line 13
    aget v6, v0, v1

    if-ne p1, v6, :cond_4

    add-int/lit8 v6, v1, 0x1

    aget v6, v0, v6

    if-ne p2, v6, :cond_4

    if-ne v4, v5, :cond_4

    .line 14
    iget-object p1, p0, Le/b/a/a/r/a;->l:[Ljava/lang/String;

    shr-int/lit8 p2, v1, 0x2

    aget-object v3, p1, p2

    goto :goto_2

    :cond_4
    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 15
    :cond_6
    invoke-virtual {p0}, Le/b/a/a/r/a;->a()I

    move-result v1

    :goto_1
    iget v2, p0, Le/b/a/a/r/a;->m:I

    if-ge v1, v2, :cond_8

    .line 16
    aget v2, v0, v1

    if-ne p1, v2, :cond_7

    add-int/lit8 v2, v1, 0x1

    aget v2, v0, v2

    if-ne p2, v2, :cond_7

    add-int/lit8 v2, v1, 0x3

    aget v2, v0, v2

    if-ne v4, v2, :cond_7

    .line 17
    iget-object p1, p0, Le/b/a/a/r/a;->l:[Ljava/lang/String;

    shr-int/lit8 p2, v1, 0x2

    aget-object v3, p1, p2

    goto :goto_2

    :cond_7
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_8
    :goto_2
    return-object v3
.end method

.method public b(III)Ljava/lang/String;
    .locals 7

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Le/b/a/a/r/a;->a(III)I

    move-result v0

    invoke-virtual {p0, v0}, Le/b/a/a/r/a;->a(I)I

    move-result v0

    .line 19
    iget-object v1, p0, Le/b/a/a/r/a;->f:[I

    add-int/lit8 v2, v0, 0x3

    .line 20
    aget v2, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 21
    aget v2, v1, v0

    if-ne p1, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget v2, v1, v2

    if-ne v2, p2, :cond_1

    add-int/lit8 v2, v0, 0x2

    aget v2, v1, v2

    if-ne v2, p3, :cond_1

    .line 22
    iget-object p1, p0, Le/b/a/a/r/a;->l:[Ljava/lang/String;

    shr-int/lit8 p2, v0, 0x2

    aget-object p1, p1, p2

    return-object p1

    :cond_0
    if-nez v2, :cond_1

    return-object v3

    .line 23
    :cond_1
    iget v2, p0, Le/b/a/a/r/a;->h:I

    shr-int/lit8 v5, v0, 0x3

    shl-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    add-int/lit8 v5, v2, 0x3

    .line 24
    aget v5, v1, v5

    if-ne v5, v4, :cond_2

    .line 25
    aget v5, v1, v2

    if-ne p1, v5, :cond_3

    add-int/lit8 v5, v2, 0x1

    aget v5, v1, v5

    if-ne v5, p2, :cond_3

    add-int/lit8 v5, v2, 0x2

    aget v1, v1, v5

    if-ne v1, p3, :cond_3

    .line 26
    iget-object p1, p0, Le/b/a/a/r/a;->l:[Ljava/lang/String;

    shr-int/lit8 p2, v2, 0x2

    aget-object p1, p1, p2

    return-object p1

    :cond_2
    if-nez v5, :cond_3

    return-object v3

    .line 27
    :cond_3
    iget v1, p0, Le/b/a/a/r/a;->i:I

    iget v2, p0, Le/b/a/a/r/a;->j:I

    add-int/lit8 v5, v2, 0x2

    shr-int/2addr v0, v5

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 28
    iget-object v0, p0, Le/b/a/a/r/a;->f:[I

    const/4 v5, 0x1

    shl-int v2, v5, v2

    add-int/2addr v2, v1

    :goto_0
    if-ge v1, v2, :cond_6

    add-int/lit8 v5, v1, 0x3

    .line 29
    aget v5, v0, v5

    .line 30
    aget v6, v0, v1

    if-ne p1, v6, :cond_4

    add-int/lit8 v6, v1, 0x1

    aget v6, v0, v6

    if-ne p2, v6, :cond_4

    add-int/lit8 v6, v1, 0x2

    aget v6, v0, v6

    if-ne p3, v6, :cond_4

    if-ne v4, v5, :cond_4

    .line 31
    iget-object p1, p0, Le/b/a/a/r/a;->l:[Ljava/lang/String;

    shr-int/lit8 p2, v1, 0x2

    aget-object v3, p1, p2

    goto :goto_2

    :cond_4
    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 32
    :cond_6
    invoke-virtual {p0}, Le/b/a/a/r/a;->a()I

    move-result v1

    :goto_1
    iget v2, p0, Le/b/a/a/r/a;->m:I

    if-ge v1, v2, :cond_8

    .line 33
    aget v2, v0, v1

    if-ne p1, v2, :cond_7

    add-int/lit8 v2, v1, 0x1

    aget v2, v0, v2

    if-ne p2, v2, :cond_7

    add-int/lit8 v2, v1, 0x2

    aget v2, v0, v2

    if-ne p3, v2, :cond_7

    add-int/lit8 v2, v1, 0x3

    aget v2, v0, v2

    if-ne v4, v2, :cond_7

    .line 34
    iget-object p1, p0, Le/b/a/a/r/a;->l:[Ljava/lang/String;

    shr-int/lit8 p2, v1, 0x2

    aget-object v3, p1, p2

    goto :goto_2

    :cond_7
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_8
    :goto_2
    return-object v3
.end method

.method public b([II)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge p2, v0, :cond_3

    const/4 v0, 0x0

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_1

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    const-string p1, ""

    return-object p1

    .line 35
    :cond_0
    aget p2, p1, v0

    aget v0, p1, v2

    aget p1, p1, v1

    invoke-virtual {p0, p2, v0, p1}, Le/b/a/a/r/a;->b(III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 36
    :cond_1
    aget p2, p1, v0

    aget p1, p1, v2

    invoke-virtual {p0, p2, p1}, Le/b/a/a/r/a;->b(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 37
    :cond_2
    aget p1, p1, v0

    invoke-virtual {p0, p1}, Le/b/a/a/r/a;->c(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 38
    :cond_3
    invoke-virtual {p0, p1, p2}, Le/b/a/a/r/a;->a([II)I

    move-result v0

    .line 39
    invoke-virtual {p0, v0}, Le/b/a/a/r/a;->a(I)I

    move-result v3

    .line 40
    iget-object v4, p0, Le/b/a/a/r/a;->f:[I

    add-int/lit8 v5, v3, 0x3

    .line 41
    aget v5, v4, v5

    .line 42
    aget v6, v4, v3

    if-ne v0, v6, :cond_4

    if-ne v5, p2, :cond_4

    add-int/lit8 v6, v3, 0x1

    .line 43
    aget v6, v4, v6

    invoke-virtual {p0, p1, p2, v6}, Le/b/a/a/r/a;->a([III)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 44
    iget-object p1, p0, Le/b/a/a/r/a;->l:[Ljava/lang/String;

    shr-int/lit8 p2, v3, 0x2

    aget-object p1, p1, p2

    return-object p1

    :cond_4
    const/4 v6, 0x0

    if-nez v5, :cond_5

    return-object v6

    .line 45
    :cond_5
    iget v5, p0, Le/b/a/a/r/a;->h:I

    shr-int/lit8 v7, v3, 0x3

    shl-int/2addr v7, v1

    add-int/2addr v5, v7

    add-int/lit8 v7, v5, 0x3

    .line 46
    aget v7, v4, v7

    .line 47
    aget v8, v4, v5

    if-ne v0, v8, :cond_6

    if-ne v7, p2, :cond_6

    add-int/lit8 v7, v5, 0x1

    .line 48
    aget v4, v4, v7

    invoke-virtual {p0, p1, p2, v4}, Le/b/a/a/r/a;->a([III)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 49
    iget-object p1, p0, Le/b/a/a/r/a;->l:[Ljava/lang/String;

    shr-int/lit8 p2, v5, 0x2

    aget-object p1, p1, p2

    return-object p1

    .line 50
    :cond_6
    iget v4, p0, Le/b/a/a/r/a;->i:I

    iget v5, p0, Le/b/a/a/r/a;->j:I

    add-int/lit8 v7, v5, 0x2

    shr-int/2addr v3, v7

    shl-int/2addr v3, v5

    add-int/2addr v4, v3

    .line 51
    iget-object v3, p0, Le/b/a/a/r/a;->f:[I

    shl-int/2addr v2, v5

    add-int/2addr v2, v4

    :goto_0
    if-ge v4, v2, :cond_9

    add-int/lit8 v5, v4, 0x3

    .line 52
    aget v5, v3, v5

    .line 53
    aget v7, v3, v4

    if-ne v0, v7, :cond_7

    if-ne p2, v5, :cond_7

    add-int/lit8 v7, v4, 0x1

    .line 54
    aget v7, v3, v7

    invoke-virtual {p0, p1, p2, v7}, Le/b/a/a/r/a;->a([III)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 55
    iget-object p1, p0, Le/b/a/a/r/a;->l:[Ljava/lang/String;

    shr-int/lit8 p2, v4, 0x2

    aget-object v6, p1, p2

    goto :goto_2

    :cond_7
    if-nez v5, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 v4, v4, 0x4

    goto :goto_0

    .line 56
    :cond_9
    invoke-virtual {p0}, Le/b/a/a/r/a;->a()I

    move-result v2

    :goto_1
    iget v4, p0, Le/b/a/a/r/a;->m:I

    if-ge v2, v4, :cond_b

    .line 57
    aget v4, v3, v2

    if-ne v0, v4, :cond_a

    add-int/lit8 v4, v2, 0x3

    aget v4, v3, v4

    if-ne p2, v4, :cond_a

    add-int/lit8 v4, v2, 0x1

    .line 58
    aget v4, v3, v4

    invoke-virtual {p0, p1, p2, v4}, Le/b/a/a/r/a;->a([III)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 59
    iget-object p1, p0, Le/b/a/a/r/a;->l:[Ljava/lang/String;

    shr-int/lit8 p2, v2, 0x2

    aget-object v6, p1, p2

    goto :goto_2

    :cond_a
    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_b
    :goto_2
    return-object v6
.end method

.method public final b()V
    .locals 7

    .line 73
    iget v0, p0, Le/b/a/a/r/a;->k:I

    iget v1, p0, Le/b/a/a/r/a;->g:I

    const/4 v2, 0x1

    shr-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 74
    iget v0, p0, Le/b/a/a/r/a;->m:I

    invoke-virtual {p0}, Le/b/a/a/r/a;->a()I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x2

    .line 75
    iget v1, p0, Le/b/a/a/r/a;->k:I

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v3, v3, 0x7

    if-gt v0, v3, :cond_0

    int-to-double v0, v1

    iget v3, p0, Le/b/a/a/r/a;->g:I

    int-to-double v3, v3

    const-wide v5, 0x3fe999999999999aL    # 0.8

    mul-double v3, v3, v5

    cmpl-double v5, v0, v3

    if-lez v5, :cond_1

    .line 76
    :cond_0
    iput-boolean v2, p0, Le/b/a/a/r/a;->o:Z

    :cond_1
    return-void
.end method

.method public c(I)Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, Le/b/a/a/r/a;->c:I

    xor-int/2addr v0, p1

    ushr-int/lit8 v1, v0, 0x10

    add-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x3

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0xc

    add-int/2addr v0, v1

    .line 2
    invoke-virtual {p0, v0}, Le/b/a/a/r/a;->a(I)I

    move-result v0

    .line 3
    iget-object v1, p0, Le/b/a/a/r/a;->f:[I

    add-int/lit8 v2, v0, 0x3

    .line 4
    aget v2, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 5
    aget v2, v1, v0

    if-ne v2, p1, :cond_1

    .line 6
    iget-object p1, p0, Le/b/a/a/r/a;->l:[Ljava/lang/String;

    shr-int/lit8 v0, v0, 0x2

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    if-nez v2, :cond_1

    return-object v3

    .line 7
    :cond_1
    iget v2, p0, Le/b/a/a/r/a;->h:I

    shr-int/lit8 v5, v0, 0x3

    shl-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    add-int/lit8 v5, v2, 0x3

    .line 8
    aget v5, v1, v5

    if-ne v5, v4, :cond_2

    .line 9
    aget v1, v1, v2

    if-ne v1, p1, :cond_3

    .line 10
    iget-object p1, p0, Le/b/a/a/r/a;->l:[Ljava/lang/String;

    shr-int/lit8 v0, v2, 0x2

    aget-object p1, p1, v0

    return-object p1

    :cond_2
    if-nez v5, :cond_3

    return-object v3

    .line 11
    :cond_3
    iget v1, p0, Le/b/a/a/r/a;->i:I

    iget v2, p0, Le/b/a/a/r/a;->j:I

    add-int/lit8 v5, v2, 0x2

    shr-int/2addr v0, v5

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 12
    iget-object v0, p0, Le/b/a/a/r/a;->f:[I

    shl-int v2, v4, v2

    add-int/2addr v2, v1

    :goto_0
    if-ge v1, v2, :cond_6

    add-int/lit8 v5, v1, 0x3

    .line 13
    aget v5, v0, v5

    .line 14
    aget v6, v0, v1

    if-ne p1, v6, :cond_4

    if-ne v4, v5, :cond_4

    .line 15
    iget-object p1, p0, Le/b/a/a/r/a;->l:[Ljava/lang/String;

    shr-int/lit8 v0, v1, 0x2

    aget-object v3, p1, v0

    goto :goto_2

    :cond_4
    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 16
    :cond_6
    invoke-virtual {p0}, Le/b/a/a/r/a;->a()I

    move-result v1

    :goto_1
    iget v2, p0, Le/b/a/a/r/a;->m:I

    if-ge v1, v2, :cond_8

    .line 17
    aget v2, v0, v1

    if-ne p1, v2, :cond_7

    add-int/lit8 v2, v1, 0x3

    aget v2, v0, v2

    if-ne v4, v2, :cond_7

    .line 18
    iget-object p1, p0, Le/b/a/a/r/a;->l:[Ljava/lang/String;

    shr-int/lit8 v0, v1, 0x2

    aget-object v3, p1, v0

    goto :goto_2

    :cond_7
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_8
    :goto_2
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    iget v0, p0, Le/b/a/a/r/a;->h:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 2
    iget-object v5, p0, Le/b/a/a/r/a;->f:[I

    aget v5, v5, v3

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    .line 3
    :cond_1
    iget v0, p0, Le/b/a/a/r/a;->h:I

    add-int/2addr v0, v1

    .line 4
    iget v3, p0, Le/b/a/a/r/a;->i:I

    const/4 v5, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    .line 5
    iget-object v6, p0, Le/b/a/a/r/a;->f:[I

    aget v6, v6, v0

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 6
    :cond_3
    iget v0, p0, Le/b/a/a/r/a;->i:I

    add-int/2addr v0, v1

    .line 7
    iget v3, p0, Le/b/a/a/r/a;->g:I

    add-int/2addr v3, v0

    const/4 v6, 0x0

    :goto_2
    if-ge v0, v3, :cond_5

    .line 8
    iget-object v7, p0, Le/b/a/a/r/a;->f:[I

    aget v7, v7, v0

    if-eqz v7, :cond_4

    add-int/lit8 v6, v6, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    .line 9
    :cond_5
    iget v0, p0, Le/b/a/a/r/a;->m:I

    invoke-virtual {p0}, Le/b/a/a/r/a;->a()I

    move-result v3

    sub-int/2addr v0, v3

    const/4 v3, 0x2

    shr-int/2addr v0, v3

    .line 10
    iget v7, p0, Le/b/a/a/r/a;->g:I

    shl-int/2addr v7, v1

    const/4 v8, 0x3

    const/4 v9, 0x0

    :goto_3
    if-ge v8, v7, :cond_7

    .line 11
    iget-object v10, p0, Le/b/a/a/r/a;->f:[I

    aget v10, v10, v8

    if-eqz v10, :cond_6

    add-int/lit8 v9, v9, 0x1

    :cond_6
    add-int/lit8 v8, v8, 0x4

    goto :goto_3

    :cond_7
    const/16 v7, 0x9

    new-array v7, v7, [Ljava/lang/Object;

    .line 12
    const-class v8, Le/b/a/a/r/a;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    iget v2, p0, Le/b/a/a/r/a;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x1

    aput-object v2, v7, v8

    iget v2, p0, Le/b/a/a/r/a;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v7, v2

    const/4 v1, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x7

    add-int/2addr v4, v5

    add-int/2addr v4, v6

    add-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v1

    const/16 v0, 0x8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const-string v0, "[%s: size=%d, hashSize=%d, %d/%d/%d/%d pri/sec/ter/spill (=%s), total:%d]"

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
