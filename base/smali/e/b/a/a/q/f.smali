.class public Le/b/a/a/q/f;
.super Le/b/a/a/o/b;
.source "SourceFile"


# static fields
.field public static final a0:I

.field public static final b0:[I


# instance fields
.field public T:Ljava/io/Reader;

.field public U:[C

.field public V:Z

.field public final W:Le/b/a/a/r/b;

.field public final X:I

.field public Y:Z

.field public Z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Le/b/a/a/i$a;->ALLOW_TRAILING_COMMA:Le/b/a/a/i$a;

    invoke-virtual {v0}, Le/b/a/a/i$a;->getMask()I

    move-result v0

    sput v0, Le/b/a/a/q/f;->a0:I

    .line 2
    sget-object v0, Le/b/a/a/p/a;->c:[I

    .line 3
    sput-object v0, Le/b/a/a/q/f;->b0:[I

    return-void
.end method

.method public constructor <init>(Le/b/a/a/p/b;ILjava/io/Reader;Le/b/a/a/r/b;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Le/b/a/a/o/b;-><init>(Le/b/a/a/p/b;I)V

    .line 11
    iput-object p3, p0, Le/b/a/a/q/f;->T:Ljava/io/Reader;

    .line 12
    iget-object p2, p1, Le/b/a/a/p/b;->g:[C

    invoke-virtual {p1, p2}, Le/b/a/a/p/b;->a(Ljava/lang/Object;)V

    .line 13
    iget-object p2, p1, Le/b/a/a/p/b;->d:Le/b/a/a/s/a;

    const/4 p3, 0x0

    .line 14
    invoke-virtual {p2, p3, p3}, Le/b/a/a/s/a;->a(II)[C

    move-result-object p2

    .line 15
    iput-object p2, p1, Le/b/a/a/p/b;->g:[C

    .line 16
    iput-object p2, p0, Le/b/a/a/q/f;->U:[C

    .line 17
    iput p3, p0, Le/b/a/a/o/b;->G:I

    .line 18
    iput p3, p0, Le/b/a/a/o/b;->H:I

    .line 19
    iput-object p4, p0, Le/b/a/a/q/f;->W:Le/b/a/a/r/b;

    .line 20
    iget p1, p4, Le/b/a/a/r/b;->c:I

    .line 21
    iput p1, p0, Le/b/a/a/q/f;->X:I

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Le/b/a/a/q/f;->V:Z

    return-void
.end method

.method public constructor <init>(Le/b/a/a/p/b;ILjava/io/Reader;Le/b/a/a/r/b;[CIIZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/b/a/a/o/b;-><init>(Le/b/a/a/p/b;I)V

    .line 2
    iput-object p3, p0, Le/b/a/a/q/f;->T:Ljava/io/Reader;

    .line 3
    iput-object p5, p0, Le/b/a/a/q/f;->U:[C

    .line 4
    iput p6, p0, Le/b/a/a/o/b;->G:I

    .line 5
    iput p7, p0, Le/b/a/a/o/b;->H:I

    .line 6
    iput-object p4, p0, Le/b/a/a/q/f;->W:Le/b/a/a/r/b;

    .line 7
    iget p1, p4, Le/b/a/a/r/b;->c:I

    .line 8
    iput p1, p0, Le/b/a/a/q/f;->X:I

    .line 9
    iput-boolean p8, p0, Le/b/a/a/q/f;->V:Z

    return-void
.end method


# virtual methods
.method public final a(Z)I
    .locals 4

    .line 123
    :cond_0
    :goto_0
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iget v1, p0, Le/b/a/a/o/b;->H:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Le/b/a/a/q/f;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, " within/between "

    .line 124
    invoke-static {p1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    invoke-virtual {v0}, Le/b/a/a/k;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " entries"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Le/b/a/a/o/c;->a(Ljava/lang/String;Le/b/a/a/l;)V

    throw v2

    .line 125
    :cond_2
    :goto_1
    iget-object v0, p0, Le/b/a/a/q/f;->U:[C

    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Le/b/a/a/o/b;->G:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-le v0, v1, :cond_7

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3

    .line 126
    invoke-virtual {p0}, Le/b/a/a/q/f;->u()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x23

    if-ne v0, v1, :cond_4

    .line 127
    invoke-virtual {p0}, Le/b/a/a/q/f;->x()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    return v0

    :cond_5
    const/16 p1, 0x3a

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_0

    :cond_6
    const-string p1, "was expecting a colon to separate field name and value"

    .line 128
    invoke-virtual {p0, v0, p1}, Le/b/a/a/o/c;->a(ILjava/lang/String;)V

    throw v2

    :cond_7
    if-ge v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    .line 129
    iget v0, p0, Le/b/a/a/o/b;->J:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/b/a/a/o/b;->J:I

    .line 130
    iput v3, p0, Le/b/a/a/o/b;->K:I

    goto :goto_0

    :cond_8
    const/16 v1, 0xd

    if-ne v0, v1, :cond_9

    .line 131
    invoke-virtual {p0}, Le/b/a/a/q/f;->t()V

    goto :goto_0

    :cond_9
    const/16 v1, 0x9

    if-ne v0, v1, :cond_a

    goto :goto_0

    .line 132
    :cond_a
    invoke-virtual {p0, v0}, Le/b/a/a/o/c;->a(I)V

    throw v2
.end method

.method public final a(IIIZI)Le/b/a/a/l;
    .locals 6

    .line 17
    iget p5, p0, Le/b/a/a/o/b;->H:I

    const/4 v0, 0x0

    const/16 v1, 0x39

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/16 v4, 0x2e

    if-ne p1, v4, :cond_4

    const/4 p1, 0x0

    :goto_0
    if-lt p3, p5, :cond_0

    .line 18
    invoke-virtual {p0, p4, p2}, Le/b/a/a/q/f;->a(ZI)Le/b/a/a/l;

    move-result-object p1

    return-object p1

    .line 19
    :cond_0
    iget-object v4, p0, Le/b/a/a/q/f;->U:[C

    add-int/lit8 v5, p3, 0x1

    aget-char p3, v4, p3

    if-lt p3, v2, :cond_2

    if-le p3, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    move p3, v5

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    move p1, p3

    move p3, v5

    goto :goto_2

    :cond_3
    const-string p1, "Decimal point not followed by a digit"

    .line 20
    invoke-virtual {p0, p3, p1}, Le/b/a/a/o/c;->c(ILjava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    const/16 v4, 0x65

    if-eq p1, v4, :cond_5

    const/16 v4, 0x45

    if-ne p1, v4, :cond_c

    :cond_5
    if-lt p3, p5, :cond_6

    .line 21
    iput p2, p0, Le/b/a/a/o/b;->G:I

    .line 22
    invoke-virtual {p0, p4, p2}, Le/b/a/a/q/f;->a(ZI)Le/b/a/a/l;

    move-result-object p1

    return-object p1

    .line 23
    :cond_6
    iget-object p1, p0, Le/b/a/a/q/f;->U:[C

    add-int/lit8 v4, p3, 0x1

    aget-char p1, p1, p3

    const/16 p3, 0x2d

    if-eq p1, p3, :cond_8

    const/16 p3, 0x2b

    if-ne p1, p3, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    move p3, v4

    goto :goto_5

    :cond_8
    :goto_4
    if-lt v4, p5, :cond_9

    .line 24
    iput p2, p0, Le/b/a/a/o/b;->G:I

    .line 25
    invoke-virtual {p0, p4, p2}, Le/b/a/a/q/f;->a(ZI)Le/b/a/a/l;

    move-result-object p1

    return-object p1

    .line 26
    :cond_9
    iget-object p1, p0, Le/b/a/a/q/f;->U:[C

    add-int/lit8 p3, v4, 0x1

    aget-char p1, p1, v4

    :goto_5
    if-gt p1, v1, :cond_b

    if-lt p1, v2, :cond_b

    add-int/lit8 v3, v3, 0x1

    if-lt p3, p5, :cond_a

    .line 27
    iput p2, p0, Le/b/a/a/o/b;->G:I

    .line 28
    invoke-virtual {p0, p4, p2}, Le/b/a/a/q/f;->a(ZI)Le/b/a/a/l;

    move-result-object p1

    return-object p1

    .line 29
    :cond_a
    iget-object p1, p0, Le/b/a/a/q/f;->U:[C

    add-int/lit8 v4, p3, 0x1

    aget-char p1, p1, p3

    goto :goto_3

    :cond_b
    if-eqz v3, :cond_e

    :cond_c
    add-int/lit8 p3, p3, -0x1

    .line 30
    iput p3, p0, Le/b/a/a/o/b;->G:I

    .line 31
    iget-object p4, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    invoke-virtual {p4}, Le/b/a/a/k;->d()Z

    move-result p4

    if-eqz p4, :cond_d

    .line 32
    invoke-virtual {p0, p1}, Le/b/a/a/q/f;->d(I)V

    :cond_d
    sub-int/2addr p3, p2

    .line 33
    iget-object p1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    iget-object p4, p0, Le/b/a/a/q/f;->U:[C

    invoke-virtual {p1, p4, p2, p3}, Le/b/a/a/s/g;->a([CII)V

    .line 34
    sget-object p1, Le/b/a/a/l;->VALUE_NUMBER_FLOAT:Le/b/a/a/l;

    return-object p1

    :cond_e
    const-string p2, "Exponent indicator not followed by a digit"

    .line 35
    invoke-virtual {p0, p1, p2}, Le/b/a/a/o/c;->c(ILjava/lang/String;)V

    throw v0
.end method

.method public a(IZ)Le/b/a/a/l;
    .locals 9

    const/4 v0, 0x0

    const/16 v1, 0x49

    if-ne p1, v1, :cond_9

    .line 89
    iget p1, p0, Le/b/a/a/o/b;->G:I

    iget v1, p0, Le/b/a/a/o/b;->H:I

    if-lt p1, v1, :cond_1

    .line 90
    invoke-virtual {p0}, Le/b/a/a/q/f;->q()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    sget-object p1, Le/b/a/a/l;->VALUE_NUMBER_INT:Le/b/a/a/l;

    invoke-virtual {p0, p1}, Le/b/a/a/o/c;->a(Le/b/a/a/l;)V

    throw v0

    .line 92
    :cond_1
    :goto_0
    iget-object p1, p0, Le/b/a/a/q/f;->U:[C

    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/o/b;->G:I

    aget-char p1, p1, v1

    const/16 v1, 0x4e

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-string v6, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    const-string v7, "Non-standard token \'"

    const/4 v8, 0x3

    if-ne p1, v1, :cond_5

    if-eqz p2, :cond_2

    const-string p1, "-INF"

    goto :goto_1

    :cond_2
    const-string p1, "+INF"

    .line 93
    :goto_1
    invoke-virtual {p0, p1, v8}, Le/b/a/a/q/f;->a(Ljava/lang/String;I)V

    .line 94
    sget-object v0, Le/b/a/a/i$a;->ALLOW_NON_NUMERIC_NUMBERS:Le/b/a/a/i$a;

    invoke-virtual {p0, v0}, Le/b/a/a/i;->a(Le/b/a/a/i$a;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move-wide v2, v4

    .line 95
    :goto_2
    invoke-virtual {p0, p1, v2, v3}, Le/b/a/a/o/b;->a(Ljava/lang/String;D)Le/b/a/a/l;

    move-result-object p1

    return-object p1

    .line 96
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-virtual {p0, p1}, Le/b/a/a/i;->a(Ljava/lang/String;)Le/b/a/a/h;

    move-result-object p1

    throw p1

    :cond_5
    const/16 v1, 0x6e

    if-ne p1, v1, :cond_9

    if-eqz p2, :cond_6

    const-string p1, "-Infinity"

    goto :goto_3

    :cond_6
    const-string p1, "+Infinity"

    .line 98
    :goto_3
    invoke-virtual {p0, p1, v8}, Le/b/a/a/q/f;->a(Ljava/lang/String;I)V

    .line 99
    sget-object v0, Le/b/a/a/i$a;->ALLOW_NON_NUMERIC_NUMBERS:Le/b/a/a/i$a;

    invoke-virtual {p0, v0}, Le/b/a/a/i;->a(Le/b/a/a/i$a;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    move-wide v2, v4

    .line 100
    :goto_4
    invoke-virtual {p0, p1, v2, v3}, Le/b/a/a/o/b;->a(Ljava/lang/String;D)Le/b/a/a/l;

    move-result-object p1

    return-object p1

    .line 101
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {p0, p1}, Le/b/a/a/i;->a(Ljava/lang/String;)Le/b/a/a/h;

    move-result-object p1

    throw p1

    :cond_9
    const-string p2, "expected digit (0-9) to follow minus sign, for valid numeric value"

    .line 103
    invoke-virtual {p0, p1, p2}, Le/b/a/a/o/c;->c(ILjava/lang/String;)V

    throw v0
.end method

.method public final a(ZI)Le/b/a/a/l;
    .locals 12

    if-eqz p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 36
    :cond_0
    iput p2, p0, Le/b/a/a/o/b;->G:I

    .line 37
    iget-object p2, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {p2}, Le/b/a/a/s/g;->c()[C

    move-result-object p2

    const/16 v0, 0x2d

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 38
    aput-char v0, p2, v1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 39
    :goto_0
    iget v4, p0, Le/b/a/a/o/b;->G:I

    iget v5, p0, Le/b/a/a/o/b;->H:I

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Le/b/a/a/q/f;->U:[C

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Le/b/a/a/o/b;->G:I

    aget-char v4, v5, v4

    goto :goto_1

    :cond_2
    sget-object v4, Le/b/a/a/l;->VALUE_NUMBER_INT:Le/b/a/a/l;

    const-string v5, "No digit following minus sign"

    invoke-virtual {p0, v5, v4}, Le/b/a/a/q/f;->b(Ljava/lang/String;Le/b/a/a/l;)C

    move-result v4

    :goto_1
    const/16 v5, 0x39

    const/16 v6, 0x30

    if-ne v4, v6, :cond_b

    .line 40
    iget v4, p0, Le/b/a/a/o/b;->G:I

    iget v7, p0, Le/b/a/a/o/b;->H:I

    if-ge v4, v7, :cond_3

    .line 41
    iget-object v7, p0, Le/b/a/a/q/f;->U:[C

    aget-char v4, v7, v4

    if-lt v4, v6, :cond_a

    if-le v4, v5, :cond_3

    goto :goto_2

    .line 42
    :cond_3
    iget v4, p0, Le/b/a/a/o/b;->G:I

    iget v7, p0, Le/b/a/a/o/b;->H:I

    if-lt v4, v7, :cond_4

    invoke-virtual {p0}, Le/b/a/a/q/f;->q()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    .line 43
    :cond_4
    iget-object v4, p0, Le/b/a/a/q/f;->U:[C

    iget v7, p0, Le/b/a/a/o/b;->G:I

    aget-char v4, v4, v7

    if-lt v4, v6, :cond_a

    if-le v4, v5, :cond_5

    goto :goto_2

    .line 44
    :cond_5
    sget-object v7, Le/b/a/a/i$a;->ALLOW_NUMERIC_LEADING_ZEROS:Le/b/a/a/i$a;

    invoke-virtual {p0, v7}, Le/b/a/a/i;->a(Le/b/a/a/i$a;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 45
    iget v7, p0, Le/b/a/a/o/b;->G:I

    add-int/2addr v7, v2

    iput v7, p0, Le/b/a/a/o/b;->G:I

    if-ne v4, v6, :cond_b

    .line 46
    :cond_6
    iget v7, p0, Le/b/a/a/o/b;->G:I

    iget v8, p0, Le/b/a/a/o/b;->H:I

    if-lt v7, v8, :cond_7

    invoke-virtual {p0}, Le/b/a/a/q/f;->q()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 47
    :cond_7
    iget-object v4, p0, Le/b/a/a/q/f;->U:[C

    iget v7, p0, Le/b/a/a/o/b;->G:I

    aget-char v4, v4, v7

    if-lt v4, v6, :cond_a

    if-le v4, v5, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 48
    iput v7, p0, Le/b/a/a/o/b;->G:I

    if-eq v4, v6, :cond_6

    goto :goto_3

    .line 49
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid numeric value: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Leading zeroes not allowed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Le/b/a/a/i;->a(Ljava/lang/String;)Le/b/a/a/h;

    move-result-object p1

    throw p1

    :cond_a
    :goto_2
    const/16 v4, 0x30

    :cond_b
    :goto_3
    const/4 v7, 0x0

    :goto_4
    if-lt v4, v6, :cond_e

    if-gt v4, v5, :cond_e

    add-int/lit8 v7, v7, 0x1

    .line 51
    array-length v8, p2

    if-lt v3, v8, :cond_c

    .line 52
    iget-object p2, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {p2}, Le/b/a/a/s/g;->f()[C

    move-result-object p2

    const/4 v3, 0x0

    :cond_c
    add-int/lit8 v8, v3, 0x1

    .line 53
    aput-char v4, p2, v3

    .line 54
    iget v3, p0, Le/b/a/a/o/b;->G:I

    iget v4, p0, Le/b/a/a/o/b;->H:I

    if-lt v3, v4, :cond_d

    invoke-virtual {p0}, Le/b/a/a/q/f;->q()Z

    move-result v3

    if-nez v3, :cond_d

    move v3, v8

    const/4 v4, 0x0

    const/4 v8, 0x1

    goto :goto_5

    .line 55
    :cond_d
    iget-object v3, p0, Le/b/a/a/q/f;->U:[C

    iget v4, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v9, v4, 0x1

    iput v9, p0, Le/b/a/a/o/b;->G:I

    aget-char v4, v3, v4

    move v3, v8

    goto :goto_4

    :cond_e
    const/4 v8, 0x0

    :goto_5
    if-nez v7, :cond_f

    .line 56
    invoke-virtual {p0, v4, p1}, Le/b/a/a/q/f;->a(IZ)Le/b/a/a/l;

    move-result-object p1

    return-object p1

    :cond_f
    const/16 p1, 0x2e

    const/4 v7, 0x0

    if-ne v4, p1, :cond_16

    .line 57
    array-length p1, p2

    if-lt v3, p1, :cond_10

    .line 58
    iget-object p1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {p1}, Le/b/a/a/s/g;->f()[C

    move-result-object p2

    const/4 v3, 0x0

    :cond_10
    add-int/lit8 p1, v3, 0x1

    .line 59
    aput-char v4, p2, v3

    move v3, p1

    const/4 p1, 0x0

    .line 60
    :goto_6
    iget v9, p0, Le/b/a/a/o/b;->G:I

    iget v10, p0, Le/b/a/a/o/b;->H:I

    if-lt v9, v10, :cond_11

    invoke-virtual {p0}, Le/b/a/a/q/f;->q()Z

    move-result v9

    if-nez v9, :cond_11

    const/4 v8, 0x1

    goto :goto_7

    .line 61
    :cond_11
    iget-object v4, p0, Le/b/a/a/q/f;->U:[C

    iget v9, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Le/b/a/a/o/b;->G:I

    aget-char v4, v4, v9

    if-lt v4, v6, :cond_14

    if-le v4, v5, :cond_12

    goto :goto_7

    :cond_12
    add-int/lit8 p1, p1, 0x1

    .line 62
    array-length v9, p2

    if-lt v3, v9, :cond_13

    .line 63
    iget-object p2, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {p2}, Le/b/a/a/s/g;->f()[C

    move-result-object p2

    const/4 v3, 0x0

    :cond_13
    add-int/lit8 v9, v3, 0x1

    .line 64
    aput-char v4, p2, v3

    move v3, v9

    goto :goto_6

    :cond_14
    :goto_7
    if-eqz p1, :cond_15

    goto :goto_8

    :cond_15
    const-string p1, "Decimal point not followed by a digit"

    .line 65
    invoke-virtual {p0, v4, p1}, Le/b/a/a/o/c;->c(ILjava/lang/String;)V

    throw v7

    :cond_16
    const/4 p1, 0x0

    :goto_8
    const/16 v9, 0x65

    if-eq v4, v9, :cond_17

    const/16 v9, 0x45

    if-ne v4, v9, :cond_21

    .line 66
    :cond_17
    array-length v9, p2

    if-lt v3, v9, :cond_18

    .line 67
    iget-object p2, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {p2}, Le/b/a/a/s/g;->f()[C

    move-result-object p2

    const/4 v3, 0x0

    :cond_18
    add-int/lit8 v9, v3, 0x1

    .line 68
    aput-char v4, p2, v3

    .line 69
    iget v3, p0, Le/b/a/a/o/b;->G:I

    iget v4, p0, Le/b/a/a/o/b;->H:I

    const-string v10, "expected a digit for number exponent"

    if-ge v3, v4, :cond_19

    iget-object v4, p0, Le/b/a/a/q/f;->U:[C

    add-int/lit8 v11, v3, 0x1

    iput v11, p0, Le/b/a/a/o/b;->G:I

    aget-char v3, v4, v3

    goto :goto_9

    .line 70
    :cond_19
    invoke-virtual {p0, v10, v7}, Le/b/a/a/q/f;->b(Ljava/lang/String;Le/b/a/a/l;)C

    move-result v3

    :goto_9
    if-eq v3, v0, :cond_1a

    const/16 v0, 0x2b

    if-ne v3, v0, :cond_1d

    .line 71
    :cond_1a
    array-length v0, p2

    if-lt v9, v0, :cond_1b

    .line 72
    iget-object p2, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {p2}, Le/b/a/a/s/g;->f()[C

    move-result-object p2

    const/4 v9, 0x0

    :cond_1b
    add-int/lit8 v0, v9, 0x1

    .line 73
    aput-char v3, p2, v9

    .line 74
    iget v3, p0, Le/b/a/a/o/b;->G:I

    iget v4, p0, Le/b/a/a/o/b;->H:I

    if-ge v3, v4, :cond_1c

    iget-object v4, p0, Le/b/a/a/q/f;->U:[C

    add-int/lit8 v9, v3, 0x1

    iput v9, p0, Le/b/a/a/o/b;->G:I

    aget-char v3, v4, v3

    goto :goto_a

    .line 75
    :cond_1c
    invoke-virtual {p0, v10, v7}, Le/b/a/a/q/f;->b(Ljava/lang/String;Le/b/a/a/l;)C

    move-result v3

    :goto_a
    move v9, v0

    :cond_1d
    move v4, v3

    const/4 v0, 0x0

    :goto_b
    if-gt v4, v5, :cond_20

    if-lt v4, v6, :cond_20

    add-int/lit8 v0, v0, 0x1

    .line 76
    array-length v3, p2

    if-lt v9, v3, :cond_1e

    .line 77
    iget-object p2, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {p2}, Le/b/a/a/s/g;->f()[C

    move-result-object p2

    const/4 v9, 0x0

    :cond_1e
    add-int/lit8 v3, v9, 0x1

    .line 78
    aput-char v4, p2, v9

    .line 79
    iget v9, p0, Le/b/a/a/o/b;->G:I

    iget v10, p0, Le/b/a/a/o/b;->H:I

    if-lt v9, v10, :cond_1f

    invoke-virtual {p0}, Le/b/a/a/q/f;->q()Z

    move-result v9

    if-nez v9, :cond_1f

    move v1, v0

    const/4 v8, 0x1

    goto :goto_c

    .line 80
    :cond_1f
    iget-object v4, p0, Le/b/a/a/q/f;->U:[C

    iget v9, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Le/b/a/a/o/b;->G:I

    aget-char v4, v4, v9

    move v9, v3

    goto :goto_b

    :cond_20
    move v1, v0

    move v3, v9

    :goto_c
    if-eqz v1, :cond_24

    :cond_21
    if-nez v8, :cond_22

    .line 81
    iget p2, p0, Le/b/a/a/o/b;->G:I

    sub-int/2addr p2, v2

    iput p2, p0, Le/b/a/a/o/b;->G:I

    .line 82
    iget-object p2, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    invoke-virtual {p2}, Le/b/a/a/k;->d()Z

    move-result p2

    if-eqz p2, :cond_22

    .line 83
    invoke-virtual {p0, v4}, Le/b/a/a/q/f;->d(I)V

    .line 84
    :cond_22
    iget-object p2, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    .line 85
    iput v3, p2, Le/b/a/a/s/g;->i:I

    if-ge p1, v2, :cond_23

    if-ge v1, v2, :cond_23

    .line 86
    sget-object p1, Le/b/a/a/l;->VALUE_NUMBER_INT:Le/b/a/a/l;

    goto :goto_d

    .line 87
    :cond_23
    sget-object p1, Le/b/a/a/l;->VALUE_NUMBER_FLOAT:Le/b/a/a/l;

    :goto_d
    return-object p1

    :cond_24
    const-string p1, "Exponent indicator not followed by a digit"

    .line 88
    invoke-virtual {p0, v4, p1}, Le/b/a/a/o/c;->c(ILjava/lang/String;)V

    throw v7
.end method

.method public final a(III)Ljava/lang/String;
    .locals 5

    .line 104
    iget-object v0, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    iget-object v1, p0, Le/b/a/a/q/f;->U:[C

    iget v2, p0, Le/b/a/a/o/b;->G:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2}, Le/b/a/a/s/g;->a([CII)V

    .line 105
    iget-object p1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {p1}, Le/b/a/a/s/g;->g()[C

    move-result-object p1

    .line 106
    iget-object v0, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    .line 107
    iget v0, v0, Le/b/a/a/s/g;->i:I

    const/4 v1, 0x0

    .line 108
    :goto_0
    iget v2, p0, Le/b/a/a/o/b;->G:I

    iget v3, p0, Le/b/a/a/o/b;->H:I

    if-lt v2, v3, :cond_1

    .line 109
    invoke-virtual {p0}, Le/b/a/a/q/f;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 110
    :cond_0
    sget-object p1, Le/b/a/a/l;->FIELD_NAME:Le/b/a/a/l;

    const-string p2, " in field name"

    invoke-virtual {p0, p2, p1}, Le/b/a/a/o/c;->a(Ljava/lang/String;Le/b/a/a/l;)V

    const/4 p1, 0x0

    throw p1

    .line 111
    :cond_1
    :goto_1
    iget-object v2, p0, Le/b/a/a/q/f;->U:[C

    iget v3, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Le/b/a/a/o/b;->G:I

    aget-char v2, v2, v3

    const/16 v3, 0x5c

    if-gt v2, v3, :cond_5

    if-ne v2, v3, :cond_2

    .line 112
    invoke-virtual {p0}, Le/b/a/a/q/f;->k()C

    move-result v2

    goto :goto_2

    :cond_2
    if-gt v2, p3, :cond_5

    if-ne v2, p3, :cond_4

    .line 113
    iget-object p1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    .line 114
    iput v0, p1, Le/b/a/a/s/g;->i:I

    .line 115
    invoke-virtual {p1}, Le/b/a/a/s/g;->h()[C

    move-result-object p3

    .line 116
    iget v0, p1, Le/b/a/a/s/g;->c:I

    if-ltz v0, :cond_3

    move v1, v0

    .line 117
    :cond_3
    invoke-virtual {p1}, Le/b/a/a/s/g;->j()I

    move-result p1

    .line 118
    iget-object v0, p0, Le/b/a/a/q/f;->W:Le/b/a/a/r/b;

    invoke-virtual {v0, p3, v1, p1, p2}, Le/b/a/a/r/b;->a([CIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const/16 v3, 0x20

    if-ge v2, v3, :cond_5

    const-string v3, "name"

    .line 119
    invoke-virtual {p0, v2, v3}, Le/b/a/a/o/c;->b(ILjava/lang/String;)V

    :cond_5
    :goto_2
    mul-int/lit8 p2, p2, 0x21

    add-int/2addr p2, v2

    add-int/lit8 v3, v0, 0x1

    .line 120
    aput-char v2, p1, v0

    .line 121
    array-length v0, p1

    if-lt v3, v0, :cond_6

    .line 122
    iget-object p1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {p1}, Le/b/a/a/s/g;->f()[C

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 8

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 134
    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/2addr v1, v0

    iget v2, p0, Le/b/a/a/o/b;->H:I

    const/16 v3, 0x7d

    const/16 v4, 0x5d

    const/16 v5, 0x30

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-lt v1, v2, :cond_5

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 136
    :cond_0
    iget v1, p0, Le/b/a/a/o/b;->G:I

    iget v2, p0, Le/b/a/a/o/b;->H:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Le/b/a/a/q/f;->q()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    iget-object v1, p0, Le/b/a/a/q/f;->U:[C

    iget v2, p0, Le/b/a/a/o/b;->G:I

    aget-char v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_4

    .line 137
    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_0

    .line 138
    iget v0, p0, Le/b/a/a/o/b;->H:I

    if-lt v1, v0, :cond_2

    invoke-virtual {p0}, Le/b/a/a/q/f;->q()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Le/b/a/a/q/f;->U:[C

    iget v1, p0, Le/b/a/a/o/b;->G:I

    aget-char v0, v0, v1

    if-lt v0, v5, :cond_3

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_3

    .line 140
    invoke-virtual {p0, p1, p2, v0}, Le/b/a/a/q/f;->a(Ljava/lang/String;II)V

    :cond_3
    :goto_0
    return-void

    .line 141
    :cond_4
    invoke-virtual {p1, v7, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/b/a/a/q/f;->c(Ljava/lang/String;)V

    throw v6

    .line 142
    :cond_5
    iget-object v1, p0, Le/b/a/a/q/f;->U:[C

    iget v2, p0, Le/b/a/a/o/b;->G:I

    aget-char v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_7

    .line 143
    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_5

    .line 144
    iget-object v0, p0, Le/b/a/a/q/f;->U:[C

    aget-char v0, v0, v1

    if-lt v0, v5, :cond_6

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_6

    .line 145
    invoke-virtual {p0, p1, p2, v0}, Le/b/a/a/q/f;->a(Ljava/lang/String;II)V

    :cond_6
    return-void

    .line 146
    :cond_7
    invoke-virtual {p1, v7, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/b/a/a/q/f;->c(Ljava/lang/String;)V

    throw v6
.end method

.method public final a(Ljava/lang/String;II)V
    .locals 0

    int-to-char p3, p3

    .line 147
    invoke-static {p3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    .line 148
    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/b/a/a/q/f;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    :goto_0
    iget p1, p0, Le/b/a/a/o/b;->G:I

    iget v1, p0, Le/b/a/a/o/b;->H:I

    if-lt p1, v1, :cond_0

    invoke-virtual {p0}, Le/b/a/a/q/f;->q()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 151
    :cond_0
    iget-object p1, p0, Le/b/a/a/q/f;->U:[C

    iget v1, p0, Le/b/a/a/o/b;->G:I

    aget-char p1, p1, v1

    .line 152
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Le/b/a/a/o/b;->G:I

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/16 v1, 0x100

    if-ge p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "..."

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p1, "Unrecognized token \'%s\': was expecting %s"

    .line 157
    invoke-virtual {p0, p1, v0, p2}, Le/b/a/a/o/c;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Le/b/a/a/a;)[B
    .locals 3

    .line 1
    iget-object v0, p0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    sget-object v1, Le/b/a/a/l;->VALUE_EMBEDDED_OBJECT:Le/b/a/a/l;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/b/a/a/o/b;->S:[B

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    sget-object v1, Le/b/a/a/l;->VALUE_STRING:Le/b/a/a/l;

    if-ne v0, v1, :cond_3

    .line 3
    iget-boolean v0, p0, Le/b/a/a/q/f;->Y:Z

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Le/b/a/a/q/f;->b(Le/b/a/a/a;)[B

    move-result-object v0

    iput-object v0, p0, Le/b/a/a/o/b;->S:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Le/b/a/a/q/f;->Y:Z

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to decode VALUE_STRING as base64 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/b/a/a/i;->a(Ljava/lang/String;)Le/b/a/a/h;

    move-result-object p1

    throw p1

    .line 7
    :cond_1
    iget-object v0, p0, Le/b/a/a/o/b;->S:[B

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p0}, Le/b/a/a/o/b;->m()Le/b/a/a/s/c;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Le/b/a/a/q/f;->i()Ljava/lang/String;

    move-result-object v1

    .line 10
    :try_start_1
    invoke-virtual {p1, v1, v0}, Le/b/a/a/a;->a(Ljava/lang/String;Le/b/a/a/s/c;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 11
    invoke-virtual {v0}, Le/b/a/a/s/c;->c()[B

    move-result-object p1

    iput-object p1, p0, Le/b/a/a/o/b;->S:[B

    goto :goto_0

    :catch_1
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Le/b/a/a/i;->a(Ljava/lang/String;)Le/b/a/a/h;

    move-result-object p1

    throw p1

    .line 14
    :cond_2
    :goto_0
    iget-object p1, p0, Le/b/a/a/o/b;->S:[B

    return-object p1

    :cond_3
    const-string p1, "Current token ("

    .line 15
    invoke-static {p1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Le/b/a/a/i;->a(Ljava/lang/String;)Le/b/a/a/h;

    move-result-object p1

    throw p1
.end method

.method public b(Ljava/lang/String;Le/b/a/a/l;)C
    .locals 2

    .line 1
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iget v1, p0, Le/b/a/a/o/b;->H:I

    if-lt v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Le/b/a/a/q/f;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Le/b/a/a/o/c;->a(Ljava/lang/String;Le/b/a/a/l;)V

    const/4 p1, 0x0

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Le/b/a/a/q/f;->U:[C

    iget p2, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Le/b/a/a/o/b;->G:I

    aget-char p1, p1, p2

    return p1
.end method

.method public b()Le/b/a/a/g;
    .locals 9

    .line 51
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iget v1, p0, Le/b/a/a/o/b;->K:I

    sub-int/2addr v0, v1

    add-int/lit8 v8, v0, 0x1

    .line 52
    new-instance v0, Le/b/a/a/g;

    invoke-virtual {p0}, Le/b/a/a/o/b;->n()Ljava/lang/Object;

    move-result-object v2

    iget-wide v3, p0, Le/b/a/a/o/b;->I:J

    iget v1, p0, Le/b/a/a/o/b;->G:I

    int-to-long v5, v1

    add-long/2addr v5, v3

    iget v7, p0, Le/b/a/a/o/b;->J:I

    const-wide/16 v3, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Le/b/a/a/g;-><init>(Ljava/lang/Object;JJII)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 5
    iget-object v0, p0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    sget-object v1, Le/b/a/a/l;->VALUE_STRING:Le/b/a/a/l;

    if-ne v0, v1, :cond_1

    .line 6
    iget-boolean p1, p0, Le/b/a/a/q/f;->Y:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Le/b/a/a/q/f;->Y:Z

    .line 8
    invoke-virtual {p0}, Le/b/a/a/q/f;->p()V

    .line 9
    :cond_0
    iget-object p1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {p1}, Le/b/a/a/s/g;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    sget-object v1, Le/b/a/a/l;->FIELD_NAME:Le/b/a/a/l;

    if-ne v0, v1, :cond_2

    .line 11
    invoke-virtual {p0}, Le/b/a/a/o/b;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2
    invoke-super {p0, p1}, Le/b/a/a/o/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Le/b/a/a/a;)[B
    .locals 8

    .line 13
    invoke-virtual {p0}, Le/b/a/a/o/b;->m()Le/b/a/a/s/c;

    move-result-object v0

    .line 14
    :cond_0
    :goto_0
    iget v1, p0, Le/b/a/a/o/b;->G:I

    iget v2, p0, Le/b/a/a/o/b;->H:I

    if-lt v1, v2, :cond_1

    .line 15
    invoke-virtual {p0}, Le/b/a/a/q/f;->r()V

    .line 16
    :cond_1
    iget-object v1, p0, Le/b/a/a/q/f;->U:[C

    iget v2, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Le/b/a/a/o/b;->G:I

    aget-char v1, v1, v2

    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    .line 17
    invoke-virtual {p1, v1}, Le/b/a/a/a;->a(C)I

    move-result v2

    const/16 v3, 0x22

    if-gez v2, :cond_3

    if-ne v1, v3, :cond_2

    .line 18
    invoke-virtual {v0}, Le/b/a/a/s/c;->c()[B

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p0, p1, v1, v2}, Le/b/a/a/o/b;->a(Le/b/a/a/a;CI)I

    move-result v2

    if-gez v2, :cond_3

    goto :goto_0

    .line 20
    :cond_3
    iget v1, p0, Le/b/a/a/o/b;->G:I

    iget v4, p0, Le/b/a/a/o/b;->H:I

    if-lt v1, v4, :cond_4

    .line 21
    invoke-virtual {p0}, Le/b/a/a/q/f;->r()V

    .line 22
    :cond_4
    iget-object v1, p0, Le/b/a/a/q/f;->U:[C

    iget v4, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Le/b/a/a/o/b;->G:I

    aget-char v1, v1, v4

    .line 23
    invoke-virtual {p1, v1}, Le/b/a/a/a;->a(C)I

    move-result v4

    if-gez v4, :cond_5

    const/4 v4, 0x1

    .line 24
    invoke-virtual {p0, p1, v1, v4}, Le/b/a/a/o/b;->a(Le/b/a/a/a;CI)I

    move-result v4

    :cond_5
    shl-int/lit8 v1, v2, 0x6

    or-int/2addr v1, v4

    .line 25
    iget v2, p0, Le/b/a/a/o/b;->G:I

    iget v4, p0, Le/b/a/a/o/b;->H:I

    if-lt v2, v4, :cond_6

    .line 26
    invoke-virtual {p0}, Le/b/a/a/q/f;->r()V

    .line 27
    :cond_6
    iget-object v2, p0, Le/b/a/a/q/f;->U:[C

    iget v4, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Le/b/a/a/o/b;->G:I

    aget-char v2, v2, v4

    .line 28
    invoke-virtual {p1, v2}, Le/b/a/a/a;->a(C)I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, -0x2

    if-gez v4, :cond_b

    if-eq v4, v7, :cond_8

    if-ne v2, v3, :cond_7

    .line 29
    iget-boolean v4, p1, Le/b/a/a/a;->B:Z

    if-nez v4, :cond_7

    shr-int/lit8 p1, v1, 0x4

    .line 30
    invoke-virtual {v0, p1}, Le/b/a/a/s/c;->a(I)V

    .line 31
    invoke-virtual {v0}, Le/b/a/a/s/c;->c()[B

    move-result-object p1

    return-object p1

    .line 32
    :cond_7
    invoke-virtual {p0, p1, v2, v6}, Le/b/a/a/o/b;->a(Le/b/a/a/a;CI)I

    move-result v2

    move v4, v2

    :cond_8
    if-ne v4, v7, :cond_b

    .line 33
    iget v2, p0, Le/b/a/a/o/b;->G:I

    iget v3, p0, Le/b/a/a/o/b;->H:I

    if-lt v2, v3, :cond_9

    .line 34
    invoke-virtual {p0}, Le/b/a/a/q/f;->r()V

    .line 35
    :cond_9
    iget-object v2, p0, Le/b/a/a/q/f;->U:[C

    iget v3, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Le/b/a/a/o/b;->G:I

    aget-char v2, v2, v3

    .line 36
    invoke-virtual {p1, v2}, Le/b/a/a/a;->b(C)Z

    move-result v3

    if-eqz v3, :cond_a

    shr-int/lit8 v1, v1, 0x4

    .line 37
    invoke-virtual {v0, v1}, Le/b/a/a/s/c;->a(I)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "expected padding character \'"

    .line 38
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 39
    iget-char v1, p1, Le/b/a/a/a;->C:C

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v5, v0}, Le/b/a/a/o/b;->a(Le/b/a/a/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_b
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v4

    .line 41
    iget v2, p0, Le/b/a/a/o/b;->G:I

    iget v4, p0, Le/b/a/a/o/b;->H:I

    if-lt v2, v4, :cond_c

    .line 42
    invoke-virtual {p0}, Le/b/a/a/q/f;->r()V

    .line 43
    :cond_c
    iget-object v2, p0, Le/b/a/a/q/f;->U:[C

    iget v4, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Le/b/a/a/o/b;->G:I

    aget-char v2, v2, v4

    .line 44
    invoke-virtual {p1, v2}, Le/b/a/a/a;->a(C)I

    move-result v4

    if-gez v4, :cond_f

    if-eq v4, v7, :cond_e

    if-ne v2, v3, :cond_d

    .line 45
    iget-boolean v3, p1, Le/b/a/a/a;->B:Z

    if-nez v3, :cond_d

    shr-int/lit8 p1, v1, 0x2

    .line 46
    invoke-virtual {v0, p1}, Le/b/a/a/s/c;->c(I)V

    .line 47
    invoke-virtual {v0}, Le/b/a/a/s/c;->c()[B

    move-result-object p1

    return-object p1

    .line 48
    :cond_d
    invoke-virtual {p0, p1, v2, v5}, Le/b/a/a/o/b;->a(Le/b/a/a/a;CI)I

    move-result v2

    move v4, v2

    :cond_e
    if-ne v4, v7, :cond_f

    shr-int/lit8 v1, v1, 0x2

    .line 49
    invoke-virtual {v0, v1}, Le/b/a/a/s/c;->c(I)V

    goto/16 :goto_0

    :cond_f
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v4

    .line 50
    invoke-virtual {v0, v1}, Le/b/a/a/s/c;->b(I)V

    goto/16 :goto_0
.end method

.method public final c(I)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x7d

    const/16 v2, 0x5d

    if-ne p1, v2, :cond_1

    .line 2
    invoke-virtual {p0}, Le/b/a/a/q/f;->y()V

    .line 3
    iget-object v3, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    invoke-virtual {v3}, Le/b/a/a/k;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v3, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    .line 5
    iget-object v3, v3, Le/b/a/a/q/d;->c:Le/b/a/a/q/d;

    .line 6
    iput-object v3, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    .line 7
    sget-object v3, Le/b/a/a/l;->END_ARRAY:Le/b/a/a/l;

    iput-object v3, p0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, v1}, Le/b/a/a/o/b;->a(IC)V

    throw v0

    :cond_1
    :goto_0
    if-ne p1, v1, :cond_3

    .line 9
    invoke-virtual {p0}, Le/b/a/a/q/f;->y()V

    .line 10
    iget-object v1, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    invoke-virtual {v1}, Le/b/a/a/k;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    iget-object p1, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    .line 12
    iget-object p1, p1, Le/b/a/a/q/d;->c:Le/b/a/a/q/d;

    .line 13
    iput-object p1, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    .line 14
    sget-object p1, Le/b/a/a/l;->END_OBJECT:Le/b/a/a/l;

    iput-object p1, p0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p0, p1, v2}, Le/b/a/a/o/b;->a(IC)V

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "\'null\', \'true\', \'false\' or NaN"

    .line 1
    invoke-virtual {p0, p1, v0}, Le/b/a/a/q/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    sget-object v1, Le/b/a/a/l;->VALUE_STRING:Le/b/a/a/l;

    if-ne v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Le/b/a/a/q/f;->Y:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Le/b/a/a/q/f;->Y:Z

    .line 4
    invoke-virtual {p0}, Le/b/a/a/q/f;->p()V

    .line 5
    :cond_0
    iget-object v0, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {v0}, Le/b/a/a/s/g;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    sget-object v1, Le/b/a/a/l;->FIELD_NAME:Le/b/a/a/l;

    if-ne v0, v1, :cond_2

    .line 7
    invoke-virtual {p0}, Le/b/a/a/o/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    .line 8
    invoke-super {p0, v0}, Le/b/a/a/o/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(I)V
    .locals 2

    .line 9
    iget v0, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/b/a/a/o/b;->G:I

    const/16 v1, 0x9

    if-eq p1, v1, :cond_3

    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Expected space separating root-level values"

    .line 10
    invoke-virtual {p0, p1, v0}, Le/b/a/a/o/c;->a(ILjava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 11
    :cond_1
    invoke-virtual {p0}, Le/b/a/a/q/f;->t()V

    return-void

    .line 12
    :cond_2
    iget p1, p0, Le/b/a/a/o/b;->J:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le/b/a/a/o/b;->J:I

    .line 13
    iput v0, p0, Le/b/a/a/o/b;->K:I

    :cond_3
    :goto_0
    return-void
.end method

.method public final f()Le/b/a/a/l;
    .locals 17

    move-object/from16 v6, p0

    .line 1
    iget-object v0, v6, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    sget-object v1, Le/b/a/a/l;->FIELD_NAME:Le/b/a/a/l;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, v6, Le/b/a/a/o/b;->O:Le/b/a/a/l;

    .line 3
    iput-object v2, v6, Le/b/a/a/o/b;->O:Le/b/a/a/l;

    .line 4
    sget-object v1, Le/b/a/a/l;->START_ARRAY:Le/b/a/a/l;

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v1, v6, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    iget v2, v6, Le/b/a/a/o/b;->L:I

    iget v3, v6, Le/b/a/a/o/b;->M:I

    invoke-virtual {v1, v2, v3}, Le/b/a/a/q/d;->a(II)Le/b/a/a/q/d;

    move-result-object v1

    iput-object v1, v6, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Le/b/a/a/l;->START_OBJECT:Le/b/a/a/l;

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v1, v6, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    iget v2, v6, Le/b/a/a/o/b;->L:I

    iget v3, v6, Le/b/a/a/o/b;->M:I

    invoke-virtual {v1, v2, v3}, Le/b/a/a/q/d;->b(II)Le/b/a/a/q/d;

    move-result-object v1

    iput-object v1, v6, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    .line 8
    :cond_1
    :goto_0
    iput-object v0, v6, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    return-object v0

    .line 9
    :cond_2
    iget-boolean v0, v6, Le/b/a/a/q/f;->Y:Z

    const-string v1, "string value"

    const-string v3, ": was expecting closing quote for a string value"

    const/16 v4, 0x20

    const/16 v5, 0x5c

    const/16 v7, 0x22

    const/4 v8, 0x0

    if-eqz v0, :cond_8

    .line 10
    iput-boolean v8, v6, Le/b/a/a/q/f;->Y:Z

    .line 11
    iget v0, v6, Le/b/a/a/o/b;->G:I

    .line 12
    iget v8, v6, Le/b/a/a/o/b;->H:I

    .line 13
    iget-object v9, v6, Le/b/a/a/q/f;->U:[C

    :goto_1
    if-lt v0, v8, :cond_4

    .line 14
    iput v0, v6, Le/b/a/a/o/b;->G:I

    .line 15
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/f;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    iget v0, v6, Le/b/a/a/o/b;->G:I

    .line 17
    iget v8, v6, Le/b/a/a/o/b;->H:I

    goto :goto_2

    .line 18
    :cond_3
    sget-object v0, Le/b/a/a/l;->VALUE_STRING:Le/b/a/a/l;

    invoke-virtual {v6, v3, v0}, Le/b/a/a/o/c;->a(Ljava/lang/String;Le/b/a/a/l;)V

    throw v2

    :cond_4
    :goto_2
    add-int/lit8 v10, v0, 0x1

    .line 19
    aget-char v0, v9, v0

    if-gt v0, v5, :cond_7

    if-ne v0, v5, :cond_5

    .line 20
    iput v10, v6, Le/b/a/a/o/b;->G:I

    .line 21
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/f;->k()C

    .line 22
    iget v0, v6, Le/b/a/a/o/b;->G:I

    .line 23
    iget v8, v6, Le/b/a/a/o/b;->H:I

    goto :goto_1

    :cond_5
    if-gt v0, v7, :cond_7

    if-ne v0, v7, :cond_6

    .line 24
    iput v10, v6, Le/b/a/a/o/b;->G:I

    goto :goto_3

    :cond_6
    if-ge v0, v4, :cond_7

    .line 25
    iput v10, v6, Le/b/a/a/o/b;->G:I

    .line 26
    invoke-virtual {v6, v0, v1}, Le/b/a/a/o/c;->b(ILjava/lang/String;)V

    :cond_7
    move v0, v10

    goto :goto_1

    .line 27
    :cond_8
    :goto_3
    iget v0, v6, Le/b/a/a/o/b;->G:I

    iget v5, v6, Le/b/a/a/o/b;->H:I

    const/16 v7, 0xa

    const/16 v8, 0xd

    const/16 v9, 0x2f

    const/16 v10, 0x23

    const/16 v11, 0x9

    const/4 v12, 0x1

    if-lt v0, v5, :cond_9

    .line 28
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/f;->q()Z

    move-result v0

    if-nez v0, :cond_9

    .line 29
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/o/b;->l()I

    const/4 v0, -0x1

    goto/16 :goto_5

    .line 30
    :cond_9
    iget-object v0, v6, Le/b/a/a/q/f;->U:[C

    iget v5, v6, Le/b/a/a/o/b;->G:I

    add-int/lit8 v13, v5, 0x1

    iput v13, v6, Le/b/a/a/o/b;->G:I

    aget-char v0, v0, v5

    if-le v0, v4, :cond_b

    if-eq v0, v9, :cond_a

    if-ne v0, v10, :cond_16

    .line 31
    :cond_a
    iget v0, v6, Le/b/a/a/o/b;->G:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v6, Le/b/a/a/o/b;->G:I

    .line 32
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/f;->w()I

    move-result v0

    goto :goto_5

    :cond_b
    if-eq v0, v4, :cond_f

    if-ne v0, v7, :cond_c

    .line 33
    iget v0, v6, Le/b/a/a/o/b;->J:I

    add-int/2addr v0, v12

    iput v0, v6, Le/b/a/a/o/b;->J:I

    .line 34
    iput v13, v6, Le/b/a/a/o/b;->K:I

    goto :goto_4

    :cond_c
    if-ne v0, v8, :cond_d

    .line 35
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/f;->t()V

    goto :goto_4

    :cond_d
    if-ne v0, v11, :cond_e

    goto :goto_4

    .line 36
    :cond_e
    invoke-virtual {v6, v0}, Le/b/a/a/o/c;->a(I)V

    throw v2

    .line 37
    :cond_f
    :goto_4
    iget v0, v6, Le/b/a/a/o/b;->G:I

    iget v5, v6, Le/b/a/a/o/b;->H:I

    if-ge v0, v5, :cond_15

    .line 38
    iget-object v5, v6, Le/b/a/a/q/f;->U:[C

    add-int/lit8 v13, v0, 0x1

    iput v13, v6, Le/b/a/a/o/b;->G:I

    aget-char v0, v5, v0

    if-le v0, v4, :cond_11

    if-eq v0, v9, :cond_10

    if-ne v0, v10, :cond_16

    .line 39
    :cond_10
    iget v0, v6, Le/b/a/a/o/b;->G:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v6, Le/b/a/a/o/b;->G:I

    .line 40
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/f;->w()I

    move-result v0

    goto :goto_5

    :cond_11
    if-eq v0, v4, :cond_f

    if-ne v0, v7, :cond_12

    .line 41
    iget v0, v6, Le/b/a/a/o/b;->J:I

    add-int/2addr v0, v12

    iput v0, v6, Le/b/a/a/o/b;->J:I

    .line 42
    iput v13, v6, Le/b/a/a/o/b;->K:I

    goto :goto_4

    :cond_12
    if-ne v0, v8, :cond_13

    .line 43
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/f;->t()V

    goto :goto_4

    :cond_13
    if-ne v0, v11, :cond_14

    goto :goto_4

    .line 44
    :cond_14
    invoke-virtual {v6, v0}, Le/b/a/a/o/c;->a(I)V

    throw v2

    .line 45
    :cond_15
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/f;->w()I

    move-result v0

    :cond_16
    :goto_5
    if-gez v0, :cond_17

    .line 46
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/o/b;->close()V

    .line 47
    iput-object v2, v6, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    return-object v2

    .line 48
    :cond_17
    iput-object v2, v6, Le/b/a/a/o/b;->S:[B

    const/16 v5, 0x5d

    if-eq v0, v5, :cond_82

    const/16 v13, 0x7d

    if-ne v0, v13, :cond_18

    goto/16 :goto_27

    .line 49
    :cond_18
    iget-object v13, v6, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    .line 50
    iget v14, v13, Le/b/a/a/k;->b:I

    add-int/2addr v14, v12

    iput v14, v13, Le/b/a/a/k;->b:I

    .line 51
    iget v13, v13, Le/b/a/a/k;->a:I

    if-eqz v13, :cond_19

    if-lez v14, :cond_19

    const/4 v13, 0x1

    goto :goto_6

    :cond_19
    const/4 v13, 0x0

    :goto_6
    const/16 v14, 0x2c

    if-eqz v13, :cond_24

    if-ne v0, v14, :cond_23

    .line 52
    :cond_1a
    :goto_7
    iget v0, v6, Le/b/a/a/o/b;->G:I

    iget v13, v6, Le/b/a/a/o/b;->H:I

    if-ge v0, v13, :cond_20

    .line 53
    iget-object v13, v6, Le/b/a/a/q/f;->U:[C

    add-int/lit8 v14, v0, 0x1

    iput v14, v6, Le/b/a/a/o/b;->G:I

    aget-char v0, v13, v0

    if-le v0, v4, :cond_1c

    if-eq v0, v9, :cond_1b

    if-ne v0, v10, :cond_21

    .line 54
    :cond_1b
    iget v0, v6, Le/b/a/a/o/b;->G:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v6, Le/b/a/a/o/b;->G:I

    .line 55
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/f;->s()I

    move-result v0

    goto :goto_8

    :cond_1c
    if-ge v0, v4, :cond_1a

    if-ne v0, v7, :cond_1d

    .line 56
    iget v0, v6, Le/b/a/a/o/b;->J:I

    add-int/2addr v0, v12

    iput v0, v6, Le/b/a/a/o/b;->J:I

    .line 57
    iput v14, v6, Le/b/a/a/o/b;->K:I

    goto :goto_7

    :cond_1d
    if-ne v0, v8, :cond_1e

    .line 58
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/f;->t()V

    goto :goto_7

    :cond_1e
    if-ne v0, v11, :cond_1f

    goto :goto_7

    .line 59
    :cond_1f
    invoke-virtual {v6, v0}, Le/b/a/a/o/c;->a(I)V

    throw v2

    .line 60
    :cond_20
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/f;->s()I

    move-result v0

    .line 61
    :cond_21
    :goto_8
    iget v2, v6, Le/b/a/a/i;->x:I

    sget v7, Le/b/a/a/q/f;->a0:I

    and-int/2addr v2, v7

    if-eqz v2, :cond_24

    if-eq v0, v5, :cond_22

    const/16 v2, 0x7d

    if-ne v0, v2, :cond_24

    .line 62
    :cond_22
    invoke-virtual {v6, v0}, Le/b/a/a/q/f;->c(I)V

    .line 63
    iget-object v0, v6, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    return-object v0

    :cond_23
    const-string v1, "was expecting comma to separate "

    .line 64
    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v6, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    invoke-virtual {v3}, Le/b/a/a/k;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " entries"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Le/b/a/a/o/c;->a(ILjava/lang/String;)V

    throw v2

    .line 65
    :cond_24
    iget-object v2, v6, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    invoke-virtual {v2}, Le/b/a/a/k;->c()Z

    move-result v7

    const/16 v2, 0x27

    if-eqz v7, :cond_4d

    .line 66
    iget v5, v6, Le/b/a/a/o/b;->G:I

    int-to-long v13, v5

    .line 67
    iput-wide v13, v6, Le/b/a/a/q/f;->Z:J

    const/16 v8, 0x22

    if-ne v0, v8, :cond_27

    .line 68
    iget v0, v6, Le/b/a/a/q/f;->X:I

    .line 69
    sget-object v8, Le/b/a/a/q/f;->b0:[I

    .line 70
    :goto_9
    iget v13, v6, Le/b/a/a/o/b;->H:I

    if-ge v5, v13, :cond_26

    .line 71
    iget-object v13, v6, Le/b/a/a/q/f;->U:[C

    aget-char v14, v13, v5

    .line 72
    array-length v15, v8

    if-ge v14, v15, :cond_25

    aget v15, v8, v14

    if-eqz v15, :cond_25

    const/16 v8, 0x22

    if-ne v14, v8, :cond_26

    .line 73
    iget v8, v6, Le/b/a/a/o/b;->G:I

    add-int/lit8 v14, v5, 0x1

    .line 74
    iput v14, v6, Le/b/a/a/o/b;->G:I

    .line 75
    iget-object v14, v6, Le/b/a/a/q/f;->W:Le/b/a/a/r/b;

    sub-int/2addr v5, v8

    invoke-virtual {v14, v13, v8, v5, v0}, Le/b/a/a/r/b;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    :cond_25
    mul-int/lit8 v0, v0, 0x21

    add-int/2addr v0, v14

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 76
    :cond_26
    iget v8, v6, Le/b/a/a/o/b;->G:I

    .line 77
    iput v5, v6, Le/b/a/a/o/b;->G:I

    const/16 v5, 0x22

    .line 78
    invoke-virtual {v6, v8, v0, v5}, Le/b/a/a/q/f;->a(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    :cond_27
    if-ne v0, v2, :cond_2c

    .line 79
    sget-object v5, Le/b/a/a/i$a;->ALLOW_SINGLE_QUOTES:Le/b/a/a/i$a;

    invoke-virtual {v6, v5}, Le/b/a/a/i;->a(Le/b/a/a/i$a;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 80
    iget v0, v6, Le/b/a/a/o/b;->G:I

    .line 81
    iget v5, v6, Le/b/a/a/q/f;->X:I

    .line 82
    iget v8, v6, Le/b/a/a/o/b;->H:I

    if-ge v0, v8, :cond_2b

    .line 83
    sget-object v13, Le/b/a/a/q/f;->b0:[I

    .line 84
    array-length v14, v13

    .line 85
    :goto_a
    iget-object v15, v6, Le/b/a/a/q/f;->U:[C

    aget-char v11, v15, v0

    if-ne v11, v2, :cond_28

    .line 86
    iget v8, v6, Le/b/a/a/o/b;->G:I

    add-int/lit8 v11, v0, 0x1

    .line 87
    iput v11, v6, Le/b/a/a/o/b;->G:I

    .line 88
    iget-object v11, v6, Le/b/a/a/q/f;->W:Le/b/a/a/r/b;

    sub-int/2addr v0, v8

    invoke-virtual {v11, v15, v8, v0, v5}, Le/b/a/a/r/b;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    :cond_28
    if-ge v11, v14, :cond_29

    .line 89
    aget v15, v13, v11

    if-eqz v15, :cond_29

    goto :goto_b

    :cond_29
    mul-int/lit8 v5, v5, 0x21

    add-int/2addr v5, v11

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v8, :cond_2a

    goto :goto_b

    :cond_2a
    const/16 v11, 0x9

    goto :goto_a

    .line 90
    :cond_2b
    :goto_b
    iget v8, v6, Le/b/a/a/o/b;->G:I

    .line 91
    iput v0, v6, Le/b/a/a/o/b;->G:I

    .line 92
    invoke-virtual {v6, v8, v5, v2}, Le/b/a/a/q/f;->a(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    .line 93
    :cond_2c
    sget-object v5, Le/b/a/a/i$a;->ALLOW_UNQUOTED_FIELD_NAMES:Le/b/a/a/i$a;

    invoke-virtual {v6, v5}, Le/b/a/a/i;->a(Le/b/a/a/i$a;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 94
    sget-object v5, Le/b/a/a/p/a;->e:[I

    .line 95
    array-length v8, v5

    if-ge v0, v8, :cond_2e

    .line 96
    aget v11, v5, v0

    if-nez v11, :cond_2d

    const/4 v11, 0x1

    goto :goto_c

    :cond_2d
    const/4 v11, 0x0

    goto :goto_c

    :cond_2e
    int-to-char v11, v0

    .line 97
    invoke-static {v11}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v11

    :goto_c
    if-eqz v11, :cond_4b

    .line 98
    iget v0, v6, Le/b/a/a/o/b;->G:I

    .line 99
    iget v11, v6, Le/b/a/a/q/f;->X:I

    .line 100
    iget v13, v6, Le/b/a/a/o/b;->H:I

    if-ge v0, v13, :cond_32

    .line 101
    :cond_2f
    iget-object v14, v6, Le/b/a/a/q/f;->U:[C

    aget-char v15, v14, v0

    if-ge v15, v8, :cond_30

    .line 102
    aget v16, v5, v15

    if-eqz v16, :cond_31

    .line 103
    iget v5, v6, Le/b/a/a/o/b;->G:I

    sub-int/2addr v5, v12

    .line 104
    iput v0, v6, Le/b/a/a/o/b;->G:I

    .line 105
    iget-object v8, v6, Le/b/a/a/q/f;->W:Le/b/a/a/r/b;

    sub-int/2addr v0, v5

    invoke-virtual {v8, v14, v5, v0, v11}, Le/b/a/a/r/b;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    :cond_30
    int-to-char v14, v15

    .line 106
    invoke-static {v14}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v14

    if-nez v14, :cond_31

    .line 107
    iget v5, v6, Le/b/a/a/o/b;->G:I

    sub-int/2addr v5, v12

    .line 108
    iput v0, v6, Le/b/a/a/o/b;->G:I

    .line 109
    iget-object v8, v6, Le/b/a/a/q/f;->W:Le/b/a/a/r/b;

    iget-object v13, v6, Le/b/a/a/q/f;->U:[C

    sub-int/2addr v0, v5

    invoke-virtual {v8, v13, v5, v0, v11}, Le/b/a/a/r/b;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_31
    mul-int/lit8 v11, v11, 0x21

    add-int/2addr v11, v15

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v13, :cond_2f

    .line 110
    :cond_32
    iget v8, v6, Le/b/a/a/o/b;->G:I

    sub-int/2addr v8, v12

    .line 111
    iput v0, v6, Le/b/a/a/o/b;->G:I

    .line 112
    iget-object v13, v6, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    iget-object v14, v6, Le/b/a/a/q/f;->U:[C

    sub-int/2addr v0, v8

    invoke-virtual {v13, v14, v8, v0}, Le/b/a/a/s/g;->a([CII)V

    .line 113
    iget-object v0, v6, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {v0}, Le/b/a/a/s/g;->g()[C

    move-result-object v0

    .line 114
    iget-object v8, v6, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    .line 115
    iget v8, v8, Le/b/a/a/s/g;->i:I

    .line 116
    array-length v13, v5

    .line 117
    :goto_d
    iget v14, v6, Le/b/a/a/o/b;->G:I

    iget v15, v6, Le/b/a/a/o/b;->H:I

    if-lt v14, v15, :cond_33

    .line 118
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/f;->q()Z

    move-result v14

    if-nez v14, :cond_33

    goto :goto_e

    .line 119
    :cond_33
    iget-object v14, v6, Le/b/a/a/q/f;->U:[C

    iget v15, v6, Le/b/a/a/o/b;->G:I

    aget-char v14, v14, v15

    if-gt v14, v13, :cond_34

    .line 120
    aget v15, v5, v14

    if-eqz v15, :cond_49

    goto :goto_e

    .line 121
    :cond_34
    invoke-static {v14}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v15

    if-nez v15, :cond_49

    .line 122
    :goto_e
    iget-object v0, v6, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    .line 123
    iput v8, v0, Le/b/a/a/s/g;->i:I

    .line 124
    invoke-virtual {v0}, Le/b/a/a/s/g;->h()[C

    move-result-object v5

    .line 125
    iget v8, v0, Le/b/a/a/s/g;->c:I

    if-ltz v8, :cond_35

    goto :goto_f

    :cond_35
    const/4 v8, 0x0

    .line 126
    :goto_f
    invoke-virtual {v0}, Le/b/a/a/s/g;->j()I

    move-result v0

    .line 127
    iget-object v13, v6, Le/b/a/a/q/f;->W:Le/b/a/a/r/b;

    invoke-virtual {v13, v5, v8, v0, v11}, Le/b/a/a/r/b;->a([CIII)Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_10
    iget-object v5, v6, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    invoke-virtual {v5, v0}, Le/b/a/a/q/d;->a(Ljava/lang/String;)V

    .line 129
    sget-object v0, Le/b/a/a/l;->FIELD_NAME:Le/b/a/a/l;

    iput-object v0, v6, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    .line 130
    iget v0, v6, Le/b/a/a/o/b;->G:I

    add-int/lit8 v5, v0, 0x4

    iget v8, v6, Le/b/a/a/o/b;->H:I

    if-lt v5, v8, :cond_36

    const/4 v0, 0x0

    .line 131
    invoke-virtual {v6, v0}, Le/b/a/a/q/f;->a(Z)I

    move-result v0

    goto/16 :goto_16

    .line 132
    :cond_36
    iget-object v5, v6, Le/b/a/a/q/f;->U:[C

    aget-char v8, v5, v0

    const/16 v11, 0x3a

    if-ne v8, v11, :cond_3e

    add-int/2addr v0, v12

    .line 133
    iput v0, v6, Le/b/a/a/o/b;->G:I

    aget-char v5, v5, v0

    if-le v5, v4, :cond_39

    if-eq v5, v9, :cond_38

    if-ne v5, v10, :cond_37

    goto :goto_11

    :cond_37
    add-int/2addr v0, v12

    .line 134
    iput v0, v6, Le/b/a/a/o/b;->G:I

    move v0, v5

    goto/16 :goto_16

    .line 135
    :cond_38
    :goto_11
    invoke-virtual {v6, v12}, Le/b/a/a/q/f;->a(Z)I

    move-result v0

    goto/16 :goto_16

    :cond_39
    if-eq v5, v4, :cond_3a

    const/16 v0, 0x9

    if-ne v5, v0, :cond_3d

    .line 136
    :cond_3a
    iget-object v0, v6, Le/b/a/a/q/f;->U:[C

    iget v5, v6, Le/b/a/a/o/b;->G:I

    add-int/2addr v5, v12

    iput v5, v6, Le/b/a/a/o/b;->G:I

    aget-char v0, v0, v5

    if-le v0, v4, :cond_3d

    if-eq v0, v9, :cond_3c

    if-ne v0, v10, :cond_3b

    goto :goto_12

    :cond_3b
    add-int/2addr v5, v12

    .line 137
    iput v5, v6, Le/b/a/a/o/b;->G:I

    goto/16 :goto_16

    .line 138
    :cond_3c
    :goto_12
    invoke-virtual {v6, v12}, Le/b/a/a/q/f;->a(Z)I

    move-result v0

    goto/16 :goto_16

    .line 139
    :cond_3d
    invoke-virtual {v6, v12}, Le/b/a/a/q/f;->a(Z)I

    move-result v0

    goto/16 :goto_16

    :cond_3e
    if-eq v8, v4, :cond_3f

    const/16 v0, 0x9

    if-ne v8, v0, :cond_40

    .line 140
    :cond_3f
    iget-object v0, v6, Le/b/a/a/q/f;->U:[C

    iget v5, v6, Le/b/a/a/o/b;->G:I

    add-int/2addr v5, v12

    iput v5, v6, Le/b/a/a/o/b;->G:I

    aget-char v8, v0, v5

    :cond_40
    if-ne v8, v11, :cond_48

    .line 141
    iget-object v0, v6, Le/b/a/a/q/f;->U:[C

    iget v5, v6, Le/b/a/a/o/b;->G:I

    add-int/2addr v5, v12

    iput v5, v6, Le/b/a/a/o/b;->G:I

    aget-char v0, v0, v5

    if-le v0, v4, :cond_43

    if-eq v0, v9, :cond_42

    if-ne v0, v10, :cond_41

    goto :goto_13

    :cond_41
    add-int/2addr v5, v12

    .line 142
    iput v5, v6, Le/b/a/a/o/b;->G:I

    goto :goto_16

    .line 143
    :cond_42
    :goto_13
    invoke-virtual {v6, v12}, Le/b/a/a/q/f;->a(Z)I

    move-result v0

    goto :goto_16

    :cond_43
    if-eq v0, v4, :cond_44

    const/16 v15, 0x9

    if-ne v0, v15, :cond_47

    .line 144
    :cond_44
    iget-object v0, v6, Le/b/a/a/q/f;->U:[C

    iget v5, v6, Le/b/a/a/o/b;->G:I

    add-int/2addr v5, v12

    iput v5, v6, Le/b/a/a/o/b;->G:I

    aget-char v0, v0, v5

    if-le v0, v4, :cond_47

    if-eq v0, v9, :cond_46

    if-ne v0, v10, :cond_45

    goto :goto_14

    :cond_45
    add-int/2addr v5, v12

    .line 145
    iput v5, v6, Le/b/a/a/o/b;->G:I

    goto :goto_16

    .line 146
    :cond_46
    :goto_14
    invoke-virtual {v6, v12}, Le/b/a/a/q/f;->a(Z)I

    move-result v0

    goto :goto_16

    .line 147
    :cond_47
    invoke-virtual {v6, v12}, Le/b/a/a/q/f;->a(Z)I

    move-result v0

    goto :goto_16

    :cond_48
    const/4 v0, 0x0

    .line 148
    invoke-virtual {v6, v0}, Le/b/a/a/q/f;->a(Z)I

    move-result v0

    goto :goto_16

    :cond_49
    const/16 v15, 0x9

    .line 149
    iget v9, v6, Le/b/a/a/o/b;->G:I

    add-int/2addr v9, v12

    iput v9, v6, Le/b/a/a/o/b;->G:I

    mul-int/lit8 v11, v11, 0x21

    add-int/2addr v11, v14

    add-int/lit8 v9, v8, 0x1

    .line 150
    aput-char v14, v0, v8

    .line 151
    array-length v8, v0

    if-lt v9, v8, :cond_4a

    .line 152
    iget-object v0, v6, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {v0}, Le/b/a/a/s/g;->f()[C

    move-result-object v0

    const/4 v8, 0x0

    goto :goto_15

    :cond_4a
    move v8, v9

    :goto_15
    const/16 v9, 0x2f

    goto/16 :goto_d

    :cond_4b
    const-string v1, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    .line 153
    invoke-virtual {v6, v0, v1}, Le/b/a/a/o/c;->a(ILjava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_4c
    const/4 v1, 0x0

    const-string v2, "was expecting double-quote to start field name"

    .line 154
    invoke-virtual {v6, v0, v2}, Le/b/a/a/o/c;->a(ILjava/lang/String;)V

    throw v1

    .line 155
    :cond_4d
    :goto_16
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/f;->y()V

    const/16 v5, 0x22

    if-eq v0, v5, :cond_80

    const/16 v5, 0x2d

    const/16 v8, 0x65

    const/16 v9, 0x30

    const/16 v10, 0x45

    const/16 v11, 0x2e

    const/16 v13, 0x39

    if-eq v0, v5, :cond_75

    const/16 v5, 0x5b

    if-eq v0, v5, :cond_73

    const/16 v5, 0x66

    const/16 v14, 0x6c

    if-eq v0, v5, :cond_70

    const/16 v5, 0x6e

    const/16 v15, 0x75

    if-eq v0, v5, :cond_6d

    const/16 v5, 0x74

    if-eq v0, v5, :cond_6a

    const/16 v5, 0x7b

    if-eq v0, v5, :cond_68

    const/16 v5, 0x7d

    if-eq v0, v5, :cond_67

    packed-switch v0, :pswitch_data_0

    if-eq v0, v2, :cond_5e

    const/16 v1, 0x49

    if-eq v0, v1, :cond_5c

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_58

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_55

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_59

    goto/16 :goto_1e

    .line 156
    :pswitch_0
    iget v1, v6, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v1, -0x1

    .line 157
    iget v3, v6, Le/b/a/a/o/b;->H:I

    if-ne v0, v9, :cond_4e

    const/4 v0, 0x0

    .line 158
    invoke-virtual {v6, v0, v2}, Le/b/a/a/q/f;->a(ZI)Le/b/a/a/l;

    move-result-object v0

    goto/16 :goto_26

    :cond_4e
    const/4 v5, 0x1

    :goto_17
    const/4 v0, 0x0

    if-lt v1, v3, :cond_4f

    .line 159
    iput v2, v6, Le/b/a/a/o/b;->G:I

    .line 160
    invoke-virtual {v6, v0, v2}, Le/b/a/a/q/f;->a(ZI)Le/b/a/a/l;

    move-result-object v0

    goto/16 :goto_26

    .line 161
    :cond_4f
    iget-object v0, v6, Le/b/a/a/q/f;->U:[C

    add-int/lit8 v4, v1, 0x1

    aget-char v1, v0, v1

    if-lt v1, v9, :cond_51

    if-le v1, v13, :cond_50

    goto :goto_18

    :cond_50
    add-int/lit8 v5, v5, 0x1

    move v1, v4

    goto :goto_17

    :cond_51
    :goto_18
    if-eq v1, v11, :cond_54

    if-eq v1, v8, :cond_54

    if-ne v1, v10, :cond_52

    goto :goto_19

    :cond_52
    add-int/lit8 v4, v4, -0x1

    .line 162
    iput v4, v6, Le/b/a/a/o/b;->G:I

    .line 163
    iget-object v0, v6, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    invoke-virtual {v0}, Le/b/a/a/k;->d()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 164
    invoke-virtual {v6, v1}, Le/b/a/a/q/f;->d(I)V

    :cond_53
    sub-int/2addr v4, v2

    .line 165
    iget-object v0, v6, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    iget-object v1, v6, Le/b/a/a/q/f;->U:[C

    invoke-virtual {v0, v1, v2, v4}, Le/b/a/a/s/g;->a([CII)V

    .line 166
    sget-object v0, Le/b/a/a/l;->VALUE_NUMBER_INT:Le/b/a/a/l;

    goto/16 :goto_26

    .line 167
    :cond_54
    :goto_19
    iput v4, v6, Le/b/a/a/o/b;->G:I

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move v3, v4

    move v4, v8

    .line 168
    invoke-virtual/range {v0 .. v5}, Le/b/a/a/q/f;->a(IIIZI)Le/b/a/a/l;

    move-result-object v0

    goto/16 :goto_26

    .line 169
    :cond_55
    iget v0, v6, Le/b/a/a/o/b;->G:I

    iget v1, v6, Le/b/a/a/o/b;->H:I

    if-lt v0, v1, :cond_57

    .line 170
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/f;->q()Z

    move-result v0

    if-eqz v0, :cond_56

    goto :goto_1a

    .line 171
    :cond_56
    sget-object v0, Le/b/a/a/l;->VALUE_NUMBER_INT:Le/b/a/a/l;

    invoke-virtual {v6, v0}, Le/b/a/a/o/c;->a(Le/b/a/a/l;)V

    const/4 v0, 0x0

    throw v0

    .line 172
    :cond_57
    :goto_1a
    iget-object v0, v6, Le/b/a/a/q/f;->U:[C

    iget v1, v6, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v6, Le/b/a/a/o/b;->G:I

    aget-char v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Le/b/a/a/q/f;->a(IZ)Le/b/a/a/l;

    move-result-object v0

    goto/16 :goto_26

    .line 173
    :cond_58
    iget-object v1, v6, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    invoke-virtual {v1}, Le/b/a/a/k;->b()Z

    move-result v1

    if-nez v1, :cond_59

    goto/16 :goto_1e

    .line 174
    :cond_59
    sget-object v1, Le/b/a/a/i$a;->ALLOW_MISSING_VALUES:Le/b/a/a/i$a;

    invoke-virtual {v6, v1}, Le/b/a/a/i;->a(Le/b/a/a/i$a;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 175
    iget v0, v6, Le/b/a/a/o/b;->G:I

    sub-int/2addr v0, v12

    iput v0, v6, Le/b/a/a/o/b;->G:I

    .line 176
    sget-object v0, Le/b/a/a/l;->VALUE_NULL:Le/b/a/a/l;

    goto/16 :goto_26

    :cond_5a
    const-string v0, "NaN"

    .line 177
    invoke-virtual {v6, v0, v12}, Le/b/a/a/q/f;->a(Ljava/lang/String;I)V

    .line 178
    sget-object v1, Le/b/a/a/i$a;->ALLOW_NON_NUMERIC_NUMBERS:Le/b/a/a/i$a;

    invoke-virtual {v6, v1}, Le/b/a/a/i;->a(Le/b/a/a/i$a;)Z

    move-result v1

    if-eqz v1, :cond_5b

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 179
    invoke-virtual {v6, v0, v1, v2}, Le/b/a/a/o/b;->a(Ljava/lang/String;D)Le/b/a/a/l;

    move-result-object v0

    goto/16 :goto_26

    :cond_5b
    const-string v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    .line 180
    invoke-virtual {v6, v0}, Le/b/a/a/i;->a(Ljava/lang/String;)Le/b/a/a/h;

    move-result-object v0

    throw v0

    :cond_5c
    const-string v0, "Infinity"

    .line 181
    invoke-virtual {v6, v0, v12}, Le/b/a/a/q/f;->a(Ljava/lang/String;I)V

    .line 182
    sget-object v1, Le/b/a/a/i$a;->ALLOW_NON_NUMERIC_NUMBERS:Le/b/a/a/i$a;

    invoke-virtual {v6, v1}, Le/b/a/a/i;->a(Le/b/a/a/i$a;)Z

    move-result v1

    if-eqz v1, :cond_5d

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 183
    invoke-virtual {v6, v0, v1, v2}, Le/b/a/a/o/b;->a(Ljava/lang/String;D)Le/b/a/a/l;

    move-result-object v0

    goto/16 :goto_26

    :cond_5d
    const-string v0, "Non-standard token \'Infinity\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    .line 184
    invoke-virtual {v6, v0}, Le/b/a/a/i;->a(Ljava/lang/String;)Le/b/a/a/h;

    move-result-object v0

    throw v0

    .line 185
    :cond_5e
    sget-object v5, Le/b/a/a/i$a;->ALLOW_SINGLE_QUOTES:Le/b/a/a/i$a;

    invoke-virtual {v6, v5}, Le/b/a/a/i;->a(Le/b/a/a/i$a;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 186
    iget-object v0, v6, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {v0}, Le/b/a/a/s/g;->c()[C

    move-result-object v0

    .line 187
    iget-object v5, v6, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    .line 188
    iget v5, v5, Le/b/a/a/s/g;->i:I

    .line 189
    :goto_1b
    iget v8, v6, Le/b/a/a/o/b;->G:I

    iget v9, v6, Le/b/a/a/o/b;->H:I

    if-lt v8, v9, :cond_60

    .line 190
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/f;->q()Z

    move-result v8

    if-eqz v8, :cond_5f

    goto :goto_1c

    .line 191
    :cond_5f
    sget-object v0, Le/b/a/a/l;->VALUE_STRING:Le/b/a/a/l;

    invoke-virtual {v6, v3, v0}, Le/b/a/a/o/c;->a(Ljava/lang/String;Le/b/a/a/l;)V

    const/4 v0, 0x0

    throw v0

    .line 192
    :cond_60
    :goto_1c
    iget-object v8, v6, Le/b/a/a/q/f;->U:[C

    iget v9, v6, Le/b/a/a/o/b;->G:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v6, Le/b/a/a/o/b;->G:I

    aget-char v8, v8, v9

    const/16 v9, 0x5c

    if-gt v8, v9, :cond_63

    if-ne v8, v9, :cond_61

    .line 193
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/f;->k()C

    move-result v8

    goto :goto_1d

    :cond_61
    if-gt v8, v2, :cond_63

    if-ne v8, v2, :cond_62

    .line 194
    iget-object v0, v6, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    .line 195
    iput v5, v0, Le/b/a/a/s/g;->i:I

    .line 196
    sget-object v0, Le/b/a/a/l;->VALUE_STRING:Le/b/a/a/l;

    goto/16 :goto_26

    :cond_62
    if-ge v8, v4, :cond_63

    .line 197
    invoke-virtual {v6, v8, v1}, Le/b/a/a/o/c;->b(ILjava/lang/String;)V

    .line 198
    :cond_63
    :goto_1d
    array-length v9, v0

    if-lt v5, v9, :cond_64

    .line 199
    iget-object v0, v6, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {v0}, Le/b/a/a/s/g;->f()[C

    move-result-object v0

    const/4 v5, 0x0

    :cond_64
    add-int/lit8 v9, v5, 0x1

    .line 200
    aput-char v8, v0, v5

    move v5, v9

    goto :goto_1b

    .line 201
    :cond_65
    :goto_1e
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v1

    if-eqz v1, :cond_66

    const-string v1, ""

    .line 202
    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(\'true\', \'false\' or \'null\')"

    invoke-virtual {v6, v0, v1}, Le/b/a/a/q/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_66
    const/4 v1, 0x0

    const-string v2, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    .line 203
    invoke-virtual {v6, v0, v2}, Le/b/a/a/o/c;->a(ILjava/lang/String;)V

    throw v1

    :cond_67
    const/4 v1, 0x0

    const-string v2, "expected a value"

    .line 204
    invoke-virtual {v6, v0, v2}, Le/b/a/a/o/c;->a(ILjava/lang/String;)V

    throw v1

    :cond_68
    if-nez v7, :cond_69

    .line 205
    iget-object v0, v6, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    iget v1, v6, Le/b/a/a/o/b;->L:I

    iget v2, v6, Le/b/a/a/o/b;->M:I

    invoke-virtual {v0, v1, v2}, Le/b/a/a/q/d;->b(II)Le/b/a/a/q/d;

    move-result-object v0

    iput-object v0, v6, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    .line 206
    :cond_69
    sget-object v0, Le/b/a/a/l;->START_OBJECT:Le/b/a/a/l;

    goto/16 :goto_26

    .line 207
    :cond_6a
    iget v0, v6, Le/b/a/a/o/b;->G:I

    add-int/lit8 v1, v0, 0x3

    .line 208
    iget v2, v6, Le/b/a/a/o/b;->H:I

    if-ge v1, v2, :cond_6c

    .line 209
    iget-object v1, v6, Le/b/a/a/q/f;->U:[C

    .line 210
    aget-char v2, v1, v0

    const/16 v3, 0x72

    if-ne v2, v3, :cond_6c

    add-int/2addr v0, v12

    aget-char v2, v1, v0

    if-ne v2, v15, :cond_6c

    add-int/2addr v0, v12

    aget-char v2, v1, v0

    if-ne v2, v8, :cond_6c

    add-int/2addr v0, v12

    .line 211
    aget-char v1, v1, v0

    if-lt v1, v9, :cond_6b

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_6b

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_6c

    .line 212
    :cond_6b
    iput v0, v6, Le/b/a/a/o/b;->G:I

    goto :goto_1f

    :cond_6c
    const-string v0, "true"

    .line 213
    invoke-virtual {v6, v0, v12}, Le/b/a/a/q/f;->a(Ljava/lang/String;I)V

    .line 214
    :goto_1f
    sget-object v0, Le/b/a/a/l;->VALUE_TRUE:Le/b/a/a/l;

    goto/16 :goto_26

    .line 215
    :cond_6d
    iget v0, v6, Le/b/a/a/o/b;->G:I

    add-int/lit8 v1, v0, 0x3

    .line 216
    iget v2, v6, Le/b/a/a/o/b;->H:I

    if-ge v1, v2, :cond_6f

    .line 217
    iget-object v1, v6, Le/b/a/a/q/f;->U:[C

    .line 218
    aget-char v2, v1, v0

    if-ne v2, v15, :cond_6f

    add-int/2addr v0, v12

    aget-char v2, v1, v0

    if-ne v2, v14, :cond_6f

    add-int/2addr v0, v12

    aget-char v2, v1, v0

    if-ne v2, v14, :cond_6f

    add-int/2addr v0, v12

    .line 219
    aget-char v1, v1, v0

    if-lt v1, v9, :cond_6e

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_6e

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_6f

    .line 220
    :cond_6e
    iput v0, v6, Le/b/a/a/o/b;->G:I

    goto :goto_20

    :cond_6f
    const-string v0, "null"

    .line 221
    invoke-virtual {v6, v0, v12}, Le/b/a/a/q/f;->a(Ljava/lang/String;I)V

    .line 222
    :goto_20
    sget-object v0, Le/b/a/a/l;->VALUE_NULL:Le/b/a/a/l;

    goto/16 :goto_26

    .line 223
    :cond_70
    iget v0, v6, Le/b/a/a/o/b;->G:I

    add-int/lit8 v1, v0, 0x4

    .line 224
    iget v2, v6, Le/b/a/a/o/b;->H:I

    if-ge v1, v2, :cond_72

    .line 225
    iget-object v1, v6, Le/b/a/a/q/f;->U:[C

    .line 226
    aget-char v2, v1, v0

    const/16 v3, 0x61

    if-ne v2, v3, :cond_72

    add-int/2addr v0, v12

    aget-char v2, v1, v0

    if-ne v2, v14, :cond_72

    add-int/2addr v0, v12

    aget-char v2, v1, v0

    const/16 v3, 0x73

    if-ne v2, v3, :cond_72

    add-int/2addr v0, v12

    aget-char v2, v1, v0

    if-ne v2, v8, :cond_72

    add-int/2addr v0, v12

    .line 227
    aget-char v1, v1, v0

    if-lt v1, v9, :cond_71

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_71

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_72

    .line 228
    :cond_71
    iput v0, v6, Le/b/a/a/o/b;->G:I

    goto :goto_21

    :cond_72
    const-string v0, "false"

    .line 229
    invoke-virtual {v6, v0, v12}, Le/b/a/a/q/f;->a(Ljava/lang/String;I)V

    .line 230
    :goto_21
    sget-object v0, Le/b/a/a/l;->VALUE_FALSE:Le/b/a/a/l;

    goto/16 :goto_26

    :cond_73
    if-nez v7, :cond_74

    .line 231
    iget-object v0, v6, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    iget v1, v6, Le/b/a/a/o/b;->L:I

    iget v2, v6, Le/b/a/a/o/b;->M:I

    invoke-virtual {v0, v1, v2}, Le/b/a/a/q/d;->a(II)Le/b/a/a/q/d;

    move-result-object v0

    iput-object v0, v6, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    .line 232
    :cond_74
    sget-object v0, Le/b/a/a/l;->START_ARRAY:Le/b/a/a/l;

    goto/16 :goto_26

    .line 233
    :cond_75
    iget v0, v6, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v0, -0x1

    .line 234
    iget v1, v6, Le/b/a/a/o/b;->H:I

    if-lt v0, v1, :cond_76

    .line 235
    invoke-virtual {v6, v12, v2}, Le/b/a/a/q/f;->a(ZI)Le/b/a/a/l;

    move-result-object v0

    goto/16 :goto_26

    .line 236
    :cond_76
    iget-object v3, v6, Le/b/a/a/q/f;->U:[C

    add-int/lit8 v4, v0, 0x1

    aget-char v0, v3, v0

    if-gt v0, v13, :cond_7f

    if-ge v0, v9, :cond_77

    goto :goto_25

    :cond_77
    if-ne v0, v9, :cond_78

    .line 237
    invoke-virtual {v6, v12, v2}, Le/b/a/a/q/f;->a(ZI)Le/b/a/a/l;

    move-result-object v0

    goto :goto_26

    :cond_78
    const/4 v0, 0x1

    const/4 v5, 0x1

    :goto_22
    if-lt v4, v1, :cond_79

    .line 238
    invoke-virtual {v6, v12, v2}, Le/b/a/a/q/f;->a(ZI)Le/b/a/a/l;

    move-result-object v0

    goto :goto_26

    .line 239
    :cond_79
    iget-object v0, v6, Le/b/a/a/q/f;->U:[C

    add-int/lit8 v3, v4, 0x1

    aget-char v4, v0, v4

    if-lt v4, v9, :cond_7b

    if-le v4, v13, :cond_7a

    goto :goto_23

    :cond_7a
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    goto :goto_22

    :cond_7b
    :goto_23
    if-eq v4, v11, :cond_7e

    if-eq v4, v8, :cond_7e

    if-ne v4, v10, :cond_7c

    goto :goto_24

    :cond_7c
    add-int/lit8 v3, v3, -0x1

    .line 240
    iput v3, v6, Le/b/a/a/o/b;->G:I

    .line 241
    iget-object v0, v6, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    invoke-virtual {v0}, Le/b/a/a/k;->d()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 242
    invoke-virtual {v6, v4}, Le/b/a/a/q/f;->d(I)V

    :cond_7d
    sub-int/2addr v3, v2

    .line 243
    iget-object v0, v6, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    iget-object v1, v6, Le/b/a/a/q/f;->U:[C

    invoke-virtual {v0, v1, v2, v3}, Le/b/a/a/s/g;->a([CII)V

    .line 244
    sget-object v0, Le/b/a/a/l;->VALUE_NUMBER_INT:Le/b/a/a/l;

    goto :goto_26

    .line 245
    :cond_7e
    :goto_24
    iput v3, v6, Le/b/a/a/o/b;->G:I

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v4, v8

    .line 246
    invoke-virtual/range {v0 .. v5}, Le/b/a/a/q/f;->a(IIIZI)Le/b/a/a/l;

    move-result-object v0

    goto :goto_26

    .line 247
    :cond_7f
    :goto_25
    iput v4, v6, Le/b/a/a/o/b;->G:I

    .line 248
    invoke-virtual {v6, v0, v12}, Le/b/a/a/q/f;->a(IZ)Le/b/a/a/l;

    move-result-object v0

    goto :goto_26

    .line 249
    :cond_80
    iput-boolean v12, v6, Le/b/a/a/q/f;->Y:Z

    .line 250
    sget-object v0, Le/b/a/a/l;->VALUE_STRING:Le/b/a/a/l;

    :goto_26
    if-eqz v7, :cond_81

    .line 251
    iput-object v0, v6, Le/b/a/a/o/b;->O:Le/b/a/a/l;

    .line 252
    iget-object v0, v6, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    return-object v0

    .line 253
    :cond_81
    iput-object v0, v6, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    return-object v0

    .line 254
    :cond_82
    :goto_27
    invoke-virtual {v6, v0}, Le/b/a/a/q/f;->c(I)V

    .line 255
    iget-object v0, v6, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    .line 2
    sget-object v1, Le/b/a/a/l;->VALUE_STRING:Le/b/a/a/l;

    if-ne v0, v1, :cond_1

    .line 3
    iget-boolean v0, p0, Le/b/a/a/q/f;->Y:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Le/b/a/a/q/f;->Y:Z

    .line 5
    invoke-virtual {p0}, Le/b/a/a/q/f;->p()V

    .line 6
    :cond_0
    iget-object v0, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {v0}, Le/b/a/a/s/g;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Le/b/a/a/l;->id()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    .line 8
    invoke-virtual {v0}, Le/b/a/a/l;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {v0}, Le/b/a/a/s/g;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_4
    iget-object v0, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    .line 11
    iget-object v0, v0, Le/b/a/a/q/d;->f:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/a/q/f;->T:Ljava/io/Reader;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Le/b/a/a/o/b;->E:Le/b/a/a/p/b;

    .line 3
    iget-boolean v0, v0, Le/b/a/a/p/b;->c:Z

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Le/b/a/a/i$a;->AUTO_CLOSE_SOURCE:Le/b/a/a/i$a;

    invoke-virtual {p0, v0}, Le/b/a/a/i;->a(Le/b/a/a/i$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    :cond_0
    iget-object v0, p0, Le/b/a/a/q/f;->T:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Le/b/a/a/q/f;->T:Ljava/io/Reader;

    :cond_2
    return-void
.end method

.method public k()C
    .locals 7

    .line 1
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iget v1, p0, Le/b/a/a/o/b;->H:I

    const/4 v2, 0x0

    const-string v3, " in character escape sequence"

    if-lt v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Le/b/a/a/q/f;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Le/b/a/a/l;->VALUE_STRING:Le/b/a/a/l;

    invoke-virtual {p0, v3, v0}, Le/b/a/a/o/c;->a(Ljava/lang/String;Le/b/a/a/l;)V

    throw v2

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Le/b/a/a/q/f;->U:[C

    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Le/b/a/a/o/b;->G:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_d

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_d

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_d

    const/16 v1, 0x62

    if-eq v0, v1, :cond_c

    const/16 v1, 0x66

    if-eq v0, v1, :cond_b

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_a

    const/16 v1, 0x72

    if-eq v0, v1, :cond_9

    const/16 v1, 0x74

    if-eq v0, v1, :cond_8

    const/16 v1, 0x75

    if-eq v0, v1, :cond_2

    .line 5
    invoke-virtual {p0, v0}, Le/b/a/a/o/c;->a(C)C

    return v0

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x4

    if-ge v0, v4, :cond_7

    .line 6
    iget v4, p0, Le/b/a/a/o/b;->G:I

    iget v5, p0, Le/b/a/a/o/b;->H:I

    if-lt v4, v5, :cond_4

    .line 7
    invoke-virtual {p0}, Le/b/a/a/q/f;->q()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    sget-object v0, Le/b/a/a/l;->VALUE_STRING:Le/b/a/a/l;

    invoke-virtual {p0, v3, v0}, Le/b/a/a/o/c;->a(Ljava/lang/String;Le/b/a/a/l;)V

    throw v2

    .line 9
    :cond_4
    :goto_2
    iget-object v4, p0, Le/b/a/a/q/f;->U:[C

    iget v5, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Le/b/a/a/o/b;->G:I

    aget-char v4, v4, v5

    const/16 v5, 0x7f

    if-le v4, v5, :cond_5

    const/4 v5, -0x1

    goto :goto_3

    .line 10
    :cond_5
    sget-object v5, Le/b/a/a/p/a;->i:[I

    aget v5, v5, v4

    :goto_3
    if-ltz v5, :cond_6

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    const-string v0, "expected a hex-digit for character escape sequence"

    .line 11
    invoke-virtual {p0, v4, v0}, Le/b/a/a/o/c;->a(ILjava/lang/String;)V

    throw v2

    :cond_7
    int-to-char v0, v1

    return v0

    :cond_8
    const/16 v0, 0x9

    return v0

    :cond_9
    const/16 v0, 0xd

    return v0

    :cond_a
    const/16 v0, 0xa

    return v0

    :cond_b
    const/16 v0, 0xc

    return v0

    :cond_c
    const/16 v0, 0x8

    :cond_d
    return v0
.end method

.method public o()V
    .locals 8

    .line 1
    invoke-super {p0}, Le/b/a/a/o/b;->o()V

    .line 2
    iget-object v0, p0, Le/b/a/a/q/f;->W:Le/b/a/a/r/b;

    .line 3
    iget-boolean v1, v0, Le/b/a/a/r/b;->l:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, v0, Le/b/a/a/r/b;->a:Le/b/a/a/r/b;

    if-eqz v1, :cond_3

    iget-boolean v4, v0, Le/b/a/a/r/b;->e:Z

    if-eqz v4, :cond_3

    .line 5
    new-instance v4, Le/b/a/a/r/b$b;

    invoke-direct {v4, v0}, Le/b/a/a/r/b$b;-><init>(Le/b/a/a/r/b;)V

    .line 6
    iget v5, v4, Le/b/a/a/r/b$b;->a:I

    .line 7
    iget-object v6, v1, Le/b/a/a/r/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/b/a/a/r/b$b;

    .line 8
    iget v7, v6, Le/b/a/a/r/b$b;->a:I

    if-ne v5, v7, :cond_1

    goto :goto_0

    :cond_1
    const/16 v7, 0x2ee0

    if-le v5, v7, :cond_2

    const/16 v4, 0x40

    .line 9
    new-instance v5, Le/b/a/a/r/b$b;

    new-array v4, v4, [Ljava/lang/String;

    const/16 v7, 0x20

    new-array v7, v7, [Le/b/a/a/r/b$a;

    invoke-direct {v5, v3, v3, v4, v7}, Le/b/a/a/r/b$b;-><init>(II[Ljava/lang/String;[Le/b/a/a/r/b$a;)V

    move-object v4, v5

    .line 10
    :cond_2
    iget-object v1, v1, Le/b/a/a/r/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v6, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    :goto_0
    iput-boolean v2, v0, Le/b/a/a/r/b;->l:Z

    .line 12
    :cond_3
    :goto_1
    iget-boolean v0, p0, Le/b/a/a/q/f;->V:Z

    if-eqz v0, :cond_5

    .line 13
    iget-object v0, p0, Le/b/a/a/q/f;->U:[C

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Le/b/a/a/q/f;->U:[C

    .line 15
    iget-object v2, p0, Le/b/a/a/o/b;->E:Le/b/a/a/p/b;

    if-eqz v2, :cond_4

    .line 16
    iget-object v4, v2, Le/b/a/a/p/b;->g:[C

    invoke-virtual {v2, v0, v4}, Le/b/a/a/p/b;->a([C[C)V

    .line 17
    iput-object v1, v2, Le/b/a/a/p/b;->g:[C

    .line 18
    iget-object v1, v2, Le/b/a/a/p/b;->d:Le/b/a/a/s/a;

    .line 19
    iget-object v1, v1, Le/b/a/a/s/a;->b:[[C

    aput-object v0, v1, v3

    goto :goto_2

    .line 20
    :cond_4
    throw v1

    :cond_5
    :goto_2
    return-void
.end method

.method public final p()V
    .locals 11

    .line 1
    iget v0, p0, Le/b/a/a/o/b;->G:I

    .line 2
    iget v1, p0, Le/b/a/a/o/b;->H:I

    const/16 v2, 0x22

    if-ge v0, v1, :cond_2

    .line 3
    sget-object v3, Le/b/a/a/q/f;->b0:[I

    .line 4
    array-length v4, v3

    .line 5
    :cond_0
    iget-object v5, p0, Le/b/a/a/q/f;->U:[C

    aget-char v6, v5, v0

    if-ge v6, v4, :cond_1

    .line 6
    aget v7, v3, v6

    if-eqz v7, :cond_1

    if-ne v6, v2, :cond_2

    .line 7
    iget-object v1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    iget v2, p0, Le/b/a/a/o/b;->G:I

    sub-int v3, v0, v2

    invoke-virtual {v1, v5, v2, v3}, Le/b/a/a/s/g;->a([CII)V

    add-int/lit8 v0, v0, 0x1

    .line 8
    iput v0, p0, Le/b/a/a/o/b;->G:I

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_0

    .line 9
    :cond_2
    iget-object v1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    iget-object v3, p0, Le/b/a/a/q/f;->U:[C

    iget v4, p0, Le/b/a/a/o/b;->G:I

    sub-int v5, v0, v4

    const/4 v6, 0x0

    .line 10
    iput-object v6, v1, Le/b/a/a/s/g;->b:[C

    const/4 v7, -0x1

    .line 11
    iput v7, v1, Le/b/a/a/s/g;->c:I

    const/4 v7, 0x0

    .line 12
    iput v7, v1, Le/b/a/a/s/g;->d:I

    .line 13
    iput-object v6, v1, Le/b/a/a/s/g;->j:Ljava/lang/String;

    .line 14
    iput-object v6, v1, Le/b/a/a/s/g;->k:[C

    .line 15
    iget-boolean v8, v1, Le/b/a/a/s/g;->f:Z

    if-eqz v8, :cond_3

    .line 16
    invoke-virtual {v1}, Le/b/a/a/s/g;->a()V

    goto :goto_0

    .line 17
    :cond_3
    iget-object v8, v1, Le/b/a/a/s/g;->h:[C

    if-nez v8, :cond_4

    .line 18
    invoke-virtual {v1, v5}, Le/b/a/a/s/g;->a(I)[C

    move-result-object v8

    iput-object v8, v1, Le/b/a/a/s/g;->h:[C

    .line 19
    :cond_4
    :goto_0
    iput v7, v1, Le/b/a/a/s/g;->g:I

    iput v7, v1, Le/b/a/a/s/g;->i:I

    .line 20
    iget v8, v1, Le/b/a/a/s/g;->c:I

    if-ltz v8, :cond_5

    .line 21
    invoke-virtual {v1, v5}, Le/b/a/a/s/g;->b(I)V

    .line 22
    :cond_5
    iput-object v6, v1, Le/b/a/a/s/g;->j:Ljava/lang/String;

    .line 23
    iput-object v6, v1, Le/b/a/a/s/g;->k:[C

    .line 24
    iget-object v8, v1, Le/b/a/a/s/g;->h:[C

    .line 25
    array-length v9, v8

    iget v10, v1, Le/b/a/a/s/g;->i:I

    sub-int/2addr v9, v10

    if-lt v9, v5, :cond_6

    .line 26
    invoke-static {v3, v4, v8, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    iget v3, v1, Le/b/a/a/s/g;->i:I

    add-int/2addr v3, v5

    iput v3, v1, Le/b/a/a/s/g;->i:I

    goto :goto_1

    :cond_6
    if-lez v9, :cond_7

    .line 28
    invoke-static {v3, v4, v8, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v9

    sub-int/2addr v5, v9

    .line 29
    :cond_7
    invoke-virtual {v1}, Le/b/a/a/s/g;->d()V

    .line 30
    iget-object v8, v1, Le/b/a/a/s/g;->h:[C

    array-length v8, v8

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 31
    iget-object v9, v1, Le/b/a/a/s/g;->h:[C

    invoke-static {v3, v4, v9, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iget v9, v1, Le/b/a/a/s/g;->i:I

    add-int/2addr v9, v8

    iput v9, v1, Le/b/a/a/s/g;->i:I

    add-int/2addr v4, v8

    sub-int/2addr v5, v8

    if-gtz v5, :cond_7

    .line 33
    :goto_1
    iput v0, p0, Le/b/a/a/o/b;->G:I

    .line 34
    iget-object v0, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {v0}, Le/b/a/a/s/g;->g()[C

    move-result-object v0

    .line 35
    iget-object v1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    .line 36
    iget v1, v1, Le/b/a/a/s/g;->i:I

    .line 37
    sget-object v8, Le/b/a/a/q/f;->b0:[I

    .line 38
    array-length v9, v8

    .line 39
    :goto_2
    iget v3, p0, Le/b/a/a/o/b;->G:I

    iget v4, p0, Le/b/a/a/o/b;->H:I

    if-lt v3, v4, :cond_9

    .line 40
    invoke-virtual {p0}, Le/b/a/a/q/f;->q()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    .line 41
    :cond_8
    sget-object v0, Le/b/a/a/l;->VALUE_STRING:Le/b/a/a/l;

    const-string v1, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v1, v0}, Le/b/a/a/o/c;->a(Ljava/lang/String;Le/b/a/a/l;)V

    throw v6

    .line 42
    :cond_9
    :goto_3
    iget-object v3, p0, Le/b/a/a/q/f;->U:[C

    iget v4, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Le/b/a/a/o/b;->G:I

    aget-char v3, v3, v4

    if-ge v3, v9, :cond_c

    .line 43
    aget v4, v8, v3

    if-eqz v4, :cond_c

    if-ne v3, v2, :cond_a

    .line 44
    iget-object v0, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    .line 45
    iput v1, v0, Le/b/a/a/s/g;->i:I

    return-void

    :cond_a
    const/16 v4, 0x5c

    if-ne v3, v4, :cond_b

    .line 46
    invoke-virtual {p0}, Le/b/a/a/q/f;->k()C

    move-result v3

    goto :goto_4

    :cond_b
    const/16 v4, 0x20

    if-ge v3, v4, :cond_c

    const-string v4, "string value"

    .line 47
    invoke-virtual {p0, v3, v4}, Le/b/a/a/o/c;->b(ILjava/lang/String;)V

    .line 48
    :cond_c
    :goto_4
    array-length v4, v0

    if-lt v1, v4, :cond_d

    .line 49
    iget-object v0, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {v0}, Le/b/a/a/s/g;->f()[C

    move-result-object v0

    const/4 v1, 0x0

    :cond_d
    add-int/lit8 v4, v1, 0x1

    .line 50
    aput-char v3, v0, v1

    move v1, v4

    goto :goto_2
.end method

.method public q()Z
    .locals 5

    .line 1
    iget v0, p0, Le/b/a/a/o/b;->H:I

    .line 2
    iget-wide v1, p0, Le/b/a/a/o/b;->I:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Le/b/a/a/o/b;->I:J

    .line 3
    iget v1, p0, Le/b/a/a/o/b;->K:I

    sub-int/2addr v1, v0

    iput v1, p0, Le/b/a/a/o/b;->K:I

    .line 4
    iget-wide v0, p0, Le/b/a/a/q/f;->Z:J

    sub-long/2addr v0, v3

    iput-wide v0, p0, Le/b/a/a/q/f;->Z:J

    .line 5
    iget-object v0, p0, Le/b/a/a/q/f;->T:Ljava/io/Reader;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6
    iget-object v2, p0, Le/b/a/a/q/f;->U:[C

    array-length v3, v2

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-lez v0, :cond_0

    .line 7
    iput v1, p0, Le/b/a/a/o/b;->G:I

    .line 8
    iput v0, p0, Le/b/a/a/o/b;->H:I

    const/4 v0, 0x1

    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Le/b/a/a/q/f;->j()V

    if-eqz v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Reader returned 0 characters when trying to read "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Le/b/a/a/o/b;->H:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return v1
.end method

.method public r()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/b/a/a/q/f;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Le/b/a/a/o/c;->h()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final s()I
    .locals 3

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iget v1, p0, Le/b/a/a/o/b;->H:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Le/b/a/a/q/f;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "Unexpected end-of-input within/between "

    .line 2
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    invoke-virtual {v1}, Le/b/a/a/k;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/b/a/a/i;->a(Ljava/lang/String;)Le/b/a/a/h;

    move-result-object v0

    throw v0

    .line 3
    :cond_2
    :goto_1
    iget-object v0, p0, Le/b/a/a/q/f;->U:[C

    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/o/b;->G:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-le v0, v1, :cond_5

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3

    .line 4
    invoke-virtual {p0}, Le/b/a/a/q/f;->u()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x23

    if-ne v0, v1, :cond_4

    .line 5
    invoke-virtual {p0}, Le/b/a/a/q/f;->x()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    if-ge v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    .line 6
    iget v0, p0, Le/b/a/a/o/b;->J:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/b/a/a/o/b;->J:I

    .line 7
    iput v2, p0, Le/b/a/a/o/b;->K:I

    goto :goto_0

    :cond_6
    const/16 v1, 0xd

    if-ne v0, v1, :cond_7

    .line 8
    invoke-virtual {p0}, Le/b/a/a/q/f;->t()V

    goto :goto_0

    :cond_7
    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    goto :goto_0

    .line 9
    :cond_8
    invoke-virtual {p0, v0}, Le/b/a/a/o/c;->a(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final t()V
    .locals 3

    .line 1
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iget v1, p0, Le/b/a/a/o/b;->H:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Le/b/a/a/q/f;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Le/b/a/a/q/f;->U:[C

    iget v1, p0, Le/b/a/a/o/b;->G:I

    aget-char v0, v0, v1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 3
    iput v1, p0, Le/b/a/a/o/b;->G:I

    .line 4
    :cond_1
    iget v0, p0, Le/b/a/a/o/b;->J:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/b/a/a/o/b;->J:I

    .line 5
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iput v0, p0, Le/b/a/a/o/b;->K:I

    return-void
.end method

.method public final u()V
    .locals 7

    .line 1
    sget-object v0, Le/b/a/a/i$a;->ALLOW_COMMENTS:Le/b/a/a/i$a;

    invoke-virtual {p0, v0}, Le/b/a/a/i;->a(Le/b/a/a/i$a;)Z

    move-result v0

    const/16 v1, 0x2f

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    .line 2
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iget v3, p0, Le/b/a/a/o/b;->H:I

    const-string v4, " in a comment"

    if-lt v0, v3, :cond_1

    invoke-virtual {p0}, Le/b/a/a/q/f;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v4, v2}, Le/b/a/a/o/c;->a(Ljava/lang/String;Le/b/a/a/l;)V

    throw v2

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Le/b/a/a/q/f;->U:[C

    iget v3, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Le/b/a/a/o/b;->G:I

    aget-char v0, v0, v3

    if-ne v0, v1, :cond_2

    .line 5
    invoke-virtual {p0}, Le/b/a/a/q/f;->v()V

    goto :goto_3

    :cond_2
    const/16 v3, 0x2a

    if-ne v0, v3, :cond_b

    .line 6
    :cond_3
    :goto_1
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iget v5, p0, Le/b/a/a/o/b;->H:I

    if-lt v0, v5, :cond_4

    invoke-virtual {p0}, Le/b/a/a/q/f;->q()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    :cond_4
    iget-object v0, p0, Le/b/a/a/q/f;->U:[C

    iget v5, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Le/b/a/a/o/b;->G:I

    aget-char v0, v0, v5

    if-gt v0, v3, :cond_3

    if-ne v0, v3, :cond_7

    .line 8
    iget v0, p0, Le/b/a/a/o/b;->H:I

    if-lt v6, v0, :cond_6

    invoke-virtual {p0}, Le/b/a/a/q/f;->q()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 9
    :cond_5
    invoke-virtual {p0, v4, v2}, Le/b/a/a/o/c;->a(Ljava/lang/String;Le/b/a/a/l;)V

    throw v2

    .line 10
    :cond_6
    :goto_2
    iget-object v0, p0, Le/b/a/a/q/f;->U:[C

    iget v5, p0, Le/b/a/a/o/b;->G:I

    aget-char v0, v0, v5

    if-ne v0, v1, :cond_3

    add-int/lit8 v5, v5, 0x1

    .line 11
    iput v5, p0, Le/b/a/a/o/b;->G:I

    :goto_3
    return-void

    :cond_7
    const/16 v5, 0x20

    if-ge v0, v5, :cond_3

    const/16 v5, 0xa

    if-ne v0, v5, :cond_8

    .line 12
    iget v0, p0, Le/b/a/a/o/b;->J:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/b/a/a/o/b;->J:I

    .line 13
    iput v6, p0, Le/b/a/a/o/b;->K:I

    goto :goto_1

    :cond_8
    const/16 v5, 0xd

    if-ne v0, v5, :cond_9

    .line 14
    invoke-virtual {p0}, Le/b/a/a/q/f;->t()V

    goto :goto_1

    :cond_9
    const/16 v5, 0x9

    if-ne v0, v5, :cond_a

    goto :goto_1

    .line 15
    :cond_a
    invoke-virtual {p0, v0}, Le/b/a/a/o/c;->a(I)V

    throw v2

    :cond_b
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    .line 16
    invoke-virtual {p0, v0, v1}, Le/b/a/a/o/c;->a(ILjava/lang/String;)V

    throw v2

    :cond_c
    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    .line 17
    invoke-virtual {p0, v1, v0}, Le/b/a/a/o/c;->a(ILjava/lang/String;)V

    throw v2
.end method

.method public final v()V
    .locals 3

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iget v1, p0, Le/b/a/a/o/b;->H:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Le/b/a/a/q/f;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    :cond_1
    iget-object v0, p0, Le/b/a/a/q/f;->U:[C

    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/o/b;->G:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 3
    iget v0, p0, Le/b/a/a/o/b;->J:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/b/a/a/o/b;->J:I

    .line 4
    iput v2, p0, Le/b/a/a/o/b;->K:I

    goto :goto_1

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 5
    invoke-virtual {p0}, Le/b/a/a/q/f;->t()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    goto :goto_0

    .line 6
    :cond_5
    invoke-virtual {p0, v0}, Le/b/a/a/o/c;->a(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final w()I
    .locals 3

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iget v1, p0, Le/b/a/a/o/b;->H:I

    if-lt v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Le/b/a/a/q/f;->q()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Le/b/a/a/o/b;->l()I

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Le/b/a/a/q/f;->U:[C

    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/o/b;->G:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-le v0, v1, :cond_4

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    .line 5
    invoke-virtual {p0}, Le/b/a/a/q/f;->u()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x23

    if-ne v0, v1, :cond_3

    .line 6
    invoke-virtual {p0}, Le/b/a/a/q/f;->x()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 7
    iget v0, p0, Le/b/a/a/o/b;->J:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/b/a/a/o/b;->J:I

    .line 8
    iput v2, p0, Le/b/a/a/o/b;->K:I

    goto :goto_0

    :cond_5
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 9
    invoke-virtual {p0}, Le/b/a/a/q/f;->t()V

    goto :goto_0

    :cond_6
    const/16 v1, 0x9

    if-ne v0, v1, :cond_7

    goto :goto_0

    .line 10
    :cond_7
    invoke-virtual {p0, v0}, Le/b/a/a/o/c;->a(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final x()Z
    .locals 1

    .line 1
    sget-object v0, Le/b/a/a/i$a;->ALLOW_YAML_COMMENTS:Le/b/a/a/i$a;

    invoke-virtual {p0, v0}, Le/b/a/a/i;->a(Le/b/a/a/i$a;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/b/a/a/q/f;->v()V

    const/4 v0, 0x1

    return v0
.end method

.method public final y()V
    .locals 2

    .line 1
    iget v0, p0, Le/b/a/a/o/b;->G:I

    .line 2
    iget v1, p0, Le/b/a/a/o/b;->J:I

    iput v1, p0, Le/b/a/a/o/b;->L:I

    .line 3
    iget v1, p0, Le/b/a/a/o/b;->K:I

    sub-int/2addr v0, v1

    iput v0, p0, Le/b/a/a/o/b;->M:I

    return-void
.end method
