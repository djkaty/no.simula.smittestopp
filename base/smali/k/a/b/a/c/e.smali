.class public Lk/a/b/a/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/i0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/b/a/c/e$c;,
        Lk/a/b/a/c/e$a;,
        Lk/a/b/a/c/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk/a/b/a/c/i0<",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lk/a/b/a/c/x;

.field public final b:Lk/a/b/a/c/h;

.field public final c:Lk/a/b/a/c/j;

.field public final d:Lk/a/b/a/c/l0;

.field public final e:Lk/a/b/a/c/c0;

.field public final f:Lk/a/b/a/c/f0;

.field public final g:Lk/a/b/a/c/a0;

.field public final h:Lk/a/b/a/c/t;

.field public final i:Lk/a/b/a/c/k;

.field public final j:Lk/a/b/a/c/e$b;

.field public final k:Lk/a/b/a/c/e$b;


# direct methods
.method public constructor <init>(Lk/a/b/a/c/x;Lk/a/b/a/c/r;Lk/a/b/a/c/h;Lk/a/b/a/c/j;Lk/a/b/a/c/l0;Lk/a/b/a/c/c0;Lk/a/b/a/c/f0;Lk/a/b/a/c/a0;Lk/a/b/a/c/t;Lk/a/b/a/c/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk/a/b/a/c/e;->a:Lk/a/b/a/c/x;

    .line 3
    iput-object p3, p0, Lk/a/b/a/c/e;->b:Lk/a/b/a/c/h;

    .line 4
    iput-object p4, p0, Lk/a/b/a/c/e;->c:Lk/a/b/a/c/j;

    .line 5
    iput-object p5, p0, Lk/a/b/a/c/e;->d:Lk/a/b/a/c/l0;

    .line 6
    iput-object p6, p0, Lk/a/b/a/c/e;->e:Lk/a/b/a/c/c0;

    .line 7
    iput-object p7, p0, Lk/a/b/a/c/e;->f:Lk/a/b/a/c/f0;

    .line 8
    iput-object p8, p0, Lk/a/b/a/c/e;->g:Lk/a/b/a/c/a0;

    .line 9
    iput-object p9, p0, Lk/a/b/a/c/e;->h:Lk/a/b/a/c/t;

    .line 10
    iput-object p10, p0, Lk/a/b/a/c/e;->i:Lk/a/b/a/c/k;

    .line 11
    new-instance p3, Lk/a/b/a/c/e$a;

    invoke-direct {p3, p0, p1, p2}, Lk/a/b/a/c/e$a;-><init>(Lk/a/b/a/c/e;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    iput-object p3, p0, Lk/a/b/a/c/e;->k:Lk/a/b/a/c/e$b;

    .line 12
    new-instance p3, Lk/a/b/a/c/e$c;

    invoke-direct {p3, p0, p1, p2}, Lk/a/b/a/c/e$c;-><init>(Lk/a/b/a/c/e;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    iput-object p3, p0, Lk/a/b/a/c/e;->j:Lk/a/b/a/c/e$b;

    .line 13
    const-class p3, [Ljava/lang/Object;

    .line 14
    iget-object p1, p1, Lk/a/b/a/c/x;->c:Ljava/util/Map;

    invoke-interface {p1, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p2, p0}, Lk/a/b/a/c/r;->a(Lk/a/b/a/c/i0;)V

    return-void
.end method

.method public static a([Ljava/lang/Object;Lk/a/b/a/c/r0;)I
    .locals 8

    .line 9
    invoke-interface {p1}, Lk/a/b/a/c/r0;->d()I

    move-result v0

    .line 10
    invoke-interface {p1}, Lk/a/b/a/c/r0;->f()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 11
    array-length p0, p0

    invoke-interface {p1, v2}, Lk/a/b/a/c/r0;->b(Ljava/lang/Object;)I

    move-result p1

    mul-int p1, p1, p0

    add-int/2addr p1, v0

    goto/16 :goto_3

    .line 12
    :cond_0
    array-length v1, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_a

    aget-object v4, p0, v3

    .line 13
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 14
    move-object v5, p1

    check-cast v5, Lk/a/b/a/c/e$b;

    .line 15
    invoke-interface {v5}, Lk/a/b/a/c/j0;->getType()Lk/a/b/a/c/i0;

    move-result-object v6

    check-cast v6, Lk/a/b/a/c/e;

    .line 16
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    .line 17
    invoke-interface {v5}, Lk/a/b/a/c/e$b;->h()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    .line 18
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v7, v0, :cond_1

    .line 19
    check-cast v4, [Z

    .line 20
    invoke-virtual {v6, v4}, Lk/a/b/a/c/e;->b([Z)Lk/a/b/a/c/h$b;

    move-result-object v0

    .line 21
    array-length v4, v4

    goto :goto_1

    .line 22
    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v7, v0, :cond_2

    .line 23
    check-cast v4, [B

    .line 24
    iget-object v0, v6, Lk/a/b/a/c/e;->c:Lk/a/b/a/c/j;

    .line 25
    iget-object v0, v0, Lk/a/b/a/c/j;->a:Lk/a/b/a/c/j$a;

    .line 26
    array-length v4, v4

    goto :goto_1

    .line 27
    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v7, v0, :cond_3

    .line 28
    check-cast v4, [S

    .line 29
    iget-object v0, v6, Lk/a/b/a/c/e;->d:Lk/a/b/a/c/l0;

    .line 30
    iget-object v0, v0, Lk/a/b/a/c/l0;->a:Lk/a/b/a/c/l0$a;

    .line 31
    array-length v4, v4

    goto :goto_1

    .line 32
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, v0, :cond_4

    .line 33
    check-cast v4, [I

    .line 34
    invoke-virtual {v6, v4}, Lk/a/b/a/c/e;->c([I)Lk/a/b/a/c/c0$b;

    move-result-object v0

    .line 35
    array-length v4, v4

    goto :goto_1

    .line 36
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v7, v0, :cond_5

    .line 37
    check-cast v4, [J

    .line 38
    invoke-virtual {v6, v4}, Lk/a/b/a/c/e;->c([J)Lk/a/b/a/c/f0$b;

    move-result-object v0

    .line 39
    array-length v4, v4

    goto :goto_1

    .line 40
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v7, v0, :cond_6

    .line 41
    check-cast v4, [F

    .line 42
    iget-object v0, v6, Lk/a/b/a/c/e;->g:Lk/a/b/a/c/a0;

    .line 43
    iget-object v0, v0, Lk/a/b/a/c/a0;->a:Lk/a/b/a/c/a0$a;

    .line 44
    array-length v4, v4

    goto :goto_1

    .line 45
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v7, v0, :cond_7

    .line 46
    check-cast v4, [D

    .line 47
    iget-object v0, v6, Lk/a/b/a/c/e;->h:Lk/a/b/a/c/t;

    .line 48
    iget-object v0, v0, Lk/a/b/a/c/t;->a:Lk/a/b/a/c/t$a;

    .line 49
    array-length v4, v4

    goto :goto_1

    .line 50
    :cond_7
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v7, v0, :cond_8

    .line 51
    check-cast v4, [C

    .line 52
    iget-object v0, v6, Lk/a/b/a/c/e;->i:Lk/a/b/a/c/k;

    .line 53
    iget-object v0, v0, Lk/a/b/a/c/k;->a:Lk/a/b/a/c/k$a;

    .line 54
    array-length v4, v4

    .line 55
    :goto_1
    invoke-interface {v0}, Lk/a/b/a/c/r0;->d()I

    move-result v6

    .line 56
    invoke-interface {v0, v2}, Lk/a/b/a/c/r0;->b(Ljava/lang/Object;)I

    move-result v0

    mul-int v0, v0, v4

    add-int/2addr v0, v6

    add-int/2addr v0, v5

    goto :goto_2

    .line 57
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot encode arrays of type "

    invoke-static {p1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_9
    invoke-interface {p1, v4}, Lk/a/b/a/c/r0;->b(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v4, v0

    move v0, v4

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    move p1, v0

    :goto_3
    return p1
.end method

.method public static synthetic a(Lk/a/b/a/c/r;I)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, v0}, Lk/a/b/a/c/r;->b(Z)Lk/a/b/a/c/q0;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Lk/a/b/a/c/q0;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 79
    invoke-virtual {p0}, Lk/a/b/a/c/r;->a()I

    move-result v1

    if-gt p1, v1, :cond_8

    .line 80
    instance-of p0, v0, Lk/a/b/a/c/h$b;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 81
    check-cast v0, Lk/a/b/a/c/h$b;

    .line 82
    new-array p0, p1, [Z

    :goto_0
    if-ge v1, p1, :cond_a

    .line 83
    invoke-interface {v0}, Lk/a/b/a/c/h$b;->b()Z

    move-result v2

    aput-boolean v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_0
    instance-of p0, v0, Lk/a/b/a/c/j$a;

    if-eqz p0, :cond_1

    .line 85
    check-cast v0, Lk/a/b/a/c/j$a;

    .line 86
    new-array p0, p1, [B

    :goto_1
    if-ge v1, p1, :cond_a

    .line 87
    iget-object v2, v0, Lk/a/b/a/c/d;->b:Lk/a/b/a/c/r;

    .line 88
    invoke-virtual {v2}, Lk/a/b/a/c/r;->e()B

    move-result v2

    .line 89
    aput-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 90
    :cond_1
    instance-of p0, v0, Lk/a/b/a/c/l0$a;

    if-eqz p0, :cond_2

    .line 91
    check-cast v0, Lk/a/b/a/c/l0$a;

    .line 92
    new-array p0, p1, [S

    :goto_2
    if-ge v1, p1, :cond_a

    .line 93
    iget-object v2, v0, Lk/a/b/a/c/d;->b:Lk/a/b/a/c/r;

    .line 94
    iget-object v2, v2, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    invoke-interface {v2}, Lk/a/b/a/c/k0;->m()S

    move-result v2

    .line 95
    aput-short v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 96
    :cond_2
    instance-of p0, v0, Lk/a/b/a/c/c0$b;

    if-eqz p0, :cond_3

    .line 97
    check-cast v0, Lk/a/b/a/c/c0$b;

    .line 98
    new-array p0, p1, [I

    :goto_3
    if-ge v1, p1, :cond_a

    .line 99
    invoke-interface {v0}, Lk/a/b/a/c/c0$b;->b()I

    move-result v2

    aput v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 100
    :cond_3
    instance-of p0, v0, Lk/a/b/a/c/f0$b;

    if-eqz p0, :cond_4

    .line 101
    check-cast v0, Lk/a/b/a/c/f0$b;

    .line 102
    new-array p0, p1, [J

    :goto_4
    if-ge v1, p1, :cond_a

    .line 103
    invoke-interface {v0}, Lk/a/b/a/c/f0$b;->b()J

    move-result-wide v2

    aput-wide v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 104
    :cond_4
    instance-of p0, v0, Lk/a/b/a/c/a0$a;

    if-eqz p0, :cond_5

    .line 105
    check-cast v0, Lk/a/b/a/c/a0$a;

    .line 106
    new-array p0, p1, [F

    :goto_5
    if-ge v1, p1, :cond_a

    .line 107
    iget-object v2, v0, Lk/a/b/a/c/d;->b:Lk/a/b/a/c/r;

    .line 108
    iget-object v2, v2, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    invoke-interface {v2}, Lk/a/b/a/c/k0;->k()F

    move-result v2

    .line 109
    aput v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 110
    :cond_5
    instance-of p0, v0, Lk/a/b/a/c/t$a;

    if-eqz p0, :cond_6

    .line 111
    check-cast v0, Lk/a/b/a/c/t$a;

    .line 112
    new-array p0, p1, [D

    :goto_6
    if-ge v1, p1, :cond_a

    .line 113
    iget-object v2, v0, Lk/a/b/a/c/d;->b:Lk/a/b/a/c/r;

    .line 114
    iget-object v2, v2, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    invoke-interface {v2}, Lk/a/b/a/c/k0;->f()D

    move-result-wide v2

    .line 115
    aput-wide v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 116
    :cond_6
    instance-of p0, v0, Lk/a/b/a/c/k$a;

    if-eqz p0, :cond_7

    .line 117
    check-cast v0, Lk/a/b/a/c/k$a;

    .line 118
    new-array p0, p1, [C

    :goto_7
    if-ge v1, p1, :cond_a

    .line 119
    iget-object v2, v0, Lk/a/b/a/c/d;->b:Lk/a/b/a/c/r;

    .line 120
    invoke-virtual {v2}, Lk/a/b/a/c/r;->f()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    int-to-char v2, v2

    .line 121
    aput-char v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 122
    :cond_7
    new-instance p0, Ljava/lang/ClassCastException;

    const-string p1, "Unexpected class "

    invoke-static {p1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 123
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element count "

    const-string v2, " is specified to be greater than the amount of data available ("

    invoke-static {v1, p1, v2}, Le/a/a/a/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 124
    invoke-virtual {p0}, Lk/a/b/a/c/r;->a()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_9
    invoke-static {p0, v0, p1}, Lk/a/b/a/c/e;->a(Lk/a/b/a/c/r;Lk/a/b/a/c/q0;I)[Ljava/lang/Object;

    move-result-object p0

    :cond_a
    return-object p0
.end method

.method public static synthetic a([Ljava/lang/Object;Lk/a/b/a/c/x;)Lk/a/b/a/c/r0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lk/a/b/a/c/e;->b([Ljava/lang/Object;Lk/a/b/a/c/x;)Lk/a/b/a/c/r0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lk/a/b/a/c/r;Lk/a/b/a/c/q0;I)[Ljava/lang/Object;
    .locals 2

    .line 68
    invoke-virtual {p0}, Lk/a/b/a/c/r;->a()I

    move-result v0

    if-gt p2, v0, :cond_3

    .line 69
    instance-of p0, p1, Lk/a/b/a/c/e$b;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 70
    check-cast p1, Lk/a/b/a/c/e$b;

    .line 71
    new-array p0, p2, [Ljava/lang/Object;

    :goto_0
    if-ge v0, p2, :cond_0

    .line 72
    invoke-interface {p1}, Lk/a/b/a/c/e$b;->j()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    .line 73
    :cond_1
    invoke-interface {p1}, Lk/a/b/a/c/q0;->a()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    :goto_1
    if-ge v0, p2, :cond_2

    .line 74
    invoke-interface {p1}, Lk/a/b/a/c/q0;->k()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p0

    .line 75
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array element count "

    const-string v1, " is specified to be greater than the amount of data available ("

    invoke-static {v0, p2, v1}, Le/a/a/a/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 76
    invoke-virtual {p0}, Lk/a/b/a/c/r;->a()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static b([Ljava/lang/Object;Lk/a/b/a/c/x;)Lk/a/b/a/c/r0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Lk/a/b/a/c/x;",
            ")",
            "Lk/a/b/a/c/r0<",
            "*>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1, p0}, Lk/a/b/a/c/x;->a(Ljava/lang/Class;)Lk/a/b/a/c/a;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Lk/a/b/a/c/a;->f()Lk/a/b/a/c/r0;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lk/a/b/a/c/x;->a(Ljava/lang/Class;)Lk/a/b/a/c/a;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_13

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 6
    aget-object p1, p0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 7
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_1

    .line 8
    check-cast v0, Lk/a/b/a/c/e;

    aget-object p0, p0, v1

    check-cast p0, [Z

    invoke-virtual {v0, p0}, Lk/a/b/a/c/e;->a([Z)Lk/a/b/a/c/e$b;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_4

    .line 10
    check-cast v0, Lk/a/b/a/c/e;

    aget-object p0, p0, v1

    check-cast p0, [B

    if-eqz v0, :cond_3

    .line 11
    array-length p0, p0

    const/16 p1, 0xfe

    if-ge p0, p1, :cond_2

    iget-object p0, v0, Lk/a/b/a/c/e;->j:Lk/a/b/a/c/e$b;

    goto :goto_0

    :cond_2
    iget-object p0, v0, Lk/a/b/a/c/e;->k:Lk/a/b/a/c/e$b;

    :goto_0
    return-object p0

    :cond_3
    throw v3

    .line 12
    :cond_4
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_7

    .line 13
    check-cast v0, Lk/a/b/a/c/e;

    aget-object p0, p0, v1

    check-cast p0, [S

    if-eqz v0, :cond_6

    .line 14
    array-length p0, p0

    const/16 p1, 0x7f

    if-ge p0, p1, :cond_5

    iget-object p0, v0, Lk/a/b/a/c/e;->j:Lk/a/b/a/c/e$b;

    goto :goto_1

    :cond_5
    iget-object p0, v0, Lk/a/b/a/c/e;->k:Lk/a/b/a/c/e$b;

    :goto_1
    return-object p0

    :cond_6
    throw v3

    .line 15
    :cond_7
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_8

    .line 16
    check-cast v0, Lk/a/b/a/c/e;

    aget-object p0, p0, v1

    check-cast p0, [I

    invoke-virtual {v0, p0}, Lk/a/b/a/c/e;->b([I)Lk/a/b/a/c/e$b;

    move-result-object p0

    return-object p0

    .line 17
    :cond_8
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_9

    .line 18
    check-cast v0, Lk/a/b/a/c/e;

    aget-object p0, p0, v1

    check-cast p0, [J

    invoke-virtual {v0, p0}, Lk/a/b/a/c/e;->b([J)Lk/a/b/a/c/e$b;

    move-result-object p0

    return-object p0

    .line 19
    :cond_9
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v4, 0x3f

    if-ne p1, v2, :cond_c

    .line 20
    check-cast v0, Lk/a/b/a/c/e;

    aget-object p0, p0, v1

    check-cast p0, [F

    if-eqz v0, :cond_b

    .line 21
    array-length p0, p0

    if-ge p0, v4, :cond_a

    iget-object p0, v0, Lk/a/b/a/c/e;->j:Lk/a/b/a/c/e$b;

    goto :goto_2

    :cond_a
    iget-object p0, v0, Lk/a/b/a/c/e;->k:Lk/a/b/a/c/e$b;

    :goto_2
    return-object p0

    :cond_b
    throw v3

    .line 22
    :cond_c
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_f

    .line 23
    check-cast v0, Lk/a/b/a/c/e;

    aget-object p0, p0, v1

    check-cast p0, [D

    if-eqz v0, :cond_e

    .line 24
    array-length p0, p0

    const/16 p1, 0x1f

    if-ge p0, p1, :cond_d

    iget-object p0, v0, Lk/a/b/a/c/e;->j:Lk/a/b/a/c/e$b;

    goto :goto_3

    :cond_d
    iget-object p0, v0, Lk/a/b/a/c/e;->k:Lk/a/b/a/c/e$b;

    :goto_3
    return-object p0

    :cond_e
    throw v3

    .line 25
    :cond_f
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_12

    .line 26
    check-cast v0, Lk/a/b/a/c/e;

    aget-object p0, p0, v1

    check-cast p0, [C

    if-eqz v0, :cond_11

    .line 27
    array-length p0, p0

    if-ge p0, v4, :cond_10

    iget-object p0, v0, Lk/a/b/a/c/e;->j:Lk/a/b/a/c/e$b;

    goto :goto_4

    :cond_10
    iget-object p0, v0, Lk/a/b/a/c/e;->k:Lk/a/b/a/c/e$b;

    :goto_4
    return-object p0

    :cond_11
    throw v3

    .line 28
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot encode arrays of type "

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    if-nez v0, :cond_14

    .line 29
    aget-object v0, p0, v1

    invoke-virtual {p1, v0}, Lk/a/b/a/c/x;->a(Ljava/lang/Object;)Lk/a/b/a/c/a;

    move-result-object v0

    const/4 v2, 0x1

    goto :goto_5

    :cond_14
    const/4 v2, 0x0

    .line 30
    :goto_5
    aget-object v3, p0, v1

    invoke-interface {v0, v3}, Lk/a/b/a/c/a;->a(Ljava/lang/Object;)Lk/a/b/a/c/r0;

    move-result-object v3

    .line 31
    invoke-interface {v0}, Lk/a/b/a/c/a;->f()Lk/a/b/a/c/r0;

    move-result-object v4

    .line 32
    :goto_6
    array-length v5, p0

    if-ge v1, v5, :cond_1a

    if-nez v2, :cond_15

    if-eq v3, v4, :cond_1a

    :cond_15
    if-eqz v2, :cond_17

    .line 33
    aget-object v5, p0, v1

    invoke-virtual {p1, v5}, Lk/a/b/a/c/x;->a(Ljava/lang/Object;)Lk/a/b/a/c/a;

    move-result-object v5

    if-ne v5, v0, :cond_16

    goto :goto_7

    .line 34
    :cond_16
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non matching types "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v1

    .line 35
    invoke-virtual {p1, p0}, Lk/a/b/a/c/x;->a(Ljava/lang/Object;)Lk/a/b/a/c/a;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " in array"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 36
    :cond_17
    :goto_7
    aget-object v5, p0, v1

    invoke-interface {v0, v5}, Lk/a/b/a/c/a;->a(Ljava/lang/Object;)Lk/a/b/a/c/r0;

    move-result-object v5

    if-eq v5, v3, :cond_19

    .line 37
    invoke-interface {v3, v5}, Lk/a/b/a/c/r0;->a(Lk/a/b/a/c/r0;)Z

    move-result v6

    if-nez v6, :cond_19

    .line 38
    invoke-interface {v5, v3}, Lk/a/b/a/c/r0;->a(Lk/a/b/a/c/r0;)Z

    move-result v3

    if-eqz v3, :cond_18

    move-object v3, v5

    goto :goto_8

    :cond_18
    move-object v3, v4

    :cond_19
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    return-object v3
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 4
    const-class v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public a([Ljava/lang/Object;)Lk/a/b/a/c/e$b;
    .locals 4

    .line 5
    iget-object v0, p0, Lk/a/b/a/c/e;->a:Lk/a/b/a/c/x;

    invoke-static {p1, v0}, Lk/a/b/a/c/e;->b([Ljava/lang/Object;Lk/a/b/a/c/x;)Lk/a/b/a/c/r0;

    move-result-object v0

    .line 6
    invoke-static {p1, v0}, Lk/a/b/a/c/e;->a([Ljava/lang/Object;Lk/a/b/a/c/r0;)I

    move-result v1

    .line 7
    array-length v2, p1

    const/16 v3, 0xff

    if-gt v2, v3, :cond_1

    const/16 v2, 0xfe

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lk/a/b/a/c/e;->j:Lk/a/b/a/c/e$b;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lk/a/b/a/c/e;->k:Lk/a/b/a/c/e$b;

    .line 8
    :goto_1
    invoke-interface {v2, p1, v0, v1}, Lk/a/b/a/c/e$b;->a([Ljava/lang/Object;Lk/a/b/a/c/r0;I)V

    return-object v2
.end method

.method public final a([Z)Lk/a/b/a/c/e$b;
    .locals 5

    .line 59
    array-length v0, p1

    const/16 v1, 0xfe

    if-lt v0, v1, :cond_3

    array-length v0, p1

    const/16 v1, 0xff

    if-gt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 60
    aget-boolean v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 61
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 62
    aget-boolean v4, p1, v3

    if-eq v1, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 63
    :cond_2
    iget-object p1, p0, Lk/a/b/a/c/e;->k:Lk/a/b/a/c/e$b;

    goto :goto_3

    :cond_3
    :goto_2
    iget-object p1, p0, Lk/a/b/a/c/e;->j:Lk/a/b/a/c/e$b;

    :goto_3
    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lk/a/b/a/c/j0;
    .locals 0

    .line 2
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lk/a/b/a/c/e;->a([Ljava/lang/Object;)Lk/a/b/a/c/e$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lk/a/b/a/c/r0;
    .locals 0

    .line 3
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lk/a/b/a/c/e;->a([Ljava/lang/Object;)Lk/a/b/a/c/e$b;

    move-result-object p1

    return-object p1
.end method

.method public final a([I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 64
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 65
    aget v2, p1, v1

    const/16 v3, -0x80

    if-lt v2, v3, :cond_1

    aget v2, p1, v1

    const/16 v3, 0x7f

    if-le v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final a([J)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 66
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 67
    aget-wide v2, p1, v1

    const-wide/16 v4, -0x80

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    aget-wide v2, p1, v1

    const-wide/16 v4, 0x7f

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final b([I)Lk/a/b/a/c/e$b;
    .locals 2

    .line 39
    array-length v0, p1

    const/16 v1, 0x3f

    if-lt v0, v1, :cond_1

    array-length v0, p1

    const/16 v1, 0xfe

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lk/a/b/a/c/e;->a([I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lk/a/b/a/c/e;->k:Lk/a/b/a/c/e$b;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lk/a/b/a/c/e;->j:Lk/a/b/a/c/e$b;

    :goto_1
    return-object p1
.end method

.method public final b([J)Lk/a/b/a/c/e$b;
    .locals 2

    .line 40
    array-length v0, p1

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    array-length v0, p1

    const/16 v1, 0xfe

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lk/a/b/a/c/e;->a([J)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lk/a/b/a/c/e;->k:Lk/a/b/a/c/e$b;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lk/a/b/a/c/e;->j:Lk/a/b/a/c/e$b;

    :goto_1
    return-object p1
.end method

.method public final b([Z)Lk/a/b/a/c/h$b;
    .locals 3

    .line 41
    array-length v0, p1

    if-nez v0, :cond_0

    .line 42
    iget-object p1, p0, Lk/a/b/a/c/e;->b:Lk/a/b/a/c/h;

    .line 43
    iget-object p1, p1, Lk/a/b/a/c/h;->c:Lk/a/b/a/c/h$b;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 44
    aget-boolean v0, p1, v0

    const/4 v1, 0x1

    .line 45
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 46
    aget-boolean v2, p1, v1

    if-eq v0, v2, :cond_1

    .line 47
    iget-object p1, p0, Lk/a/b/a/c/e;->b:Lk/a/b/a/c/h;

    .line 48
    iget-object p1, p1, Lk/a/b/a/c/h;->c:Lk/a/b/a/c/h$b;

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_2
    iget-object p1, p0, Lk/a/b/a/c/e;->b:Lk/a/b/a/c/h;

    if-eqz v0, :cond_3

    .line 50
    iget-object p1, p1, Lk/a/b/a/c/h;->a:Lk/a/b/a/c/h$b;

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lk/a/b/a/c/h;->b:Lk/a/b/a/c/h$b;

    :goto_1
    return-object p1
.end method

.method public final c([I)Lk/a/b/a/c/c0$b;
    .locals 2

    .line 5
    array-length v0, p1

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lk/a/b/a/c/e;->a([I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lk/a/b/a/c/e;->e:Lk/a/b/a/c/c0;

    const/4 v1, 0x0

    aget p1, p1, v1

    const/16 v1, -0x80

    if-lt p1, v1, :cond_1

    const/16 v1, 0x7f

    if-gt p1, v1, :cond_1

    .line 7
    iget-object p1, v0, Lk/a/b/a/c/c0;->b:Lk/a/b/a/c/c0$b;

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lk/a/b/a/c/c0;->a:Lk/a/b/a/c/c0$b;

    :goto_0
    return-object p1

    .line 8
    :cond_2
    :goto_1
    iget-object p1, p0, Lk/a/b/a/c/e;->e:Lk/a/b/a/c/c0;

    .line 9
    iget-object p1, p1, Lk/a/b/a/c/c0;->a:Lk/a/b/a/c/c0$b;

    return-object p1
.end method

.method public final c([J)Lk/a/b/a/c/f0$b;
    .locals 5

    .line 10
    array-length v0, p1

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lk/a/b/a/c/e;->a([J)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    iget-object v0, p0, Lk/a/b/a/c/e;->f:Lk/a/b/a/c/f0;

    const/4 v1, 0x0

    aget-wide v1, p1, v1

    const-wide/16 v3, -0x80

    cmp-long p1, v1, v3

    if-ltz p1, :cond_1

    const-wide/16 v3, 0x7f

    cmp-long p1, v1, v3

    if-gtz p1, :cond_1

    .line 12
    iget-object p1, v0, Lk/a/b/a/c/f0;->b:Lk/a/b/a/c/f0$b;

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lk/a/b/a/c/f0;->a:Lk/a/b/a/c/f0$b;

    :goto_0
    return-object p1

    .line 13
    :cond_2
    :goto_1
    iget-object p1, p0, Lk/a/b/a/c/e;->f:Lk/a/b/a/c/f0;

    .line 14
    iget-object p1, p1, Lk/a/b/a/c/f0;->a:Lk/a/b/a/c/f0$b;

    return-object p1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p1}, Lk/a/b/a/c/e;->a([Ljava/lang/Object;)Lk/a/b/a/c/e$b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lk/a/b/a/c/j0;->c()V

    .line 4
    invoke-interface {v0, p1}, Lk/a/b/a/c/r0;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public f()Lk/a/b/a/c/r0;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/e;->k:Lk/a/b/a/c/e$b;

    return-object v0
.end method

.method public i()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lk/a/b/a/c/e$b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lk/a/b/a/c/e$b;

    .line 1
    iget-object v1, p0, Lk/a/b/a/c/e;->j:Lk/a/b/a/c/e$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lk/a/b/a/c/e;->k:Lk/a/b/a/c/e$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
