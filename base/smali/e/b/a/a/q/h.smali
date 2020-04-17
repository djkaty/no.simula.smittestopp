.class public Le/b/a/a/q/h;
.super Le/b/a/a/o/b;
.source "SourceFile"


# static fields
.field public static final b0:[I

.field public static final c0:[I

.field public static final d0:I


# instance fields
.field public final T:Le/b/a/a/r/a;

.field public U:[I

.field public V:Z

.field public W:I

.field public X:I

.field public Y:Ljava/io/InputStream;

.field public Z:[B

.field public a0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Le/b/a/a/p/a;->d:[I

    .line 2
    sput-object v0, Le/b/a/a/q/h;->b0:[I

    .line 3
    sget-object v0, Le/b/a/a/p/a;->c:[I

    .line 4
    sput-object v0, Le/b/a/a/q/h;->c0:[I

    .line 5
    sget-object v0, Le/b/a/a/i$a;->ALLOW_TRAILING_COMMA:Le/b/a/a/i$a;

    invoke-virtual {v0}, Le/b/a/a/i$a;->getMask()I

    move-result v0

    sput v0, Le/b/a/a/q/h;->d0:I

    return-void
.end method

.method public constructor <init>(Le/b/a/a/p/b;ILjava/io/InputStream;Le/b/a/a/r/a;[BIIZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/b/a/a/o/b;-><init>(Le/b/a/a/p/b;I)V

    const/16 p1, 0x10

    new-array p1, p1, [I

    .line 2
    iput-object p1, p0, Le/b/a/a/q/h;->U:[I

    .line 3
    iput-object p3, p0, Le/b/a/a/q/h;->Y:Ljava/io/InputStream;

    .line 4
    iput-object p4, p0, Le/b/a/a/q/h;->T:Le/b/a/a/r/a;

    .line 5
    iput-object p5, p0, Le/b/a/a/q/h;->Z:[B

    .line 6
    iput p6, p0, Le/b/a/a/o/b;->G:I

    .line 7
    iput p7, p0, Le/b/a/a/o/b;->H:I

    .line 8
    iput p6, p0, Le/b/a/a/o/b;->K:I

    neg-int p1, p6

    int-to-long p1, p1

    .line 9
    iput-wide p1, p0, Le/b/a/a/o/b;->I:J

    .line 10
    iput-boolean p8, p0, Le/b/a/a/q/h;->a0:Z

    return-void
.end method

.method public static final c(II)I
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    shl-int/lit8 p1, p1, 0x3

    shl-int p1, v0, p1

    or-int/2addr p0, p1

    :goto_0
    return p0
.end method


# virtual methods
.method public final A()V
    .locals 5

    .line 1
    sget-object v0, Le/b/a/a/p/a;->g:[I

    .line 2
    :cond_0
    :goto_0
    iget v1, p0, Le/b/a/a/o/b;->G:I

    iget v2, p0, Le/b/a/a/o/b;->H:I

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Le/b/a/a/q/h;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    return-void

    .line 3
    :cond_2
    :goto_1
    iget-object v1, p0, Le/b/a/a/q/h;->Z:[B

    iget v2, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Le/b/a/a/o/b;->G:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 4
    aget v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_8

    const/4 v4, 0x3

    if-eq v2, v4, :cond_7

    const/4 v4, 0x4

    if-eq v2, v4, :cond_6

    const/16 v4, 0xa

    if-eq v2, v4, :cond_5

    const/16 v3, 0xd

    if-eq v2, v3, :cond_4

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_0

    if-ltz v2, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {p0, v1}, Le/b/a/a/q/h;->j(I)V

    const/4 v0, 0x0

    throw v0

    .line 6
    :cond_4
    invoke-virtual {p0}, Le/b/a/a/q/h;->y()V

    return-void

    .line 7
    :cond_5
    iget v0, p0, Le/b/a/a/o/b;->J:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/b/a/a/o/b;->J:I

    .line 8
    iput v3, p0, Le/b/a/a/o/b;->K:I

    return-void

    .line 9
    :cond_6
    invoke-virtual {p0}, Le/b/a/a/q/h;->D()V

    goto :goto_0

    .line 10
    :cond_7
    invoke-virtual {p0}, Le/b/a/a/q/h;->C()V

    goto :goto_0

    .line 11
    :cond_8
    invoke-virtual {p0}, Le/b/a/a/q/h;->B()V

    goto :goto_0
.end method

.method public final B()V
    .locals 4

    .line 1
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iget v1, p0, Le/b/a/a/o/b;->H:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/b/a/a/q/h;->t()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/16 v3, 0x80

    if-ne v1, v3, :cond_1

    return-void

    :cond_1
    and-int/lit16 v0, v0, 0xff

    .line 4
    invoke-virtual {p0, v0, v2}, Le/b/a/a/q/h;->a(II)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final C()V
    .locals 5

    .line 1
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iget v1, p0, Le/b/a/a/o/b;->H:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/b/a/a/q/h;->t()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/4 v3, 0x0

    const/16 v4, 0x80

    if-ne v1, v4, :cond_3

    .line 4
    iget v0, p0, Le/b/a/a/o/b;->H:I

    if-lt v2, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Le/b/a/a/q/h;->t()V

    .line 6
    :cond_1
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-ne v1, v4, :cond_2

    return-void

    :cond_2
    and-int/lit16 v0, v0, 0xff

    .line 7
    invoke-virtual {p0, v0, v2}, Le/b/a/a/q/h;->a(II)V

    throw v3

    :cond_3
    and-int/lit16 v0, v0, 0xff

    .line 8
    invoke-virtual {p0, v0, v2}, Le/b/a/a/q/h;->a(II)V

    throw v3
.end method

.method public final D()V
    .locals 5

    .line 1
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iget v1, p0, Le/b/a/a/o/b;->H:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/b/a/a/q/h;->t()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/4 v3, 0x0

    const/16 v4, 0x80

    if-ne v1, v4, :cond_5

    .line 4
    iget v0, p0, Le/b/a/a/o/b;->H:I

    if-lt v2, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Le/b/a/a/q/h;->t()V

    .line 6
    :cond_1
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-ne v1, v4, :cond_4

    .line 7
    iget v0, p0, Le/b/a/a/o/b;->H:I

    if-lt v2, v0, :cond_2

    .line 8
    invoke-virtual {p0}, Le/b/a/a/q/h;->t()V

    .line 9
    :cond_2
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-ne v1, v4, :cond_3

    return-void

    :cond_3
    and-int/lit16 v0, v0, 0xff

    .line 10
    invoke-virtual {p0, v0, v2}, Le/b/a/a/q/h;->a(II)V

    throw v3

    :cond_4
    and-int/lit16 v0, v0, 0xff

    .line 11
    invoke-virtual {p0, v0, v2}, Le/b/a/a/q/h;->a(II)V

    throw v3

    :cond_5
    and-int/lit16 v0, v0, 0xff

    .line 12
    invoke-virtual {p0, v0, v2}, Le/b/a/a/q/h;->a(II)V

    throw v3
.end method

.method public final E()I
    .locals 3

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iget v1, p0, Le/b/a/a/o/b;->H:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Le/b/a/a/q/h;->s()Z

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
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x20

    if-le v0, v1, :cond_5

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3

    .line 4
    invoke-virtual {p0}, Le/b/a/a/q/h;->z()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x23

    if-ne v0, v1, :cond_4

    .line 5
    invoke-virtual {p0}, Le/b/a/a/q/h;->G()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    if-eq v0, v1, :cond_0

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
    invoke-virtual {p0}, Le/b/a/a/q/h;->y()V

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

.method public final F()I
    .locals 3

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iget v1, p0, Le/b/a/a/o/b;->H:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Le/b/a/a/q/h;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p0}, Le/b/a/a/o/b;->l()I

    const/4 v0, -0x1

    return v0

    .line 3
    :cond_2
    :goto_1
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x20

    if-le v0, v1, :cond_5

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3

    .line 4
    invoke-virtual {p0}, Le/b/a/a/q/h;->z()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x23

    if-ne v0, v1, :cond_4

    .line 5
    invoke-virtual {p0}, Le/b/a/a/q/h;->G()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    if-eq v0, v1, :cond_0

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
    invoke-virtual {p0}, Le/b/a/a/q/h;->y()V

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

.method public final G()Z
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
    invoke-virtual {p0}, Le/b/a/a/q/h;->A()V

    const/4 v0, 0x1

    return v0
.end method

.method public final H()V
    .locals 2

    .line 1
    iget v0, p0, Le/b/a/a/o/b;->J:I

    iput v0, p0, Le/b/a/a/o/b;->L:I

    .line 2
    iget v0, p0, Le/b/a/a/o/b;->G:I

    .line 3
    iget v1, p0, Le/b/a/a/o/b;->K:I

    sub-int/2addr v0, v1

    iput v0, p0, Le/b/a/a/o/b;->M:I

    return-void
.end method

.method public final I()I
    .locals 5

    .line 1
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iget v1, p0, Le/b/a/a/o/b;->H:I

    const/16 v2, 0x30

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Le/b/a/a/q/h;->s()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    iget v1, p0, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v2, :cond_8

    const/16 v1, 0x39

    if-le v0, v1, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    sget-object v3, Le/b/a/a/i$a;->ALLOW_NUMERIC_LEADING_ZEROS:Le/b/a/a/i$a;

    invoke-virtual {p0, v3}, Le/b/a/a/i;->a(Le/b/a/a/i$a;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4
    iget v3, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Le/b/a/a/o/b;->G:I

    if-ne v0, v2, :cond_6

    .line 5
    :cond_2
    iget v3, p0, Le/b/a/a/o/b;->G:I

    iget v4, p0, Le/b/a/a/o/b;->H:I

    if-lt v3, v4, :cond_3

    invoke-virtual {p0}, Le/b/a/a/q/h;->s()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6
    :cond_3
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    iget v3, p0, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v2, :cond_5

    if-le v0, v1, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 7
    iput v3, p0, Le/b/a/a/o/b;->G:I

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_5
    :goto_0
    return v2

    :cond_6
    :goto_1
    return v0

    .line 8
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid numeric value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Leading zeroes not allowed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Le/b/a/a/i;->a(Ljava/lang/String;)Le/b/a/a/h;

    move-result-object v0

    throw v0

    :cond_8
    :goto_2
    return v2
.end method

.method public final J()I
    .locals 3

    .line 1
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iget v1, p0, Le/b/a/a/o/b;->H:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/b/a/a/q/h;->t()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final a(Z)I
    .locals 4

    .line 147
    :cond_0
    :goto_0
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iget v1, p0, Le/b/a/a/o/b;->H:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Le/b/a/a/q/h;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, " within/between "

    .line 148
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

    .line 149
    :cond_2
    :goto_1
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x20

    if-le v0, v1, :cond_7

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3

    .line 150
    invoke-virtual {p0}, Le/b/a/a/q/h;->z()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x23

    if-ne v0, v1, :cond_4

    .line 151
    invoke-virtual {p0}, Le/b/a/a/q/h;->G()Z

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

    .line 152
    invoke-virtual {p0, v0, p1}, Le/b/a/a/o/c;->a(ILjava/lang/String;)V

    throw v2

    :cond_7
    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    .line 153
    iget v0, p0, Le/b/a/a/o/b;->J:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/b/a/a/o/b;->J:I

    .line 154
    iput v3, p0, Le/b/a/a/o/b;->K:I

    goto :goto_0

    :cond_8
    const/16 v1, 0xd

    if-ne v0, v1, :cond_9

    .line 155
    invoke-virtual {p0}, Le/b/a/a/q/h;->y()V

    goto :goto_0

    :cond_9
    const/16 v1, 0x9

    if-ne v0, v1, :cond_a

    goto :goto_0

    .line 156
    :cond_a
    invoke-virtual {p0, v0}, Le/b/a/a/o/c;->a(I)V

    throw v2
.end method

.method public a(IZ)Le/b/a/a/l;
    .locals 3

    const/16 v0, 0x49

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7

    .line 127
    iget p1, p0, Le/b/a/a/o/b;->G:I

    iget v0, p0, Le/b/a/a/o/b;->H:I

    if-lt p1, v0, :cond_1

    .line 128
    invoke-virtual {p0}, Le/b/a/a/q/h;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    sget-object p1, Le/b/a/a/l;->VALUE_NUMBER_FLOAT:Le/b/a/a/l;

    invoke-virtual {p0, p1}, Le/b/a/a/o/c;->a(Le/b/a/a/l;)V

    throw v1

    .line 130
    :cond_1
    :goto_0
    iget-object p1, p0, Le/b/a/a/q/h;->Z:[B

    iget v0, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Le/b/a/a/o/b;->G:I

    aget-byte p1, p1, v0

    const/16 v0, 0x4e

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    const-string p1, "-INF"

    goto :goto_1

    :cond_2
    const-string p1, "+INF"

    goto :goto_1

    :cond_3
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_7

    if-eqz p2, :cond_4

    const-string p1, "-Infinity"

    goto :goto_1

    :cond_4
    const-string p1, "+Infinity"

    :goto_1
    const/4 v0, 0x3

    .line 131
    invoke-virtual {p0, p1, v0}, Le/b/a/a/q/h;->a(Ljava/lang/String;I)V

    .line 132
    sget-object v0, Le/b/a/a/i$a;->ALLOW_NON_NUMERIC_NUMBERS:Le/b/a/a/i$a;

    invoke-virtual {p0, v0}, Le/b/a/a/i;->a(Le/b/a/a/i$a;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_5

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_2

    :cond_5
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 133
    :goto_2
    invoke-virtual {p0, p1, v0, v1}, Le/b/a/a/o/b;->a(Ljava/lang/String;D)Le/b/a/a/l;

    move-result-object p1

    return-object p1

    :cond_6
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "Non-standard token \'%s\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    .line 134
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/b/a/a/i;->a(Ljava/lang/String;)Le/b/a/a/h;

    move-result-object p1

    throw p1

    :cond_7
    const-string p2, "expected digit (0-9) to follow minus sign, for valid numeric value"

    .line 135
    invoke-virtual {p0, p1, p2}, Le/b/a/a/o/c;->c(ILjava/lang/String;)V

    throw v1
.end method

.method public final a([CIIZI)Le/b/a/a/l;
    .locals 7

    const/4 p4, 0x0

    const/16 p5, 0x39

    const/16 v0, 0x30

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x2e

    if-ne p3, v3, :cond_6

    .line 31
    array-length v3, p1

    if-lt p2, v3, :cond_0

    .line 32
    iget-object p1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {p1}, Le/b/a/a/s/g;->f()[C

    move-result-object p1

    const/4 p2, 0x0

    :cond_0
    add-int/lit8 v3, p2, 0x1

    int-to-char v4, p3

    .line 33
    aput-char v4, p1, p2

    move p2, v3

    const/4 v3, 0x0

    .line 34
    :goto_0
    iget v4, p0, Le/b/a/a/o/b;->G:I

    iget v5, p0, Le/b/a/a/o/b;->H:I

    if-lt v4, v5, :cond_1

    invoke-virtual {p0}, Le/b/a/a/q/h;->s()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    .line 35
    :cond_1
    iget-object p3, p0, Le/b/a/a/q/h;->Z:[B

    iget v4, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Le/b/a/a/o/b;->G:I

    aget-byte p3, p3, v4

    and-int/lit16 p3, p3, 0xff

    if-lt p3, v0, :cond_4

    if-le p3, p5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 36
    array-length v4, p1

    if-lt p2, v4, :cond_3

    .line 37
    iget-object p1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {p1}, Le/b/a/a/s/g;->f()[C

    move-result-object p1

    const/4 p2, 0x0

    :cond_3
    add-int/lit8 v4, p2, 0x1

    int-to-char v5, p3

    .line 38
    aput-char v5, p1, p2

    move p2, v4

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    const-string p1, "Decimal point not followed by a digit"

    .line 39
    invoke-virtual {p0, p3, p1}, Le/b/a/a/o/c;->c(ILjava/lang/String;)V

    throw p4

    :cond_6
    const/4 v4, 0x0

    :goto_3
    const/16 v3, 0x65

    if-eq p3, v3, :cond_7

    const/16 v3, 0x45

    if-ne p3, v3, :cond_11

    .line 40
    :cond_7
    array-length v3, p1

    if-lt p2, v3, :cond_8

    .line 41
    iget-object p1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {p1}, Le/b/a/a/s/g;->f()[C

    move-result-object p1

    const/4 p2, 0x0

    :cond_8
    add-int/lit8 v3, p2, 0x1

    int-to-char p3, p3

    .line 42
    aput-char p3, p1, p2

    .line 43
    iget p2, p0, Le/b/a/a/o/b;->G:I

    iget p3, p0, Le/b/a/a/o/b;->H:I

    if-lt p2, p3, :cond_9

    .line 44
    invoke-virtual {p0}, Le/b/a/a/q/h;->t()V

    .line 45
    :cond_9
    iget-object p2, p0, Le/b/a/a/q/h;->Z:[B

    iget p3, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v5, p3, 0x1

    iput v5, p0, Le/b/a/a/o/b;->G:I

    aget-byte p2, p2, p3

    and-int/lit16 p2, p2, 0xff

    const/16 p3, 0x2d

    if-eq p2, p3, :cond_b

    const/16 p3, 0x2b

    if-ne p2, p3, :cond_a

    goto :goto_5

    :cond_a
    :goto_4
    move p3, p2

    const/4 p2, 0x0

    goto :goto_6

    .line 46
    :cond_b
    :goto_5
    array-length p3, p1

    if-lt v3, p3, :cond_c

    .line 47
    iget-object p1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {p1}, Le/b/a/a/s/g;->f()[C

    move-result-object p1

    const/4 v3, 0x0

    :cond_c
    add-int/lit8 p3, v3, 0x1

    int-to-char p2, p2

    .line 48
    aput-char p2, p1, v3

    .line 49
    iget p2, p0, Le/b/a/a/o/b;->G:I

    iget v3, p0, Le/b/a/a/o/b;->H:I

    if-lt p2, v3, :cond_d

    .line 50
    invoke-virtual {p0}, Le/b/a/a/q/h;->t()V

    .line 51
    :cond_d
    iget-object p2, p0, Le/b/a/a/q/h;->Z:[B

    iget v3, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Le/b/a/a/o/b;->G:I

    aget-byte p2, p2, v3

    and-int/lit16 p2, p2, 0xff

    move v3, p3

    goto :goto_4

    :goto_6
    if-lt p3, v0, :cond_10

    if-gt p3, p5, :cond_10

    add-int/lit8 p2, p2, 0x1

    .line 52
    array-length v5, p1

    if-lt v3, v5, :cond_e

    .line 53
    iget-object p1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {p1}, Le/b/a/a/s/g;->f()[C

    move-result-object p1

    const/4 v3, 0x0

    :cond_e
    add-int/lit8 v5, v3, 0x1

    int-to-char v6, p3

    .line 54
    aput-char v6, p1, v3

    .line 55
    iget v3, p0, Le/b/a/a/o/b;->G:I

    iget v6, p0, Le/b/a/a/o/b;->H:I

    if-lt v3, v6, :cond_f

    invoke-virtual {p0}, Le/b/a/a/q/h;->s()Z

    move-result v3

    if-nez v3, :cond_f

    move v3, v5

    const/4 v4, 0x1

    goto :goto_7

    .line 56
    :cond_f
    iget-object p3, p0, Le/b/a/a/q/h;->Z:[B

    iget v3, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Le/b/a/a/o/b;->G:I

    aget-byte p3, p3, v3

    and-int/lit16 p3, p3, 0xff

    move v3, v5

    goto :goto_6

    :cond_10
    :goto_7
    if-eqz p2, :cond_13

    move p2, v3

    :cond_11
    if-nez v4, :cond_12

    .line 57
    iget p1, p0, Le/b/a/a/o/b;->G:I

    sub-int/2addr p1, v2

    iput p1, p0, Le/b/a/a/o/b;->G:I

    .line 58
    iget-object p1, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    invoke-virtual {p1}, Le/b/a/a/k;->d()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 59
    invoke-virtual {p0, p3}, Le/b/a/a/q/h;->m(I)V

    .line 60
    :cond_12
    iget-object p1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    .line 61
    iput p2, p1, Le/b/a/a/s/g;->i:I

    .line 62
    sget-object p1, Le/b/a/a/l;->VALUE_NUMBER_FLOAT:Le/b/a/a/l;

    return-object p1

    :cond_13
    const-string p1, "Exponent indicator not followed by a digit"

    .line 63
    invoke-virtual {p0, p3, p1}, Le/b/a/a/o/c;->c(ILjava/lang/String;)V

    throw p4
.end method

.method public final a([CIZI)Le/b/a/a/l;
    .locals 6

    move-object v1, p1

    move v2, p2

    move v5, p4

    .line 16
    :goto_0
    iget p1, p0, Le/b/a/a/o/b;->G:I

    iget p2, p0, Le/b/a/a/o/b;->H:I

    if-lt p1, p2, :cond_0

    invoke-virtual {p0}, Le/b/a/a/q/h;->s()Z

    move-result p1

    if-nez p1, :cond_0

    .line 17
    iget-object p1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    .line 18
    iput v2, p1, Le/b/a/a/s/g;->i:I

    .line 19
    sget-object p1, Le/b/a/a/l;->VALUE_NUMBER_INT:Le/b/a/a/l;

    return-object p1

    .line 20
    :cond_0
    iget-object p1, p0, Le/b/a/a/q/h;->Z:[B

    iget p2, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 p4, p2, 0x1

    iput p4, p0, Le/b/a/a/o/b;->G:I

    aget-byte p1, p1, p2

    and-int/lit16 v3, p1, 0xff

    const/16 p1, 0x39

    if-gt v3, p1, :cond_3

    const/16 p1, 0x30

    if-ge v3, p1, :cond_1

    goto :goto_1

    .line 21
    :cond_1
    array-length p1, v1

    if-lt v2, p1, :cond_2

    .line 22
    iget-object p1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {p1}, Le/b/a/a/s/g;->f()[C

    move-result-object p1

    const/4 v2, 0x0

    move-object v1, p1

    :cond_2
    add-int/lit8 p1, v2, 0x1

    int-to-char p2, v3

    .line 23
    aput-char p2, v1, v2

    add-int/lit8 v5, v5, 0x1

    move v2, p1

    goto :goto_0

    :cond_3
    :goto_1
    const/16 p1, 0x2e

    if-eq v3, p1, :cond_6

    const/16 p1, 0x65

    if-eq v3, p1, :cond_6

    const/16 p1, 0x45

    if-ne v3, p1, :cond_4

    goto :goto_2

    .line 24
    :cond_4
    iget p1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Le/b/a/a/o/b;->G:I

    .line 25
    iget-object p1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    .line 26
    iput v2, p1, Le/b/a/a/s/g;->i:I

    .line 27
    iget-object p1, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    invoke-virtual {p1}, Le/b/a/a/k;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 28
    iget-object p1, p0, Le/b/a/a/q/h;->Z:[B

    iget p2, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Le/b/a/a/o/b;->G:I

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Le/b/a/a/q/h;->m(I)V

    .line 29
    :cond_5
    sget-object p1, Le/b/a/a/l;->VALUE_NUMBER_INT:Le/b/a/a/l;

    return-object p1

    :cond_6
    :goto_2
    move-object v0, p0

    move v4, p3

    .line 30
    invoke-virtual/range {v0 .. v5}, Le/b/a/a/q/h;->a([CIIZI)Le/b/a/a/l;

    move-result-object p1

    return-object p1
.end method

.method public final a(III)Ljava/lang/String;
    .locals 2

    .line 89
    invoke-static {p2, p3}, Le/b/a/a/q/h;->c(II)I

    move-result p2

    .line 90
    iget-object v0, p0, Le/b/a/a/q/h;->T:Le/b/a/a/r/a;

    invoke-virtual {v0, p1, p2}, Le/b/a/a/r/a;->b(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 91
    :cond_0
    iget-object v0, p0, Le/b/a/a/q/h;->U:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 92
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 93
    invoke-virtual {p0, v0, p1, p3}, Le/b/a/a/q/h;->a([III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(IIII)Ljava/lang/String;
    .locals 2

    .line 94
    invoke-static {p3, p4}, Le/b/a/a/q/h;->c(II)I

    move-result p3

    .line 95
    iget-object v0, p0, Le/b/a/a/q/h;->T:Le/b/a/a/r/a;

    invoke-virtual {v0, p1, p2, p3}, Le/b/a/a/r/a;->b(III)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 96
    :cond_0
    iget-object v0, p0, Le/b/a/a/q/h;->U:[I

    const/4 v1, 0x0

    .line 97
    aput p1, v0, v1

    const/4 p1, 0x1

    .line 98
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 99
    invoke-static {p3, p4}, Le/b/a/a/q/h;->c(II)I

    move-result p2

    aput p2, v0, p1

    const/4 p1, 0x3

    .line 100
    invoke-virtual {p0, v0, p1, p4}, Le/b/a/a/q/h;->a([III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(IIIII)Ljava/lang/String;
    .locals 6

    .line 64
    iget-object v1, p0, Le/b/a/a/q/h;->U:[I

    const/4 v0, 0x0

    aput p1, v1, v0

    const/4 p1, 0x1

    .line 65
    aput p2, v1, p1

    const/4 v2, 0x2

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    .line 66
    invoke-virtual/range {v0 .. v5}, Le/b/a/a/q/h;->a([IIIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a([III)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    shl-int/lit8 v4, v2, 0x2

    const/4 v5, 0x4

    sub-int/2addr v4, v5

    add-int/2addr v4, v3

    const/4 v7, 0x3

    if-ge v3, v5, :cond_0

    add-int/lit8 v8, v2, -0x1

    .line 106
    aget v9, v1, v8

    rsub-int/lit8 v10, v3, 0x4

    shl-int/2addr v10, v7

    shl-int v10, v9, v10

    .line 107
    aput v10, v1, v8

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 108
    :goto_0
    iget-object v8, v0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {v8}, Le/b/a/a/s/g;->c()[C

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v4, :cond_d

    shr-int/lit8 v12, v10, 0x2

    .line 109
    aget v12, v1, v12

    and-int/lit8 v13, v10, 0x3

    rsub-int/lit8 v13, v13, 0x3

    shl-int/2addr v13, v7

    shr-int/2addr v12, v13

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v10, v10, 0x1

    const/16 v13, 0x7f

    if-le v12, v13, :cond_b

    and-int/lit16 v13, v12, 0xe0

    const/16 v14, 0xc0

    const/4 v6, 0x1

    if-ne v13, v14, :cond_1

    and-int/lit8 v12, v12, 0x1f

    const/4 v13, 0x1

    goto :goto_2

    :cond_1
    and-int/lit16 v13, v12, 0xf0

    const/16 v14, 0xe0

    if-ne v13, v14, :cond_2

    and-int/lit8 v12, v12, 0xf

    const/4 v13, 0x2

    goto :goto_2

    :cond_2
    and-int/lit16 v13, v12, 0xf8

    const/16 v14, 0xf0

    if-ne v13, v14, :cond_a

    and-int/lit8 v12, v12, 0x7

    const/4 v13, 0x3

    :goto_2
    add-int v14, v10, v13

    if-gt v14, v4, :cond_9

    shr-int/lit8 v14, v10, 0x2

    .line 110
    aget v14, v1, v14

    and-int/lit8 v16, v10, 0x3

    rsub-int/lit8 v16, v16, 0x3

    shl-int/lit8 v16, v16, 0x3

    shr-int v14, v14, v16

    add-int/lit8 v10, v10, 0x1

    and-int/lit16 v15, v14, 0xc0

    const/16 v5, 0x80

    if-ne v15, v5, :cond_8

    shl-int/lit8 v12, v12, 0x6

    and-int/lit8 v14, v14, 0x3f

    or-int/2addr v12, v14

    if-le v13, v6, :cond_6

    shr-int/lit8 v6, v10, 0x2

    .line 111
    aget v6, v1, v6

    and-int/lit8 v14, v10, 0x3

    rsub-int/lit8 v14, v14, 0x3

    shl-int/2addr v14, v7

    shr-int/2addr v6, v14

    add-int/lit8 v10, v10, 0x1

    and-int/lit16 v14, v6, 0xc0

    if-ne v14, v5, :cond_5

    shl-int/lit8 v12, v12, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v12

    const/4 v12, 0x2

    if-le v13, v12, :cond_4

    shr-int/lit8 v12, v10, 0x2

    .line 112
    aget v12, v1, v12

    and-int/lit8 v14, v10, 0x3

    rsub-int/lit8 v14, v14, 0x3

    shl-int/2addr v14, v7

    shr-int/2addr v12, v14

    add-int/lit8 v10, v10, 0x1

    and-int/lit16 v14, v12, 0xc0

    if-ne v14, v5, :cond_3

    shl-int/lit8 v5, v6, 0x6

    and-int/lit8 v6, v12, 0x3f

    or-int/2addr v5, v6

    move v12, v5

    goto :goto_3

    :cond_3
    and-int/lit16 v1, v12, 0xff

    .line 113
    invoke-virtual {v0, v1}, Le/b/a/a/q/h;->l(I)V

    const/4 v5, 0x0

    throw v5

    :cond_4
    move v12, v6

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    .line 114
    invoke-virtual {v0, v6}, Le/b/a/a/q/h;->l(I)V

    throw v5

    :cond_6
    :goto_3
    const/4 v5, 0x2

    if-le v13, v5, :cond_b

    const/high16 v5, 0x10000

    sub-int/2addr v12, v5

    .line 115
    array-length v5, v8

    if-lt v11, v5, :cond_7

    .line 116
    iget-object v5, v0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {v5}, Le/b/a/a/s/g;->e()[C

    move-result-object v5

    move-object v8, v5

    :cond_7
    add-int/lit8 v5, v11, 0x1

    const v6, 0xd800

    shr-int/lit8 v13, v12, 0xa

    add-int/2addr v13, v6

    int-to-char v6, v13

    .line 117
    aput-char v6, v8, v11

    const v6, 0xdc00

    and-int/lit16 v11, v12, 0x3ff

    or-int v12, v11, v6

    move v11, v5

    goto :goto_4

    .line 118
    :cond_8
    invoke-virtual {v0, v14}, Le/b/a/a/q/h;->l(I)V

    const/4 v1, 0x0

    throw v1

    :cond_9
    const/4 v1, 0x0

    .line 119
    sget-object v2, Le/b/a/a/l;->FIELD_NAME:Le/b/a/a/l;

    const-string v3, " in field name"

    invoke-virtual {v0, v3, v2}, Le/b/a/a/o/c;->a(Ljava/lang/String;Le/b/a/a/l;)V

    throw v1

    :cond_a
    const/4 v1, 0x0

    .line 120
    invoke-virtual {v0, v12}, Le/b/a/a/q/h;->k(I)V

    throw v1

    .line 121
    :cond_b
    :goto_4
    array-length v5, v8

    if-lt v11, v5, :cond_c

    .line 122
    iget-object v5, v0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {v5}, Le/b/a/a/s/g;->e()[C

    move-result-object v5

    move-object v8, v5

    :cond_c
    add-int/lit8 v5, v11, 0x1

    int-to-char v6, v12

    .line 123
    aput-char v6, v8, v11

    move v11, v5

    const/4 v5, 0x4

    goto/16 :goto_1

    .line 124
    :cond_d
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v8, v5, v11}, Ljava/lang/String;-><init>([CII)V

    const/4 v5, 0x4

    if-ge v3, v5, :cond_e

    add-int/lit8 v3, v2, -0x1

    .line 125
    aput v9, v1, v3

    .line 126
    :cond_e
    iget-object v3, v0, Le/b/a/a/q/h;->T:Le/b/a/a/r/a;

    invoke-virtual {v3, v4, v1, v2}, Le/b/a/a/r/a;->a(Ljava/lang/String;[II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final a([IIII)Ljava/lang/String;
    .locals 1

    .line 101
    array-length v0, p1

    if-lt p2, v0, :cond_0

    .line 102
    array-length v0, p1

    invoke-static {p1, v0}, Le/b/a/a/o/b;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Le/b/a/a/q/h;->U:[I

    :cond_0
    add-int/lit8 v0, p2, 0x1

    .line 103
    invoke-static {p3, p4}, Le/b/a/a/q/h;->c(II)I

    move-result p3

    aput p3, p1, p2

    .line 104
    iget-object p2, p0, Le/b/a/a/q/h;->T:Le/b/a/a/r/a;

    invoke-virtual {p2, p1, v0}, Le/b/a/a/r/a;->b([II)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    .line 105
    invoke-virtual {p0, p1, v0, p4}, Le/b/a/a/q/h;->a([III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public final a([IIIII)Ljava/lang/String;
    .locals 5

    .line 67
    sget-object v0, Le/b/a/a/q/h;->c0:[I

    .line 68
    :goto_0
    aget v1, v0, p4

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v1, :cond_a

    const/16 v1, 0x22

    if-ne p4, v1, :cond_3

    if-lez p5, :cond_1

    .line 69
    array-length p4, p1

    if-lt p2, p4, :cond_0

    .line 70
    array-length p4, p1

    invoke-static {p1, p4}, Le/b/a/a/o/b;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Le/b/a/a/q/h;->U:[I

    :cond_0
    add-int/lit8 p4, p2, 0x1

    .line 71
    invoke-static {p3, p5}, Le/b/a/a/q/h;->c(II)I

    move-result p3

    aput p3, p1, p2

    move p2, p4

    .line 72
    :cond_1
    iget-object p3, p0, Le/b/a/a/q/h;->T:Le/b/a/a/r/a;

    invoke-virtual {p3, p1, p2}, Le/b/a/a/r/a;->b([II)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    .line 73
    invoke-virtual {p0, p1, p2, p5}, Le/b/a/a/q/h;->a([III)Ljava/lang/String;

    move-result-object p3

    :cond_2
    return-object p3

    :cond_3
    const/16 v1, 0x5c

    if-eq p4, v1, :cond_4

    const-string v1, "name"

    .line 74
    invoke-virtual {p0, p4, v1}, Le/b/a/a/o/c;->b(ILjava/lang/String;)V

    goto :goto_1

    .line 75
    :cond_4
    invoke-virtual {p0}, Le/b/a/a/q/h;->k()C

    move-result p4

    :goto_1
    const/16 v1, 0x7f

    if-le p4, v1, :cond_a

    const/4 v1, 0x0

    if-lt p5, v2, :cond_6

    .line 76
    array-length p5, p1

    if-lt p2, p5, :cond_5

    .line 77
    array-length p5, p1

    invoke-static {p1, p5}, Le/b/a/a/o/b;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Le/b/a/a/q/h;->U:[I

    :cond_5
    add-int/lit8 p5, p2, 0x1

    .line 78
    aput p3, p1, p2

    move p2, p5

    const/4 p3, 0x0

    const/4 p5, 0x0

    :cond_6
    const/16 v4, 0x800

    if-ge p4, v4, :cond_7

    shl-int/lit8 p3, p3, 0x8

    shr-int/lit8 v1, p4, 0x6

    or-int/lit16 v1, v1, 0xc0

    or-int/2addr p3, v1

    add-int/lit8 p5, p5, 0x1

    goto :goto_3

    :cond_7
    shl-int/lit8 p3, p3, 0x8

    shr-int/lit8 v4, p4, 0xc

    or-int/lit16 v4, v4, 0xe0

    or-int/2addr p3, v4

    add-int/lit8 p5, p5, 0x1

    if-lt p5, v2, :cond_9

    .line 79
    array-length p5, p1

    if-lt p2, p5, :cond_8

    .line 80
    array-length p5, p1

    invoke-static {p1, p5}, Le/b/a/a/o/b;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Le/b/a/a/q/h;->U:[I

    :cond_8
    add-int/lit8 p5, p2, 0x1

    .line 81
    aput p3, p1, p2

    move p2, p5

    const/4 p5, 0x0

    goto :goto_2

    :cond_9
    move v1, p3

    :goto_2
    shl-int/lit8 p3, v1, 0x8

    shr-int/lit8 v1, p4, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    or-int/2addr p3, v1

    add-int/2addr p5, v3

    :goto_3
    and-int/lit8 p4, p4, 0x3f

    or-int/lit16 p4, p4, 0x80

    :cond_a
    if-ge p5, v2, :cond_b

    add-int/lit8 p5, p5, 0x1

    shl-int/lit8 p3, p3, 0x8

    or-int/2addr p3, p4

    goto :goto_4

    .line 82
    :cond_b
    array-length p5, p1

    if-lt p2, p5, :cond_c

    .line 83
    array-length p5, p1

    invoke-static {p1, p5}, Le/b/a/a/o/b;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Le/b/a/a/q/h;->U:[I

    :cond_c
    add-int/lit8 p5, p2, 0x1

    .line 84
    aput p3, p1, p2

    move p3, p4

    move p2, p5

    const/4 p5, 0x1

    .line 85
    :goto_4
    iget p4, p0, Le/b/a/a/o/b;->G:I

    iget v1, p0, Le/b/a/a/o/b;->H:I

    if-lt p4, v1, :cond_e

    .line 86
    invoke-virtual {p0}, Le/b/a/a/q/h;->s()Z

    move-result p4

    if-eqz p4, :cond_d

    goto :goto_5

    .line 87
    :cond_d
    sget-object p1, Le/b/a/a/l;->FIELD_NAME:Le/b/a/a/l;

    const-string p2, " in field name"

    invoke-virtual {p0, p2, p1}, Le/b/a/a/o/c;->a(Ljava/lang/String;Le/b/a/a/l;)V

    const/4 p1, 0x0

    throw p1

    .line 88
    :cond_e
    :goto_5
    iget-object p4, p0, Le/b/a/a/q/h;->Z:[B

    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/o/b;->G:I

    aget-byte p4, p4, v1

    and-int/lit16 p4, p4, 0xff

    goto/16 :goto_0
.end method

.method public a(II)V
    .locals 0

    .line 166
    iput p2, p0, Le/b/a/a/o/b;->G:I

    .line 167
    invoke-virtual {p0, p1}, Le/b/a/a/q/h;->l(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 3

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 137
    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/2addr v1, v0

    iget v2, p0, Le/b/a/a/o/b;->H:I

    if-lt v1, v2, :cond_0

    .line 138
    invoke-virtual {p0, p1, p2}, Le/b/a/a/q/h;->b(Ljava/lang/String;I)V

    return-void

    .line 139
    :cond_0
    iget-object v1, p0, Le/b/a/a/q/h;->Z:[B

    iget v2, p0, Le/b/a/a/o/b;->G:I

    aget-byte v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_2

    .line 140
    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_0

    .line 141
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_1

    .line 142
    invoke-virtual {p0, p1, p2, v0}, Le/b/a/a/q/h;->a(Ljava/lang/String;II)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 143
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/b/a/a/q/h;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Ljava/lang/String;II)V
    .locals 0

    .line 144
    invoke-virtual {p0, p3}, Le/b/a/a/q/h;->c(I)I

    move-result p3

    int-to-char p3, p3

    .line 145
    invoke-static {p3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    .line 146
    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/b/a/a/q/h;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    :goto_0
    iget p1, p0, Le/b/a/a/o/b;->G:I

    iget v1, p0, Le/b/a/a/o/b;->H:I

    if-lt p1, v1, :cond_0

    invoke-virtual {p0}, Le/b/a/a/q/h;->s()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 159
    :cond_0
    iget-object p1, p0, Le/b/a/a/q/h;->Z:[B

    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/o/b;->G:I

    aget-byte p1, p1, v1

    .line 160
    invoke-virtual {p0, p1}, Le/b/a/a/q/h;->c(I)I

    move-result p1

    int-to-char p1, p1

    .line 161
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/16 v1, 0x100

    if-ge p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "..."

    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p1, "Unrecognized token \'%s\': was expecting %s"

    .line 165
    invoke-virtual {p0, p1, v0, p2}, Le/b/a/a/o/c;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Le/b/a/a/a;)[B
    .locals 3

    .line 1
    iget-object v0, p0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    sget-object v1, Le/b/a/a/l;->VALUE_STRING:Le/b/a/a/l;

    if-eq v0, v1, :cond_1

    sget-object v1, Le/b/a/a/l;->VALUE_EMBEDDED_OBJECT:Le/b/a/a/l;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/b/a/a/o/b;->S:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Current token ("

    .line 2
    invoke-static {p1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Le/b/a/a/i;->a(Ljava/lang/String;)Le/b/a/a/h;

    move-result-object p1

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-boolean v0, p0, Le/b/a/a/q/h;->V:Z

    if-eqz v0, :cond_2

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Le/b/a/a/q/h;->b(Le/b/a/a/a;)[B

    move-result-object v0

    iput-object v0, p0, Le/b/a/a/o/b;->S:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Le/b/a/a/q/h;->V:Z

    goto :goto_1

    :catch_0
    move-exception v0

    .line 7
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

    .line 8
    :cond_2
    iget-object v0, p0, Le/b/a/a/o/b;->S:[B

    if-nez v0, :cond_3

    .line 9
    invoke-virtual {p0}, Le/b/a/a/o/b;->m()Le/b/a/a/s/c;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Le/b/a/a/q/h;->i()Ljava/lang/String;

    move-result-object v1

    .line 11
    :try_start_1
    invoke-virtual {p1, v1, v0}, Le/b/a/a/a;->a(Ljava/lang/String;Le/b/a/a/s/c;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    invoke-virtual {v0}, Le/b/a/a/s/c;->c()[B

    move-result-object p1

    iput-object p1, p0, Le/b/a/a/o/b;->S:[B

    goto :goto_1

    :catch_1
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Le/b/a/a/i;->a(Ljava/lang/String;)Le/b/a/a/h;

    move-result-object p1

    throw p1

    .line 15
    :cond_3
    :goto_1
    iget-object p1, p0, Le/b/a/a/o/b;->S:[B

    return-object p1
.end method

.method public b()Le/b/a/a/g;
    .locals 9

    .line 61
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iget v1, p0, Le/b/a/a/o/b;->K:I

    sub-int/2addr v0, v1

    add-int/lit8 v8, v0, 0x1

    .line 62
    new-instance v0, Le/b/a/a/g;

    invoke-virtual {p0}, Le/b/a/a/o/b;->n()Ljava/lang/Object;

    move-result-object v2

    iget-wide v3, p0, Le/b/a/a/o/b;->I:J

    iget v1, p0, Le/b/a/a/o/b;->G:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    iget v7, p0, Le/b/a/a/o/b;->J:I

    const-wide/16 v5, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Le/b/a/a/g;-><init>(Ljava/lang/Object;JJII)V

    return-object v0
.end method

.method public final b(II)Ljava/lang/String;
    .locals 2

    .line 12
    invoke-static {p1, p2}, Le/b/a/a/q/h;->c(II)I

    move-result p1

    .line 13
    iget-object v0, p0, Le/b/a/a/q/h;->T:Le/b/a/a/r/a;

    invoke-virtual {v0, p1}, Le/b/a/a/r/a;->c(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Le/b/a/a/q/h;->U:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, v0, p1, p2}, Le/b/a/a/q/h;->a([III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(III)Ljava/lang/String;
    .locals 6

    .line 9
    iget-object v1, p0, Le/b/a/a/q/h;->U:[I

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Le/b/a/a/q/h;->a([IIIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(IIII)Ljava/lang/String;
    .locals 6

    .line 10
    iget-object v1, p0, Le/b/a/a/q/h;->U:[I

    const/4 v0, 0x0

    aput p1, v1, v0

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    .line 11
    invoke-virtual/range {v0 .. v5}, Le/b/a/a/q/h;->a([IIIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    sget-object v1, Le/b/a/a/l;->VALUE_STRING:Le/b/a/a/l;

    if-ne v0, v1, :cond_1

    .line 2
    iget-boolean p1, p0, Le/b/a/a/q/h;->V:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Le/b/a/a/q/h;->V:Z

    .line 4
    invoke-virtual {p0}, Le/b/a/a/q/h;->r()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget-object p1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {p1}, Le/b/a/a/s/g;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    sget-object v1, Le/b/a/a/l;->FIELD_NAME:Le/b/a/a/l;

    if-ne v0, v1, :cond_2

    .line 7
    invoke-virtual {p0}, Le/b/a/a/o/b;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    invoke-super {p0, p1}, Le/b/a/a/o/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 3

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 17
    :cond_0
    iget v1, p0, Le/b/a/a/o/b;->G:I

    iget v2, p0, Le/b/a/a/o/b;->H:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Le/b/a/a/q/h;->s()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    iget-object v1, p0, Le/b/a/a/q/h;->Z:[B

    iget v2, p0, Le/b/a/a/o/b;->G:I

    aget-byte v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_4

    .line 18
    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_0

    .line 19
    iget v0, p0, Le/b/a/a/o/b;->H:I

    if-lt v1, v0, :cond_2

    invoke-virtual {p0}, Le/b/a/a/q/h;->s()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 20
    :cond_2
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    iget v1, p0, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x30

    if-lt v0, v1, :cond_3

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3

    .line 21
    invoke-virtual {p0, p1, p2, v0}, Le/b/a/a/q/h;->a(Ljava/lang/String;II)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/b/a/a/q/h;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final b(Le/b/a/a/a;)[B
    .locals 9

    .line 23
    invoke-virtual {p0}, Le/b/a/a/o/b;->m()Le/b/a/a/s/c;

    move-result-object v0

    .line 24
    :cond_0
    :goto_0
    iget v1, p0, Le/b/a/a/o/b;->G:I

    iget v2, p0, Le/b/a/a/o/b;->H:I

    if-lt v1, v2, :cond_1

    .line 25
    invoke-virtual {p0}, Le/b/a/a/q/h;->t()V

    .line 26
    :cond_1
    iget-object v1, p0, Le/b/a/a/q/h;->Z:[B

    iget v2, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Le/b/a/a/o/b;->G:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    .line 27
    invoke-virtual {p1, v1}, Le/b/a/a/a;->a(I)I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x22

    if-gez v2, :cond_3

    if-ne v1, v4, :cond_2

    .line 28
    invoke-virtual {v0}, Le/b/a/a/s/c;->c()[B

    move-result-object p1

    return-object p1

    .line 29
    :cond_2
    invoke-virtual {p0, p1, v1, v3}, Le/b/a/a/o/b;->a(Le/b/a/a/a;II)I

    move-result v2

    if-gez v2, :cond_3

    goto :goto_0

    .line 30
    :cond_3
    iget v1, p0, Le/b/a/a/o/b;->G:I

    iget v5, p0, Le/b/a/a/o/b;->H:I

    if-lt v1, v5, :cond_4

    .line 31
    invoke-virtual {p0}, Le/b/a/a/q/h;->t()V

    .line 32
    :cond_4
    iget-object v1, p0, Le/b/a/a/q/h;->Z:[B

    iget v5, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Le/b/a/a/o/b;->G:I

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    .line 33
    invoke-virtual {p1, v1}, Le/b/a/a/a;->a(I)I

    move-result v5

    const/4 v6, 0x1

    if-gez v5, :cond_5

    .line 34
    invoke-virtual {p0, p1, v1, v6}, Le/b/a/a/o/b;->a(Le/b/a/a/a;II)I

    move-result v5

    :cond_5
    shl-int/lit8 v1, v2, 0x6

    or-int/2addr v1, v5

    .line 35
    iget v2, p0, Le/b/a/a/o/b;->G:I

    iget v5, p0, Le/b/a/a/o/b;->H:I

    if-lt v2, v5, :cond_6

    .line 36
    invoke-virtual {p0}, Le/b/a/a/q/h;->t()V

    .line 37
    :cond_6
    iget-object v2, p0, Le/b/a/a/q/h;->Z:[B

    iget v5, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Le/b/a/a/o/b;->G:I

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    .line 38
    invoke-virtual {p1, v2}, Le/b/a/a/a;->a(I)I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, -0x2

    const/4 v8, 0x2

    if-gez v5, :cond_c

    if-eq v5, v7, :cond_8

    if-ne v2, v4, :cond_7

    .line 39
    iget-boolean v5, p1, Le/b/a/a/a;->B:Z

    if-nez v5, :cond_7

    shr-int/lit8 p1, v1, 0x4

    .line 40
    invoke-virtual {v0, p1}, Le/b/a/a/s/c;->a(I)V

    .line 41
    invoke-virtual {v0}, Le/b/a/a/s/c;->c()[B

    move-result-object p1

    return-object p1

    .line 42
    :cond_7
    invoke-virtual {p0, p1, v2, v8}, Le/b/a/a/o/b;->a(Le/b/a/a/a;II)I

    move-result v2

    move v5, v2

    :cond_8
    if-ne v5, v7, :cond_c

    .line 43
    iget v2, p0, Le/b/a/a/o/b;->G:I

    iget v4, p0, Le/b/a/a/o/b;->H:I

    if-lt v2, v4, :cond_9

    .line 44
    invoke-virtual {p0}, Le/b/a/a/q/h;->t()V

    .line 45
    :cond_9
    iget-object v2, p0, Le/b/a/a/q/h;->Z:[B

    iget v4, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Le/b/a/a/o/b;->G:I

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    .line 46
    iget-char v4, p1, Le/b/a/a/a;->C:C

    if-ne v2, v4, :cond_a

    const/4 v3, 0x1

    :cond_a
    if-eqz v3, :cond_b

    shr-int/lit8 v1, v1, 0x4

    .line 47
    invoke-virtual {v0, v1}, Le/b/a/a/s/c;->a(I)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "expected padding character \'"

    .line 48
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    iget-char v1, p1, Le/b/a/a/a;->C:C

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v6, v0}, Le/b/a/a/o/b;->a(Le/b/a/a/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_c
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v5

    .line 51
    iget v2, p0, Le/b/a/a/o/b;->G:I

    iget v3, p0, Le/b/a/a/o/b;->H:I

    if-lt v2, v3, :cond_d

    .line 52
    invoke-virtual {p0}, Le/b/a/a/q/h;->t()V

    .line 53
    :cond_d
    iget-object v2, p0, Le/b/a/a/q/h;->Z:[B

    iget v3, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Le/b/a/a/o/b;->G:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 54
    invoke-virtual {p1, v2}, Le/b/a/a/a;->a(I)I

    move-result v3

    if-gez v3, :cond_10

    if-eq v3, v7, :cond_f

    if-ne v2, v4, :cond_e

    .line 55
    iget-boolean v3, p1, Le/b/a/a/a;->B:Z

    if-nez v3, :cond_e

    shr-int/lit8 p1, v1, 0x2

    .line 56
    invoke-virtual {v0, p1}, Le/b/a/a/s/c;->c(I)V

    .line 57
    invoke-virtual {v0}, Le/b/a/a/s/c;->c()[B

    move-result-object p1

    return-object p1

    .line 58
    :cond_e
    invoke-virtual {p0, p1, v2, v6}, Le/b/a/a/o/b;->a(Le/b/a/a/a;II)I

    move-result v2

    move v3, v2

    :cond_f
    if-ne v3, v7, :cond_10

    shr-int/lit8 v1, v1, 0x2

    .line 59
    invoke-virtual {v0, v1}, Le/b/a/a/s/c;->c(I)V

    goto/16 :goto_0

    :cond_10
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v3

    .line 60
    invoke-virtual {v0, v1}, Le/b/a/a/s/c;->b(I)V

    goto/16 :goto_0
.end method

.method public c(I)I
    .locals 7

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x7f

    if-le p1, v0, :cond_6

    and-int/lit16 v0, p1, 0xe0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xc0

    if-ne v0, v4, :cond_0

    and-int/lit8 p1, p1, 0x1f

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 v0, p1, 0xf0

    const/16 v4, 0xe0

    if-ne v0, v4, :cond_1

    and-int/lit8 p1, p1, 0xf

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    and-int/lit16 v0, p1, 0xf8

    const/16 v4, 0xf0

    if-ne v0, v4, :cond_5

    and-int/lit8 p1, p1, 0x7

    const/4 v0, 0x3

    .line 1
    :goto_0
    invoke-virtual {p0}, Le/b/a/a/q/h;->J()I

    move-result v4

    and-int/lit16 v5, v4, 0xc0

    const/16 v6, 0x80

    if-ne v5, v6, :cond_4

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr p1, v4

    if-le v0, v2, :cond_6

    .line 2
    invoke-virtual {p0}, Le/b/a/a/q/h;->J()I

    move-result v2

    and-int/lit16 v4, v2, 0xc0

    if-ne v4, v6, :cond_3

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr p1, v2

    if-le v0, v1, :cond_6

    .line 3
    invoke-virtual {p0}, Le/b/a/a/q/h;->J()I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    if-ne v1, v6, :cond_2

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    goto :goto_1

    :cond_2
    and-int/lit16 p1, v0, 0xff

    .line 4
    invoke-virtual {p0, p1}, Le/b/a/a/q/h;->l(I)V

    throw v3

    :cond_3
    and-int/lit16 p1, v2, 0xff

    .line 5
    invoke-virtual {p0, p1}, Le/b/a/a/q/h;->l(I)V

    throw v3

    :cond_4
    and-int/lit16 p1, v4, 0xff

    .line 6
    invoke-virtual {p0, p1}, Le/b/a/a/q/h;->l(I)V

    throw v3

    :cond_5
    and-int/lit16 p1, p1, 0xff

    .line 7
    invoke-virtual {p0, p1}, Le/b/a/a/q/h;->k(I)V

    throw v3

    :cond_6
    :goto_1
    return p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "\'null\', \'true\', \'false\' or NaN"

    .line 8
    invoke-virtual {p0, p1, v0}, Le/b/a/a/q/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final d(I)I
    .locals 4

    .line 9
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iget v1, p0, Le/b/a/a/o/b;->H:I

    if-lt v0, v1, :cond_0

    .line 10
    invoke-virtual {p0}, Le/b/a/a/q/h;->t()V

    .line 11
    :cond_0
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/16 v3, 0x80

    if-ne v1, v3, :cond_1

    and-int/lit8 p1, p1, 0x1f

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    return p1

    :cond_1
    and-int/lit16 p1, v0, 0xff

    .line 12
    invoke-virtual {p0, p1, v2}, Le/b/a/a/q/h;->a(II)V

    const/4 p1, 0x0

    throw p1
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    sget-object v1, Le/b/a/a/l;->VALUE_STRING:Le/b/a/a/l;

    if-ne v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Le/b/a/a/q/h;->V:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Le/b/a/a/q/h;->V:Z

    .line 4
    invoke-virtual {p0}, Le/b/a/a/q/h;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0

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

.method public final e(I)I
    .locals 5

    .line 1
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iget v1, p0, Le/b/a/a/o/b;->H:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/b/a/a/q/h;->t()V

    :cond_0
    and-int/lit8 p1, p1, 0xf

    .line 3
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/4 v3, 0x0

    const/16 v4, 0x80

    if-ne v1, v4, :cond_3

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    .line 4
    iget v0, p0, Le/b/a/a/o/b;->H:I

    if-lt v2, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Le/b/a/a/q/h;->t()V

    .line 6
    :cond_1
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-ne v1, v4, :cond_2

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    return p1

    :cond_2
    and-int/lit16 p1, v0, 0xff

    .line 7
    invoke-virtual {p0, p1, v2}, Le/b/a/a/q/h;->a(II)V

    throw v3

    :cond_3
    and-int/lit16 p1, v0, 0xff

    .line 8
    invoke-virtual {p0, p1, v2}, Le/b/a/a/q/h;->a(II)V

    throw v3
.end method

.method public final f(I)I
    .locals 6

    and-int/lit8 p1, p1, 0xf

    .line 262
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/o/b;->G:I

    aget-byte v1, v0, v1

    and-int/lit16 v3, v1, 0xc0

    const/4 v4, 0x0

    const/16 v5, 0x80

    if-ne v3, v5, :cond_1

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr p1, v1

    add-int/lit8 v1, v2, 0x1

    .line 263
    iput v1, p0, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v2

    and-int/lit16 v2, v0, 0xc0

    if-ne v2, v5, :cond_0

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    return p1

    :cond_0
    and-int/lit16 p1, v0, 0xff

    .line 264
    invoke-virtual {p0, p1, v1}, Le/b/a/a/q/h;->a(II)V

    throw v4

    :cond_1
    and-int/lit16 p1, v1, 0xff

    .line 265
    invoke-virtual {p0, p1, v2}, Le/b/a/a/q/h;->a(II)V

    throw v4
.end method

.method public f()Le/b/a/a/l;
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
    iget-boolean v0, v6, Le/b/a/a/q/h;->V:Z

    const/16 v7, 0x22

    const/16 v8, 0x20

    const/4 v1, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_c

    .line 10
    iput-boolean v5, v6, Le/b/a/a/q/h;->V:Z

    .line 11
    sget-object v0, Le/b/a/a/q/h;->b0:[I

    .line 12
    iget-object v5, v6, Le/b/a/a/q/h;->Z:[B

    .line 13
    :goto_1
    iget v10, v6, Le/b/a/a/o/b;->G:I

    .line 14
    iget v11, v6, Le/b/a/a/o/b;->H:I

    if-lt v10, v11, :cond_3

    .line 15
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->t()V

    .line 16
    iget v10, v6, Le/b/a/a/o/b;->G:I

    .line 17
    iget v11, v6, Le/b/a/a/o/b;->H:I

    :cond_3
    :goto_2
    if-ge v10, v11, :cond_b

    add-int/lit8 v12, v10, 0x1

    .line 18
    aget-byte v10, v5, v10

    and-int/lit16 v10, v10, 0xff

    .line 19
    aget v13, v0, v10

    if-eqz v13, :cond_a

    .line 20
    iput v12, v6, Le/b/a/a/o/b;->G:I

    if-ne v10, v7, :cond_4

    goto :goto_3

    .line 21
    :cond_4
    aget v11, v0, v10

    if-eq v11, v9, :cond_9

    if-eq v11, v4, :cond_8

    if-eq v11, v3, :cond_7

    if-eq v11, v1, :cond_6

    if-ge v10, v8, :cond_5

    const-string v11, "string value"

    .line 22
    invoke-virtual {v6, v10, v11}, Le/b/a/a/o/c;->b(ILjava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_5
    invoke-virtual {v6, v10}, Le/b/a/a/q/h;->j(I)V

    throw v2

    .line 24
    :cond_6
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->D()V

    goto :goto_1

    .line 25
    :cond_7
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->C()V

    goto :goto_1

    .line 26
    :cond_8
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->B()V

    goto :goto_1

    .line 27
    :cond_9
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->k()C

    goto :goto_1

    :cond_a
    move v10, v12

    goto :goto_2

    .line 28
    :cond_b
    iput v10, v6, Le/b/a/a/o/b;->G:I

    goto :goto_1

    .line 29
    :cond_c
    :goto_3
    iget v0, v6, Le/b/a/a/o/b;->G:I

    iget v1, v6, Le/b/a/a/o/b;->H:I

    const/16 v3, 0xa

    const/16 v10, 0x2f

    const/16 v4, 0xd

    const/16 v5, 0x9

    const/16 v11, 0x23

    if-lt v0, v1, :cond_d

    .line 30
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->s()Z

    move-result v0

    if-nez v0, :cond_d

    .line 31
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/o/b;->l()I

    const/4 v0, -0x1

    goto/16 :goto_5

    .line 32
    :cond_d
    iget-object v0, v6, Le/b/a/a/q/h;->Z:[B

    iget v1, v6, Le/b/a/a/o/b;->G:I

    add-int/lit8 v12, v1, 0x1

    iput v12, v6, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v8, :cond_f

    if-eq v0, v10, :cond_e

    if-ne v0, v11, :cond_1a

    .line 33
    :cond_e
    iget v0, v6, Le/b/a/a/o/b;->G:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v6, Le/b/a/a/o/b;->G:I

    .line 34
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->F()I

    move-result v0

    goto :goto_5

    :cond_f
    if-eq v0, v8, :cond_13

    if-ne v0, v3, :cond_10

    .line 35
    iget v0, v6, Le/b/a/a/o/b;->J:I

    add-int/2addr v0, v9

    iput v0, v6, Le/b/a/a/o/b;->J:I

    .line 36
    iput v12, v6, Le/b/a/a/o/b;->K:I

    goto :goto_4

    :cond_10
    if-ne v0, v4, :cond_11

    .line 37
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->y()V

    goto :goto_4

    :cond_11
    if-ne v0, v5, :cond_12

    goto :goto_4

    .line 38
    :cond_12
    invoke-virtual {v6, v0}, Le/b/a/a/o/c;->a(I)V

    throw v2

    .line 39
    :cond_13
    :goto_4
    iget v0, v6, Le/b/a/a/o/b;->G:I

    iget v1, v6, Le/b/a/a/o/b;->H:I

    if-ge v0, v1, :cond_19

    .line 40
    iget-object v1, v6, Le/b/a/a/q/h;->Z:[B

    add-int/lit8 v12, v0, 0x1

    iput v12, v6, Le/b/a/a/o/b;->G:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    if-le v0, v8, :cond_15

    if-eq v0, v10, :cond_14

    if-ne v0, v11, :cond_1a

    .line 41
    :cond_14
    iget v0, v6, Le/b/a/a/o/b;->G:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v6, Le/b/a/a/o/b;->G:I

    .line 42
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->F()I

    move-result v0

    goto :goto_5

    :cond_15
    if-eq v0, v8, :cond_13

    if-ne v0, v3, :cond_16

    .line 43
    iget v0, v6, Le/b/a/a/o/b;->J:I

    add-int/2addr v0, v9

    iput v0, v6, Le/b/a/a/o/b;->J:I

    .line 44
    iput v12, v6, Le/b/a/a/o/b;->K:I

    goto :goto_4

    :cond_16
    if-ne v0, v4, :cond_17

    .line 45
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->y()V

    goto :goto_4

    :cond_17
    if-ne v0, v5, :cond_18

    goto :goto_4

    .line 46
    :cond_18
    invoke-virtual {v6, v0}, Le/b/a/a/o/c;->a(I)V

    throw v2

    .line 47
    :cond_19
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->F()I

    move-result v0

    :cond_1a
    :goto_5
    if-gez v0, :cond_1b

    .line 48
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/o/b;->close()V

    .line 49
    iput-object v2, v6, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    return-object v2

    .line 50
    :cond_1b
    iput-object v2, v6, Le/b/a/a/o/b;->S:[B

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_1c

    .line 51
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->p()V

    .line 52
    sget-object v0, Le/b/a/a/l;->END_ARRAY:Le/b/a/a/l;

    iput-object v0, v6, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    return-object v0

    :cond_1c
    const/16 v12, 0x7d

    if-ne v0, v12, :cond_1d

    .line 53
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->q()V

    .line 54
    sget-object v0, Le/b/a/a/l;->END_OBJECT:Le/b/a/a/l;

    iput-object v0, v6, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    return-object v0

    .line 55
    :cond_1d
    iget-object v13, v6, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    .line 56
    iget v14, v13, Le/b/a/a/k;->b:I

    add-int/2addr v14, v9

    iput v14, v13, Le/b/a/a/k;->b:I

    .line 57
    iget v13, v13, Le/b/a/a/k;->a:I

    if-eqz v13, :cond_1e

    if-lez v14, :cond_1e

    const/4 v13, 0x1

    goto :goto_6

    :cond_1e
    const/4 v13, 0x0

    :goto_6
    if-eqz v13, :cond_2a

    const/16 v13, 0x2c

    if-ne v0, v13, :cond_29

    .line 58
    :cond_1f
    :goto_7
    iget v0, v6, Le/b/a/a/o/b;->G:I

    iget v13, v6, Le/b/a/a/o/b;->H:I

    if-ge v0, v13, :cond_25

    .line 59
    iget-object v13, v6, Le/b/a/a/q/h;->Z:[B

    add-int/lit8 v14, v0, 0x1

    iput v14, v6, Le/b/a/a/o/b;->G:I

    aget-byte v0, v13, v0

    and-int/lit16 v0, v0, 0xff

    if-le v0, v8, :cond_21

    if-eq v0, v10, :cond_20

    if-ne v0, v11, :cond_26

    .line 60
    :cond_20
    iget v0, v6, Le/b/a/a/o/b;->G:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v6, Le/b/a/a/o/b;->G:I

    .line 61
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->E()I

    move-result v0

    goto :goto_8

    :cond_21
    if-eq v0, v8, :cond_1f

    if-ne v0, v3, :cond_22

    .line 62
    iget v0, v6, Le/b/a/a/o/b;->J:I

    add-int/2addr v0, v9

    iput v0, v6, Le/b/a/a/o/b;->J:I

    .line 63
    iput v14, v6, Le/b/a/a/o/b;->K:I

    goto :goto_7

    :cond_22
    if-ne v0, v4, :cond_23

    .line 64
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->y()V

    goto :goto_7

    :cond_23
    if-ne v0, v5, :cond_24

    goto :goto_7

    .line 65
    :cond_24
    invoke-virtual {v6, v0}, Le/b/a/a/o/c;->a(I)V

    throw v2

    .line 66
    :cond_25
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->E()I

    move-result v0

    .line 67
    :cond_26
    :goto_8
    iget v3, v6, Le/b/a/a/i;->x:I

    sget v4, Le/b/a/a/q/h;->d0:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_2a

    if-eq v0, v1, :cond_27

    if-ne v0, v12, :cond_2a

    :cond_27
    if-ne v0, v12, :cond_28

    .line 68
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->q()V

    .line 69
    sget-object v0, Le/b/a/a/l;->END_OBJECT:Le/b/a/a/l;

    iput-object v0, v6, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    goto :goto_9

    .line 70
    :cond_28
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->p()V

    .line 71
    sget-object v0, Le/b/a/a/l;->END_ARRAY:Le/b/a/a/l;

    iput-object v0, v6, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    :goto_9
    return-object v0

    :cond_29
    const-string v1, "was expecting comma to separate "

    .line 72
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

    .line 73
    :cond_2a
    iget-object v1, v6, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    invoke-virtual {v1}, Le/b/a/a/k;->c()Z

    move-result v1

    const/16 v3, 0x7b

    const/16 v4, 0x74

    const/16 v5, 0x6e

    const/16 v12, 0x66

    const/16 v13, 0x5b

    const/16 v14, 0x2d

    if-nez v1, :cond_32

    .line 74
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->H()V

    if-ne v0, v7, :cond_2b

    .line 75
    iput-boolean v9, v6, Le/b/a/a/q/h;->V:Z

    .line 76
    sget-object v0, Le/b/a/a/l;->VALUE_STRING:Le/b/a/a/l;

    iput-object v0, v6, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    goto :goto_a

    :cond_2b
    if-eq v0, v14, :cond_31

    if-eq v0, v13, :cond_30

    if-eq v0, v12, :cond_2f

    if-eq v0, v5, :cond_2e

    if-eq v0, v4, :cond_2d

    if-eq v0, v3, :cond_2c

    packed-switch v0, :pswitch_data_0

    .line 77
    invoke-virtual {v6, v0}, Le/b/a/a/q/h;->h(I)Le/b/a/a/l;

    move-result-object v0

    iput-object v0, v6, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    goto :goto_a

    .line 78
    :pswitch_0
    invoke-virtual {v6, v0}, Le/b/a/a/q/h;->i(I)Le/b/a/a/l;

    move-result-object v0

    iput-object v0, v6, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    goto :goto_a

    .line 79
    :cond_2c
    iget-object v0, v6, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    iget v1, v6, Le/b/a/a/o/b;->L:I

    iget v2, v6, Le/b/a/a/o/b;->M:I

    invoke-virtual {v0, v1, v2}, Le/b/a/a/q/d;->b(II)Le/b/a/a/q/d;

    move-result-object v0

    iput-object v0, v6, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    .line 80
    sget-object v0, Le/b/a/a/l;->START_OBJECT:Le/b/a/a/l;

    iput-object v0, v6, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    goto :goto_a

    .line 81
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->w()V

    .line 82
    sget-object v0, Le/b/a/a/l;->VALUE_TRUE:Le/b/a/a/l;

    iput-object v0, v6, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    goto :goto_a

    .line 83
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->v()V

    .line 84
    sget-object v0, Le/b/a/a/l;->VALUE_NULL:Le/b/a/a/l;

    iput-object v0, v6, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    goto :goto_a

    .line 85
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->u()V

    .line 86
    sget-object v0, Le/b/a/a/l;->VALUE_FALSE:Le/b/a/a/l;

    iput-object v0, v6, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    goto :goto_a

    .line 87
    :cond_30
    iget-object v0, v6, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    iget v1, v6, Le/b/a/a/o/b;->L:I

    iget v2, v6, Le/b/a/a/o/b;->M:I

    invoke-virtual {v0, v1, v2}, Le/b/a/a/q/d;->a(II)Le/b/a/a/q/d;

    move-result-object v0

    iput-object v0, v6, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    .line 88
    sget-object v0, Le/b/a/a/l;->START_ARRAY:Le/b/a/a/l;

    iput-object v0, v6, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    goto :goto_a

    .line 89
    :cond_31
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->x()Le/b/a/a/l;

    move-result-object v0

    iput-object v0, v6, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    :goto_a
    return-object v0

    .line 90
    :cond_32
    iget v1, v6, Le/b/a/a/o/b;->G:I

    .line 91
    iput v1, v6, Le/b/a/a/q/h;->X:I

    if-eq v0, v7, :cond_4f

    const-string v1, " in field name"

    const/16 v3, 0x27

    if-ne v0, v3, :cond_44

    .line 92
    sget-object v4, Le/b/a/a/i$a;->ALLOW_SINGLE_QUOTES:Le/b/a/a/i$a;

    invoke-virtual {v6, v4}, Le/b/a/a/i;->a(Le/b/a/a/i$a;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 93
    iget v0, v6, Le/b/a/a/o/b;->G:I

    iget v4, v6, Le/b/a/a/o/b;->H:I

    if-lt v0, v4, :cond_34

    .line 94
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->s()Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_b

    .line 95
    :cond_33
    sget-object v0, Le/b/a/a/l;->FIELD_NAME:Le/b/a/a/l;

    const-string v1, ": was expecting closing \'\'\' for field name"

    invoke-virtual {v6, v1, v0}, Le/b/a/a/o/c;->a(Ljava/lang/String;Le/b/a/a/l;)V

    throw v2

    .line 96
    :cond_34
    :goto_b
    iget-object v0, v6, Le/b/a/a/q/h;->Z:[B

    iget v4, v6, Le/b/a/a/o/b;->G:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v6, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v3, :cond_35

    goto/16 :goto_16

    .line 97
    :cond_35
    iget-object v4, v6, Le/b/a/a/q/h;->U:[I

    .line 98
    sget-object v5, Le/b/a/a/q/h;->c0:[I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_c
    if-ne v0, v3, :cond_38

    if-lez v12, :cond_37

    .line 99
    array-length v0, v4

    if-lt v13, v0, :cond_36

    .line 100
    array-length v0, v4

    invoke-static {v4, v0}, Le/b/a/a/o/b;->a([II)[I

    move-result-object v0

    iput-object v0, v6, Le/b/a/a/q/h;->U:[I

    move-object v4, v0

    :cond_36
    add-int/lit8 v0, v13, 0x1

    .line 101
    invoke-static {v14, v12}, Le/b/a/a/q/h;->c(II)I

    move-result v1

    aput v1, v4, v13

    move v13, v0

    .line 102
    :cond_37
    iget-object v0, v6, Le/b/a/a/q/h;->T:Le/b/a/a/r/a;

    invoke-virtual {v0, v4, v13}, Le/b/a/a/r/a;->b([II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4b

    .line 103
    invoke-virtual {v6, v4, v13, v12}, Le/b/a/a/q/h;->a([III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1b

    .line 104
    :cond_38
    aget v3, v5, v0

    if-eqz v3, :cond_3f

    if-eq v0, v7, :cond_3f

    const/16 v3, 0x5c

    if-eq v0, v3, :cond_39

    const-string v3, "name"

    .line 105
    invoke-virtual {v6, v0, v3}, Le/b/a/a/o/c;->b(ILjava/lang/String;)V

    goto :goto_d

    .line 106
    :cond_39
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->k()C

    move-result v0

    :goto_d
    const/16 v3, 0x7f

    if-le v0, v3, :cond_3f

    const/4 v3, 0x4

    if-lt v12, v3, :cond_3b

    .line 107
    array-length v3, v4

    if-lt v13, v3, :cond_3a

    .line 108
    array-length v3, v4

    invoke-static {v4, v3}, Le/b/a/a/o/b;->a([II)[I

    move-result-object v4

    iput-object v4, v6, Le/b/a/a/q/h;->U:[I

    :cond_3a
    add-int/lit8 v3, v13, 0x1

    .line 109
    aput v14, v4, v13

    const/4 v12, 0x0

    const/4 v14, 0x0

    move v13, v3

    :cond_3b
    const/16 v3, 0x800

    shl-int/lit8 v14, v14, 0x8

    if-ge v0, v3, :cond_3c

    shr-int/lit8 v3, v0, 0x6

    or-int/lit16 v3, v3, 0xc0

    or-int/2addr v3, v14

    add-int/lit8 v12, v12, 0x1

    :goto_e
    move v14, v3

    goto :goto_f

    :cond_3c
    shr-int/lit8 v3, v0, 0xc

    or-int/lit16 v3, v3, 0xe0

    or-int/2addr v3, v14

    add-int/lit8 v12, v12, 0x1

    const/4 v14, 0x4

    if-lt v12, v14, :cond_3e

    .line 110
    array-length v12, v4

    if-lt v13, v12, :cond_3d

    .line 111
    array-length v12, v4

    invoke-static {v4, v12}, Le/b/a/a/o/b;->a([II)[I

    move-result-object v4

    iput-object v4, v6, Le/b/a/a/q/h;->U:[I

    :cond_3d
    add-int/lit8 v12, v13, 0x1

    .line 112
    aput v3, v4, v13

    const/4 v3, 0x0

    const/4 v13, 0x0

    move v13, v12

    const/4 v12, 0x0

    :cond_3e
    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v14, v0, 0x6

    and-int/lit8 v14, v14, 0x3f

    or-int/lit16 v14, v14, 0x80

    or-int/2addr v3, v14

    add-int/2addr v12, v9

    goto :goto_e

    :goto_f
    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    :cond_3f
    const/4 v3, 0x4

    if-ge v12, v3, :cond_40

    add-int/lit8 v12, v12, 0x1

    shl-int/lit8 v3, v14, 0x8

    or-int/2addr v0, v3

    move v14, v0

    goto :goto_10

    .line 113
    :cond_40
    array-length v3, v4

    if-lt v13, v3, :cond_41

    .line 114
    array-length v3, v4

    invoke-static {v4, v3}, Le/b/a/a/o/b;->a([II)[I

    move-result-object v4

    iput-object v4, v6, Le/b/a/a/q/h;->U:[I

    :cond_41
    add-int/lit8 v3, v13, 0x1

    .line 115
    aput v14, v4, v13

    const/4 v12, 0x1

    move v14, v0

    move v13, v3

    .line 116
    :goto_10
    iget v0, v6, Le/b/a/a/o/b;->G:I

    iget v3, v6, Le/b/a/a/o/b;->H:I

    if-lt v0, v3, :cond_43

    .line 117
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->s()Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_11

    .line 118
    :cond_42
    sget-object v0, Le/b/a/a/l;->FIELD_NAME:Le/b/a/a/l;

    invoke-virtual {v6, v1, v0}, Le/b/a/a/o/c;->a(Ljava/lang/String;Le/b/a/a/l;)V

    throw v2

    .line 119
    :cond_43
    :goto_11
    iget-object v0, v6, Le/b/a/a/q/h;->Z:[B

    iget v3, v6, Le/b/a/a/o/b;->G:I

    add-int/lit8 v15, v3, 0x1

    iput v15, v6, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0x27

    goto/16 :goto_c

    .line 120
    :cond_44
    sget-object v3, Le/b/a/a/i$a;->ALLOW_UNQUOTED_FIELD_NAMES:Le/b/a/a/i$a;

    invoke-virtual {v6, v3}, Le/b/a/a/i;->a(Le/b/a/a/i$a;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 121
    sget-object v3, Le/b/a/a/p/a;->f:[I

    .line 122
    aget v4, v3, v0

    if-nez v4, :cond_4d

    .line 123
    iget-object v4, v6, Le/b/a/a/q/h;->U:[I

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_12
    const/4 v14, 0x4

    if-ge v5, v14, :cond_45

    add-int/lit8 v5, v5, 0x1

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v0, v13

    move v13, v0

    goto :goto_13

    .line 124
    :cond_45
    array-length v5, v4

    if-lt v12, v5, :cond_46

    .line 125
    array-length v5, v4

    invoke-static {v4, v5}, Le/b/a/a/o/b;->a([II)[I

    move-result-object v4

    iput-object v4, v6, Le/b/a/a/q/h;->U:[I

    :cond_46
    add-int/lit8 v5, v12, 0x1

    .line 126
    aput v13, v4, v12

    const/4 v12, 0x1

    move v13, v0

    move v12, v5

    const/4 v5, 0x1

    .line 127
    :goto_13
    iget v0, v6, Le/b/a/a/o/b;->G:I

    iget v14, v6, Le/b/a/a/o/b;->H:I

    if-lt v0, v14, :cond_48

    .line 128
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->s()Z

    move-result v0

    if-eqz v0, :cond_47

    goto :goto_14

    .line 129
    :cond_47
    sget-object v0, Le/b/a/a/l;->FIELD_NAME:Le/b/a/a/l;

    invoke-virtual {v6, v1, v0}, Le/b/a/a/o/c;->a(Ljava/lang/String;Le/b/a/a/l;)V

    throw v2

    .line 130
    :cond_48
    :goto_14
    iget-object v0, v6, Le/b/a/a/q/h;->Z:[B

    iget v14, v6, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v14

    and-int/lit16 v0, v0, 0xff

    .line 131
    aget v15, v3, v0

    if-eqz v15, :cond_4c

    if-lez v5, :cond_4a

    .line 132
    array-length v0, v4

    if-lt v12, v0, :cond_49

    .line 133
    array-length v0, v4

    invoke-static {v4, v0}, Le/b/a/a/o/b;->a([II)[I

    move-result-object v0

    iput-object v0, v6, Le/b/a/a/q/h;->U:[I

    move-object v4, v0

    :cond_49
    add-int/lit8 v0, v12, 0x1

    .line 134
    aput v13, v4, v12

    move v12, v0

    .line 135
    :cond_4a
    iget-object v0, v6, Le/b/a/a/q/h;->T:Le/b/a/a/r/a;

    invoke-virtual {v0, v4, v12}, Le/b/a/a/r/a;->b([II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4b

    .line 136
    invoke-virtual {v6, v4, v12, v5}, Le/b/a/a/q/h;->a([III)Ljava/lang/String;

    move-result-object v0

    :cond_4b
    const/16 v1, 0x2d

    const/16 v2, 0x5b

    const/16 v3, 0x66

    goto :goto_17

    :cond_4c
    add-int/lit8 v14, v14, 0x1

    .line 137
    iput v14, v6, Le/b/a/a/o/b;->G:I

    goto :goto_12

    :cond_4d
    const-string v1, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    .line 138
    invoke-virtual {v6, v0, v1}, Le/b/a/a/o/c;->a(ILjava/lang/String;)V

    throw v2

    .line 139
    :cond_4e
    invoke-virtual {v6, v0}, Le/b/a/a/q/h;->c(I)I

    move-result v0

    int-to-char v0, v0

    const-string v1, "was expecting double-quote to start field name"

    .line 140
    invoke-virtual {v6, v0, v1}, Le/b/a/a/o/c;->a(ILjava/lang/String;)V

    throw v2

    :cond_4f
    add-int/lit8 v0, v1, 0xd

    .line 141
    iget v3, v6, Le/b/a/a/o/b;->H:I

    if-le v0, v3, :cond_53

    if-lt v1, v3, :cond_51

    .line 142
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->s()Z

    move-result v0

    if-eqz v0, :cond_50

    goto :goto_15

    .line 143
    :cond_50
    sget-object v0, Le/b/a/a/l;->FIELD_NAME:Le/b/a/a/l;

    const-string v1, ": was expecting closing \'\"\' for name"

    invoke-virtual {v6, v1, v0}, Le/b/a/a/o/c;->a(Ljava/lang/String;Le/b/a/a/l;)V

    throw v2

    .line 144
    :cond_51
    :goto_15
    iget-object v0, v6, Le/b/a/a/q/h;->Z:[B

    iget v1, v6, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v6, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    if-ne v4, v7, :cond_52

    :goto_16
    goto/16 :goto_19

    .line 145
    :cond_52
    iget-object v1, v6, Le/b/a/a/q/h;->U:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v12, 0x2d

    const/16 v13, 0x5b

    const/16 v14, 0x66

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Le/b/a/a/q/h;->a([IIIII)Ljava/lang/String;

    move-result-object v0

    :goto_17
    const/16 v2, 0x2d

    const/16 v3, 0x5b

    const/16 v4, 0x66

    goto/16 :goto_1a

    :cond_53
    const/16 v12, 0x2d

    const/16 v13, 0x5b

    const/16 v14, 0x66

    .line 146
    iget-object v0, v6, Le/b/a/a/q/h;->Z:[B

    .line 147
    sget-object v2, Le/b/a/a/q/h;->c0:[I

    add-int/lit8 v3, v1, 0x1

    .line 148
    iput v3, v6, Le/b/a/a/o/b;->G:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 149
    aget v4, v2, v1

    if-nez v4, :cond_76

    add-int/lit8 v4, v3, 0x1

    .line 150
    iput v4, v6, Le/b/a/a/o/b;->G:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 151
    aget v5, v2, v3

    if-nez v5, :cond_74

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v4, 0x1

    .line 152
    iput v3, v6, Le/b/a/a/o/b;->G:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    .line 153
    aget v5, v2, v4

    if-nez v5, :cond_72

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v4

    add-int/lit8 v4, v3, 0x1

    .line 154
    iput v4, v6, Le/b/a/a/o/b;->G:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 155
    aget v5, v2, v3

    if-nez v5, :cond_70

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v4, 0x1

    .line 156
    iput v3, v6, Le/b/a/a/o/b;->G:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    .line 157
    aget v5, v2, v4

    if-nez v5, :cond_6e

    .line 158
    iput v1, v6, Le/b/a/a/q/h;->W:I

    add-int/lit8 v5, v3, 0x1

    .line 159
    iput v5, v6, Le/b/a/a/o/b;->G:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 160
    aget v15, v2, v3

    if-eqz v15, :cond_55

    if-ne v3, v7, :cond_54

    .line 161
    invoke-virtual {v6, v1, v4, v9}, Le/b/a/a/q/h;->a(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 162
    :cond_54
    invoke-virtual {v6, v1, v4, v3, v9}, Le/b/a/a/q/h;->b(IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_55
    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, v5, 0x1

    .line 163
    iput v4, v6, Le/b/a/a/o/b;->G:I

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    .line 164
    aget v15, v2, v5

    if-eqz v15, :cond_57

    if-ne v5, v7, :cond_56

    const/4 v0, 0x2

    .line 165
    invoke-virtual {v6, v1, v3, v0}, Le/b/a/a/q/h;->a(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    :cond_56
    const/4 v0, 0x2

    .line 166
    invoke-virtual {v6, v1, v3, v5, v0}, Le/b/a/a/q/h;->b(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    :cond_57
    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v5

    add-int/lit8 v5, v4, 0x1

    .line 167
    iput v5, v6, Le/b/a/a/o/b;->G:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    .line 168
    aget v15, v2, v4

    if-eqz v15, :cond_59

    if-ne v4, v7, :cond_58

    const/4 v0, 0x3

    .line 169
    invoke-virtual {v6, v1, v3, v0}, Le/b/a/a/q/h;->a(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    :cond_58
    const/4 v0, 0x3

    .line 170
    invoke-virtual {v6, v1, v3, v4, v0}, Le/b/a/a/q/h;->b(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    :cond_59
    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, v5, 0x1

    .line 171
    iput v4, v6, Le/b/a/a/o/b;->G:I

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    .line 172
    aget v15, v2, v5

    if-eqz v15, :cond_5b

    if-ne v5, v7, :cond_5a

    const/4 v0, 0x4

    .line 173
    invoke-virtual {v6, v1, v3, v0}, Le/b/a/a/q/h;->a(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    :cond_5a
    const/4 v0, 0x4

    .line 174
    invoke-virtual {v6, v1, v3, v5, v0}, Le/b/a/a/q/h;->b(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    :cond_5b
    add-int/lit8 v15, v4, 0x1

    .line 175
    iput v15, v6, Le/b/a/a/o/b;->G:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    .line 176
    aget v16, v2, v4

    if-eqz v16, :cond_5d

    if-ne v4, v7, :cond_5c

    .line 177
    invoke-virtual {v6, v1, v3, v5, v9}, Le/b/a/a/q/h;->a(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    :cond_5c
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move v2, v3

    move v3, v5

    move v5, v15

    .line 178
    invoke-virtual/range {v0 .. v5}, Le/b/a/a/q/h;->a(IIIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    :cond_5d
    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v15, 0x1

    .line 179
    iput v5, v6, Le/b/a/a/o/b;->G:I

    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    .line 180
    aget v16, v2, v15

    if-eqz v16, :cond_5f

    if-ne v15, v7, :cond_5e

    const/4 v0, 0x2

    .line 181
    invoke-virtual {v6, v1, v3, v4, v0}, Le/b/a/a/q/h;->a(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    :cond_5e
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move v2, v3

    move v3, v4

    move v4, v15

    .line 182
    invoke-virtual/range {v0 .. v5}, Le/b/a/a/q/h;->a(IIIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    :cond_5f
    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v15

    add-int/lit8 v15, v5, 0x1

    .line 183
    iput v15, v6, Le/b/a/a/o/b;->G:I

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    .line 184
    aget v16, v2, v5

    if-eqz v16, :cond_61

    if-ne v5, v7, :cond_60

    const/4 v0, 0x3

    .line 185
    invoke-virtual {v6, v1, v3, v4, v0}, Le/b/a/a/q/h;->a(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    :cond_60
    const/4 v15, 0x3

    move-object/from16 v0, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v15

    .line 186
    invoke-virtual/range {v0 .. v5}, Le/b/a/a/q/h;->a(IIIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    :cond_61
    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v15, 0x1

    .line 187
    iput v5, v6, Le/b/a/a/o/b;->G:I

    aget-byte v5, v0, v15

    and-int/lit16 v5, v5, 0xff

    .line 188
    aget v15, v2, v5

    if-eqz v15, :cond_63

    if-ne v5, v7, :cond_62

    const/4 v0, 0x4

    .line 189
    invoke-virtual {v6, v1, v3, v4, v0}, Le/b/a/a/q/h;->a(IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    :cond_62
    const/4 v15, 0x4

    move-object/from16 v0, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v15

    .line 190
    invoke-virtual/range {v0 .. v5}, Le/b/a/a/q/h;->a(IIIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    .line 191
    :cond_63
    iget-object v15, v6, Le/b/a/a/q/h;->U:[I

    const/16 v16, 0x0

    aput v1, v15, v16

    .line 192
    aput v3, v15, v9

    const/4 v1, 0x2

    .line 193
    aput v4, v15, v1

    const/4 v1, 0x3

    move v4, v5

    const/4 v3, 0x3

    .line 194
    :goto_18
    iget v1, v6, Le/b/a/a/o/b;->G:I

    add-int/lit8 v5, v1, 0x4

    iget v15, v6, Le/b/a/a/o/b;->H:I

    if-gt v5, v15, :cond_6d

    add-int/lit8 v5, v1, 0x1

    .line 195
    iput v5, v6, Le/b/a/a/o/b;->G:I

    aget-byte v1, v0, v1

    and-int/lit16 v15, v1, 0xff

    .line 196
    aget v1, v2, v15

    if-eqz v1, :cond_65

    if-ne v15, v7, :cond_64

    .line 197
    iget-object v0, v6, Le/b/a/a/q/h;->U:[I

    invoke-virtual {v6, v0, v3, v4, v9}, Le/b/a/a/q/h;->a([IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    .line 198
    :cond_64
    iget-object v1, v6, Le/b/a/a/q/h;->U:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v2, v3

    move v3, v4

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Le/b/a/a/q/h;->a([IIIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    :cond_65
    shl-int/lit8 v1, v4, 0x8

    or-int v4, v15, v1

    add-int/lit8 v1, v5, 0x1

    .line 199
    iput v1, v6, Le/b/a/a/o/b;->G:I

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    .line 200
    aget v15, v2, v5

    if-eqz v15, :cond_67

    if-ne v5, v7, :cond_66

    .line 201
    iget-object v0, v6, Le/b/a/a/q/h;->U:[I

    const/4 v1, 0x2

    invoke-virtual {v6, v0, v3, v4, v1}, Le/b/a/a/q/h;->a([IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    .line 202
    :cond_66
    iget-object v1, v6, Le/b/a/a/q/h;->U:[I

    const/4 v15, 0x2

    move-object/from16 v0, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Le/b/a/a/q/h;->a([IIIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    :cond_67
    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v1, 0x1

    .line 203
    iput v5, v6, Le/b/a/a/o/b;->G:I

    aget-byte v1, v0, v1

    and-int/lit16 v15, v1, 0xff

    .line 204
    aget v1, v2, v15

    if-eqz v1, :cond_69

    if-ne v15, v7, :cond_68

    .line 205
    iget-object v0, v6, Le/b/a/a/q/h;->U:[I

    const/4 v1, 0x3

    invoke-virtual {v6, v0, v3, v4, v1}, Le/b/a/a/q/h;->a([IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    .line 206
    :cond_68
    iget-object v1, v6, Le/b/a/a/q/h;->U:[I

    const/4 v5, 0x3

    move-object/from16 v0, p0

    move v2, v3

    move v3, v4

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Le/b/a/a/q/h;->a([IIIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    :cond_69
    shl-int/lit8 v1, v4, 0x8

    or-int v4, v1, v15

    add-int/lit8 v1, v5, 0x1

    .line 207
    iput v1, v6, Le/b/a/a/o/b;->G:I

    aget-byte v1, v0, v5

    and-int/lit16 v5, v1, 0xff

    .line 208
    aget v1, v2, v5

    if-eqz v1, :cond_6b

    if-ne v5, v7, :cond_6a

    .line 209
    iget-object v0, v6, Le/b/a/a/q/h;->U:[I

    const/4 v1, 0x4

    invoke-virtual {v6, v0, v3, v4, v1}, Le/b/a/a/q/h;->a([IIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    .line 210
    :cond_6a
    iget-object v1, v6, Le/b/a/a/q/h;->U:[I

    const/4 v15, 0x4

    move-object/from16 v0, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Le/b/a/a/q/h;->a([IIIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    .line 211
    :cond_6b
    iget-object v1, v6, Le/b/a/a/q/h;->U:[I

    array-length v15, v1

    if-lt v3, v15, :cond_6c

    .line 212
    invoke-static {v1, v3}, Le/b/a/a/o/b;->a([II)[I

    move-result-object v1

    iput-object v1, v6, Le/b/a/a/q/h;->U:[I

    .line 213
    :cond_6c
    iget-object v1, v6, Le/b/a/a/q/h;->U:[I

    add-int/lit8 v15, v3, 0x1

    aput v4, v1, v3

    move v4, v5

    move v3, v15

    goto/16 :goto_18

    .line 214
    :cond_6d
    iget-object v1, v6, Le/b/a/a/q/h;->U:[I

    const/4 v5, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v2, v3

    move v3, v5

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Le/b/a/a/q/h;->a([IIIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    :cond_6e
    if-ne v4, v7, :cond_6f

    const/4 v0, 0x4

    .line 215
    invoke-virtual {v6, v1, v0}, Le/b/a/a/q/h;->b(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    :cond_6f
    const/4 v0, 0x4

    .line 216
    invoke-virtual {v6, v1, v4, v0}, Le/b/a/a/q/h;->b(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    :cond_70
    if-ne v3, v7, :cond_71

    const/4 v0, 0x3

    .line 217
    invoke-virtual {v6, v1, v0}, Le/b/a/a/q/h;->b(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    :cond_71
    const/4 v0, 0x3

    .line 218
    invoke-virtual {v6, v1, v3, v0}, Le/b/a/a/q/h;->b(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    :cond_72
    if-ne v4, v7, :cond_73

    const/4 v0, 0x2

    .line 219
    invoke-virtual {v6, v1, v0}, Le/b/a/a/q/h;->b(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    :cond_73
    const/4 v0, 0x2

    .line 220
    invoke-virtual {v6, v1, v4, v0}, Le/b/a/a/q/h;->b(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    :cond_74
    if-ne v3, v7, :cond_75

    .line 221
    invoke-virtual {v6, v1, v9}, Le/b/a/a/q/h;->b(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    .line 222
    :cond_75
    invoke-virtual {v6, v1, v3, v9}, Le/b/a/a/q/h;->b(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    :cond_76
    if-ne v1, v7, :cond_77

    :goto_19
    const/16 v0, 0x2d

    const/16 v1, 0x5b

    const/16 v2, 0x66

    const-string v3, ""

    move v4, v2

    move v2, v0

    move-object v0, v3

    move v3, v1

    :goto_1a
    const/4 v1, 0x0

    goto :goto_1c

    :cond_77
    const/4 v0, 0x0

    .line 223
    invoke-virtual {v6, v0, v1, v0}, Le/b/a/a/q/h;->b(III)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :goto_1b
    const/4 v1, 0x0

    const/16 v2, 0x2d

    const/16 v3, 0x5b

    const/16 v4, 0x66

    .line 224
    :goto_1c
    iget-object v5, v6, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    invoke-virtual {v5, v0}, Le/b/a/a/q/d;->a(Ljava/lang/String;)V

    .line 225
    sget-object v0, Le/b/a/a/l;->FIELD_NAME:Le/b/a/a/l;

    iput-object v0, v6, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    .line 226
    iget v0, v6, Le/b/a/a/o/b;->G:I

    add-int/lit8 v5, v0, 0x4

    iget v12, v6, Le/b/a/a/o/b;->H:I

    if-lt v5, v12, :cond_78

    .line 227
    invoke-virtual {v6, v1}, Le/b/a/a/q/h;->a(Z)I

    move-result v0

    goto/16 :goto_21

    .line 228
    :cond_78
    iget-object v1, v6, Le/b/a/a/q/h;->Z:[B

    aget-byte v5, v1, v0

    const/16 v12, 0x3a

    if-ne v5, v12, :cond_80

    add-int/2addr v0, v9

    .line 229
    iput v0, v6, Le/b/a/a/o/b;->G:I

    aget-byte v1, v1, v0

    if-le v1, v8, :cond_7b

    if-eq v1, v10, :cond_7a

    if-ne v1, v11, :cond_79

    goto :goto_1d

    :cond_79
    add-int/2addr v0, v9

    .line 230
    iput v0, v6, Le/b/a/a/o/b;->G:I

    move v0, v1

    goto/16 :goto_21

    .line 231
    :cond_7a
    :goto_1d
    invoke-virtual {v6, v9}, Le/b/a/a/q/h;->a(Z)I

    move-result v0

    goto/16 :goto_21

    :cond_7b
    if-eq v1, v8, :cond_7c

    const/16 v0, 0x9

    if-ne v1, v0, :cond_7f

    .line 232
    :cond_7c
    iget-object v0, v6, Le/b/a/a/q/h;->Z:[B

    iget v1, v6, Le/b/a/a/o/b;->G:I

    add-int/2addr v1, v9

    iput v1, v6, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v1

    if-le v0, v8, :cond_7f

    if-eq v0, v10, :cond_7e

    if-ne v0, v11, :cond_7d

    goto :goto_1e

    :cond_7d
    add-int/2addr v1, v9

    .line 233
    iput v1, v6, Le/b/a/a/o/b;->G:I

    goto :goto_21

    .line 234
    :cond_7e
    :goto_1e
    invoke-virtual {v6, v9}, Le/b/a/a/q/h;->a(Z)I

    move-result v0

    goto :goto_21

    .line 235
    :cond_7f
    invoke-virtual {v6, v9}, Le/b/a/a/q/h;->a(Z)I

    move-result v0

    goto :goto_21

    :cond_80
    if-eq v5, v8, :cond_81

    const/16 v0, 0x9

    if-ne v5, v0, :cond_82

    .line 236
    :cond_81
    iget-object v0, v6, Le/b/a/a/q/h;->Z:[B

    iget v1, v6, Le/b/a/a/o/b;->G:I

    add-int/2addr v1, v9

    iput v1, v6, Le/b/a/a/o/b;->G:I

    aget-byte v5, v0, v1

    :cond_82
    if-ne v5, v12, :cond_8a

    .line 237
    iget-object v0, v6, Le/b/a/a/q/h;->Z:[B

    iget v1, v6, Le/b/a/a/o/b;->G:I

    add-int/2addr v1, v9

    iput v1, v6, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v1

    if-le v0, v8, :cond_85

    if-eq v0, v10, :cond_84

    if-ne v0, v11, :cond_83

    goto :goto_1f

    :cond_83
    add-int/2addr v1, v9

    .line 238
    iput v1, v6, Le/b/a/a/o/b;->G:I

    goto :goto_21

    .line 239
    :cond_84
    :goto_1f
    invoke-virtual {v6, v9}, Le/b/a/a/q/h;->a(Z)I

    move-result v0

    goto :goto_21

    :cond_85
    if-eq v0, v8, :cond_86

    const/16 v1, 0x9

    if-ne v0, v1, :cond_89

    .line 240
    :cond_86
    iget-object v0, v6, Le/b/a/a/q/h;->Z:[B

    iget v1, v6, Le/b/a/a/o/b;->G:I

    add-int/2addr v1, v9

    iput v1, v6, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v1

    if-le v0, v8, :cond_89

    if-eq v0, v10, :cond_88

    if-ne v0, v11, :cond_87

    goto :goto_20

    :cond_87
    add-int/2addr v1, v9

    .line 241
    iput v1, v6, Le/b/a/a/o/b;->G:I

    goto :goto_21

    .line 242
    :cond_88
    :goto_20
    invoke-virtual {v6, v9}, Le/b/a/a/q/h;->a(Z)I

    move-result v0

    goto :goto_21

    .line 243
    :cond_89
    invoke-virtual {v6, v9}, Le/b/a/a/q/h;->a(Z)I

    move-result v0

    goto :goto_21

    :cond_8a
    const/4 v0, 0x0

    .line 244
    invoke-virtual {v6, v0}, Le/b/a/a/q/h;->a(Z)I

    move-result v0

    .line 245
    :goto_21
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->H()V

    if-ne v0, v7, :cond_8b

    .line 246
    iput-boolean v9, v6, Le/b/a/a/q/h;->V:Z

    .line 247
    sget-object v0, Le/b/a/a/l;->VALUE_STRING:Le/b/a/a/l;

    iput-object v0, v6, Le/b/a/a/o/b;->O:Le/b/a/a/l;

    .line 248
    iget-object v0, v6, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    return-object v0

    :cond_8b
    if-eq v0, v2, :cond_91

    if-eq v0, v3, :cond_90

    if-eq v0, v4, :cond_8f

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_8e

    const/16 v1, 0x74

    if-eq v0, v1, :cond_8d

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_8c

    packed-switch v0, :pswitch_data_1

    .line 249
    invoke-virtual {v6, v0}, Le/b/a/a/q/h;->h(I)Le/b/a/a/l;

    move-result-object v0

    goto :goto_22

    .line 250
    :pswitch_1
    invoke-virtual {v6, v0}, Le/b/a/a/q/h;->i(I)Le/b/a/a/l;

    move-result-object v0

    goto :goto_22

    .line 251
    :cond_8c
    sget-object v0, Le/b/a/a/l;->START_OBJECT:Le/b/a/a/l;

    goto :goto_22

    .line 252
    :cond_8d
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->w()V

    .line 253
    sget-object v0, Le/b/a/a/l;->VALUE_TRUE:Le/b/a/a/l;

    goto :goto_22

    .line 254
    :cond_8e
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->v()V

    .line 255
    sget-object v0, Le/b/a/a/l;->VALUE_NULL:Le/b/a/a/l;

    goto :goto_22

    .line 256
    :cond_8f
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->u()V

    .line 257
    sget-object v0, Le/b/a/a/l;->VALUE_FALSE:Le/b/a/a/l;

    goto :goto_22

    .line 258
    :cond_90
    sget-object v0, Le/b/a/a/l;->START_ARRAY:Le/b/a/a/l;

    goto :goto_22

    .line 259
    :cond_91
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/h;->x()Le/b/a/a/l;

    move-result-object v0

    .line 260
    :goto_22
    iput-object v0, v6, Le/b/a/a/o/b;->O:Le/b/a/a/l;

    .line 261
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

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final g(I)I
    .locals 5

    .line 1
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iget v1, p0, Le/b/a/a/o/b;->H:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/b/a/a/q/h;->t()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/4 v3, 0x0

    const/16 v4, 0x80

    if-ne v1, v4, :cond_5

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    .line 4
    iget v0, p0, Le/b/a/a/o/b;->H:I

    if-lt v2, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Le/b/a/a/q/h;->t()V

    .line 6
    :cond_1
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-ne v1, v4, :cond_4

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    .line 7
    iget v0, p0, Le/b/a/a/o/b;->H:I

    if-lt v2, v0, :cond_2

    .line 8
    invoke-virtual {p0}, Le/b/a/a/q/h;->t()V

    .line 9
    :cond_2
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-ne v1, v4, :cond_3

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    const/high16 v0, 0x10000

    sub-int/2addr p1, v0

    return p1

    :cond_3
    and-int/lit16 p1, v0, 0xff

    .line 10
    invoke-virtual {p0, p1, v2}, Le/b/a/a/q/h;->a(II)V

    throw v3

    :cond_4
    and-int/lit16 p1, v0, 0xff

    .line 11
    invoke-virtual {p0, p1, v2}, Le/b/a/a/q/h;->a(II)V

    throw v3

    :cond_5
    and-int/lit16 p1, v0, 0xff

    .line 12
    invoke-virtual {p0, p1, v2}, Le/b/a/a/q/h;->a(II)V

    throw v3
.end method

.method public h(I)Le/b/a/a/l;
    .locals 10

    const/16 v0, 0x27

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_a

    const/16 v0, 0x49

    if-eq p1, v0, :cond_8

    const/16 v0, 0x4e

    if-eq p1, v0, :cond_6

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_3

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_5

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_4

    goto/16 :goto_6

    .line 1
    :cond_0
    iget p1, p0, Le/b/a/a/o/b;->G:I

    iget v0, p0, Le/b/a/a/o/b;->H:I

    if-lt p1, v0, :cond_2

    .line 2
    invoke-virtual {p0}, Le/b/a/a/q/h;->s()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Le/b/a/a/l;->VALUE_NUMBER_INT:Le/b/a/a/l;

    invoke-virtual {p0, p1}, Le/b/a/a/o/c;->a(Le/b/a/a/l;)V

    throw v2

    .line 4
    :cond_2
    :goto_0
    iget-object p1, p0, Le/b/a/a/q/h;->Z:[B

    iget v0, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Le/b/a/a/o/b;->G:I

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1, v1}, Le/b/a/a/q/h;->a(IZ)Le/b/a/a/l;

    move-result-object p1

    return-object p1

    .line 5
    :cond_3
    iget-object v0, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    invoke-virtual {v0}, Le/b/a/a/k;->b()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_6

    .line 6
    :cond_4
    sget-object v0, Le/b/a/a/i$a;->ALLOW_MISSING_VALUES:Le/b/a/a/i$a;

    invoke-virtual {p0, v0}, Le/b/a/a/i;->a(Le/b/a/a/i$a;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    iget p1, p0, Le/b/a/a/o/b;->G:I

    sub-int/2addr p1, v3

    iput p1, p0, Le/b/a/a/o/b;->G:I

    .line 8
    sget-object p1, Le/b/a/a/l;->VALUE_NULL:Le/b/a/a/l;

    return-object p1

    :cond_5
    const-string v0, "expected a value"

    .line 9
    invoke-virtual {p0, p1, v0}, Le/b/a/a/o/c;->a(ILjava/lang/String;)V

    throw v2

    :cond_6
    const-string p1, "NaN"

    .line 10
    invoke-virtual {p0, p1, v3}, Le/b/a/a/q/h;->a(Ljava/lang/String;I)V

    .line 11
    sget-object v0, Le/b/a/a/i$a;->ALLOW_NON_NUMERIC_NUMBERS:Le/b/a/a/i$a;

    invoke-virtual {p0, v0}, Le/b/a/a/i;->a(Le/b/a/a/i$a;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 12
    invoke-virtual {p0, p1, v0, v1}, Le/b/a/a/o/b;->a(Ljava/lang/String;D)Le/b/a/a/l;

    move-result-object p1

    return-object p1

    :cond_7
    const-string p1, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    .line 13
    invoke-virtual {p0, p1}, Le/b/a/a/i;->a(Ljava/lang/String;)Le/b/a/a/h;

    move-result-object p1

    throw p1

    :cond_8
    const-string p1, "Infinity"

    .line 14
    invoke-virtual {p0, p1, v3}, Le/b/a/a/q/h;->a(Ljava/lang/String;I)V

    .line 15
    sget-object v0, Le/b/a/a/i$a;->ALLOW_NON_NUMERIC_NUMBERS:Le/b/a/a/i$a;

    invoke-virtual {p0, v0}, Le/b/a/a/i;->a(Le/b/a/a/i$a;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 16
    invoke-virtual {p0, p1, v0, v1}, Le/b/a/a/o/b;->a(Ljava/lang/String;D)Le/b/a/a/l;

    move-result-object p1

    return-object p1

    :cond_9
    const-string p1, "Non-standard token \'Infinity\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    .line 17
    invoke-virtual {p0, p1}, Le/b/a/a/i;->a(Ljava/lang/String;)Le/b/a/a/h;

    move-result-object p1

    throw p1

    .line 18
    :cond_a
    sget-object v1, Le/b/a/a/i$a;->ALLOW_SINGLE_QUOTES:Le/b/a/a/i$a;

    invoke-virtual {p0, v1}, Le/b/a/a/i;->a(Le/b/a/a/i$a;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 19
    iget-object p1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {p1}, Le/b/a/a/s/g;->c()[C

    move-result-object p1

    .line 20
    sget-object v1, Le/b/a/a/q/h;->b0:[I

    .line 21
    iget-object v4, p0, Le/b/a/a/q/h;->Z:[B

    const/4 v5, 0x0

    .line 22
    :cond_b
    :goto_1
    iget v6, p0, Le/b/a/a/o/b;->G:I

    iget v7, p0, Le/b/a/a/o/b;->H:I

    if-lt v6, v7, :cond_c

    .line 23
    invoke-virtual {p0}, Le/b/a/a/q/h;->t()V

    .line 24
    :cond_c
    array-length v6, p1

    if-lt v5, v6, :cond_d

    .line 25
    iget-object p1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {p1}, Le/b/a/a/s/g;->f()[C

    move-result-object p1

    const/4 v5, 0x0

    .line 26
    :cond_d
    iget v6, p0, Le/b/a/a/o/b;->H:I

    .line 27
    iget v7, p0, Le/b/a/a/o/b;->G:I

    array-length v8, p1

    sub-int/2addr v8, v5

    add-int/2addr v8, v7

    if-ge v8, v6, :cond_e

    move v6, v8

    .line 28
    :cond_e
    :goto_2
    iget v7, p0, Le/b/a/a/o/b;->G:I

    if-ge v7, v6, :cond_b

    add-int/lit8 v8, v7, 0x1

    .line 29
    iput v8, p0, Le/b/a/a/o/b;->G:I

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    if-eq v7, v0, :cond_10

    .line 30
    aget v8, v1, v7

    if-eqz v8, :cond_f

    goto :goto_3

    :cond_f
    add-int/lit8 v8, v5, 0x1

    int-to-char v7, v7

    .line 31
    aput-char v7, p1, v5

    move v5, v8

    goto :goto_2

    :cond_10
    :goto_3
    if-ne v7, v0, :cond_11

    .line 32
    iget-object p1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    .line 33
    iput v5, p1, Le/b/a/a/s/g;->i:I

    .line 34
    sget-object p1, Le/b/a/a/l;->VALUE_STRING:Le/b/a/a/l;

    return-object p1

    .line 35
    :cond_11
    aget v6, v1, v7

    if-eq v6, v3, :cond_18

    const/4 v8, 0x2

    if-eq v6, v8, :cond_17

    const/4 v9, 0x3

    if-eq v6, v9, :cond_15

    const/4 v8, 0x4

    if-eq v6, v8, :cond_13

    const/16 p1, 0x20

    if-ge v7, p1, :cond_12

    const-string p1, "string value"

    .line 36
    invoke-virtual {p0, v7, p1}, Le/b/a/a/o/c;->b(ILjava/lang/String;)V

    .line 37
    :cond_12
    invoke-virtual {p0, v7}, Le/b/a/a/q/h;->j(I)V

    throw v2

    .line 38
    :cond_13
    invoke-virtual {p0, v7}, Le/b/a/a/q/h;->g(I)I

    move-result v6

    add-int/lit8 v7, v5, 0x1

    const v8, 0xd800

    shr-int/lit8 v9, v6, 0xa

    or-int/2addr v8, v9

    int-to-char v8, v8

    .line 39
    aput-char v8, p1, v5

    .line 40
    array-length v5, p1

    if-lt v7, v5, :cond_14

    .line 41
    iget-object p1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {p1}, Le/b/a/a/s/g;->f()[C

    move-result-object p1

    const/4 v5, 0x0

    goto :goto_4

    :cond_14
    move v5, v7

    :goto_4
    const v7, 0xdc00

    and-int/lit16 v6, v6, 0x3ff

    or-int/2addr v6, v7

    goto :goto_5

    .line 42
    :cond_15
    iget v6, p0, Le/b/a/a/o/b;->H:I

    iget v9, p0, Le/b/a/a/o/b;->G:I

    sub-int/2addr v6, v9

    if-lt v6, v8, :cond_16

    .line 43
    invoke-virtual {p0, v7}, Le/b/a/a/q/h;->f(I)I

    move-result v6

    goto :goto_5

    .line 44
    :cond_16
    invoke-virtual {p0, v7}, Le/b/a/a/q/h;->e(I)I

    move-result v6

    goto :goto_5

    .line 45
    :cond_17
    invoke-virtual {p0, v7}, Le/b/a/a/q/h;->d(I)I

    move-result v6

    goto :goto_5

    .line 46
    :cond_18
    invoke-virtual {p0}, Le/b/a/a/q/h;->k()C

    move-result v6

    .line 47
    :goto_5
    array-length v7, p1

    if-lt v5, v7, :cond_19

    .line 48
    iget-object p1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {p1}, Le/b/a/a/s/g;->f()[C

    move-result-object p1

    const/4 v5, 0x0

    :cond_19
    add-int/lit8 v7, v5, 0x1

    int-to-char v6, v6

    .line 49
    aput-char v6, p1, v5

    move v5, v7

    goto/16 :goto_1

    .line 50
    :cond_1a
    :goto_6
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, ""

    .line 51
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "(\'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0}, Le/b/a/a/q/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_1b
    const-string v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    .line 52
    invoke-virtual {p0, p1, v0}, Le/b/a/a/o/c;->a(ILjava/lang/String;)V

    throw v2
.end method

.method public i(I)Le/b/a/a/l;
    .locals 9

    .line 11
    iget-object v0, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {v0}, Le/b/a/a/s/g;->c()[C

    move-result-object v2

    const/16 v0, 0x30

    if-ne p1, v0, :cond_0

    .line 12
    invoke-virtual {p0}, Le/b/a/a/q/h;->I()I

    move-result p1

    :cond_0
    int-to-char p1, p1

    const/4 v1, 0x0

    .line 13
    aput-char p1, v2, v1

    .line 14
    iget p1, p0, Le/b/a/a/o/b;->H:I

    iget v3, p0, Le/b/a/a/o/b;->G:I

    array-length v4, v2

    add-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v3, 0x1

    const/4 v6, 0x1

    .line 15
    :goto_0
    iget v5, p0, Le/b/a/a/o/b;->G:I

    if-lt v5, p1, :cond_1

    .line 16
    invoke-virtual {p0, v2, v3, v1, v6}, Le/b/a/a/q/h;->a([CIZI)Le/b/a/a/l;

    move-result-object p1

    return-object p1

    .line 17
    :cond_1
    iget-object v7, p0, Le/b/a/a/q/h;->Z:[B

    add-int/lit8 v8, v5, 0x1

    iput v8, p0, Le/b/a/a/o/b;->G:I

    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    if-lt v5, v0, :cond_3

    const/16 v7, 0x39

    if-le v5, v7, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v3, 0x1

    int-to-char v5, v5

    .line 18
    aput-char v5, v2, v3

    move v3, v7

    goto :goto_0

    :cond_3
    :goto_1
    const/16 p1, 0x2e

    if-eq v5, p1, :cond_6

    const/16 p1, 0x65

    if-eq v5, p1, :cond_6

    const/16 p1, 0x45

    if-ne v5, p1, :cond_4

    goto :goto_2

    .line 19
    :cond_4
    iget p1, p0, Le/b/a/a/o/b;->G:I

    sub-int/2addr p1, v4

    iput p1, p0, Le/b/a/a/o/b;->G:I

    .line 20
    iget-object p1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    .line 21
    iput v3, p1, Le/b/a/a/s/g;->i:I

    .line 22
    iget-object p1, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    invoke-virtual {p1}, Le/b/a/a/k;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 23
    invoke-virtual {p0, v5}, Le/b/a/a/q/h;->m(I)V

    .line 24
    :cond_5
    sget-object p1, Le/b/a/a/l;->VALUE_NUMBER_INT:Le/b/a/a/l;

    return-object p1

    :cond_6
    :goto_2
    const/4 p1, 0x0

    move-object v1, p0

    move v4, v5

    move v5, p1

    .line 25
    invoke-virtual/range {v1 .. v6}, Le/b/a/a/q/h;->a([CIIZI)Le/b/a/a/l;

    move-result-object p1

    return-object p1
.end method

.method public i()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    sget-object v1, Le/b/a/a/l;->VALUE_STRING:Le/b/a/a/l;

    if-ne v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Le/b/a/a/q/h;->V:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Le/b/a/a/q/h;->V:Z

    .line 4
    invoke-virtual {p0}, Le/b/a/a/q/h;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {v0}, Le/b/a/a/s/g;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 6
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

    .line 7
    invoke-virtual {v0}, Le/b/a/a/l;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {v0}, Le/b/a/a/s/g;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_4
    iget-object v0, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    .line 10
    iget-object v0, v0, Le/b/a/a/q/d;->f:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/a/q/h;->Y:Ljava/io/InputStream;

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
    iget-object v0, p0, Le/b/a/a/q/h;->Y:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Le/b/a/a/q/h;->Y:Ljava/io/InputStream;

    :cond_2
    return-void
.end method

.method public j(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x20

    if-ge p1, v1, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Le/b/a/a/o/c;->a(I)V

    throw v0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Le/b/a/a/q/h;->k(I)V

    throw v0
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
    invoke-virtual {p0}, Le/b/a/a/q/h;->s()Z

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
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v1

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
    invoke-virtual {p0, v0}, Le/b/a/a/q/h;->c(I)I

    move-result v0

    int-to-char v0, v0

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
    invoke-virtual {p0}, Le/b/a/a/q/h;->s()Z

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
    iget-object v4, p0, Le/b/a/a/q/h;->Z:[B

    iget v5, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Le/b/a/a/o/b;->G:I

    aget-byte v4, v4, v5

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

    return v0

    :cond_d
    int-to-char v0, v0

    return v0
.end method

.method public k(I)V
    .locals 1

    const-string v0, "Invalid UTF-8 start byte 0x"

    .line 12
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Le/b/a/a/i;->a(Ljava/lang/String;)Le/b/a/a/h;

    move-result-object p1

    throw p1
.end method

.method public l(I)V
    .locals 1

    const-string v0, "Invalid UTF-8 middle byte 0x"

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Le/b/a/a/i;->a(Ljava/lang/String;)Le/b/a/a/h;

    move-result-object p1

    throw p1
.end method

.method public final m(I)V
    .locals 2

    .line 1
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

    .line 2
    invoke-virtual {p0, p1, v0}, Le/b/a/a/o/c;->a(ILjava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 3
    :cond_1
    invoke-virtual {p0}, Le/b/a/a/q/h;->y()V

    return-void

    .line 4
    :cond_2
    iget p1, p0, Le/b/a/a/o/b;->J:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le/b/a/a/o/b;->J:I

    .line 5
    iput v0, p0, Le/b/a/a/o/b;->K:I

    :cond_3
    :goto_0
    return-void
.end method

.method public o()V
    .locals 7

    .line 1
    invoke-super {p0}, Le/b/a/a/o/b;->o()V

    .line 2
    iget-object v0, p0, Le/b/a/a/q/h;->T:Le/b/a/a/r/a;

    .line 3
    iget-object v1, v0, Le/b/a/a/r/a;->a:Le/b/a/a/r/a;

    if-eqz v1, :cond_2

    .line 4
    iget-boolean v2, v0, Le/b/a/a/r/a;->p:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 5
    new-instance v2, Le/b/a/a/r/a$a;

    invoke-direct {v2, v0}, Le/b/a/a/r/a$a;-><init>(Le/b/a/a/r/a;)V

    .line 6
    iget v4, v2, Le/b/a/a/r/a$a;->b:I

    .line 7
    iget-object v5, v1, Le/b/a/a/r/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/b/a/a/r/a$a;

    .line 8
    iget v6, v5, Le/b/a/a/r/a$a;->b:I

    if-ne v4, v6, :cond_0

    goto :goto_0

    :cond_0
    const/16 v6, 0x1770

    if-le v4, v6, :cond_1

    const/16 v2, 0x40

    .line 9
    invoke-static {v2}, Le/b/a/a/r/a$a;->a(I)Le/b/a/a/r/a$a;

    move-result-object v2

    .line 10
    :cond_1
    iget-object v1, v1, Le/b/a/a/r/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v5, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    :goto_0
    iput-boolean v3, v0, Le/b/a/a/r/a;->p:Z

    .line 12
    :cond_2
    iget-boolean v0, p0, Le/b/a/a/q/h;->a0:Z

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    if-eqz v0, :cond_3

    .line 14
    sget-object v1, Le/b/a/a/o/c;->z:[B

    iput-object v1, p0, Le/b/a/a/q/h;->Z:[B

    .line 15
    iget-object v1, p0, Le/b/a/a/o/b;->E:Le/b/a/a/p/b;

    invoke-virtual {v1, v0}, Le/b/a/a/p/b;->a([B)V

    :cond_3
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/b/a/a/q/h;->H()V

    .line 2
    iget-object v0, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    invoke-virtual {v0}, Le/b/a/a/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    .line 4
    iget-object v0, v0, Le/b/a/a/q/d;->c:Le/b/a/a/q/d;

    .line 5
    iput-object v0, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    return-void

    :cond_0
    const/16 v0, 0x5d

    const/16 v1, 0x7d

    .line 6
    invoke-virtual {p0, v0, v1}, Le/b/a/a/o/b;->a(IC)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final q()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/b/a/a/q/h;->H()V

    .line 2
    iget-object v0, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    invoke-virtual {v0}, Le/b/a/a/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    .line 4
    iget-object v0, v0, Le/b/a/a/q/d;->c:Le/b/a/a/q/d;

    .line 5
    iput-object v0, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    return-void

    :cond_0
    const/16 v0, 0x7d

    const/16 v1, 0x5d

    .line 6
    invoke-virtual {p0, v0, v1}, Le/b/a/a/o/b;->a(IC)V

    const/4 v0, 0x0

    throw v0
.end method

.method public r()Ljava/lang/String;
    .locals 12

    .line 1
    iget v0, p0, Le/b/a/a/o/b;->G:I

    .line 2
    iget v1, p0, Le/b/a/a/o/b;->H:I

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Le/b/a/a/q/h;->t()V

    .line 4
    iget v0, p0, Le/b/a/a/o/b;->G:I

    .line 5
    :cond_0
    iget-object v1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {v1}, Le/b/a/a/s/g;->c()[C

    move-result-object v1

    .line 6
    sget-object v2, Le/b/a/a/q/h;->b0:[I

    .line 7
    iget v3, p0, Le/b/a/a/o/b;->H:I

    array-length v4, v1

    add-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 8
    iget-object v4, p0, Le/b/a/a/q/h;->Z:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x22

    const/4 v8, 0x1

    if-ge v0, v3, :cond_4

    .line 9
    aget-byte v9, v4, v0

    and-int/lit16 v9, v9, 0xff

    .line 10
    aget v10, v2, v9

    if-eqz v10, :cond_3

    if-ne v9, v7, :cond_4

    add-int/2addr v0, v8

    .line 11
    iput v0, p0, Le/b/a/a/o/b;->G:I

    .line 12
    iget-object v0, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    .line 13
    iput v6, v0, Le/b/a/a/s/g;->i:I

    .line 14
    iget v1, v0, Le/b/a/a/s/g;->g:I

    if-lez v1, :cond_1

    .line 15
    invoke-virtual {v0}, Le/b/a/a/s/g;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    if-nez v6, :cond_2

    const-string v1, ""

    goto :goto_1

    .line 16
    :cond_2
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Le/b/a/a/s/g;->h:[C

    invoke-direct {v1, v2, v5, v6}, Ljava/lang/String;-><init>([CII)V

    .line 17
    :goto_1
    iput-object v1, v0, Le/b/a/a/s/g;->j:Ljava/lang/String;

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v7, v6, 0x1

    int-to-char v8, v9

    .line 18
    aput-char v8, v1, v6

    move v6, v7

    goto :goto_0

    .line 19
    :cond_4
    iput v0, p0, Le/b/a/a/o/b;->G:I

    .line 20
    sget-object v0, Le/b/a/a/q/h;->b0:[I

    .line 21
    iget-object v2, p0, Le/b/a/a/q/h;->Z:[B

    .line 22
    :goto_3
    iget v3, p0, Le/b/a/a/o/b;->G:I

    .line 23
    iget v4, p0, Le/b/a/a/o/b;->H:I

    if-lt v3, v4, :cond_5

    .line 24
    invoke-virtual {p0}, Le/b/a/a/q/h;->t()V

    .line 25
    iget v3, p0, Le/b/a/a/o/b;->G:I

    .line 26
    :cond_5
    array-length v4, v1

    if-lt v6, v4, :cond_6

    .line 27
    iget-object v1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {v1}, Le/b/a/a/s/g;->f()[C

    move-result-object v1

    const/4 v6, 0x0

    .line 28
    :cond_6
    iget v4, p0, Le/b/a/a/o/b;->H:I

    array-length v9, v1

    sub-int/2addr v9, v6

    add-int/2addr v9, v3

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_4
    if-ge v3, v4, :cond_11

    add-int/lit8 v9, v3, 0x1

    .line 29
    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    .line 30
    aget v10, v0, v3

    if-eqz v10, :cond_10

    .line 31
    iput v9, p0, Le/b/a/a/o/b;->G:I

    if-ne v3, v7, :cond_7

    .line 32
    iget-object v0, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    .line 33
    iput v6, v0, Le/b/a/a/s/g;->i:I

    .line 34
    invoke-virtual {v0}, Le/b/a/a/s/g;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 35
    :cond_7
    aget v4, v0, v3

    if-eq v4, v8, :cond_e

    const/4 v10, 0x2

    if-eq v4, v10, :cond_d

    const/4 v11, 0x3

    if-eq v4, v11, :cond_b

    const/4 v9, 0x4

    if-eq v4, v9, :cond_9

    const/16 v4, 0x20

    if-ge v3, v4, :cond_8

    const-string v4, "string value"

    .line 36
    invoke-virtual {p0, v3, v4}, Le/b/a/a/o/c;->b(ILjava/lang/String;)V

    goto :goto_6

    .line 37
    :cond_8
    invoke-virtual {p0, v3}, Le/b/a/a/q/h;->j(I)V

    const/4 v0, 0x0

    throw v0

    .line 38
    :cond_9
    invoke-virtual {p0, v3}, Le/b/a/a/q/h;->g(I)I

    move-result v3

    add-int/lit8 v4, v6, 0x1

    const v9, 0xd800

    shr-int/lit8 v10, v3, 0xa

    or-int/2addr v9, v10

    int-to-char v9, v9

    .line 39
    aput-char v9, v1, v6

    .line 40
    array-length v6, v1

    if-lt v4, v6, :cond_a

    .line 41
    iget-object v1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {v1}, Le/b/a/a/s/g;->f()[C

    move-result-object v1

    const/4 v6, 0x0

    goto :goto_5

    :cond_a
    move v6, v4

    :goto_5
    const v4, 0xdc00

    and-int/lit16 v3, v3, 0x3ff

    or-int/2addr v3, v4

    goto :goto_6

    .line 42
    :cond_b
    iget v4, p0, Le/b/a/a/o/b;->H:I

    sub-int/2addr v4, v9

    if-lt v4, v10, :cond_c

    .line 43
    invoke-virtual {p0, v3}, Le/b/a/a/q/h;->f(I)I

    move-result v3

    goto :goto_6

    .line 44
    :cond_c
    invoke-virtual {p0, v3}, Le/b/a/a/q/h;->e(I)I

    move-result v3

    goto :goto_6

    .line 45
    :cond_d
    invoke-virtual {p0, v3}, Le/b/a/a/q/h;->d(I)I

    move-result v3

    goto :goto_6

    .line 46
    :cond_e
    invoke-virtual {p0}, Le/b/a/a/q/h;->k()C

    move-result v3

    .line 47
    :goto_6
    array-length v4, v1

    if-lt v6, v4, :cond_f

    .line 48
    iget-object v1, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {v1}, Le/b/a/a/s/g;->f()[C

    move-result-object v1

    const/4 v6, 0x0

    :cond_f
    add-int/lit8 v4, v6, 0x1

    int-to-char v3, v3

    .line 49
    aput-char v3, v1, v6

    move v6, v4

    goto/16 :goto_3

    :cond_10
    add-int/lit8 v10, v6, 0x1

    int-to-char v3, v3

    .line 50
    aput-char v3, v1, v6

    move v3, v9

    move v6, v10

    goto/16 :goto_4

    .line 51
    :cond_11
    iput v3, p0, Le/b/a/a/o/b;->G:I

    goto/16 :goto_3
.end method

.method public final s()Z
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
    iget v1, p0, Le/b/a/a/q/h;->X:I

    sub-int/2addr v1, v0

    iput v1, p0, Le/b/a/a/q/h;->X:I

    .line 5
    iget-object v0, p0, Le/b/a/a/q/h;->Y:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 6
    iget-object v2, p0, Le/b/a/a/q/h;->Z:[B

    array-length v3, v2

    if-nez v3, :cond_0

    return v1

    .line 7
    :cond_0
    invoke-virtual {v0, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_1

    .line 8
    iput v1, p0, Le/b/a/a/o/b;->G:I

    .line 9
    iput v0, p0, Le/b/a/a/o/b;->H:I

    const/4 v0, 0x1

    return v0

    .line 10
    :cond_1
    invoke-virtual {p0}, Le/b/a/a/q/h;->j()V

    if-eqz v0, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "InputStream.read() returned 0 characters when trying to read "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/b/a/a/q/h;->Z:[B

    array-length v2, v2

    const-string v3, " bytes"

    invoke-static {v1, v2, v3}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return v1
.end method

.method public t()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/b/a/a/q/h;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Le/b/a/a/o/c;->h()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final u()V
    .locals 4

    .line 1
    iget v0, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v1, v0, 0x4

    .line 2
    iget v2, p0, Le/b/a/a/o/b;->H:I

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Le/b/a/a/q/h;->Z:[B

    add-int/lit8 v2, v0, 0x1

    .line 4
    aget-byte v0, v1, v0

    const/16 v3, 0x61

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    const/16 v3, 0x73

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_1

    .line 5
    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    .line 6
    :cond_0
    iput v0, p0, Le/b/a/a/o/b;->G:I

    return-void

    :cond_1
    const/4 v0, 0x1

    const-string v1, "false"

    .line 7
    invoke-virtual {p0, v1, v0}, Le/b/a/a/q/h;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public final v()V
    .locals 4

    .line 1
    iget v0, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v1, v0, 0x3

    .line 2
    iget v2, p0, Le/b/a/a/o/b;->H:I

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Le/b/a/a/q/h;->Z:[B

    add-int/lit8 v2, v0, 0x1

    .line 4
    aget-byte v0, v1, v0

    const/16 v3, 0x75

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    if-ne v0, v3, :cond_1

    .line 5
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_1

    .line 6
    :cond_0
    iput v2, p0, Le/b/a/a/o/b;->G:I

    return-void

    :cond_1
    const/4 v0, 0x1

    const-string v1, "null"

    .line 7
    invoke-virtual {p0, v1, v0}, Le/b/a/a/q/h;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public final w()V
    .locals 4

    .line 1
    iget v0, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v1, v0, 0x3

    .line 2
    iget v2, p0, Le/b/a/a/o/b;->H:I

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Le/b/a/a/q/h;->Z:[B

    add-int/lit8 v2, v0, 0x1

    .line 4
    aget-byte v0, v1, v0

    const/16 v3, 0x72

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x75

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    const/16 v3, 0x65

    if-ne v0, v3, :cond_1

    .line 5
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_1

    .line 6
    :cond_0
    iput v2, p0, Le/b/a/a/o/b;->G:I

    return-void

    :cond_1
    const/4 v0, 0x1

    const-string v1, "true"

    .line 7
    invoke-virtual {p0, v1, v0}, Le/b/a/a/q/h;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public x()Le/b/a/a/l;
    .locals 10

    .line 1
    iget-object v0, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    invoke-virtual {v0}, Le/b/a/a/s/g;->c()[C

    move-result-object v2

    const/16 v0, 0x2d

    const/4 v1, 0x0

    .line 2
    aput-char v0, v2, v1

    .line 3
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iget v1, p0, Le/b/a/a/o/b;->H:I

    if-lt v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Le/b/a/a/q/h;->t()V

    .line 5
    :cond_0
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    iget v1, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x39

    const/16 v3, 0x30

    const/4 v4, 0x1

    if-gt v0, v3, :cond_2

    if-eq v0, v3, :cond_1

    .line 6
    invoke-virtual {p0, v0, v4}, Le/b/a/a/q/h;->a(IZ)Le/b/a/a/l;

    move-result-object v0

    return-object v0

    .line 7
    :cond_1
    invoke-virtual {p0}, Le/b/a/a/q/h;->I()I

    move-result v0

    goto :goto_0

    :cond_2
    if-le v0, v1, :cond_3

    .line 8
    invoke-virtual {p0, v0, v4}, Le/b/a/a/q/h;->a(IZ)Le/b/a/a/l;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    const/4 v5, 0x2

    int-to-char v0, v0

    .line 9
    aput-char v0, v2, v4

    .line 10
    iget v0, p0, Le/b/a/a/o/b;->H:I

    iget v6, p0, Le/b/a/a/o/b;->G:I

    array-length v7, v2

    add-int/2addr v6, v7

    sub-int/2addr v6, v5

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v6, 0x1

    .line 11
    :goto_1
    iget v7, p0, Le/b/a/a/o/b;->G:I

    if-lt v7, v0, :cond_4

    .line 12
    invoke-virtual {p0, v2, v5, v4, v6}, Le/b/a/a/q/h;->a([CIZI)Le/b/a/a/l;

    move-result-object v0

    return-object v0

    .line 13
    :cond_4
    iget-object v8, p0, Le/b/a/a/q/h;->Z:[B

    add-int/lit8 v9, v7, 0x1

    iput v9, p0, Le/b/a/a/o/b;->G:I

    aget-byte v7, v8, v7

    and-int/lit16 v7, v7, 0xff

    if-lt v7, v3, :cond_6

    if-le v7, v1, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v8, v5, 0x1

    int-to-char v7, v7

    .line 14
    aput-char v7, v2, v5

    move v5, v8

    goto :goto_1

    :cond_6
    :goto_2
    const/16 v0, 0x2e

    if-eq v7, v0, :cond_9

    const/16 v0, 0x65

    if-eq v7, v0, :cond_9

    const/16 v0, 0x45

    if-ne v7, v0, :cond_7

    goto :goto_3

    .line 15
    :cond_7
    iget v0, p0, Le/b/a/a/o/b;->G:I

    sub-int/2addr v0, v4

    iput v0, p0, Le/b/a/a/o/b;->G:I

    .line 16
    iget-object v0, p0, Le/b/a/a/o/b;->P:Le/b/a/a/s/g;

    .line 17
    iput v5, v0, Le/b/a/a/s/g;->i:I

    .line 18
    iget-object v0, p0, Le/b/a/a/o/b;->N:Le/b/a/a/q/d;

    invoke-virtual {v0}, Le/b/a/a/k;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    invoke-virtual {p0, v7}, Le/b/a/a/q/h;->m(I)V

    .line 20
    :cond_8
    sget-object v0, Le/b/a/a/l;->VALUE_NUMBER_INT:Le/b/a/a/l;

    return-object v0

    :cond_9
    :goto_3
    const/4 v0, 0x1

    move-object v1, p0

    move v3, v5

    move v4, v7

    move v5, v0

    .line 21
    invoke-virtual/range {v1 .. v6}, Le/b/a/a/q/h;->a([CIIZI)Le/b/a/a/l;

    move-result-object v0

    return-object v0
.end method

.method public final y()V
    .locals 3

    .line 1
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iget v1, p0, Le/b/a/a/o/b;->H:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Le/b/a/a/q/h;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    iget v1, p0, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v1

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

.method public final z()V
    .locals 9

    .line 1
    sget-object v0, Le/b/a/a/i$a;->ALLOW_COMMENTS:Le/b/a/a/i$a;

    invoke-virtual {p0, v0}, Le/b/a/a/i;->a(Le/b/a/a/i$a;)Z

    move-result v0

    const/16 v1, 0x2f

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    .line 2
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iget v3, p0, Le/b/a/a/o/b;->H:I

    const-string v4, " in a comment"

    if-lt v0, v3, :cond_1

    invoke-virtual {p0}, Le/b/a/a/q/h;->s()Z

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
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    iget v3, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v1, :cond_2

    .line 5
    invoke-virtual {p0}, Le/b/a/a/q/h;->A()V

    goto :goto_3

    :cond_2
    const/16 v3, 0x2a

    if-ne v0, v3, :cond_d

    .line 6
    sget-object v5, Le/b/a/a/p/a;->g:[I

    .line 7
    :cond_3
    :goto_1
    iget v0, p0, Le/b/a/a/o/b;->G:I

    iget v6, p0, Le/b/a/a/o/b;->H:I

    if-lt v0, v6, :cond_4

    invoke-virtual {p0}, Le/b/a/a/q/h;->s()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    :cond_4
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    iget v6, p0, Le/b/a/a/o/b;->G:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    .line 9
    aget v6, v5, v0

    if-eqz v6, :cond_3

    const/4 v8, 0x2

    if-eq v6, v8, :cond_c

    const/4 v8, 0x3

    if-eq v6, v8, :cond_b

    const/4 v8, 0x4

    if-eq v6, v8, :cond_a

    const/16 v8, 0xa

    if-eq v6, v8, :cond_9

    const/16 v8, 0xd

    if-eq v6, v8, :cond_8

    if-ne v6, v3, :cond_7

    .line 10
    iget v0, p0, Le/b/a/a/o/b;->H:I

    if-lt v7, v0, :cond_6

    invoke-virtual {p0}, Le/b/a/a/q/h;->s()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 11
    :cond_5
    invoke-virtual {p0, v4, v2}, Le/b/a/a/o/c;->a(Ljava/lang/String;Le/b/a/a/l;)V

    throw v2

    .line 12
    :cond_6
    :goto_2
    iget-object v0, p0, Le/b/a/a/q/h;->Z:[B

    iget v6, p0, Le/b/a/a/o/b;->G:I

    aget-byte v0, v0, v6

    if-ne v0, v1, :cond_3

    add-int/lit8 v6, v6, 0x1

    .line 13
    iput v6, p0, Le/b/a/a/o/b;->G:I

    :goto_3
    return-void

    .line 14
    :cond_7
    invoke-virtual {p0, v0}, Le/b/a/a/q/h;->j(I)V

    throw v2

    .line 15
    :cond_8
    invoke-virtual {p0}, Le/b/a/a/q/h;->y()V

    goto :goto_1

    .line 16
    :cond_9
    iget v0, p0, Le/b/a/a/o/b;->J:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/b/a/a/o/b;->J:I

    .line 17
    iput v7, p0, Le/b/a/a/o/b;->K:I

    goto :goto_1

    .line 18
    :cond_a
    invoke-virtual {p0}, Le/b/a/a/q/h;->D()V

    goto :goto_1

    .line 19
    :cond_b
    invoke-virtual {p0}, Le/b/a/a/q/h;->C()V

    goto :goto_1

    .line 20
    :cond_c
    invoke-virtual {p0}, Le/b/a/a/q/h;->B()V

    goto :goto_1

    :cond_d
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    .line 21
    invoke-virtual {p0, v0, v1}, Le/b/a/a/o/c;->a(ILjava/lang/String;)V

    throw v2

    :cond_e
    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    .line 22
    invoke-virtual {p0, v1, v0}, Le/b/a/a/o/c;->a(ILjava/lang/String;)V

    throw v2
.end method
