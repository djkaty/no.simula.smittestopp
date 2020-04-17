.class public Le/b/a/a/q/g;
.super Le/b/a/a/q/c;
.source "SourceFile"


# static fields
.field public static final P:[B

.field public static final Q:[B

.field public static final R:[B

.field public static final S:[B


# instance fields
.field public final G:Ljava/io/OutputStream;

.field public H:B

.field public I:[B

.field public J:I

.field public final K:I

.field public final L:I

.field public M:[C

.field public final N:I

.field public O:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Le/b/a/a/p/a;->b:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2
    sput-object v0, Le/b/a/a/q/g;->P:[B

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 3
    fill-array-data v1, :array_0

    sput-object v1, Le/b/a/a/q/g;->Q:[B

    new-array v0, v0, [B

    .line 4
    fill-array-data v0, :array_1

    sput-object v0, Le/b/a/a/q/g;->R:[B

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 5
    fill-array-data v0, :array_2

    sput-object v0, Le/b/a/a/q/g;->S:[B

    return-void

    :array_0
    .array-data 1
        0x6et
        0x75t
        0x6ct
        0x6ct
    .end array-data

    :array_1
    .array-data 1
        0x74t
        0x72t
        0x75t
        0x65t
    .end array-data

    :array_2
    .array-data 1
        0x66t
        0x61t
        0x6ct
        0x73t
        0x65t
    .end array-data
.end method

.method public constructor <init>(Le/b/a/a/p/b;ILjava/io/OutputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Le/b/a/a/q/c;-><init>(Le/b/a/a/p/b;I)V

    const/16 p2, 0x22

    .line 2
    iput-byte p2, p0, Le/b/a/a/q/g;->H:B

    .line 3
    iput-object p3, p0, Le/b/a/a/q/g;->G:Ljava/io/OutputStream;

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Le/b/a/a/q/g;->O:Z

    .line 5
    iget-object p3, p1, Le/b/a/a/p/b;->f:[B

    invoke-virtual {p1, p3}, Le/b/a/a/p/b;->a(Ljava/lang/Object;)V

    .line 6
    iget-object p3, p1, Le/b/a/a/p/b;->d:Le/b/a/a/s/a;

    invoke-virtual {p3, p2}, Le/b/a/a/s/a;->a(I)[B

    move-result-object p3

    iput-object p3, p1, Le/b/a/a/p/b;->f:[B

    .line 7
    iput-object p3, p0, Le/b/a/a/q/g;->I:[B

    .line 8
    array-length p3, p3

    iput p3, p0, Le/b/a/a/q/g;->K:I

    shr-int/lit8 p3, p3, 0x3

    .line 9
    iput p3, p0, Le/b/a/a/q/g;->L:I

    .line 10
    iget-object p3, p1, Le/b/a/a/p/b;->h:[C

    invoke-virtual {p1, p3}, Le/b/a/a/p/b;->a(Ljava/lang/Object;)V

    .line 11
    iget-object p3, p1, Le/b/a/a/p/b;->d:Le/b/a/a/s/a;

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p3, p2, v0}, Le/b/a/a/s/a;->a(II)[C

    move-result-object p2

    .line 13
    iput-object p2, p1, Le/b/a/a/p/b;->h:[C

    .line 14
    iput-object p2, p0, Le/b/a/a/q/g;->M:[C

    .line 15
    array-length p1, p2

    iput p1, p0, Le/b/a/a/q/g;->N:I

    .line 16
    sget-object p1, Le/b/a/a/f$a;->ESCAPE_NON_ASCII:Le/b/a/a/f$a;

    invoke-virtual {p0, p1}, Le/b/a/a/o/a;->a(Le/b/a/a/f$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x7f

    .line 17
    iput p1, p0, Le/b/a/a/q/c;->C:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 4

    .line 199
    iget-object v0, p0, Le/b/a/a/q/g;->I:[B

    const v1, 0xd800

    if-lt p1, v1, :cond_0

    const v1, 0xdfff

    if-gt p1, v1, :cond_0

    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x5c

    .line 200
    aput-byte v2, v0, p2

    add-int/lit8 p2, v1, 0x1

    const/16 v2, 0x75

    .line 201
    aput-byte v2, v0, v1

    add-int/lit8 v1, p2, 0x1

    .line 202
    sget-object v2, Le/b/a/a/q/g;->P:[B

    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0xf

    aget-byte v3, v2, v3

    aput-byte v3, v0, p2

    add-int/lit8 p2, v1, 0x1

    shr-int/lit8 v3, p1, 0x8

    and-int/lit8 v3, v3, 0xf

    .line 203
    aget-byte v3, v2, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v3, p1, 0x4

    and-int/lit8 v3, v3, 0xf

    .line 204
    aget-byte v3, v2, v3

    aput-byte v3, v0, p2

    add-int/lit8 p2, v1, 0x1

    and-int/lit8 p1, p1, 0xf

    .line 205
    aget-byte p1, v2, p1

    aput-byte p1, v0, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v2, p1, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    .line 206
    aput-byte v2, v0, p2

    add-int/lit8 p2, v1, 0x1

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 207
    aput-byte v2, v0, v1

    add-int/lit8 v1, p2, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    .line 208
    aput-byte p1, v0, p2

    move p2, v1

    :goto_0
    return p2
.end method

.method public final a(I[CII)I
    .locals 3

    const v0, 0xd800

    if-lt p1, v0, :cond_3

    const v1, 0xdfff

    if-gt p1, v1, :cond_3

    const/4 v2, 0x1

    if-ge p3, p4, :cond_2

    if-eqz p2, :cond_2

    .line 183
    aget-char p2, p2, p3

    const p4, 0xdc00

    if-lt p2, p4, :cond_1

    if-gt p2, v1, :cond_1

    const/high16 v1, 0x10000

    sub-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v1

    sub-int/2addr p2, p4

    add-int/2addr p2, p1

    .line 184
    iget p1, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 p1, p1, 0x4

    iget p4, p0, Le/b/a/a/q/g;->K:I

    if-le p1, p4, :cond_0

    .line 185
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    .line 186
    :cond_0
    iget-object p1, p0, Le/b/a/a/q/g;->I:[B

    .line 187
    iget p4, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v0, p4, 0x1

    iput v0, p0, Le/b/a/a/q/g;->J:I

    shr-int/lit8 v1, p2, 0x12

    or-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    aput-byte v1, p1, p4

    add-int/lit8 p4, v0, 0x1

    .line 188
    iput p4, p0, Le/b/a/a/q/g;->J:I

    shr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p4, 0x1

    .line 189
    iput v0, p0, Le/b/a/a/q/g;->J:I

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, p4

    add-int/lit8 p4, v0, 0x1

    .line 190
    iput p4, p0, Le/b/a/a/q/g;->J:I

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    add-int/2addr p3, v2

    return p3

    :cond_1
    const-string p3, "Incomplete surrogate pair: first char 0x"

    .line 191
    invoke-static {p3}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", second 0x"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 192
    new-instance p2, Le/b/a/a/e;

    invoke-direct {p2, p1, p0}, Le/b/a/a/e;-><init>(Ljava/lang/String;Le/b/a/a/f;)V

    throw p2

    :cond_2
    new-array p2, v2, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, p3

    const-string p1, "Split surrogate on writeRaw() input (last character): first character 0x%4x"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 194
    new-instance p2, Le/b/a/a/e;

    invoke-direct {p2, p1, p0}, Le/b/a/a/e;-><init>(Ljava/lang/String;Le/b/a/a/f;)V

    throw p2

    .line 195
    :cond_3
    iget-object p2, p0, Le/b/a/a/q/g;->I:[B

    .line 196
    iget p4, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v0, p4, 0x1

    iput v0, p0, Le/b/a/a/q/g;->J:I

    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    int-to-byte v1, v1

    aput-byte v1, p2, p4

    add-int/lit8 p4, v0, 0x1

    .line 197
    iput p4, p0, Le/b/a/a/q/g;->J:I

    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p4, 0x1

    .line 198
    iput v0, p0, Le/b/a/a/q/g;->J:I

    and-int/lit8 p1, p1, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, p2, p4

    return p3
.end method

.method public final a()V
    .locals 3

    .line 25
    iget-object v0, p0, Le/b/a/a/o/a;->z:Le/b/a/a/q/e;

    invoke-virtual {v0}, Le/b/a/a/k;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    iget v0, p0, Le/b/a/a/q/g;->J:I

    iget v1, p0, Le/b/a/a/q/g;->K:I

    if-lt v0, v1, :cond_0

    .line 27
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    .line 28
    :cond_0
    iget-object v0, p0, Le/b/a/a/q/g;->I:[B

    iget v1, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/q/g;->J:I

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    .line 29
    iget-object v0, p0, Le/b/a/a/o/a;->z:Le/b/a/a/q/e;

    .line 30
    iget-object v0, v0, Le/b/a/a/q/e;->c:Le/b/a/a/q/e;

    .line 31
    iput-object v0, p0, Le/b/a/a/o/a;->z:Le/b/a/a/q/e;

    return-void

    :cond_1
    const-string v0, "Current context not Object but "

    .line 32
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/b/a/a/o/a;->z:Le/b/a/a/q/e;

    invoke-virtual {v1}, Le/b/a/a/k;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v1, Le/b/a/a/e;

    invoke-direct {v1, v0, p0}, Le/b/a/a/e;-><init>(Ljava/lang/String;Le/b/a/a/f;)V

    throw v1
.end method

.method public a(D)V
    .locals 12

    .line 99
    iget-boolean v0, p0, Le/b/a/a/o/a;->y:Z

    if-nez v0, :cond_b

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Le/b/a/a/f$a;->QUOTE_NON_NUMERIC_NUMBERS:Le/b/a/a/f$a;

    iget v1, p0, Le/b/a/a/o/a;->x:I

    invoke-virtual {v0, v1}, Le/b/a/a/f$a;->enabledIn(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v0, "write a number"

    .line 100
    invoke-virtual {p0, v0}, Le/b/a/a/q/g;->d(Ljava/lang/String;)V

    .line 101
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    .line 103
    iget-object v0, p0, Le/b/a/a/q/g;->M:[C

    .line 104
    array-length v1, v0

    const/4 v2, 0x0

    if-gt p2, v1, :cond_2

    .line 105
    invoke-virtual {p1, v2, p2, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 106
    invoke-virtual {p0, v0, v2, p2}, Le/b/a/a/q/g;->a([CII)V

    goto/16 :goto_2

    .line 107
    :cond_2
    array-length v1, v0

    if-gt p2, v1, :cond_3

    add-int/lit8 v1, p2, 0x0

    .line 108
    invoke-virtual {p1, v2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 109
    invoke-virtual {p0, v0, v2, p2}, Le/b/a/a/q/g;->a([CII)V

    goto/16 :goto_2

    .line 110
    :cond_3
    iget v3, p0, Le/b/a/a/q/g;->K:I

    shr-int/lit8 v4, v3, 0x2

    shr-int/lit8 v3, v3, 0x4

    add-int/2addr v4, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit8 v3, v1, 0x3

    const/4 v4, 0x0

    :goto_0
    if-lez p2, :cond_a

    .line 111
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v6, v4, v5

    .line 112
    invoke-virtual {p1, v4, v6, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 113
    iget v6, p0, Le/b/a/a/q/g;->J:I

    add-int/2addr v6, v3

    iget v7, p0, Le/b/a/a/q/g;->K:I

    if-le v6, v7, :cond_4

    .line 114
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    :cond_4
    const/4 v6, 0x1

    if-le v5, v6, :cond_5

    add-int/lit8 v6, v5, -0x1

    .line 115
    aget-char v7, v0, v6

    const v8, 0xd800

    if-lt v7, v8, :cond_5

    const v8, 0xdbff

    if-gt v7, v8, :cond_5

    move v5, v6

    :cond_5
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_9

    .line 116
    :cond_6
    aget-char v7, v0, v6

    const/16 v8, 0x7f

    if-le v7, v8, :cond_8

    add-int/lit8 v7, v6, 0x1

    .line 117
    aget-char v6, v0, v6

    const/16 v8, 0x800

    if-ge v6, v8, :cond_7

    .line 118
    iget-object v8, p0, Le/b/a/a/q/g;->I:[B

    iget v9, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Le/b/a/a/q/g;->J:I

    shr-int/lit8 v11, v6, 0x6

    or-int/lit16 v11, v11, 0xc0

    int-to-byte v11, v11

    aput-byte v11, v8, v9

    add-int/lit8 v9, v10, 0x1

    .line 119
    iput v9, p0, Le/b/a/a/q/g;->J:I

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v8, v10

    move v6, v7

    goto :goto_1

    .line 120
    :cond_7
    invoke-virtual {p0, v6, v0, v7, v5}, Le/b/a/a/q/g;->a(I[CII)I

    move-result v6

    goto :goto_1

    .line 121
    :cond_8
    iget-object v8, p0, Le/b/a/a/q/g;->I:[B

    iget v9, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Le/b/a/a/q/g;->J:I

    int-to-byte v7, v7

    aput-byte v7, v8, v9

    add-int/lit8 v6, v6, 0x1

    if-lt v6, v5, :cond_6

    :cond_9
    add-int/2addr v4, v5

    sub-int/2addr p2, v5

    goto :goto_0

    :cond_a
    :goto_2
    return-void

    .line 122
    :cond_b
    :goto_3
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/b/a/a/q/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 4

    const-string v0, "write a number"

    .line 89
    invoke-virtual {p0, v0}, Le/b/a/a/q/g;->d(Ljava/lang/String;)V

    .line 90
    iget v0, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Le/b/a/a/q/g;->K:I

    if-lt v0, v1, :cond_0

    .line 91
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    .line 92
    :cond_0
    iget-boolean v0, p0, Le/b/a/a/o/a;->y:Z

    if-eqz v0, :cond_2

    .line 93
    iget v0, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Le/b/a/a/q/g;->K:I

    if-lt v0, v1, :cond_1

    .line 94
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    .line 95
    :cond_1
    iget-object v0, p0, Le/b/a/a/q/g;->I:[B

    iget v1, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/q/g;->J:I

    iget-byte v3, p0, Le/b/a/a/q/g;->H:B

    aput-byte v3, v0, v1

    .line 96
    invoke-static {p1, v0, v2}, Le/b/a/a/p/f;->c(I[BI)I

    move-result p1

    iput p1, p0, Le/b/a/a/q/g;->J:I

    .line 97
    iget-object v0, p0, Le/b/a/a/q/g;->I:[B

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Le/b/a/a/q/g;->J:I

    iget-byte v1, p0, Le/b/a/a/q/g;->H:B

    aput-byte v1, v0, p1

    return-void

    .line 98
    :cond_2
    iget-object v0, p0, Le/b/a/a/q/g;->I:[B

    iget v1, p0, Le/b/a/a/q/g;->J:I

    invoke-static {p1, v0, v1}, Le/b/a/a/p/f;->c(I[BI)I

    move-result p1

    iput p1, p0, Le/b/a/a/q/g;->J:I

    return-void
.end method

.method public a(Le/b/a/a/a;[BII)V
    .locals 10

    const-string v0, "write a binary value"

    .line 53
    invoke-virtual {p0, v0}, Le/b/a/a/q/g;->d(Ljava/lang/String;)V

    .line 54
    iget v0, p0, Le/b/a/a/q/g;->J:I

    iget v1, p0, Le/b/a/a/q/g;->K:I

    if-lt v0, v1, :cond_0

    .line 55
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    .line 56
    :cond_0
    iget-object v0, p0, Le/b/a/a/q/g;->I:[B

    iget v1, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/q/g;->J:I

    iget-byte v2, p0, Le/b/a/a/q/g;->H:B

    aput-byte v2, v0, v1

    add-int/2addr p4, p3

    add-int/lit8 v0, p4, -0x3

    .line 57
    iget v1, p0, Le/b/a/a/q/g;->K:I

    add-int/lit8 v1, v1, -0x6

    .line 58
    iget v2, p1, Le/b/a/a/a;->D:I

    const/4 v3, 0x2

    shr-int/2addr v2, v3

    :goto_0
    if-gt p3, v0, :cond_3

    .line 59
    iget v4, p0, Le/b/a/a/q/g;->J:I

    if-le v4, v1, :cond_1

    .line 60
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    :cond_1
    add-int/lit8 v4, p3, 0x1

    .line 61
    aget-byte p3, p2, p3

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v5, v4, 0x1

    .line 62
    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr p3, v4

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v4, v5, 0x1

    .line 63
    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr p3, v5

    .line 64
    iget-object v5, p0, Le/b/a/a/q/g;->I:[B

    iget v6, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v7, v6, 0x1

    .line 65
    iget-object v8, p1, Le/b/a/a/a;->z:[B

    shr-int/lit8 v9, p3, 0x12

    and-int/lit8 v9, v9, 0x3f

    aget-byte v9, v8, v9

    aput-byte v9, v5, v6

    add-int/lit8 v6, v7, 0x1

    shr-int/lit8 v9, p3, 0xc

    and-int/lit8 v9, v9, 0x3f

    .line 66
    aget-byte v9, v8, v9

    aput-byte v9, v5, v7

    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v9, p3, 0x6

    and-int/lit8 v9, v9, 0x3f

    .line 67
    aget-byte v9, v8, v9

    aput-byte v9, v5, v6

    add-int/lit8 v6, v7, 0x1

    and-int/lit8 p3, p3, 0x3f

    .line 68
    aget-byte p3, v8, p3

    aput-byte p3, v5, v7

    .line 69
    iput v6, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_2

    add-int/lit8 p3, v6, 0x1

    .line 70
    iput p3, p0, Le/b/a/a/q/g;->J:I

    const/16 v2, 0x5c

    aput-byte v2, v5, v6

    add-int/lit8 v2, p3, 0x1

    .line 71
    iput v2, p0, Le/b/a/a/q/g;->J:I

    const/16 v2, 0x6e

    aput-byte v2, v5, p3

    .line 72
    iget p3, p1, Le/b/a/a/a;->D:I

    shr-int/2addr p3, v3

    move v2, p3

    :cond_2
    move p3, v4

    goto :goto_0

    :cond_3
    sub-int/2addr p4, p3

    if-lez p4, :cond_9

    .line 73
    iget v0, p0, Le/b/a/a/q/g;->J:I

    if-le v0, v1, :cond_4

    .line 74
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    :cond_4
    add-int/lit8 v0, p3, 0x1

    .line 75
    aget-byte p3, p2, p3

    shl-int/lit8 p3, p3, 0x10

    if-ne p4, v3, :cond_5

    .line 76
    aget-byte p2, p2, v0

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p3, p2

    .line 77
    :cond_5
    iget-object p2, p0, Le/b/a/a/q/g;->I:[B

    iget v0, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v1, v0, 0x1

    .line 78
    iget-object v2, p1, Le/b/a/a/a;->z:[B

    shr-int/lit8 v4, p3, 0x12

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v2, v4

    aput-byte v4, p2, v0

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v4, p3, 0xc

    and-int/lit8 v4, v4, 0x3f

    .line 79
    aget-byte v4, v2, v4

    aput-byte v4, p2, v1

    .line 80
    iget-boolean v1, p1, Le/b/a/a/a;->B:Z

    if-eqz v1, :cond_7

    .line 81
    iget-char p1, p1, Le/b/a/a/a;->C:C

    int-to-byte p1, p1

    add-int/lit8 v1, v0, 0x1

    if-ne p4, v3, :cond_6

    shr-int/lit8 p3, p3, 0x6

    and-int/lit8 p3, p3, 0x3f

    .line 82
    aget-byte p3, v2, p3

    goto :goto_1

    :cond_6
    move p3, p1

    :goto_1
    aput-byte p3, p2, v0

    add-int/lit8 v0, v1, 0x1

    .line 83
    aput-byte p1, p2, v1

    goto :goto_2

    :cond_7
    if-ne p4, v3, :cond_8

    add-int/lit8 p1, v0, 0x1

    shr-int/lit8 p3, p3, 0x6

    and-int/lit8 p3, p3, 0x3f

    .line 84
    aget-byte p3, v2, p3

    aput-byte p3, p2, v0

    move v0, p1

    .line 85
    :cond_8
    :goto_2
    iput v0, p0, Le/b/a/a/q/g;->J:I

    .line 86
    :cond_9
    iget p1, p0, Le/b/a/a/q/g;->J:I

    iget p2, p0, Le/b/a/a/q/g;->K:I

    if-lt p1, p2, :cond_a

    .line 87
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    .line 88
    :cond_a
    iget-object p1, p0, Le/b/a/a/q/g;->I:[B

    iget p2, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Le/b/a/a/q/g;->J:I

    iget-byte p3, p0, Le/b/a/a/q/g;->H:B

    aput-byte p3, p1, p2

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/b/a/a/o/a;->z:Le/b/a/a/q/e;

    invoke-virtual {v0, p1}, Le/b/a/a/q/e;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Le/b/a/a/q/g;->J:I

    iget v2, p0, Le/b/a/a/q/g;->K:I

    if-lt v0, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    .line 4
    :cond_0
    iget-object v0, p0, Le/b/a/a/q/g;->I:[B

    iget v2, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Le/b/a/a/q/g;->J:I

    const/16 v3, 0x2c

    aput-byte v3, v0, v2

    .line 5
    :cond_1
    iget-boolean v0, p0, Le/b/a/a/q/c;->E:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0, p1, v2}, Le/b/a/a/q/g;->a(Ljava/lang/String;Z)V

    return-void

    .line 7
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 8
    iget v3, p0, Le/b/a/a/q/g;->N:I

    if-le v0, v3, :cond_3

    .line 9
    invoke-virtual {p0, p1, v1}, Le/b/a/a/q/g;->a(Ljava/lang/String;Z)V

    return-void

    .line 10
    :cond_3
    iget v1, p0, Le/b/a/a/q/g;->J:I

    iget v3, p0, Le/b/a/a/q/g;->K:I

    if-lt v1, v3, :cond_4

    .line 11
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    .line 12
    :cond_4
    iget-object v1, p0, Le/b/a/a/q/g;->I:[B

    iget v3, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Le/b/a/a/q/g;->J:I

    iget-byte v5, p0, Le/b/a/a/q/g;->H:B

    aput-byte v5, v1, v3

    .line 13
    iget v1, p0, Le/b/a/a/q/g;->L:I

    if-gt v0, v1, :cond_6

    add-int/2addr v4, v0

    .line 14
    iget v1, p0, Le/b/a/a/q/g;->K:I

    if-le v4, v1, :cond_5

    .line 15
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    .line 16
    :cond_5
    invoke-virtual {p0, p1, v2, v0}, Le/b/a/a/q/g;->a(Ljava/lang/String;II)V

    goto :goto_0

    .line 17
    :cond_6
    iget v1, p0, Le/b/a/a/q/g;->L:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 18
    iget v3, p0, Le/b/a/a/q/g;->J:I

    add-int/2addr v3, v1

    iget v4, p0, Le/b/a/a/q/g;->K:I

    if-le v3, v4, :cond_7

    .line 19
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    .line 20
    :cond_7
    invoke-virtual {p0, p1, v2, v1}, Le/b/a/a/q/g;->a(Ljava/lang/String;II)V

    add-int/2addr v2, v1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_6

    .line 21
    :goto_0
    iget p1, p0, Le/b/a/a/q/g;->J:I

    iget v0, p0, Le/b/a/a/q/g;->K:I

    if-lt p1, v0, :cond_8

    .line 22
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    .line 23
    :cond_8
    iget-object p1, p0, Le/b/a/a/q/g;->I:[B

    iget v0, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Le/b/a/a/q/g;->J:I

    iget-byte v1, p0, Le/b/a/a/q/g;->H:B

    aput-byte v1, p1, v0

    return-void

    .line 24
    :cond_9
    new-instance p1, Le/b/a/a/e;

    const-string v0, "Can not write a field name, expecting a value"

    invoke-direct {p1, v0, p0}, Le/b/a/a/e;-><init>(Ljava/lang/String;Le/b/a/a/f;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;II)V
    .locals 10

    add-int/2addr p3, p2

    .line 141
    iget v0, p0, Le/b/a/a/q/g;->J:I

    .line 142
    iget-object v1, p0, Le/b/a/a/q/g;->I:[B

    .line 143
    iget-object v2, p0, Le/b/a/a/q/c;->B:[I

    :goto_0
    const/16 v3, 0x7f

    if-ge p2, p3, :cond_1

    .line 144
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v3, :cond_1

    .line 145
    aget v5, v2, v4

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v0, 0x1

    int-to-byte v4, v4

    .line 146
    aput-byte v4, v1, v0

    add-int/lit8 p2, p2, 0x1

    move v0, v3

    goto :goto_0

    .line 147
    :cond_1
    :goto_1
    iput v0, p0, Le/b/a/a/q/g;->J:I

    if-ge p2, p3, :cond_10

    .line 148
    iget v1, p0, Le/b/a/a/q/c;->C:I

    const/16 v2, 0x5c

    const/16 v4, 0x7ff

    if-nez v1, :cond_8

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v0

    .line 149
    iget v0, p0, Le/b/a/a/q/g;->K:I

    if-le v1, v0, :cond_2

    .line 150
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    .line 151
    :cond_2
    iget v0, p0, Le/b/a/a/q/g;->J:I

    .line 152
    iget-object v1, p0, Le/b/a/a/q/g;->I:[B

    .line 153
    iget-object v5, p0, Le/b/a/a/q/c;->B:[I

    :goto_2
    if-ge p2, p3, :cond_7

    add-int/lit8 v6, p2, 0x1

    .line 154
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-gt p2, v3, :cond_5

    .line 155
    aget v7, v5, p2

    if-nez v7, :cond_3

    add-int/lit8 v7, v0, 0x1

    int-to-byte p2, p2

    .line 156
    aput-byte p2, v1, v0

    move p2, v6

    move v0, v7

    goto :goto_2

    .line 157
    :cond_3
    aget v7, v5, p2

    if-lez v7, :cond_4

    add-int/lit8 p2, v0, 0x1

    .line 158
    aput-byte v2, v1, v0

    add-int/lit8 v0, p2, 0x1

    int-to-byte v7, v7

    .line 159
    aput-byte v7, v1, p2

    goto :goto_4

    .line 160
    :cond_4
    invoke-virtual {p0, p2, v0}, Le/b/a/a/q/g;->b(II)I

    move-result p2

    goto :goto_3

    :cond_5
    if-gt p2, v4, :cond_6

    add-int/lit8 v7, v0, 0x1

    shr-int/lit8 v8, p2, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    .line 161
    aput-byte v8, v1, v0

    add-int/lit8 v0, v7, 0x1

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 162
    aput-byte p2, v1, v7

    goto :goto_4

    .line 163
    :cond_6
    invoke-virtual {p0, p2, v0}, Le/b/a/a/q/g;->a(II)I

    move-result p2

    :goto_3
    move v0, p2

    :goto_4
    move p2, v6

    goto :goto_2

    .line 164
    :cond_7
    iput v0, p0, Le/b/a/a/q/g;->J:I

    goto/16 :goto_8

    :cond_8
    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v0

    .line 165
    iget v0, p0, Le/b/a/a/q/g;->K:I

    if-le v1, v0, :cond_9

    .line 166
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    .line 167
    :cond_9
    iget v0, p0, Le/b/a/a/q/g;->J:I

    .line 168
    iget-object v1, p0, Le/b/a/a/q/g;->I:[B

    .line 169
    iget-object v5, p0, Le/b/a/a/q/c;->B:[I

    .line 170
    iget v6, p0, Le/b/a/a/q/c;->C:I

    :goto_5
    if-ge p2, p3, :cond_f

    add-int/lit8 v7, p2, 0x1

    .line 171
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-gt p2, v3, :cond_c

    .line 172
    aget v8, v5, p2

    if-nez v8, :cond_a

    add-int/lit8 v8, v0, 0x1

    int-to-byte p2, p2

    .line 173
    aput-byte p2, v1, v0

    move p2, v7

    move v0, v8

    goto :goto_5

    .line 174
    :cond_a
    aget v8, v5, p2

    if-lez v8, :cond_b

    add-int/lit8 p2, v0, 0x1

    .line 175
    aput-byte v2, v1, v0

    add-int/lit8 v0, p2, 0x1

    int-to-byte v8, v8

    .line 176
    aput-byte v8, v1, p2

    goto :goto_7

    .line 177
    :cond_b
    invoke-virtual {p0, p2, v0}, Le/b/a/a/q/g;->b(II)I

    move-result p2

    goto :goto_6

    :cond_c
    if-le p2, v6, :cond_d

    .line 178
    invoke-virtual {p0, p2, v0}, Le/b/a/a/q/g;->b(II)I

    move-result p2

    :goto_6
    move v0, p2

    goto :goto_7

    :cond_d
    if-gt p2, v4, :cond_e

    add-int/lit8 v8, v0, 0x1

    shr-int/lit8 v9, p2, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    .line 179
    aput-byte v9, v1, v0

    add-int/lit8 v0, v8, 0x1

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 180
    aput-byte p2, v1, v8

    goto :goto_7

    .line 181
    :cond_e
    invoke-virtual {p0, p2, v0}, Le/b/a/a/q/g;->a(II)I

    move-result p2

    goto :goto_6

    :goto_7
    move p2, v7

    goto :goto_5

    .line 182
    :cond_f
    iput v0, p0, Le/b/a/a/q/g;->J:I

    :cond_10
    :goto_8
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 5

    if-eqz p2, :cond_1

    .line 130
    iget v0, p0, Le/b/a/a/q/g;->J:I

    iget v1, p0, Le/b/a/a/q/g;->K:I

    if-lt v0, v1, :cond_0

    .line 131
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    .line 132
    :cond_0
    iget-object v0, p0, Le/b/a/a/q/g;->I:[B

    iget v1, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/q/g;->J:I

    iget-byte v2, p0, Le/b/a/a/q/g;->H:B

    aput-byte v2, v0, v1

    .line 133
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lez v0, :cond_3

    .line 134
    iget v2, p0, Le/b/a/a/q/g;->L:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 135
    iget v3, p0, Le/b/a/a/q/g;->J:I

    add-int/2addr v3, v2

    iget v4, p0, Le/b/a/a/q/g;->K:I

    if-le v3, v4, :cond_2

    .line 136
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    .line 137
    :cond_2
    invoke-virtual {p0, p1, v1, v2}, Le/b/a/a/q/g;->a(Ljava/lang/String;II)V

    add-int/2addr v1, v2

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    .line 138
    iget p1, p0, Le/b/a/a/q/g;->J:I

    iget p2, p0, Le/b/a/a/q/g;->K:I

    if-lt p1, p2, :cond_4

    .line 139
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    .line 140
    :cond_4
    iget-object p1, p0, Le/b/a/a/q/g;->I:[B

    iget p2, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Le/b/a/a/q/g;->J:I

    iget-byte v0, p0, Le/b/a/a/q/g;->H:B

    aput-byte v0, p1, p2

    :cond_5
    return-void
.end method

.method public a(Z)V
    .locals 4

    const-string v0, "write a boolean value"

    .line 123
    invoke-virtual {p0, v0}, Le/b/a/a/q/g;->d(Ljava/lang/String;)V

    .line 124
    iget v0, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Le/b/a/a/q/g;->K:I

    if-lt v0, v1, :cond_0

    .line 125
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    :cond_0
    if-eqz p1, :cond_1

    .line 126
    sget-object p1, Le/b/a/a/q/g;->R:[B

    goto :goto_0

    :cond_1
    sget-object p1, Le/b/a/a/q/g;->S:[B

    .line 127
    :goto_0
    array-length v0, p1

    const/4 v1, 0x0

    .line 128
    iget-object v2, p0, Le/b/a/a/q/g;->I:[B

    iget v3, p0, Le/b/a/a/q/g;->J:I

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget p1, p0, Le/b/a/a/q/g;->J:I

    add-int/2addr p1, v0

    iput p1, p0, Le/b/a/a/q/g;->J:I

    return-void
.end method

.method public final a([CII)V
    .locals 8

    add-int v0, p3, p3

    add-int/2addr v0, p3

    .line 34
    iget v1, p0, Le/b/a/a/q/g;->J:I

    add-int/2addr v1, v0

    iget v2, p0, Le/b/a/a/q/g;->K:I

    const/16 v3, 0x800

    const/16 v4, 0x80

    if-le v1, v2, :cond_7

    if-ge v2, v0, :cond_6

    .line 35
    iget-object v0, p0, Le/b/a/a/q/g;->I:[B

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_5

    .line 36
    :cond_0
    aget-char v1, p1, p2

    if-lt v1, v4, :cond_3

    .line 37
    iget v1, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v1, v1, 0x3

    iget v5, p0, Le/b/a/a/q/g;->K:I

    if-lt v1, v5, :cond_1

    .line 38
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    :cond_1
    add-int/lit8 v1, p2, 0x1

    .line 39
    aget-char p2, p1, p2

    if-ge p2, v3, :cond_2

    .line 40
    iget v5, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Le/b/a/a/q/g;->J:I

    shr-int/lit8 v7, p2, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    add-int/lit8 v5, v6, 0x1

    .line 41
    iput v5, p0, Le/b/a/a/q/g;->J:I

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p2, v4

    int-to-byte p2, p2

    aput-byte p2, v0, v6

    move p2, v1

    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p0, p2, p1, v1, p3}, Le/b/a/a/q/g;->a(I[CII)I

    move-result p2

    goto :goto_0

    .line 43
    :cond_3
    iget v5, p0, Le/b/a/a/q/g;->J:I

    if-lt v5, v2, :cond_4

    .line 44
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    .line 45
    :cond_4
    iget v5, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Le/b/a/a/q/g;->J:I

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_0

    :cond_5
    return-void

    .line 46
    :cond_6
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    :cond_7
    add-int/2addr p3, p2

    :goto_1
    if-ge p2, p3, :cond_b

    .line 47
    :cond_8
    aget-char v0, p1, p2

    const/16 v1, 0x7f

    if-le v0, v1, :cond_a

    add-int/lit8 v0, p2, 0x1

    .line 48
    aget-char p2, p1, p2

    if-ge p2, v3, :cond_9

    .line 49
    iget-object v1, p0, Le/b/a/a/q/g;->I:[B

    iget v2, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Le/b/a/a/q/g;->J:I

    shr-int/lit8 v6, p2, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    .line 50
    iput v2, p0, Le/b/a/a/q/g;->J:I

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p2, v4

    int-to-byte p2, p2

    aput-byte p2, v1, v5

    move p2, v0

    goto :goto_1

    .line 51
    :cond_9
    invoke-virtual {p0, p2, p1, v0, p3}, Le/b/a/a/q/g;->a(I[CII)I

    move-result p2

    goto :goto_1

    .line 52
    :cond_a
    iget-object v1, p0, Le/b/a/a/q/g;->I:[B

    iget v2, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Le/b/a/a/q/g;->J:I

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_8

    :cond_b
    return-void
.end method

.method public final b(II)I
    .locals 5

    .line 15
    iget-object v0, p0, Le/b/a/a/q/g;->I:[B

    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x5c

    .line 16
    aput-byte v2, v0, p2

    add-int/lit8 p2, v1, 0x1

    const/16 v2, 0x75

    .line 17
    aput-byte v2, v0, v1

    const/16 v1, 0xff

    if-le p1, v1, :cond_0

    shr-int/lit8 v2, p1, 0x8

    and-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x1

    .line 18
    sget-object v3, Le/b/a/a/q/g;->P:[B

    shr-int/lit8 v4, v1, 0x4

    aget-byte v4, v3, v4

    aput-byte v4, v0, p2

    add-int/lit8 p2, v2, 0x1

    and-int/lit8 v1, v1, 0xf

    .line 19
    aget-byte v1, v3, v1

    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x30

    .line 20
    aput-byte v2, v0, p2

    add-int/lit8 p2, v1, 0x1

    .line 21
    aput-byte v2, v0, v1

    :goto_0
    add-int/lit8 v1, p2, 0x1

    .line 22
    sget-object v2, Le/b/a/a/q/g;->P:[B

    shr-int/lit8 v3, p1, 0x4

    aget-byte v3, v2, v3

    aput-byte v3, v0, p2

    add-int/lit8 p2, v1, 0x1

    and-int/lit8 p1, p1, 0xf

    .line 23
    aget-byte p1, v2, p1

    aput-byte p1, v0, v1

    return p2
.end method

.method public b()V
    .locals 1

    const-string v0, "write a null"

    .line 13
    invoke-virtual {p0, v0}, Le/b/a/a/q/g;->d(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Le/b/a/a/q/g;->e()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    const-string v0, "write a string"

    .line 1
    invoke-virtual {p0, v0}, Le/b/a/a/q/g;->d(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/b/a/a/q/g;->e()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 4
    iget v1, p0, Le/b/a/a/q/g;->L:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Le/b/a/a/q/g;->a(Ljava/lang/String;Z)V

    return-void

    .line 6
    :cond_1
    iget v1, p0, Le/b/a/a/q/g;->J:I

    add-int/2addr v1, v0

    iget v2, p0, Le/b/a/a/q/g;->K:I

    if-lt v1, v2, :cond_2

    .line 7
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    .line 8
    :cond_2
    iget-object v1, p0, Le/b/a/a/q/g;->I:[B

    iget v2, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Le/b/a/a/q/g;->J:I

    iget-byte v3, p0, Le/b/a/a/q/g;->H:B

    aput-byte v3, v1, v2

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, p1, v1, v0}, Le/b/a/a/q/g;->a(Ljava/lang/String;II)V

    .line 10
    iget p1, p0, Le/b/a/a/q/g;->J:I

    iget v0, p0, Le/b/a/a/q/g;->K:I

    if-lt p1, v0, :cond_3

    .line 11
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    .line 12
    :cond_3
    iget-object p1, p0, Le/b/a/a/q/g;->I:[B

    iget v0, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Le/b/a/a/q/g;->J:I

    iget-byte v1, p0, Le/b/a/a/q/g;->H:B

    aput-byte v1, p1, v0

    return-void
.end method

.method public final c()V
    .locals 3

    const-string v0, "start an object"

    .line 1
    invoke-virtual {p0, v0}, Le/b/a/a/q/g;->d(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/b/a/a/o/a;->z:Le/b/a/a/q/e;

    invoke-virtual {v0}, Le/b/a/a/q/e;->f()Le/b/a/a/q/e;

    move-result-object v0

    iput-object v0, p0, Le/b/a/a/o/a;->z:Le/b/a/a/q/e;

    .line 3
    iget v0, p0, Le/b/a/a/q/g;->J:I

    iget v1, p0, Le/b/a/a/q/g;->K:I

    if-lt v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    .line 5
    :cond_0
    iget-object v0, p0, Le/b/a/a/q/g;->I:[B

    iget v1, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/q/g;->J:I

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    return-void
.end method

.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/b/a/a/q/g;->I:[B

    if-eqz v0, :cond_3

    sget-object v0, Le/b/a/a/f$a;->AUTO_CLOSE_JSON_CONTENT:Le/b/a/a/f$a;

    invoke-virtual {p0, v0}, Le/b/a/a/o/a;->a(Le/b/a/a/f$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    :goto_0
    iget-object v0, p0, Le/b/a/a/o/a;->z:Le/b/a/a/q/e;

    .line 3
    invoke-virtual {v0}, Le/b/a/a/k;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    iget-object v0, p0, Le/b/a/a/o/a;->z:Le/b/a/a/q/e;

    invoke-virtual {v0}, Le/b/a/a/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget v0, p0, Le/b/a/a/q/g;->J:I

    iget v1, p0, Le/b/a/a/q/g;->K:I

    if-lt v0, v1, :cond_0

    .line 6
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    .line 7
    :cond_0
    iget-object v0, p0, Le/b/a/a/q/g;->I:[B

    iget v1, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/q/g;->J:I

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    .line 8
    iget-object v0, p0, Le/b/a/a/o/a;->z:Le/b/a/a/q/e;

    .line 9
    iget-object v0, v0, Le/b/a/a/q/e;->c:Le/b/a/a/q/e;

    .line 10
    iput-object v0, p0, Le/b/a/a/o/a;->z:Le/b/a/a/q/e;

    goto :goto_0

    :cond_1
    const-string v0, "Current context not Array but "

    .line 11
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/b/a/a/o/a;->z:Le/b/a/a/q/e;

    invoke-virtual {v1}, Le/b/a/a/k;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    new-instance v1, Le/b/a/a/e;

    invoke-direct {v1, v0, p0}, Le/b/a/a/e;-><init>(Ljava/lang/String;Le/b/a/a/f;)V

    throw v1

    .line 13
    :cond_2
    invoke-virtual {v0}, Le/b/a/a/k;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {p0}, Le/b/a/a/q/g;->a()V

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Le/b/a/a/q/g;->J:I

    .line 17
    iget-object v0, p0, Le/b/a/a/q/g;->G:Ljava/io/OutputStream;

    if-eqz v0, :cond_6

    .line 18
    iget-object v0, p0, Le/b/a/a/q/c;->A:Le/b/a/a/p/b;

    .line 19
    iget-boolean v0, v0, Le/b/a/a/p/b;->c:Z

    if-nez v0, :cond_5

    .line 20
    sget-object v0, Le/b/a/a/f$a;->AUTO_CLOSE_TARGET:Le/b/a/a/f$a;

    invoke-virtual {p0, v0}, Le/b/a/a/o/a;->a(Le/b/a/a/f$a;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 21
    :cond_4
    sget-object v0, Le/b/a/a/f$a;->FLUSH_PASSED_TO_STREAM:Le/b/a/a/f$a;

    invoke-virtual {p0, v0}, Le/b/a/a/o/a;->a(Le/b/a/a/f$a;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    iget-object v0, p0, Le/b/a/a/q/g;->G:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_2

    .line 23
    :cond_5
    :goto_1
    iget-object v0, p0, Le/b/a/a/q/g;->G:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 24
    :cond_6
    :goto_2
    iget-object v0, p0, Le/b/a/a/q/g;->I:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 25
    iget-boolean v2, p0, Le/b/a/a/q/g;->O:Z

    if-eqz v2, :cond_7

    .line 26
    iput-object v1, p0, Le/b/a/a/q/g;->I:[B

    .line 27
    iget-object v2, p0, Le/b/a/a/q/c;->A:Le/b/a/a/p/b;

    invoke-virtual {v2, v0}, Le/b/a/a/p/b;->b([B)V

    .line 28
    :cond_7
    iget-object v0, p0, Le/b/a/a/q/g;->M:[C

    if-eqz v0, :cond_9

    .line 29
    iput-object v1, p0, Le/b/a/a/q/g;->M:[C

    .line 30
    iget-object v2, p0, Le/b/a/a/q/c;->A:Le/b/a/a/p/b;

    if-eqz v2, :cond_8

    .line 31
    iget-object v3, v2, Le/b/a/a/p/b;->h:[C

    invoke-virtual {v2, v0, v3}, Le/b/a/a/p/b;->a([C[C)V

    .line 32
    iput-object v1, v2, Le/b/a/a/p/b;->h:[C

    .line 33
    iget-object v1, v2, Le/b/a/a/p/b;->d:Le/b/a/a/s/a;

    .line 34
    iget-object v1, v1, Le/b/a/a/s/a;->b:[[C

    const/4 v2, 0x1

    aput-object v0, v1, v2

    goto :goto_3

    .line 35
    :cond_8
    throw v1

    :cond_9
    :goto_3
    return-void
.end method

.method public final d()V
    .locals 4

    .line 15
    iget v0, p0, Le/b/a/a/q/g;->J:I

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 16
    iput v1, p0, Le/b/a/a/q/g;->J:I

    .line 17
    iget-object v2, p0, Le/b/a/a/q/g;->G:Ljava/io/OutputStream;

    iget-object v3, p0, Le/b/a/a/q/g;->I:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/b/a/a/o/a;->z:Le/b/a/a/q/e;

    invoke-virtual {v0}, Le/b/a/a/q/e;->g()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Le/b/a/a/q/c;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Le/b/a/a/q/c;->D:Le/b/a/a/n;

    if-eqz p1, :cond_3

    .line 4
    check-cast p1, Le/b/a/a/p/g;

    invoke-virtual {p1}, Le/b/a/a/p/g;->a()[B

    move-result-object p1

    .line 5
    array-length v0, p1

    if-lez v0, :cond_3

    .line 6
    array-length v0, p1

    .line 7
    iget v1, p0, Le/b/a/a/q/g;->J:I

    add-int/2addr v1, v0

    iget v2, p0, Le/b/a/a/q/g;->K:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_2

    .line 8
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    const/16 v1, 0x200

    if-le v0, v1, :cond_2

    .line 9
    iget-object v1, p0, Le/b/a/a/q/g;->G:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Le/b/a/a/q/g;->I:[B

    iget v2, p0, Le/b/a/a/q/g;->J:I

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget p1, p0, Le/b/a/a/q/g;->J:I

    add-int/2addr p1, v0

    iput p1, p0, Le/b/a/a/q/g;->J:I

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/16 p1, 0x3a

    goto :goto_1

    :cond_5
    const/16 p1, 0x2c

    .line 12
    :goto_1
    iget v0, p0, Le/b/a/a/q/g;->J:I

    iget v1, p0, Le/b/a/a/q/g;->K:I

    if-lt v0, v1, :cond_6

    .line 13
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    .line 14
    :cond_6
    iget-object v0, p0, Le/b/a/a/q/g;->I:[B

    iget v1, p0, Le/b/a/a/q/g;->J:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/q/g;->J:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget v0, p0, Le/b/a/a/q/g;->J:I

    const/4 v1, 0x4

    add-int/2addr v0, v1

    iget v2, p0, Le/b/a/a/q/g;->K:I

    if-lt v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    .line 3
    :cond_0
    sget-object v0, Le/b/a/a/q/g;->Q:[B

    const/4 v2, 0x0

    iget-object v3, p0, Le/b/a/a/q/g;->I:[B

    iget v4, p0, Le/b/a/a/q/g;->J:I

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget v0, p0, Le/b/a/a/q/g;->J:I

    add-int/2addr v0, v1

    iput v0, p0, Le/b/a/a/q/g;->J:I

    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/b/a/a/q/g;->d()V

    .line 2
    iget-object v0, p0, Le/b/a/a/q/g;->G:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Le/b/a/a/f$a;->FLUSH_PASSED_TO_STREAM:Le/b/a/a/f$a;

    invoke-virtual {p0, v0}, Le/b/a/a/o/a;->a(Le/b/a/a/f$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/b/a/a/q/g;->G:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_0
    return-void
.end method
