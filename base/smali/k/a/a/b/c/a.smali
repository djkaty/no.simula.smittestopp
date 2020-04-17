.class public Lk/a/a/b/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk/a/a/b/c/a;->a:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lk/a/a/b/c/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "*>;)",
            "Lk/a/a/b/c/a;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lk/a/a/b/c/a;->a:I

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-nez p1, :cond_2

    .line 2
    iput v0, p0, Lk/a/a/b/c/a;->a:I

    return-object p0

    :cond_2
    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 3
    iput v1, p0, Lk/a/a/b/c/a;->a:I

    return-object p0

    .line 4
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 5
    instance-of v2, p1, [J

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    .line 6
    check-cast p1, [J

    check-cast p2, [J

    .line 7
    iget p3, p0, Lk/a/a/b/c/a;->a:I

    if-eqz p3, :cond_4

    goto/16 :goto_1f

    :cond_4
    if-ne p1, p2, :cond_5

    goto/16 :goto_1f

    .line 8
    :cond_5
    array-length p3, p1

    array-length v2, p2

    if-eq p3, v2, :cond_7

    .line 9
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lk/a/a/b/c/a;->a:I

    goto/16 :goto_1f

    :cond_7
    const/4 p3, 0x0

    .line 10
    :goto_1
    array-length v2, p1

    if-ge p3, v2, :cond_46

    iget v2, p0, Lk/a/a/b/c/a;->a:I

    if-nez v2, :cond_46

    .line 11
    aget-wide v4, p1, p3

    aget-wide v6, p2, p3

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    cmp-long v2, v4, v6

    if-gez v2, :cond_9

    const/4 v2, -0x1

    goto :goto_2

    :cond_9
    if-lez v2, :cond_a

    const/4 v2, 0x1

    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    .line 12
    :goto_2
    iput v2, p0, Lk/a/a/b/c/a;->a:I

    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 13
    :cond_b
    instance-of v2, p1, [I

    if-eqz v2, :cond_13

    .line 14
    check-cast p1, [I

    check-cast p2, [I

    .line 15
    iget p3, p0, Lk/a/a/b/c/a;->a:I

    if-eqz p3, :cond_c

    goto/16 :goto_1f

    :cond_c
    if-ne p1, p2, :cond_d

    goto/16 :goto_1f

    .line 16
    :cond_d
    array-length p3, p1

    array-length v2, p2

    if-eq p3, v2, :cond_f

    .line 17
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_e

    goto :goto_4

    :cond_e
    const/4 v0, 0x1

    :goto_4
    iput v0, p0, Lk/a/a/b/c/a;->a:I

    goto/16 :goto_1f

    :cond_f
    const/4 p3, 0x0

    .line 18
    :goto_5
    array-length v2, p1

    if-ge p3, v2, :cond_46

    iget v2, p0, Lk/a/a/b/c/a;->a:I

    if-nez v2, :cond_46

    .line 19
    aget v4, p1, p3

    aget v5, p2, p3

    if-eqz v2, :cond_10

    goto :goto_7

    :cond_10
    if-ge v4, v5, :cond_11

    const/4 v2, -0x1

    goto :goto_6

    :cond_11
    if-le v4, v5, :cond_12

    const/4 v2, 0x1

    goto :goto_6

    :cond_12
    const/4 v2, 0x0

    .line 20
    :goto_6
    iput v2, p0, Lk/a/a/b/c/a;->a:I

    :goto_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 21
    :cond_13
    instance-of v2, p1, [S

    if-eqz v2, :cond_1b

    .line 22
    check-cast p1, [S

    check-cast p2, [S

    .line 23
    iget p3, p0, Lk/a/a/b/c/a;->a:I

    if-eqz p3, :cond_14

    goto/16 :goto_1f

    :cond_14
    if-ne p1, p2, :cond_15

    goto/16 :goto_1f

    .line 24
    :cond_15
    array-length p3, p1

    array-length v2, p2

    if-eq p3, v2, :cond_17

    .line 25
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_16

    goto :goto_8

    :cond_16
    const/4 v0, 0x1

    :goto_8
    iput v0, p0, Lk/a/a/b/c/a;->a:I

    goto/16 :goto_1f

    :cond_17
    const/4 p3, 0x0

    .line 26
    :goto_9
    array-length v2, p1

    if-ge p3, v2, :cond_46

    iget v2, p0, Lk/a/a/b/c/a;->a:I

    if-nez v2, :cond_46

    .line 27
    aget-short v4, p1, p3

    aget-short v5, p2, p3

    if-eqz v2, :cond_18

    goto :goto_b

    :cond_18
    if-ge v4, v5, :cond_19

    const/4 v2, -0x1

    goto :goto_a

    :cond_19
    if-le v4, v5, :cond_1a

    const/4 v2, 0x1

    goto :goto_a

    :cond_1a
    const/4 v2, 0x0

    .line 28
    :goto_a
    iput v2, p0, Lk/a/a/b/c/a;->a:I

    :goto_b
    add-int/lit8 p3, p3, 0x1

    goto :goto_9

    .line 29
    :cond_1b
    instance-of v2, p1, [C

    if-eqz v2, :cond_23

    .line 30
    check-cast p1, [C

    check-cast p2, [C

    .line 31
    iget p3, p0, Lk/a/a/b/c/a;->a:I

    if-eqz p3, :cond_1c

    goto/16 :goto_1f

    :cond_1c
    if-ne p1, p2, :cond_1d

    goto/16 :goto_1f

    .line 32
    :cond_1d
    array-length p3, p1

    array-length v2, p2

    if-eq p3, v2, :cond_1f

    .line 33
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_1e

    goto :goto_c

    :cond_1e
    const/4 v0, 0x1

    :goto_c
    iput v0, p0, Lk/a/a/b/c/a;->a:I

    goto/16 :goto_1f

    :cond_1f
    const/4 p3, 0x0

    .line 34
    :goto_d
    array-length v2, p1

    if-ge p3, v2, :cond_46

    iget v2, p0, Lk/a/a/b/c/a;->a:I

    if-nez v2, :cond_46

    .line 35
    aget-char v4, p1, p3

    aget-char v5, p2, p3

    if-eqz v2, :cond_20

    goto :goto_f

    :cond_20
    if-ge v4, v5, :cond_21

    const/4 v2, -0x1

    goto :goto_e

    :cond_21
    if-le v4, v5, :cond_22

    const/4 v2, 0x1

    goto :goto_e

    :cond_22
    const/4 v2, 0x0

    .line 36
    :goto_e
    iput v2, p0, Lk/a/a/b/c/a;->a:I

    :goto_f
    add-int/lit8 p3, p3, 0x1

    goto :goto_d

    .line 37
    :cond_23
    instance-of v2, p1, [B

    if-eqz v2, :cond_2b

    .line 38
    check-cast p1, [B

    check-cast p2, [B

    .line 39
    iget p3, p0, Lk/a/a/b/c/a;->a:I

    if-eqz p3, :cond_24

    goto/16 :goto_1f

    :cond_24
    if-ne p1, p2, :cond_25

    goto/16 :goto_1f

    .line 40
    :cond_25
    array-length p3, p1

    array-length v2, p2

    if-eq p3, v2, :cond_27

    .line 41
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_26

    goto :goto_10

    :cond_26
    const/4 v0, 0x1

    :goto_10
    iput v0, p0, Lk/a/a/b/c/a;->a:I

    goto/16 :goto_1f

    :cond_27
    const/4 p3, 0x0

    .line 42
    :goto_11
    array-length v2, p1

    if-ge p3, v2, :cond_46

    iget v2, p0, Lk/a/a/b/c/a;->a:I

    if-nez v2, :cond_46

    .line 43
    aget-byte v4, p1, p3

    aget-byte v5, p2, p3

    if-eqz v2, :cond_28

    goto :goto_13

    :cond_28
    if-ge v4, v5, :cond_29

    const/4 v2, -0x1

    goto :goto_12

    :cond_29
    if-le v4, v5, :cond_2a

    const/4 v2, 0x1

    goto :goto_12

    :cond_2a
    const/4 v2, 0x0

    .line 44
    :goto_12
    iput v2, p0, Lk/a/a/b/c/a;->a:I

    :goto_13
    add-int/lit8 p3, p3, 0x1

    goto :goto_11

    .line 45
    :cond_2b
    instance-of v2, p1, [D

    if-eqz v2, :cond_31

    .line 46
    check-cast p1, [D

    check-cast p2, [D

    .line 47
    iget p3, p0, Lk/a/a/b/c/a;->a:I

    if-eqz p3, :cond_2c

    goto/16 :goto_1f

    :cond_2c
    if-ne p1, p2, :cond_2d

    goto/16 :goto_1f

    .line 48
    :cond_2d
    array-length p3, p1

    array-length v2, p2

    if-eq p3, v2, :cond_2f

    .line 49
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_2e

    goto :goto_14

    :cond_2e
    const/4 v0, 0x1

    :goto_14
    iput v0, p0, Lk/a/a/b/c/a;->a:I

    goto/16 :goto_1f

    .line 50
    :cond_2f
    :goto_15
    array-length p3, p1

    if-ge v3, p3, :cond_46

    iget p3, p0, Lk/a/a/b/c/a;->a:I

    if-nez p3, :cond_46

    .line 51
    aget-wide v0, p1, v3

    aget-wide v4, p2, v3

    if-eqz p3, :cond_30

    goto :goto_16

    .line 52
    :cond_30
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result p3

    iput p3, p0, Lk/a/a/b/c/a;->a:I

    :goto_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 53
    :cond_31
    instance-of v2, p1, [F

    if-eqz v2, :cond_37

    .line 54
    check-cast p1, [F

    check-cast p2, [F

    .line 55
    iget p3, p0, Lk/a/a/b/c/a;->a:I

    if-eqz p3, :cond_32

    goto/16 :goto_1f

    :cond_32
    if-ne p1, p2, :cond_33

    goto/16 :goto_1f

    .line 56
    :cond_33
    array-length p3, p1

    array-length v2, p2

    if-eq p3, v2, :cond_35

    .line 57
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_34

    goto :goto_17

    :cond_34
    const/4 v0, 0x1

    :goto_17
    iput v0, p0, Lk/a/a/b/c/a;->a:I

    goto/16 :goto_1f

    .line 58
    :cond_35
    :goto_18
    array-length p3, p1

    if-ge v3, p3, :cond_46

    iget p3, p0, Lk/a/a/b/c/a;->a:I

    if-nez p3, :cond_46

    .line 59
    aget v0, p1, v3

    aget v1, p2, v3

    if-eqz p3, :cond_36

    goto :goto_19

    .line 60
    :cond_36
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p3

    iput p3, p0, Lk/a/a/b/c/a;->a:I

    :goto_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 61
    :cond_37
    instance-of v2, p1, [Z

    if-eqz v2, :cond_3f

    .line 62
    check-cast p1, [Z

    check-cast p2, [Z

    .line 63
    iget p3, p0, Lk/a/a/b/c/a;->a:I

    if-eqz p3, :cond_38

    goto/16 :goto_1f

    :cond_38
    if-ne p1, p2, :cond_39

    goto/16 :goto_1f

    .line 64
    :cond_39
    array-length p3, p1

    array-length v2, p2

    if-eq p3, v2, :cond_3b

    .line 65
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_3a

    goto :goto_1a

    :cond_3a
    const/4 v0, 0x1

    :goto_1a
    iput v0, p0, Lk/a/a/b/c/a;->a:I

    goto :goto_1f

    .line 66
    :cond_3b
    :goto_1b
    array-length p3, p1

    if-ge v3, p3, :cond_46

    iget p3, p0, Lk/a/a/b/c/a;->a:I

    if-nez p3, :cond_46

    .line 67
    aget-boolean v2, p1, v3

    aget-boolean v4, p2, v3

    if-eqz p3, :cond_3c

    goto :goto_1c

    :cond_3c
    if-ne v2, v4, :cond_3d

    goto :goto_1c

    :cond_3d
    if-nez v2, :cond_3e

    .line 68
    iput v0, p0, Lk/a/a/b/c/a;->a:I

    goto :goto_1c

    .line 69
    :cond_3e
    iput v1, p0, Lk/a/a/b/c/a;->a:I

    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 70
    :cond_3f
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    .line 71
    iget v2, p0, Lk/a/a/b/c/a;->a:I

    if-eqz v2, :cond_40

    goto :goto_1f

    :cond_40
    if-ne p1, p2, :cond_41

    goto :goto_1f

    .line 72
    :cond_41
    array-length v2, p1

    array-length v4, p2

    if-eq v2, v4, :cond_43

    .line 73
    array-length p1, p1

    array-length p2, p2

    if-ge p1, p2, :cond_42

    goto :goto_1d

    :cond_42
    const/4 v0, 0x1

    :goto_1d
    iput v0, p0, Lk/a/a/b/c/a;->a:I

    goto :goto_1f

    .line 74
    :cond_43
    :goto_1e
    array-length v0, p1

    if-ge v3, v0, :cond_46

    iget v0, p0, Lk/a/a/b/c/a;->a:I

    if-nez v0, :cond_46

    .line 75
    aget-object v0, p1, v3

    aget-object v1, p2, v3

    invoke-virtual {p0, v0, v1, p3}, Lk/a/a/b/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lk/a/a/b/c/a;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_44
    if-nez p3, :cond_45

    .line 76
    check-cast p1, Ljava/lang/Comparable;

    .line 77
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lk/a/a/b/c/a;->a:I

    goto :goto_1f

    .line 78
    :cond_45
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lk/a/a/b/c/a;->a:I

    :cond_46
    :goto_1f
    return-object p0
.end method
