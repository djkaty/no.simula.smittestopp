.class public Le/b/a/a/q/i;
.super Le/b/a/a/q/c;
.source "SourceFile"


# static fields
.field public static final P:[C


# instance fields
.field public final G:Ljava/io/Writer;

.field public H:C

.field public I:[C

.field public J:I

.field public K:I

.field public L:I

.field public M:[C

.field public N:Le/b/a/a/n;

.field public O:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Le/b/a/a/p/a;->a:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 2
    sput-object v0, Le/b/a/a/q/i;->P:[C

    return-void
.end method

.method public constructor <init>(Le/b/a/a/p/b;ILjava/io/Writer;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Le/b/a/a/q/c;-><init>(Le/b/a/a/p/b;I)V

    const/16 p2, 0x22

    .line 2
    iput-char p2, p0, Le/b/a/a/q/i;->H:C

    .line 3
    iput-object p3, p0, Le/b/a/a/q/i;->G:Ljava/io/Writer;

    .line 4
    iget-object p2, p1, Le/b/a/a/p/b;->h:[C

    invoke-virtual {p1, p2}, Le/b/a/a/p/b;->a(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p1, Le/b/a/a/p/b;->d:Le/b/a/a/s/a;

    const/4 p3, 0x0

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p2, v0, p3}, Le/b/a/a/s/a;->a(II)[C

    move-result-object p2

    .line 7
    iput-object p2, p1, Le/b/a/a/p/b;->h:[C

    .line 8
    iput-object p2, p0, Le/b/a/a/q/i;->I:[C

    .line 9
    array-length p1, p2

    iput p1, p0, Le/b/a/a/q/i;->L:I

    return-void
.end method


# virtual methods
.method public final a([CIICI)I
    .locals 4

    const/16 v0, 0x5c

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ltz p5, :cond_2

    const/4 p4, 0x1

    if-le p2, p4, :cond_0

    if-ge p2, p3, :cond_0

    add-int/lit8 p2, p2, -0x2

    .line 128
    aput-char v0, p1, p2

    add-int/lit8 p3, p2, 0x1

    int-to-char p4, p5

    .line 129
    aput-char p4, p1, p3

    goto :goto_0

    .line 130
    :cond_0
    iget-object p1, p0, Le/b/a/a/q/i;->M:[C

    if-nez p1, :cond_1

    .line 131
    invoke-virtual {p0}, Le/b/a/a/q/i;->d()[C

    move-result-object p1

    :cond_1
    int-to-char p3, p5

    .line 132
    aput-char p3, p1, p4

    .line 133
    iget-object p3, p0, Le/b/a/a/q/i;->G:Ljava/io/Writer;

    invoke-virtual {p3, p1, v2, v1}, Ljava/io/Writer;->write([CII)V

    :goto_0
    return p2

    :cond_2
    const/4 v3, -0x2

    if-eq p5, v3, :cond_7

    const/4 p5, 0x5

    const/16 v2, 0xff

    if-le p2, p5, :cond_4

    if-ge p2, p3, :cond_4

    add-int/lit8 p2, p2, -0x6

    add-int/lit8 p3, p2, 0x1

    .line 134
    aput-char v0, p1, p2

    add-int/lit8 p2, p3, 0x1

    const/16 p5, 0x75

    .line 135
    aput-char p5, p1, p3

    if-le p4, v2, :cond_3

    shr-int/lit8 p3, p4, 0x8

    and-int/2addr p3, v2

    add-int/lit8 p5, p2, 0x1

    .line 136
    sget-object v0, Le/b/a/a/q/i;->P:[C

    shr-int/lit8 v1, p3, 0x4

    aget-char v1, v0, v1

    aput-char v1, p1, p2

    add-int/lit8 p2, p5, 0x1

    and-int/lit8 p3, p3, 0xf

    .line 137
    aget-char p3, v0, p3

    aput-char p3, p1, p5

    and-int/lit16 p3, p4, 0xff

    int-to-char p4, p3

    goto :goto_1

    :cond_3
    add-int/lit8 p3, p2, 0x1

    const/16 p5, 0x30

    .line 138
    aput-char p5, p1, p2

    add-int/lit8 p2, p3, 0x1

    .line 139
    aput-char p5, p1, p3

    :goto_1
    add-int/lit8 p3, p2, 0x1

    .line 140
    sget-object p5, Le/b/a/a/q/i;->P:[C

    shr-int/lit8 v0, p4, 0x4

    aget-char v0, p5, v0

    aput-char v0, p1, p2

    and-int/lit8 p2, p4, 0xf

    .line 141
    aget-char p2, p5, p2

    aput-char p2, p1, p3

    add-int/lit8 p2, p3, -0x5

    goto :goto_2

    .line 142
    :cond_4
    iget-object p1, p0, Le/b/a/a/q/i;->M:[C

    if-nez p1, :cond_5

    .line 143
    invoke-virtual {p0}, Le/b/a/a/q/i;->d()[C

    move-result-object p1

    .line 144
    :cond_5
    iget p3, p0, Le/b/a/a/q/i;->K:I

    iput p3, p0, Le/b/a/a/q/i;->J:I

    const/4 p3, 0x6

    if-le p4, v2, :cond_6

    shr-int/lit8 p5, p4, 0x8

    and-int/2addr p5, v2

    and-int/2addr p4, v2

    const/16 v0, 0xa

    .line 145
    sget-object v1, Le/b/a/a/q/i;->P:[C

    shr-int/lit8 v2, p5, 0x4

    aget-char v2, v1, v2

    aput-char v2, p1, v0

    const/16 v0, 0xb

    and-int/lit8 p5, p5, 0xf

    .line 146
    aget-char p5, v1, p5

    aput-char p5, p1, v0

    const/16 p5, 0xc

    shr-int/lit8 v0, p4, 0x4

    .line 147
    aget-char v0, v1, v0

    aput-char v0, p1, p5

    const/16 p5, 0xd

    and-int/lit8 p4, p4, 0xf

    .line 148
    aget-char p4, v1, p4

    aput-char p4, p1, p5

    .line 149
    iget-object p4, p0, Le/b/a/a/q/i;->G:Ljava/io/Writer;

    const/16 p5, 0x8

    invoke-virtual {p4, p1, p5, p3}, Ljava/io/Writer;->write([CII)V

    goto :goto_2

    .line 150
    :cond_6
    sget-object p5, Le/b/a/a/q/i;->P:[C

    shr-int/lit8 v0, p4, 0x4

    aget-char v0, p5, v0

    aput-char v0, p1, p3

    const/4 v0, 0x7

    and-int/lit8 p4, p4, 0xf

    .line 151
    aget-char p4, p5, p4

    aput-char p4, p1, v0

    .line 152
    iget-object p4, p0, Le/b/a/a/q/i;->G:Ljava/io/Writer;

    invoke-virtual {p4, p1, v1, p3}, Ljava/io/Writer;->write([CII)V

    :goto_2
    return p2

    .line 153
    :cond_7
    iget-object p4, p0, Le/b/a/a/q/i;->N:Le/b/a/a/n;

    const/4 p5, 0x0

    if-eqz p4, :cond_9

    .line 154
    check-cast p4, Le/b/a/a/p/g;

    .line 155
    iget-object p4, p4, Le/b/a/a/p/g;->x:Ljava/lang/String;

    .line 156
    iput-object p5, p0, Le/b/a/a/q/i;->N:Le/b/a/a/n;

    .line 157
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    if-lt p2, p5, :cond_8

    if-ge p2, p3, :cond_8

    sub-int/2addr p2, p5

    .line 158
    invoke-virtual {p4, v2, p5, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_3

    .line 159
    :cond_8
    iget-object p1, p0, Le/b/a/a/q/i;->G:Ljava/io/Writer;

    invoke-virtual {p1, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_3
    return p2

    .line 160
    :cond_9
    throw p5
.end method

.method public a()V
    .locals 3

    .line 13
    iget-object v0, p0, Le/b/a/a/o/a;->z:Le/b/a/a/q/e;

    invoke-virtual {v0}, Le/b/a/a/k;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    iget v0, p0, Le/b/a/a/q/i;->K:I

    iget v1, p0, Le/b/a/a/q/i;->L:I

    if-lt v0, v1, :cond_0

    .line 15
    invoke-virtual {p0}, Le/b/a/a/q/i;->e()V

    .line 16
    :cond_0
    iget-object v0, p0, Le/b/a/a/q/i;->I:[C

    iget v1, p0, Le/b/a/a/q/i;->K:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/q/i;->K:I

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    .line 17
    iget-object v0, p0, Le/b/a/a/o/a;->z:Le/b/a/a/q/e;

    .line 18
    iget-object v0, v0, Le/b/a/a/q/e;->c:Le/b/a/a/q/e;

    .line 19
    iput-object v0, p0, Le/b/a/a/o/a;->z:Le/b/a/a/q/e;

    return-void

    :cond_1
    const-string v0, "Current context not Object but "

    .line 20
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/b/a/a/o/a;->z:Le/b/a/a/q/e;

    invoke-virtual {v1}, Le/b/a/a/k;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    new-instance v1, Le/b/a/a/e;

    invoke-direct {v1, v0, p0}, Le/b/a/a/e;-><init>(Ljava/lang/String;Le/b/a/a/f;)V

    throw v1
.end method

.method public final a(CI)V
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x5c

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ltz p2, :cond_2

    .line 86
    iget p1, p0, Le/b/a/a/q/i;->K:I

    if-lt p1, v2, :cond_0

    sub-int/2addr p1, v2

    .line 87
    iput p1, p0, Le/b/a/a/q/i;->J:I

    .line 88
    iget-object v0, p0, Le/b/a/a/q/i;->I:[C

    add-int/lit8 v2, p1, 0x1

    aput-char v1, v0, p1

    int-to-char p1, p2

    .line 89
    aput-char p1, v0, v2

    return-void

    .line 90
    :cond_0
    iget-object p1, p0, Le/b/a/a/q/i;->M:[C

    if-nez p1, :cond_1

    .line 91
    invoke-virtual {p0}, Le/b/a/a/q/i;->d()[C

    move-result-object p1

    .line 92
    :cond_1
    iget v1, p0, Le/b/a/a/q/i;->K:I

    iput v1, p0, Le/b/a/a/q/i;->J:I

    int-to-char p2, p2

    .line 93
    aput-char p2, p1, v3

    .line 94
    iget-object p2, p0, Le/b/a/a/q/i;->G:Ljava/io/Writer;

    invoke-virtual {p2, p1, v0, v2}, Ljava/io/Writer;->write([CII)V

    return-void

    :cond_2
    const/4 v4, -0x2

    if-eq p2, v4, :cond_7

    .line 95
    iget p2, p0, Le/b/a/a/q/i;->K:I

    const/4 v0, 0x6

    const/16 v4, 0xff

    if-lt p2, v0, :cond_4

    .line 96
    iget-object v2, p0, Le/b/a/a/q/i;->I:[C

    sub-int/2addr p2, v0

    .line 97
    iput p2, p0, Le/b/a/a/q/i;->J:I

    .line 98
    aput-char v1, v2, p2

    add-int/2addr p2, v3

    const/16 v0, 0x75

    .line 99
    aput-char v0, v2, p2

    if-le p1, v4, :cond_3

    shr-int/lit8 v0, p1, 0x8

    and-int/2addr v0, v4

    add-int/2addr p2, v3

    .line 100
    sget-object v1, Le/b/a/a/q/i;->P:[C

    shr-int/lit8 v4, v0, 0x4

    aget-char v4, v1, v4

    aput-char v4, v2, p2

    add-int/2addr p2, v3

    and-int/lit8 v0, v0, 0xf

    .line 101
    aget-char v0, v1, v0

    aput-char v0, v2, p2

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    goto :goto_0

    :cond_3
    add-int/2addr p2, v3

    const/16 v0, 0x30

    .line 102
    aput-char v0, v2, p2

    add-int/2addr p2, v3

    .line 103
    aput-char v0, v2, p2

    :goto_0
    add-int/2addr p2, v3

    .line 104
    sget-object v0, Le/b/a/a/q/i;->P:[C

    shr-int/lit8 v1, p1, 0x4

    aget-char v1, v0, v1

    aput-char v1, v2, p2

    add-int/2addr p2, v3

    and-int/lit8 p1, p1, 0xf

    .line 105
    aget-char p1, v0, p1

    aput-char p1, v2, p2

    return-void

    .line 106
    :cond_4
    iget-object p2, p0, Le/b/a/a/q/i;->M:[C

    if-nez p2, :cond_5

    .line 107
    invoke-virtual {p0}, Le/b/a/a/q/i;->d()[C

    move-result-object p2

    .line 108
    :cond_5
    iget v1, p0, Le/b/a/a/q/i;->K:I

    iput v1, p0, Le/b/a/a/q/i;->J:I

    if-le p1, v4, :cond_6

    shr-int/lit8 v1, p1, 0x8

    and-int/2addr v1, v4

    and-int/2addr p1, v4

    const/16 v2, 0xa

    .line 109
    sget-object v3, Le/b/a/a/q/i;->P:[C

    shr-int/lit8 v4, v1, 0x4

    aget-char v4, v3, v4

    aput-char v4, p2, v2

    const/16 v2, 0xb

    and-int/lit8 v1, v1, 0xf

    .line 110
    aget-char v1, v3, v1

    aput-char v1, p2, v2

    const/16 v1, 0xc

    shr-int/lit8 v2, p1, 0x4

    .line 111
    aget-char v2, v3, v2

    aput-char v2, p2, v1

    const/16 v1, 0xd

    and-int/lit8 p1, p1, 0xf

    .line 112
    aget-char p1, v3, p1

    aput-char p1, p2, v1

    .line 113
    iget-object p1, p0, Le/b/a/a/q/i;->G:Ljava/io/Writer;

    const/16 v1, 0x8

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/Writer;->write([CII)V

    goto :goto_1

    .line 114
    :cond_6
    sget-object v1, Le/b/a/a/q/i;->P:[C

    shr-int/lit8 v3, p1, 0x4

    aget-char v3, v1, v3

    aput-char v3, p2, v0

    const/4 v3, 0x7

    and-int/lit8 p1, p1, 0xf

    .line 115
    aget-char p1, v1, p1

    aput-char p1, p2, v3

    .line 116
    iget-object p1, p0, Le/b/a/a/q/i;->G:Ljava/io/Writer;

    invoke-virtual {p1, p2, v2, v0}, Ljava/io/Writer;->write([CII)V

    :goto_1
    return-void

    .line 117
    :cond_7
    iget-object p1, p0, Le/b/a/a/q/i;->N:Le/b/a/a/n;

    const/4 p2, 0x0

    if-eqz p1, :cond_9

    .line 118
    check-cast p1, Le/b/a/a/p/g;

    .line 119
    iget-object p1, p1, Le/b/a/a/p/g;->x:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Le/b/a/a/q/i;->N:Le/b/a/a/n;

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    .line 122
    iget v1, p0, Le/b/a/a/q/i;->K:I

    if-lt v1, p2, :cond_8

    sub-int/2addr v1, p2

    .line 123
    iput v1, p0, Le/b/a/a/q/i;->J:I

    .line 124
    iget-object v2, p0, Le/b/a/a/q/i;->I:[C

    invoke-virtual {p1, v0, p2, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    return-void

    .line 125
    :cond_8
    iput v1, p0, Le/b/a/a/q/i;->J:I

    .line 126
    iget-object p2, p0, Le/b/a/a/q/i;->G:Ljava/io/Writer;

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 127
    :cond_9
    throw p2
.end method

.method public a(D)V
    .locals 1

    .line 67
    iget-boolean v0, p0, Le/b/a/a/o/a;->y:Z

    if-nez v0, :cond_1

    sget-object v0, Le/b/a/a/f$a;->QUOTE_NON_NUMERIC_NUMBERS:Le/b/a/a/f$a;

    invoke-virtual {p0, v0}, Le/b/a/a/o/a;->a(Le/b/a/a/f$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "write a number"

    .line 68
    invoke-virtual {p0, v0}, Le/b/a/a/q/i;->d(Ljava/lang/String;)V

    .line 69
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/b/a/a/q/i;->f(Ljava/lang/String;)V

    return-void

    .line 70
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/b/a/a/q/i;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 4

    const-string v0, "write a number"

    .line 57
    invoke-virtual {p0, v0}, Le/b/a/a/q/i;->d(Ljava/lang/String;)V

    .line 58
    iget-boolean v0, p0, Le/b/a/a/o/a;->y:Z

    if-eqz v0, :cond_1

    .line 59
    iget v0, p0, Le/b/a/a/q/i;->K:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Le/b/a/a/q/i;->L:I

    if-lt v0, v1, :cond_0

    .line 60
    invoke-virtual {p0}, Le/b/a/a/q/i;->e()V

    .line 61
    :cond_0
    iget-object v0, p0, Le/b/a/a/q/i;->I:[C

    iget v1, p0, Le/b/a/a/q/i;->K:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/q/i;->K:I

    iget-char v3, p0, Le/b/a/a/q/i;->H:C

    aput-char v3, v0, v1

    .line 62
    invoke-static {p1, v0, v2}, Le/b/a/a/p/f;->c(I[CI)I

    move-result p1

    iput p1, p0, Le/b/a/a/q/i;->K:I

    .line 63
    iget-object v0, p0, Le/b/a/a/q/i;->I:[C

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Le/b/a/a/q/i;->K:I

    iget-char v1, p0, Le/b/a/a/q/i;->H:C

    aput-char v1, v0, p1

    return-void

    .line 64
    :cond_1
    iget v0, p0, Le/b/a/a/q/i;->K:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Le/b/a/a/q/i;->L:I

    if-lt v0, v1, :cond_2

    .line 65
    invoke-virtual {p0}, Le/b/a/a/q/i;->e()V

    .line 66
    :cond_2
    iget-object v0, p0, Le/b/a/a/q/i;->I:[C

    iget v1, p0, Le/b/a/a/q/i;->K:I

    invoke-static {p1, v0, v1}, Le/b/a/a/p/f;->c(I[CI)I

    move-result p1

    iput p1, p0, Le/b/a/a/q/i;->K:I

    return-void
.end method

.method public a(Le/b/a/a/a;[BII)V
    .locals 10

    const-string v0, "write a binary value"

    .line 22
    invoke-virtual {p0, v0}, Le/b/a/a/q/i;->d(Ljava/lang/String;)V

    .line 23
    iget v0, p0, Le/b/a/a/q/i;->K:I

    iget v1, p0, Le/b/a/a/q/i;->L:I

    if-lt v0, v1, :cond_0

    .line 24
    invoke-virtual {p0}, Le/b/a/a/q/i;->e()V

    .line 25
    :cond_0
    iget-object v0, p0, Le/b/a/a/q/i;->I:[C

    iget v1, p0, Le/b/a/a/q/i;->K:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/q/i;->K:I

    iget-char v2, p0, Le/b/a/a/q/i;->H:C

    aput-char v2, v0, v1

    add-int/2addr p4, p3

    add-int/lit8 v0, p4, -0x3

    .line 26
    iget v1, p0, Le/b/a/a/q/i;->L:I

    add-int/lit8 v1, v1, -0x6

    .line 27
    iget v2, p1, Le/b/a/a/a;->D:I

    const/4 v3, 0x2

    shr-int/2addr v2, v3

    :goto_0
    if-gt p3, v0, :cond_3

    .line 28
    iget v4, p0, Le/b/a/a/q/i;->K:I

    if-le v4, v1, :cond_1

    .line 29
    invoke-virtual {p0}, Le/b/a/a/q/i;->e()V

    :cond_1
    add-int/lit8 v4, p3, 0x1

    .line 30
    aget-byte p3, p2, p3

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v5, v4, 0x1

    .line 31
    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr p3, v4

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v4, v5, 0x1

    .line 32
    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr p3, v5

    .line 33
    iget-object v5, p0, Le/b/a/a/q/i;->I:[C

    iget v6, p0, Le/b/a/a/q/i;->K:I

    add-int/lit8 v7, v6, 0x1

    .line 34
    iget-object v8, p1, Le/b/a/a/a;->y:[C

    shr-int/lit8 v9, p3, 0x12

    and-int/lit8 v9, v9, 0x3f

    aget-char v9, v8, v9

    aput-char v9, v5, v6

    add-int/lit8 v6, v7, 0x1

    shr-int/lit8 v9, p3, 0xc

    and-int/lit8 v9, v9, 0x3f

    .line 35
    aget-char v9, v8, v9

    aput-char v9, v5, v7

    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v9, p3, 0x6

    and-int/lit8 v9, v9, 0x3f

    .line 36
    aget-char v9, v8, v9

    aput-char v9, v5, v6

    add-int/lit8 v6, v7, 0x1

    and-int/lit8 p3, p3, 0x3f

    .line 37
    aget-char p3, v8, p3

    aput-char p3, v5, v7

    .line 38
    iput v6, p0, Le/b/a/a/q/i;->K:I

    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_2

    add-int/lit8 p3, v6, 0x1

    .line 39
    iput p3, p0, Le/b/a/a/q/i;->K:I

    const/16 v2, 0x5c

    aput-char v2, v5, v6

    add-int/lit8 v2, p3, 0x1

    .line 40
    iput v2, p0, Le/b/a/a/q/i;->K:I

    const/16 v2, 0x6e

    aput-char v2, v5, p3

    .line 41
    iget p3, p1, Le/b/a/a/a;->D:I

    shr-int/2addr p3, v3

    move v2, p3

    :cond_2
    move p3, v4

    goto :goto_0

    :cond_3
    sub-int/2addr p4, p3

    if-lez p4, :cond_9

    .line 42
    iget v0, p0, Le/b/a/a/q/i;->K:I

    if-le v0, v1, :cond_4

    .line 43
    invoke-virtual {p0}, Le/b/a/a/q/i;->e()V

    :cond_4
    add-int/lit8 v0, p3, 0x1

    .line 44
    aget-byte p3, p2, p3

    shl-int/lit8 p3, p3, 0x10

    if-ne p4, v3, :cond_5

    .line 45
    aget-byte p2, p2, v0

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p3, p2

    .line 46
    :cond_5
    iget-object p2, p0, Le/b/a/a/q/i;->I:[C

    iget v0, p0, Le/b/a/a/q/i;->K:I

    add-int/lit8 v1, v0, 0x1

    .line 47
    iget-object v2, p1, Le/b/a/a/a;->y:[C

    shr-int/lit8 v4, p3, 0x12

    and-int/lit8 v4, v4, 0x3f

    aget-char v4, v2, v4

    aput-char v4, p2, v0

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v4, p3, 0xc

    and-int/lit8 v4, v4, 0x3f

    .line 48
    aget-char v4, v2, v4

    aput-char v4, p2, v1

    .line 49
    iget-boolean v1, p1, Le/b/a/a/a;->B:Z

    if-eqz v1, :cond_7

    add-int/lit8 v1, v0, 0x1

    if-ne p4, v3, :cond_6

    shr-int/lit8 p3, p3, 0x6

    and-int/lit8 p3, p3, 0x3f

    .line 50
    aget-char p3, v2, p3

    goto :goto_1

    :cond_6
    iget-char p3, p1, Le/b/a/a/a;->C:C

    :goto_1
    aput-char p3, p2, v0

    add-int/lit8 v0, v1, 0x1

    .line 51
    iget-char p1, p1, Le/b/a/a/a;->C:C

    aput-char p1, p2, v1

    goto :goto_2

    :cond_7
    if-ne p4, v3, :cond_8

    add-int/lit8 p1, v0, 0x1

    shr-int/lit8 p3, p3, 0x6

    and-int/lit8 p3, p3, 0x3f

    .line 52
    aget-char p3, v2, p3

    aput-char p3, p2, v0

    move v0, p1

    .line 53
    :cond_8
    :goto_2
    iput v0, p0, Le/b/a/a/q/i;->K:I

    .line 54
    :cond_9
    iget p1, p0, Le/b/a/a/q/i;->K:I

    iget p2, p0, Le/b/a/a/q/i;->L:I

    if-lt p1, p2, :cond_a

    .line 55
    invoke-virtual {p0}, Le/b/a/a/q/i;->e()V

    .line 56
    :cond_a
    iget-object p1, p0, Le/b/a/a/q/i;->I:[C

    iget p2, p0, Le/b/a/a/q/i;->K:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Le/b/a/a/q/i;->K:I

    iget-char p3, p0, Le/b/a/a/q/i;->H:C

    aput-char p3, p1, p2

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/b/a/a/o/a;->z:Le/b/a/a/q/e;

    invoke-virtual {v0, p1}, Le/b/a/a/q/e;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v2, p0, Le/b/a/a/q/i;->K:I

    add-int/2addr v2, v1

    iget v1, p0, Le/b/a/a/q/i;->L:I

    if-lt v2, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Le/b/a/a/q/i;->e()V

    :cond_1
    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Le/b/a/a/q/i;->I:[C

    iget v1, p0, Le/b/a/a/q/i;->K:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/q/i;->K:I

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    .line 5
    :cond_2
    iget-boolean v0, p0, Le/b/a/a/q/c;->E:Z

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p0, p1}, Le/b/a/a/q/i;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_3
    iget-object v0, p0, Le/b/a/a/q/i;->I:[C

    iget v1, p0, Le/b/a/a/q/i;->K:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/q/i;->K:I

    iget-char v2, p0, Le/b/a/a/q/i;->H:C

    aput-char v2, v0, v1

    .line 8
    invoke-virtual {p0, p1}, Le/b/a/a/q/i;->e(Ljava/lang/String;)V

    .line 9
    iget p1, p0, Le/b/a/a/q/i;->K:I

    iget v0, p0, Le/b/a/a/q/i;->L:I

    if-lt p1, v0, :cond_4

    .line 10
    invoke-virtual {p0}, Le/b/a/a/q/i;->e()V

    .line 11
    :cond_4
    iget-object p1, p0, Le/b/a/a/q/i;->I:[C

    iget v0, p0, Le/b/a/a/q/i;->K:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Le/b/a/a/q/i;->K:I

    iget-char v1, p0, Le/b/a/a/q/i;->H:C

    aput-char v1, p1, v0

    :goto_1
    return-void

    .line 12
    :cond_5
    new-instance p1, Le/b/a/a/e;

    const-string v0, "Can not write a field name, expecting a value"

    invoke-direct {p1, v0, p0}, Le/b/a/a/e;-><init>(Ljava/lang/String;Le/b/a/a/f;)V

    throw p1
.end method

.method public a(Z)V
    .locals 3

    const-string v0, "write a boolean value"

    .line 71
    invoke-virtual {p0, v0}, Le/b/a/a/q/i;->d(Ljava/lang/String;)V

    .line 72
    iget v0, p0, Le/b/a/a/q/i;->K:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Le/b/a/a/q/i;->L:I

    if-lt v0, v1, :cond_0

    .line 73
    invoke-virtual {p0}, Le/b/a/a/q/i;->e()V

    .line 74
    :cond_0
    iget v0, p0, Le/b/a/a/q/i;->K:I

    .line 75
    iget-object v1, p0, Le/b/a/a/q/i;->I:[C

    const/16 v2, 0x65

    if-eqz p1, :cond_1

    const/16 p1, 0x74

    .line 76
    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 p1, 0x72

    .line 77
    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 p1, 0x75

    .line 78
    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 79
    aput-char v2, v1, v0

    goto :goto_0

    :cond_1
    const/16 p1, 0x66

    .line 80
    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 p1, 0x61

    .line 81
    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 p1, 0x6c

    .line 82
    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 p1, 0x73

    .line 83
    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 84
    aput-char v2, v1, v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 85
    iput v0, p0, Le/b/a/a/q/i;->K:I

    return-void
.end method

.method public b()V
    .locals 1

    const-string v0, "write a null"

    .line 10
    invoke-virtual {p0, v0}, Le/b/a/a/q/i;->d(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Le/b/a/a/q/i;->f()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "write a string"

    .line 1
    invoke-virtual {p0, v0}, Le/b/a/a/q/i;->d(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/b/a/a/q/i;->f()V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Le/b/a/a/q/i;->K:I

    iget v1, p0, Le/b/a/a/q/i;->L:I

    if-lt v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Le/b/a/a/q/i;->e()V

    .line 5
    :cond_1
    iget-object v0, p0, Le/b/a/a/q/i;->I:[C

    iget v1, p0, Le/b/a/a/q/i;->K:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/q/i;->K:I

    iget-char v2, p0, Le/b/a/a/q/i;->H:C

    aput-char v2, v0, v1

    .line 6
    invoke-virtual {p0, p1}, Le/b/a/a/q/i;->e(Ljava/lang/String;)V

    .line 7
    iget p1, p0, Le/b/a/a/q/i;->K:I

    iget v0, p0, Le/b/a/a/q/i;->L:I

    if-lt p1, v0, :cond_2

    .line 8
    invoke-virtual {p0}, Le/b/a/a/q/i;->e()V

    .line 9
    :cond_2
    iget-object p1, p0, Le/b/a/a/q/i;->I:[C

    iget v0, p0, Le/b/a/a/q/i;->K:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Le/b/a/a/q/i;->K:I

    iget-char v1, p0, Le/b/a/a/q/i;->H:C

    aput-char v1, p1, v0

    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "start an object"

    .line 1
    invoke-virtual {p0, v0}, Le/b/a/a/q/i;->d(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/b/a/a/o/a;->z:Le/b/a/a/q/e;

    invoke-virtual {v0}, Le/b/a/a/q/e;->f()Le/b/a/a/q/e;

    move-result-object v0

    iput-object v0, p0, Le/b/a/a/o/a;->z:Le/b/a/a/q/e;

    .line 3
    iget v0, p0, Le/b/a/a/q/i;->K:I

    iget v1, p0, Le/b/a/a/q/i;->L:I

    if-lt v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Le/b/a/a/q/i;->e()V

    .line 5
    :cond_0
    iget-object v0, p0, Le/b/a/a/q/i;->I:[C

    iget v1, p0, Le/b/a/a/q/i;->K:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/q/i;->K:I

    const/16 v2, 0x7b

    aput-char v2, v0, v1

    return-void
.end method

.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/b/a/a/q/i;->I:[C

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
    iget v0, p0, Le/b/a/a/q/i;->K:I

    iget v1, p0, Le/b/a/a/q/i;->L:I

    if-lt v0, v1, :cond_0

    .line 6
    invoke-virtual {p0}, Le/b/a/a/q/i;->e()V

    .line 7
    :cond_0
    iget-object v0, p0, Le/b/a/a/q/i;->I:[C

    iget v1, p0, Le/b/a/a/q/i;->K:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/q/i;->K:I

    const/16 v2, 0x5d

    aput-char v2, v0, v1

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
    invoke-virtual {p0}, Le/b/a/a/q/i;->a()V

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p0}, Le/b/a/a/q/i;->e()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Le/b/a/a/q/i;->J:I

    .line 17
    iput v0, p0, Le/b/a/a/q/i;->K:I

    .line 18
    iget-object v0, p0, Le/b/a/a/q/i;->G:Ljava/io/Writer;

    if-eqz v0, :cond_6

    .line 19
    iget-object v0, p0, Le/b/a/a/q/c;->A:Le/b/a/a/p/b;

    .line 20
    iget-boolean v0, v0, Le/b/a/a/p/b;->c:Z

    if-nez v0, :cond_5

    .line 21
    sget-object v0, Le/b/a/a/f$a;->AUTO_CLOSE_TARGET:Le/b/a/a/f$a;

    invoke-virtual {p0, v0}, Le/b/a/a/o/a;->a(Le/b/a/a/f$a;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 22
    :cond_4
    sget-object v0, Le/b/a/a/f$a;->FLUSH_PASSED_TO_STREAM:Le/b/a/a/f$a;

    invoke-virtual {p0, v0}, Le/b/a/a/o/a;->a(Le/b/a/a/f$a;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23
    iget-object v0, p0, Le/b/a/a/q/i;->G:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    goto :goto_2

    .line 24
    :cond_5
    :goto_1
    iget-object v0, p0, Le/b/a/a/q/i;->G:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 25
    :cond_6
    :goto_2
    iget-object v0, p0, Le/b/a/a/q/i;->I:[C

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 26
    iput-object v1, p0, Le/b/a/a/q/i;->I:[C

    .line 27
    iget-object v2, p0, Le/b/a/a/q/c;->A:Le/b/a/a/p/b;

    if-eqz v2, :cond_7

    .line 28
    iget-object v3, v2, Le/b/a/a/p/b;->h:[C

    invoke-virtual {v2, v0, v3}, Le/b/a/a/p/b;->a([C[C)V

    .line 29
    iput-object v1, v2, Le/b/a/a/p/b;->h:[C

    .line 30
    iget-object v2, v2, Le/b/a/a/p/b;->d:Le/b/a/a/s/a;

    .line 31
    iget-object v2, v2, Le/b/a/a/s/a;->b:[[C

    const/4 v3, 0x1

    aput-object v0, v2, v3

    goto :goto_3

    .line 32
    :cond_7
    throw v1

    .line 33
    :cond_8
    :goto_3
    iget-object v0, p0, Le/b/a/a/q/i;->O:[C

    if-eqz v0, :cond_a

    .line 34
    iput-object v1, p0, Le/b/a/a/q/i;->O:[C

    .line 35
    iget-object v2, p0, Le/b/a/a/q/c;->A:Le/b/a/a/p/b;

    if-eqz v2, :cond_9

    .line 36
    iget-object v3, v2, Le/b/a/a/p/b;->i:[C

    invoke-virtual {v2, v0, v3}, Le/b/a/a/p/b;->a([C[C)V

    .line 37
    iput-object v1, v2, Le/b/a/a/p/b;->i:[C

    .line 38
    iget-object v1, v2, Le/b/a/a/p/b;->d:Le/b/a/a/s/a;

    const/4 v2, 0x3

    .line 39
    iget-object v1, v1, Le/b/a/a/s/a;->b:[[C

    aput-object v0, v1, v2

    goto :goto_4

    .line 40
    :cond_9
    throw v1

    :cond_a
    :goto_4
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/b/a/a/o/a;->z:Le/b/a/a/q/e;

    invoke-virtual {v0}, Le/b/a/a/q/e;->g()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

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

    if-eqz p1, :cond_2

    .line 4
    check-cast p1, Le/b/a/a/p/g;

    .line 5
    iget-object p1, p1, Le/b/a/a/p/g;->x:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p1}, Le/b/a/a/q/i;->f(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const/16 p1, 0x3a

    goto :goto_0

    :cond_4
    const/16 p1, 0x2c

    .line 7
    :goto_0
    iget v0, p0, Le/b/a/a/q/i;->K:I

    iget v1, p0, Le/b/a/a/q/i;->L:I

    if-lt v0, v1, :cond_5

    .line 8
    invoke-virtual {p0}, Le/b/a/a/q/i;->e()V

    .line 9
    :cond_5
    iget-object v0, p0, Le/b/a/a/q/i;->I:[C

    iget v1, p0, Le/b/a/a/q/i;->K:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/q/i;->K:I

    aput-char p1, v0, v1

    return-void
.end method

.method public final d()[C
    .locals 5

    const/16 v0, 0xe

    new-array v0, v0, [C

    const/16 v1, 0x5c

    const/4 v2, 0x0

    aput-char v1, v0, v2

    const/4 v2, 0x2

    aput-char v1, v0, v2

    const/16 v2, 0x75

    const/4 v3, 0x3

    aput-char v2, v0, v3

    const/16 v3, 0x30

    const/4 v4, 0x4

    aput-char v3, v0, v4

    const/4 v4, 0x5

    aput-char v3, v0, v4

    const/16 v3, 0x8

    aput-char v1, v0, v3

    const/16 v1, 0x9

    aput-char v2, v0, v1

    .line 10
    iput-object v0, p0, Le/b/a/a/q/i;->M:[C

    return-object v0
.end method

.method public e()V
    .locals 4

    .line 46
    iget v0, p0, Le/b/a/a/q/i;->K:I

    iget v1, p0, Le/b/a/a/q/i;->J:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v2, 0x0

    .line 47
    iput v2, p0, Le/b/a/a/q/i;->J:I

    iput v2, p0, Le/b/a/a/q/i;->K:I

    .line 48
    iget-object v2, p0, Le/b/a/a/q/i;->G:Ljava/io/Writer;

    iget-object v3, p0, Le/b/a/a/q/i;->I:[C

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/Writer;->write([CII)V

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    iget v1, v6, Le/b/a/a/q/i;->L:I

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-le v0, v1, :cond_b

    .line 3
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/i;->e()V

    .line 4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, v6, Le/b/a/a/q/i;->L:I

    add-int v2, v0, v1

    if-le v2, v10, :cond_0

    sub-int v1, v10, v0

    :cond_0
    move v11, v1

    add-int v12, v0, v11

    .line 6
    iget-object v1, v6, Le/b/a/a/q/i;->I:[C

    invoke-virtual {v7, v0, v12, v1, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 7
    iget v13, v6, Le/b/a/a/q/c;->C:I

    if-eqz v13, :cond_5

    .line 8
    iget-object v14, v6, Le/b/a/a/q/c;->B:[I

    .line 9
    array-length v0, v14

    add-int/lit8 v1, v13, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v15

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v0, v11, :cond_9

    .line 10
    :cond_1
    iget-object v3, v6, Le/b/a/a/q/i;->I:[C

    aget-char v4, v3, v0

    if-ge v4, v15, :cond_2

    .line 11
    aget v1, v14, v4

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_2
    if-le v4, v13, :cond_3

    const/16 v16, -0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v11, :cond_1

    :goto_2
    move/from16 v16, v1

    :goto_3
    sub-int v1, v0, v2

    if-lez v1, :cond_4

    .line 12
    iget-object v3, v6, Le/b/a/a/q/i;->G:Ljava/io/Writer;

    iget-object v5, v6, Le/b/a/a/q/i;->I:[C

    invoke-virtual {v3, v5, v2, v1}, Ljava/io/Writer;->write([CII)V

    if-lt v0, v11, :cond_4

    goto :goto_6

    :cond_4
    add-int/lit8 v17, v0, 0x1

    .line 13
    iget-object v1, v6, Le/b/a/a/q/i;->I:[C

    move-object/from16 v0, p0

    move/from16 v2, v17

    move v3, v11

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Le/b/a/a/q/i;->a([CIICI)I

    move-result v2

    move/from16 v1, v16

    move/from16 v0, v17

    goto :goto_1

    .line 14
    :cond_5
    iget-object v13, v6, Le/b/a/a/q/c;->B:[I

    .line 15
    array-length v14, v13

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_4
    if-ge v0, v11, :cond_9

    .line 16
    :cond_6
    iget-object v2, v6, Le/b/a/a/q/i;->I:[C

    aget-char v4, v2, v0

    if-ge v4, v14, :cond_7

    .line 17
    aget v2, v13, v4

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v11, :cond_6

    :goto_5
    sub-int v2, v0, v1

    if-lez v2, :cond_8

    .line 18
    iget-object v3, v6, Le/b/a/a/q/i;->G:Ljava/io/Writer;

    iget-object v5, v6, Le/b/a/a/q/i;->I:[C

    invoke-virtual {v3, v5, v1, v2}, Ljava/io/Writer;->write([CII)V

    if-lt v0, v11, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v15, v0, 0x1

    .line 19
    iget-object v1, v6, Le/b/a/a/q/i;->I:[C

    aget v5, v13, v4

    move-object/from16 v0, p0

    move v2, v15

    move v3, v11

    invoke-virtual/range {v0 .. v5}, Le/b/a/a/q/i;->a([CIICI)I

    move-result v1

    move v0, v15

    goto :goto_4

    :cond_9
    :goto_6
    if-lt v12, v10, :cond_a

    return-void

    :cond_a
    move v0, v12

    goto/16 :goto_0

    .line 20
    :cond_b
    iget v2, v6, Le/b/a/a/q/i;->K:I

    add-int/2addr v2, v0

    if-le v2, v1, :cond_c

    .line 21
    invoke-virtual/range {p0 .. p0}, Le/b/a/a/q/i;->e()V

    .line 22
    :cond_c
    iget-object v1, v6, Le/b/a/a/q/i;->I:[C

    iget v2, v6, Le/b/a/a/q/i;->K:I

    invoke-virtual {v7, v9, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 23
    iget v1, v6, Le/b/a/a/q/c;->C:I

    if-eqz v1, :cond_11

    .line 24
    iget v2, v6, Le/b/a/a/q/i;->K:I

    add-int/2addr v2, v0

    .line 25
    iget-object v0, v6, Le/b/a/a/q/c;->B:[I

    .line 26
    array-length v3, v0

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 27
    :goto_7
    iget v4, v6, Le/b/a/a/q/i;->K:I

    if-ge v4, v2, :cond_15

    .line 28
    :cond_d
    iget-object v4, v6, Le/b/a/a/q/i;->I:[C

    iget v5, v6, Le/b/a/a/q/i;->K:I

    aget-char v4, v4, v5

    if-ge v4, v3, :cond_e

    .line 29
    aget v5, v0, v4

    if-eqz v5, :cond_10

    goto :goto_8

    :cond_e
    if-le v4, v1, :cond_10

    const/4 v5, -0x1

    .line 30
    :goto_8
    iget v7, v6, Le/b/a/a/q/i;->K:I

    iget v9, v6, Le/b/a/a/q/i;->J:I

    sub-int/2addr v7, v9

    if-lez v7, :cond_f

    .line 31
    iget-object v10, v6, Le/b/a/a/q/i;->G:Ljava/io/Writer;

    iget-object v11, v6, Le/b/a/a/q/i;->I:[C

    invoke-virtual {v10, v11, v9, v7}, Ljava/io/Writer;->write([CII)V

    .line 32
    :cond_f
    iget v7, v6, Le/b/a/a/q/i;->K:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Le/b/a/a/q/i;->K:I

    .line 33
    invoke-virtual {v6, v4, v5}, Le/b/a/a/q/i;->a(CI)V

    goto :goto_7

    .line 34
    :cond_10
    iget v4, v6, Le/b/a/a/q/i;->K:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v6, Le/b/a/a/q/i;->K:I

    if-lt v4, v2, :cond_d

    goto :goto_a

    .line 35
    :cond_11
    iget v1, v6, Le/b/a/a/q/i;->K:I

    add-int/2addr v1, v0

    .line 36
    iget-object v0, v6, Le/b/a/a/q/c;->B:[I

    .line 37
    array-length v2, v0

    .line 38
    :goto_9
    iget v3, v6, Le/b/a/a/q/i;->K:I

    if-ge v3, v1, :cond_15

    .line 39
    :cond_12
    iget-object v3, v6, Le/b/a/a/q/i;->I:[C

    iget v4, v6, Le/b/a/a/q/i;->K:I

    aget-char v5, v3, v4

    if-ge v5, v2, :cond_14

    .line 40
    aget v5, v0, v5

    if-eqz v5, :cond_14

    .line 41
    iget v5, v6, Le/b/a/a/q/i;->J:I

    sub-int/2addr v4, v5

    if-lez v4, :cond_13

    .line 42
    iget-object v7, v6, Le/b/a/a/q/i;->G:Ljava/io/Writer;

    invoke-virtual {v7, v3, v5, v4}, Ljava/io/Writer;->write([CII)V

    .line 43
    :cond_13
    iget-object v3, v6, Le/b/a/a/q/i;->I:[C

    iget v4, v6, Le/b/a/a/q/i;->K:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v6, Le/b/a/a/q/i;->K:I

    aget-char v3, v3, v4

    .line 44
    aget v4, v0, v3

    invoke-virtual {v6, v3, v4}, Le/b/a/a/q/i;->a(CI)V

    goto :goto_9

    .line 45
    :cond_14
    iget v3, v6, Le/b/a/a/q/i;->K:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v6, Le/b/a/a/q/i;->K:I

    if-lt v3, v1, :cond_12

    :cond_15
    :goto_a
    return-void
.end method

.method public final f()V
    .locals 3

    .line 20
    iget v0, p0, Le/b/a/a/q/i;->K:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Le/b/a/a/q/i;->L:I

    if-lt v0, v1, :cond_0

    .line 21
    invoke-virtual {p0}, Le/b/a/a/q/i;->e()V

    .line 22
    :cond_0
    iget v0, p0, Le/b/a/a/q/i;->K:I

    .line 23
    iget-object v1, p0, Le/b/a/a/q/i;->I:[C

    const/16 v2, 0x6e

    .line 24
    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x75

    .line 25
    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x6c

    .line 26
    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 27
    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 28
    iput v0, p0, Le/b/a/a/q/i;->K:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    iget v1, p0, Le/b/a/a/q/i;->L:I

    iget v2, p0, Le/b/a/a/q/i;->K:I

    sub-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Le/b/a/a/q/i;->e()V

    .line 4
    iget v1, p0, Le/b/a/a/q/i;->L:I

    iget v2, p0, Le/b/a/a/q/i;->K:I

    sub-int/2addr v1, v2

    :cond_0
    const/4 v2, 0x0

    if-lt v1, v0, :cond_1

    .line 5
    iget-object v1, p0, Le/b/a/a/q/i;->I:[C

    iget v3, p0, Le/b/a/a/q/i;->K:I

    invoke-virtual {p1, v2, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 6
    iget p1, p0, Le/b/a/a/q/i;->K:I

    add-int/2addr p1, v0

    iput p1, p0, Le/b/a/a/q/i;->K:I

    goto :goto_1

    .line 7
    :cond_1
    iget v0, p0, Le/b/a/a/q/i;->L:I

    iget v1, p0, Le/b/a/a/q/i;->K:I

    sub-int/2addr v0, v1

    .line 8
    iget-object v3, p0, Le/b/a/a/q/i;->I:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 9
    iget v1, p0, Le/b/a/a/q/i;->K:I

    add-int/2addr v1, v0

    iput v1, p0, Le/b/a/a/q/i;->K:I

    .line 10
    invoke-virtual {p0}, Le/b/a/a/q/i;->e()V

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    .line 12
    :goto_0
    iget v3, p0, Le/b/a/a/q/i;->L:I

    if-le v1, v3, :cond_2

    add-int v4, v0, v3

    .line 13
    iget-object v5, p0, Le/b/a/a/q/i;->I:[C

    invoke-virtual {p1, v0, v4, v5, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 14
    iput v2, p0, Le/b/a/a/q/i;->J:I

    .line 15
    iput v3, p0, Le/b/a/a/q/i;->K:I

    .line 16
    invoke-virtual {p0}, Le/b/a/a/q/i;->e()V

    sub-int/2addr v1, v3

    move v0, v4

    goto :goto_0

    :cond_2
    add-int v3, v0, v1

    .line 17
    iget-object v4, p0, Le/b/a/a/q/i;->I:[C

    invoke-virtual {p1, v0, v3, v4, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 18
    iput v2, p0, Le/b/a/a/q/i;->J:I

    .line 19
    iput v1, p0, Le/b/a/a/q/i;->K:I

    :goto_1
    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/b/a/a/q/i;->e()V

    .line 2
    iget-object v0, p0, Le/b/a/a/q/i;->G:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Le/b/a/a/f$a;->FLUSH_PASSED_TO_STREAM:Le/b/a/a/f$a;

    invoke-virtual {p0, v0}, Le/b/a/a/o/a;->a(Le/b/a/a/f$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/b/a/a/q/i;->G:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    :cond_0
    return-void
.end method
