.class public final Lk/e/a/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/e/a/x$a;
    }
.end annotation


# instance fields
.field public final a:Lk/e/a/g;

.field public final b:Lk/e/a/d;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I

.field public f:[Lk/e/a/x$a;

.field public g:I

.field public h:Lk/e/a/c;

.field public i:I

.field public j:Lk/e/a/c;

.field public k:I

.field public l:[Lk/e/a/x$a;


# direct methods
.method public constructor <init>(Lk/e/a/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk/e/a/x;->a:Lk/e/a/g;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lk/e/a/x;->b:Lk/e/a/d;

    const/16 p1, 0x100

    new-array p1, p1, [Lk/e/a/x$a;

    .line 4
    iput-object p1, p0, Lk/e/a/x;->f:[Lk/e/a/x$a;

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lk/e/a/x;->g:I

    .line 6
    new-instance p1, Lk/e/a/c;

    invoke-direct {p1}, Lk/e/a/c;-><init>()V

    iput-object p1, p0, Lk/e/a/x;->h:Lk/e/a/c;

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    mul-int p2, p2, p1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p1

    mul-int p1, p1, p2

    mul-int p1, p1, p4

    add-int/2addr p1, p0

    const p0, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method public static b(II)I
    .locals 0

    add-int/2addr p0, p1

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method public static b(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    mul-int p2, p2, p1

    add-int/lit8 p3, p3, 0x1

    mul-int p3, p3, p2

    add-int/2addr p3, p0

    const p0, 0x7fffffff

    and-int/2addr p0, p3

    return p0
.end method

.method public static b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    mul-int p2, p2, p1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p1

    mul-int p1, p1, p2

    add-int/2addr p1, p0

    const p0, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 10

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x81

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    const v2, 0x7fffffff

    and-int v9, v0, v2

    .line 154
    invoke-virtual {p0, v9}, Lk/e/a/x;->b(I)Lk/e/a/x$a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 155
    iget v2, v0, Lk/e/a/w;->b:I

    if-ne v2, v1, :cond_0

    iget v2, v0, Lk/e/a/x$a;->h:I

    if-ne v2, v9, :cond_0

    iget-wide v2, v0, Lk/e/a/w;->f:J

    int-to-long v4, p2

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iget-object v2, v0, Lk/e/a/w;->e:Ljava/lang/String;

    .line 156
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    iget p1, v0, Lk/e/a/w;->a:I

    return p1

    .line 158
    :cond_0
    iget-object v0, v0, Lk/e/a/x$a;->i:Lk/e/a/x$a;

    goto :goto_0

    .line 159
    :cond_1
    new-instance v0, Lk/e/a/x$a;

    iget v4, p0, Lk/e/a/x;->k:I

    const/16 v5, 0x81

    int-to-long v7, p2

    move-object v3, v0

    move-object v6, p1

    invoke-direct/range {v3 .. v9}, Lk/e/a/x$a;-><init>(IILjava/lang/String;JI)V

    invoke-virtual {p0, v0}, Lk/e/a/x;->a(Lk/e/a/x$a;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int v1, v1, v0

    const/16 v0, 0xc

    add-int/2addr v1, v0

    const v2, 0x7fffffff

    and-int v8, v1, v2

    .line 161
    invoke-virtual {p0, v8}, Lk/e/a/x;->b(I)Lk/e/a/x$a;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 162
    iget v2, v1, Lk/e/a/w;->b:I

    if-ne v2, v0, :cond_0

    iget v2, v1, Lk/e/a/x$a;->h:I

    if-ne v2, v8, :cond_0

    iget-object v2, v1, Lk/e/a/w;->d:Ljava/lang/String;

    .line 163
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lk/e/a/w;->e:Ljava/lang/String;

    .line 164
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    iget p1, v1, Lk/e/a/w;->a:I

    return p1

    .line 166
    :cond_0
    iget-object v1, v1, Lk/e/a/x$a;->i:Lk/e/a/x$a;

    goto :goto_0

    .line 167
    :cond_1
    iget-object v1, p0, Lk/e/a/x;->h:Lk/e/a/c;

    invoke-virtual {p0, p1}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, p2}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lk/e/a/c;->b(III)Lk/e/a/c;

    .line 168
    new-instance v0, Lk/e/a/x$a;

    iget v4, p0, Lk/e/a/x;->g:I

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lk/e/a/x;->g:I

    const/16 v5, 0xc

    move-object v3, v0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lk/e/a/x$a;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lk/e/a/x;->b(Lk/e/a/x$a;)Lk/e/a/x$a;

    iget p1, v0, Lk/e/a/w;->a:I

    return p1
.end method

.method public final a(Lk/e/a/x$a;)I
    .locals 4

    .line 139
    iget-object v0, p0, Lk/e/a/x;->l:[Lk/e/a/x$a;

    if-nez v0, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [Lk/e/a/x$a;

    .line 140
    iput-object v0, p0, Lk/e/a/x;->l:[Lk/e/a/x$a;

    .line 141
    :cond_0
    iget v0, p0, Lk/e/a/x;->k:I

    iget-object v1, p0, Lk/e/a/x;->l:[Lk/e/a/x$a;

    array-length v2, v1

    if-ne v0, v2, :cond_1

    .line 142
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lk/e/a/x$a;

    .line 143
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iput-object v0, p0, Lk/e/a/x;->l:[Lk/e/a/x$a;

    .line 145
    :cond_1
    iget-object v0, p0, Lk/e/a/x;->l:[Lk/e/a/x$a;

    iget v1, p0, Lk/e/a/x;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lk/e/a/x;->k:I

    aput-object p1, v0, v1

    .line 146
    invoke-virtual {p0, p1}, Lk/e/a/x;->b(Lk/e/a/x$a;)Lk/e/a/x$a;

    iget p1, p1, Lk/e/a/w;->a:I

    return p1
.end method

.method public a(I)Lk/e/a/w;
    .locals 1

    const/4 v0, 0x3

    .line 61
    invoke-virtual {p0, v0, p1}, Lk/e/a/x;->a(II)Lk/e/a/w;

    move-result-object p1

    return-object p1
.end method

.method public final a(II)Lk/e/a/w;
    .locals 7

    .line 62
    invoke-static {p1, p2}, Lk/e/a/x;->b(II)I

    move-result v5

    .line 63
    invoke-virtual {p0, v5}, Lk/e/a/x;->b(I)Lk/e/a/x$a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 64
    iget v1, v0, Lk/e/a/w;->b:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Lk/e/a/x$a;->h:I

    if-ne v1, v5, :cond_0

    iget-wide v1, v0, Lk/e/a/w;->f:J

    int-to-long v3, p2

    cmp-long v6, v1, v3

    if-nez v6, :cond_0

    return-object v0

    .line 65
    :cond_0
    iget-object v0, v0, Lk/e/a/x$a;->i:Lk/e/a/x$a;

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lk/e/a/x;->h:Lk/e/a/c;

    invoke-virtual {v0, p1}, Lk/e/a/c;->b(I)Lk/e/a/c;

    invoke-virtual {v0, p2}, Lk/e/a/c;->c(I)Lk/e/a/c;

    .line 67
    new-instance v6, Lk/e/a/x$a;

    iget v1, p0, Lk/e/a/x;->g:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lk/e/a/x;->g:I

    int-to-long v3, p2

    move-object v0, v6

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lk/e/a/x$a;-><init>(IIJI)V

    invoke-virtual {p0, v6}, Lk/e/a/x;->b(Lk/e/a/x$a;)Lk/e/a/x$a;

    return-object v6
.end method

.method public final a(IJ)Lk/e/a/w;
    .locals 10

    long-to-int v0, p2

    add-int v1, p1, v0

    const/16 v2, 0x20

    ushr-long v2, p2, v2

    long-to-int v3, v2

    add-int/2addr v1, v3

    const v2, 0x7fffffff

    and-int v9, v1, v2

    .line 68
    invoke-virtual {p0, v9}, Lk/e/a/x;->b(I)Lk/e/a/x$a;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 69
    iget v2, v1, Lk/e/a/w;->b:I

    if-ne v2, p1, :cond_0

    iget v2, v1, Lk/e/a/x$a;->h:I

    if-ne v2, v9, :cond_0

    iget-wide v4, v1, Lk/e/a/w;->f:J

    cmp-long v2, v4, p2

    if-nez v2, :cond_0

    return-object v1

    .line 70
    :cond_0
    iget-object v1, v1, Lk/e/a/x$a;->i:Lk/e/a/x$a;

    goto :goto_0

    .line 71
    :cond_1
    iget v5, p0, Lk/e/a/x;->g:I

    .line 72
    iget-object v1, p0, Lk/e/a/x;->h:Lk/e/a/c;

    invoke-virtual {v1, p1}, Lk/e/a/c;->b(I)Lk/e/a/c;

    .line 73
    iget v2, v1, Lk/e/a/c;->b:I

    add-int/lit8 v4, v2, 0x8

    .line 74
    iget-object v6, v1, Lk/e/a/c;->a:[B

    array-length v6, v6

    if-le v4, v6, :cond_2

    const/16 v4, 0x8

    .line 75
    invoke-virtual {v1, v4}, Lk/e/a/c;->a(I)V

    .line 76
    :cond_2
    iget-object v4, v1, Lk/e/a/c;->a:[B

    add-int/lit8 v6, v2, 0x1

    ushr-int/lit8 v7, v3, 0x18

    int-to-byte v7, v7

    .line 77
    aput-byte v7, v4, v2

    add-int/lit8 v2, v6, 0x1

    ushr-int/lit8 v7, v3, 0x10

    int-to-byte v7, v7

    .line 78
    aput-byte v7, v4, v6

    add-int/lit8 v6, v2, 0x1

    ushr-int/lit8 v7, v3, 0x8

    int-to-byte v7, v7

    .line 79
    aput-byte v7, v4, v2

    add-int/lit8 v2, v6, 0x1

    int-to-byte v3, v3

    .line 80
    aput-byte v3, v4, v6

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v6, v0, 0x18

    int-to-byte v6, v6

    .line 81
    aput-byte v6, v4, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v6, v0, 0x10

    int-to-byte v6, v6

    .line 82
    aput-byte v6, v4, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v6, v0, 0x8

    int-to-byte v6, v6

    .line 83
    aput-byte v6, v4, v2

    add-int/lit8 v2, v3, 0x1

    int-to-byte v0, v0

    .line 84
    aput-byte v0, v4, v3

    .line 85
    iput v2, v1, Lk/e/a/c;->b:I

    .line 86
    iget v0, p0, Lk/e/a/x;->g:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lk/e/a/x;->g:I

    .line 87
    new-instance v0, Lk/e/a/x$a;

    move-object v4, v0

    move v6, p1

    move-wide v7, p2

    invoke-direct/range {v4 .. v9}, Lk/e/a/x$a;-><init>(IIJI)V

    invoke-virtual {p0, v0}, Lk/e/a/x;->b(Lk/e/a/x$a;)Lk/e/a/x$a;

    return-object v0
.end method

.method public final a(ILjava/lang/String;)Lk/e/a/w;
    .locals 4

    .line 147
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, p1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 148
    invoke-virtual {p0, v0}, Lk/e/a/x;->b(I)Lk/e/a/x$a;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 149
    iget v2, v1, Lk/e/a/w;->b:I

    if-ne v2, p1, :cond_0

    iget v2, v1, Lk/e/a/x$a;->h:I

    if-ne v2, v0, :cond_0

    iget-object v2, v1, Lk/e/a/w;->e:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 150
    :cond_0
    iget-object v1, v1, Lk/e/a/x$a;->i:Lk/e/a/x$a;

    goto :goto_0

    .line 151
    :cond_1
    iget-object v1, p0, Lk/e/a/x;->h:Lk/e/a/c;

    invoke-virtual {p0, p2}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lk/e/a/c;->b(II)Lk/e/a/c;

    .line 152
    new-instance v1, Lk/e/a/x$a;

    iget v2, p0, Lk/e/a/x;->g:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lk/e/a/x;->g:I

    invoke-direct {v1, v2, p1, p2, v0}, Lk/e/a/x$a;-><init>(IILjava/lang/String;I)V

    invoke-virtual {p0, v1}, Lk/e/a/x;->b(Lk/e/a/x$a;)Lk/e/a/x$a;

    return-object v1
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;I)Lk/e/a/w;
    .locals 10

    .line 103
    invoke-static {p1, p2, p3, p4}, Lk/e/a/x;->b(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 104
    invoke-virtual {p0, v8}, Lk/e/a/x;->b(I)Lk/e/a/x$a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 105
    iget v1, v0, Lk/e/a/w;->b:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Lk/e/a/x$a;->h:I

    if-ne v1, v8, :cond_0

    iget-wide v1, v0, Lk/e/a/w;->f:J

    int-to-long v3, p4

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget-object v1, v0, Lk/e/a/w;->d:Ljava/lang/String;

    .line 106
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lk/e/a/w;->e:Ljava/lang/String;

    .line 107
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 108
    :cond_0
    iget-object v0, v0, Lk/e/a/x$a;->i:Lk/e/a/x$a;

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lk/e/a/x;->h:Lk/e/a/c;

    invoke-virtual {p0, p2, p3}, Lk/e/a/x;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, p4, v1}, Lk/e/a/c;->b(III)Lk/e/a/c;

    .line 110
    new-instance v9, Lk/e/a/x$a;

    iget v1, p0, Lk/e/a/x;->g:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lk/e/a/x;->g:I

    const/4 v3, 0x0

    int-to-long v6, p4

    move-object v0, v9

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Lk/e/a/x$a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {p0, v9}, Lk/e/a/x;->b(Lk/e/a/x$a;)Lk/e/a/x$a;

    return-object v9
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lk/e/a/w;
    .locals 10

    const/16 v0, 0xf

    .line 88
    invoke-static {v0, p2, p3, p4, p1}, Lk/e/a/x;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 89
    invoke-virtual {p0, v9}, Lk/e/a/x;->b(I)Lk/e/a/x$a;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 90
    iget v2, v1, Lk/e/a/w;->b:I

    if-ne v2, v0, :cond_0

    iget v2, v1, Lk/e/a/x$a;->h:I

    if-ne v2, v9, :cond_0

    iget-wide v2, v1, Lk/e/a/w;->f:J

    int-to-long v4, p1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iget-object v2, v1, Lk/e/a/w;->c:Ljava/lang/String;

    .line 91
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lk/e/a/w;->d:Ljava/lang/String;

    .line 92
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lk/e/a/w;->e:Ljava/lang/String;

    .line 93
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 94
    :cond_0
    iget-object v1, v1, Lk/e/a/x$a;->i:Lk/e/a/x$a;

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-gt p1, v1, :cond_2

    .line 95
    iget-object p5, p0, Lk/e/a/x;->h:Lk/e/a/c;

    const/16 v1, 0x9

    .line 96
    invoke-virtual {p0, v1, p2, p3, p4}, Lk/e/a/x;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lk/e/a/x$a;

    move-result-object v1

    .line 97
    iget v1, v1, Lk/e/a/w;->a:I

    invoke-virtual {p5, v0, p1, v1}, Lk/e/a/c;->a(III)Lk/e/a/c;

    goto :goto_2

    .line 98
    :cond_2
    iget-object v1, p0, Lk/e/a/x;->h:Lk/e/a/c;

    if-eqz p5, :cond_3

    const/16 p5, 0xb

    goto :goto_1

    :cond_3
    const/16 p5, 0xa

    .line 99
    :goto_1
    invoke-virtual {p0, p5, p2, p3, p4}, Lk/e/a/x;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lk/e/a/x$a;

    move-result-object p5

    .line 100
    iget p5, p5, Lk/e/a/w;->a:I

    .line 101
    invoke-virtual {v1, v0, p1, p5}, Lk/e/a/c;->a(III)Lk/e/a/c;

    .line 102
    :goto_2
    new-instance p5, Lk/e/a/x$a;

    iget v2, p0, Lk/e/a/x;->g:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lk/e/a/x;->g:I

    const/16 v3, 0xf

    int-to-long v7, p1

    move-object v1, p5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v9}, Lk/e/a/x$a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {p0, p5}, Lk/e/a/x;->b(Lk/e/a/x$a;)Lk/e/a/x$a;

    return-object p5
.end method

.method public a(Ljava/lang/Object;)Lk/e/a/w;
    .locals 6

    .line 1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lk/e/a/x;->a(I)Lk/e/a/w;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lk/e/a/x;->a(I)Lk/e/a/w;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lk/e/a/x;->a(I)Lk/e/a/w;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 8
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lk/e/a/x;->a(I)Lk/e/a/w;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lk/e/a/x;->a(I)Lk/e/a/w;

    move-result-object p1

    return-object p1

    .line 11
    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 12
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 13
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lk/e/a/x;->a(II)Lk/e/a/w;

    move-result-object p1

    return-object p1

    .line 14
    :cond_5
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 15
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 p1, 0x5

    .line 16
    invoke-virtual {p0, p1, v0, v1}, Lk/e/a/x;->a(IJ)Lk/e/a/w;

    move-result-object p1

    return-object p1

    .line 17
    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 18
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0, v1}, Lk/e/a/x;->a(IJ)Lk/e/a/w;

    move-result-object p1

    return-object p1

    .line 20
    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 21
    check-cast p1, Ljava/lang/String;

    const/16 v0, 0x8

    .line 22
    invoke-virtual {p0, v0, p1}, Lk/e/a/x;->a(ILjava/lang/String;)Lk/e/a/w;

    move-result-object p1

    return-object p1

    .line 23
    :cond_8
    instance-of v0, p1, Lk/e/a/y;

    if-eqz v0, :cond_c

    .line 24
    check-cast p1, Lk/e/a/y;

    .line 25
    iget v0, p1, Lk/e/a/y;->a:I

    const/16 v1, 0xc

    const/16 v2, 0xa

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    :cond_9
    if-ne v0, v2, :cond_a

    .line 26
    iget-object v0, p1, Lk/e/a/y;->b:Ljava/lang/String;

    iget v1, p1, Lk/e/a/y;->c:I

    iget p1, p1, Lk/e/a/y;->d:I

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Lk/e/a/x;->a(Ljava/lang/String;)Lk/e/a/w;

    move-result-object p1

    return-object p1

    :cond_a
    const/16 v1, 0xb

    if-ne v0, v1, :cond_b

    .line 28
    invoke-virtual {p1}, Lk/e/a/y;->a()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    .line 29
    invoke-virtual {p0, v0, p1}, Lk/e/a/x;->a(ILjava/lang/String;)Lk/e/a/w;

    move-result-object p1

    return-object p1

    .line 30
    :cond_b
    invoke-virtual {p1}, Lk/e/a/y;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/e/a/x;->a(Ljava/lang/String;)Lk/e/a/w;

    move-result-object p1

    return-object p1

    .line 31
    :cond_c
    instance-of v0, p1, Lk/e/a/o;

    if-eqz v0, :cond_d

    .line 32
    check-cast p1, Lk/e/a/o;

    .line 33
    iget v1, p1, Lk/e/a/o;->a:I

    .line 34
    iget-object v2, p1, Lk/e/a/o;->b:Ljava/lang/String;

    .line 35
    iget-object v3, p1, Lk/e/a/o;->c:Ljava/lang/String;

    .line 36
    iget-object v4, p1, Lk/e/a/o;->d:Ljava/lang/String;

    .line 37
    iget-boolean v5, p1, Lk/e/a/o;->e:Z

    move-object v0, p0

    .line 38
    invoke-virtual/range {v0 .. v5}, Lk/e/a/x;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lk/e/a/w;

    move-result-object p1

    return-object p1

    .line 39
    :cond_d
    instance-of v0, p1, Lk/e/a/h;

    if-eqz v0, :cond_e

    .line 40
    check-cast p1, Lk/e/a/h;

    .line 41
    iget-object v0, p1, Lk/e/a/h;->a:Ljava/lang/String;

    .line 42
    iget-object v1, p1, Lk/e/a/h;->b:Ljava/lang/String;

    .line 43
    iget-object v2, p1, Lk/e/a/h;->c:Lk/e/a/o;

    .line 44
    iget-object p1, p1, Lk/e/a/h;->d:[Ljava/lang/Object;

    .line 45
    invoke-virtual {p0, v2, p1}, Lk/e/a/x;->a(Lk/e/a/o;[Ljava/lang/Object;)Lk/e/a/w;

    move-result-object p1

    .line 46
    iget p1, p1, Lk/e/a/w;->a:I

    const/16 v2, 0x11

    invoke-virtual {p0, v2, v0, v1, p1}, Lk/e/a/x;->a(ILjava/lang/String;Ljava/lang/String;I)Lk/e/a/w;

    move-result-object p1

    return-object p1

    .line 47
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)Lk/e/a/w;
    .locals 1

    const/4 v0, 0x7

    .line 48
    invoke-virtual {p0, v0, p1}, Lk/e/a/x;->a(ILjava/lang/String;)Lk/e/a/w;

    move-result-object p1

    return-object p1
.end method

.method public varargs a(Lk/e/a/o;[Ljava/lang/Object;)Lk/e/a/w;
    .locals 9

    .line 111
    iget-object v0, p0, Lk/e/a/x;->j:Lk/e/a/c;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lk/e/a/c;

    invoke-direct {v0}, Lk/e/a/c;-><init>()V

    iput-object v0, p0, Lk/e/a/x;->j:Lk/e/a/c;

    .line 113
    :cond_0
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p2, v3

    .line 114
    invoke-virtual {p0, v4}, Lk/e/a/x;->a(Ljava/lang/Object;)Lk/e/a/w;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    :cond_1
    iget v1, v0, Lk/e/a/c;->b:I

    .line 116
    iget v4, p1, Lk/e/a/o;->a:I

    .line 117
    iget-object v5, p1, Lk/e/a/o;->b:Ljava/lang/String;

    .line 118
    iget-object v6, p1, Lk/e/a/o;->c:Ljava/lang/String;

    .line 119
    iget-object v7, p1, Lk/e/a/o;->d:Ljava/lang/String;

    .line 120
    iget-boolean v8, p1, Lk/e/a/o;->e:Z

    move-object v3, p0

    .line 121
    invoke-virtual/range {v3 .. v8}, Lk/e/a/x;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lk/e/a/w;

    move-result-object v3

    iget v3, v3, Lk/e/a/w;->a:I

    .line 122
    invoke-virtual {v0, v3}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 123
    array-length v3, p2

    .line 124
    invoke-virtual {v0, v3}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 125
    array-length v3, p2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, p2, v4

    .line 126
    invoke-virtual {p0, v5}, Lk/e/a/x;->a(Ljava/lang/Object;)Lk/e/a/w;

    move-result-object v5

    iget v5, v5, Lk/e/a/w;->a:I

    invoke-virtual {v0, v5}, Lk/e/a/c;->d(I)Lk/e/a/c;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 127
    :cond_2
    iget v0, v0, Lk/e/a/c;->b:I

    sub-int/2addr v0, v1

    .line 128
    invoke-virtual {p1}, Lk/e/a/o;->hashCode()I

    move-result p1

    .line 129
    array-length v3, p2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    aget-object v5, p2, v4

    .line 130
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    xor-int/2addr p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const p2, 0x7fffffff

    and-int v8, p1, p2

    .line 131
    iget-object p1, p0, Lk/e/a/x;->j:Lk/e/a/c;

    iget-object p1, p1, Lk/e/a/c;->a:[B

    .line 132
    iget-object p2, p0, Lk/e/a/x;->f:[Lk/e/a/x$a;

    array-length v3, p2

    rem-int v3, v8, v3

    aget-object p2, p2, v3

    :goto_3
    if-eqz p2, :cond_7

    .line 133
    iget v3, p2, Lk/e/a/w;->b:I

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    iget v3, p2, Lk/e/a/x$a;->h:I

    if-ne v3, v8, :cond_6

    .line 134
    iget-wide v3, p2, Lk/e/a/w;->f:J

    long-to-int v4, v3

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_5

    add-int v5, v1, v3

    .line 135
    aget-byte v5, p1, v5

    add-int v6, v4, v3

    aget-byte v6, p1, v6

    if-eq v5, v6, :cond_4

    const/4 v3, 0x0

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x1

    :goto_5
    if-eqz v3, :cond_6

    .line 136
    iget-object p1, p0, Lk/e/a/x;->j:Lk/e/a/c;

    iput v1, p1, Lk/e/a/c;->b:I

    goto :goto_6

    .line 137
    :cond_6
    iget-object p2, p2, Lk/e/a/x$a;->i:Lk/e/a/x$a;

    goto :goto_3

    .line 138
    :cond_7
    new-instance p2, Lk/e/a/x$a;

    iget v4, p0, Lk/e/a/x;->i:I

    add-int/lit8 p1, v4, 0x1

    iput p1, p0, Lk/e/a/x;->i:I

    const/16 v5, 0x40

    int-to-long v6, v1

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Lk/e/a/x$a;-><init>(IIJI)V

    invoke-virtual {p0, p2}, Lk/e/a/x;->b(Lk/e/a/x$a;)Lk/e/a/x$a;

    :goto_6
    return-object p2
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lk/e/a/x$a;
    .locals 10

    .line 49
    invoke-static {p1, p2, p3, p4}, Lk/e/a/x;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 50
    invoke-virtual {p0, v8}, Lk/e/a/x;->b(I)Lk/e/a/x$a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 51
    iget v1, v0, Lk/e/a/w;->b:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Lk/e/a/x$a;->h:I

    if-ne v1, v8, :cond_0

    iget-object v1, v0, Lk/e/a/w;->c:Ljava/lang/String;

    .line 52
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lk/e/a/w;->d:Ljava/lang/String;

    .line 53
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lk/e/a/w;->e:Ljava/lang/String;

    .line 54
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 55
    :cond_0
    iget-object v0, v0, Lk/e/a/x$a;->i:Lk/e/a/x$a;

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lk/e/a/x;->h:Lk/e/a/c;

    const/4 v1, 0x7

    .line 57
    invoke-virtual {p0, v1, p2}, Lk/e/a/x;->a(ILjava/lang/String;)Lk/e/a/w;

    move-result-object v1

    .line 58
    iget v1, v1, Lk/e/a/w;->a:I

    invoke-virtual {p0, p3, p4}, Lk/e/a/x;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 59
    invoke-virtual {v0, p1, v1, v2}, Lk/e/a/c;->b(III)Lk/e/a/c;

    .line 60
    new-instance v9, Lk/e/a/x$a;

    iget v1, p0, Lk/e/a/x;->g:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lk/e/a/x;->g:I

    const-wide/16 v6, 0x0

    move-object v0, v9

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lk/e/a/x$a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {p0, v9}, Lk/e/a/x;->b(Lk/e/a/x$a;)Lk/e/a/x$a;

    return-object v9
.end method

.method public b(Ljava/lang/String;)Lk/e/a/w;
    .locals 1

    const/16 v0, 0x13

    .line 15
    invoke-virtual {p0, v0, p1}, Lk/e/a/x;->a(ILjava/lang/String;)Lk/e/a/w;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)Lk/e/a/x$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/e/a/x;->f:[Lk/e/a/x$a;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final b(Lk/e/a/x$a;)Lk/e/a/x$a;
    .locals 7

    .line 2
    iget v0, p0, Lk/e/a/x;->e:I

    iget-object v1, p0, Lk/e/a/x;->f:[Lk/e/a/x$a;

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-le v0, v2, :cond_2

    .line 3
    array-length v0, v1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 4
    new-array v2, v1, [Lk/e/a/x$a;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 5
    iget-object v3, p0, Lk/e/a/x;->f:[Lk/e/a/x$a;

    aget-object v3, v3, v0

    :goto_1
    if-eqz v3, :cond_0

    .line 6
    iget v4, v3, Lk/e/a/x$a;->h:I

    rem-int/2addr v4, v1

    .line 7
    iget-object v5, v3, Lk/e/a/x$a;->i:Lk/e/a/x$a;

    .line 8
    aget-object v6, v2, v4

    iput-object v6, v3, Lk/e/a/x$a;->i:Lk/e/a/x$a;

    .line 9
    aput-object v3, v2, v4

    move-object v3, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 10
    :cond_1
    iput-object v2, p0, Lk/e/a/x;->f:[Lk/e/a/x$a;

    .line 11
    :cond_2
    iget v0, p0, Lk/e/a/x;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lk/e/a/x;->e:I

    .line 12
    iget v0, p1, Lk/e/a/x$a;->h:I

    iget-object v1, p0, Lk/e/a/x;->f:[Lk/e/a/x$a;

    array-length v2, v1

    rem-int/2addr v0, v2

    .line 13
    aget-object v2, v1, v0

    iput-object v2, p1, Lk/e/a/x$a;->i:Lk/e/a/x$a;

    .line 14
    aput-object p1, v1, v0

    return-object p1
.end method

.method public c(Ljava/lang/String;)I
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    .line 2
    invoke-virtual {p0, v0}, Lk/e/a/x;->b(I)Lk/e/a/x$a;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    .line 3
    iget v3, v2, Lk/e/a/w;->b:I

    if-ne v3, v1, :cond_0

    iget v3, v2, Lk/e/a/x$a;->h:I

    if-ne v3, v0, :cond_0

    iget-object v3, v2, Lk/e/a/w;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget p1, v2, Lk/e/a/w;->a:I

    return p1

    .line 6
    :cond_0
    iget-object v2, v2, Lk/e/a/x$a;->i:Lk/e/a/x$a;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Lk/e/a/x;->h:Lk/e/a/c;

    invoke-virtual {v2, v1}, Lk/e/a/c;->b(I)Lk/e/a/c;

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const v4, 0xffff

    if-gt v3, v4, :cond_5

    .line 9
    iget v5, v2, Lk/e/a/c;->b:I

    add-int/lit8 v6, v5, 0x2

    add-int/2addr v6, v3

    .line 10
    iget-object v7, v2, Lk/e/a/c;->a:[B

    array-length v7, v7

    if-le v6, v7, :cond_2

    add-int/lit8 v6, v3, 0x2

    .line 11
    invoke-virtual {v2, v6}, Lk/e/a/c;->a(I)V

    .line 12
    :cond_2
    iget-object v6, v2, Lk/e/a/c;->a:[B

    add-int/lit8 v7, v5, 0x1

    ushr-int/lit8 v8, v3, 0x8

    int-to-byte v8, v8

    .line 13
    aput-byte v8, v6, v5

    add-int/lit8 v5, v7, 0x1

    int-to-byte v8, v3

    .line 14
    aput-byte v8, v6, v7

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v3, :cond_4

    .line 15
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v1, :cond_3

    const/16 v9, 0x7f

    if-gt v8, v9, :cond_3

    add-int/lit8 v9, v5, 0x1

    int-to-byte v8, v8

    .line 16
    aput-byte v8, v6, v5

    add-int/lit8 v7, v7, 0x1

    move v5, v9

    goto :goto_1

    .line 17
    :cond_3
    iput v5, v2, Lk/e/a/c;->b:I

    .line 18
    invoke-virtual {v2, p1, v7, v4}, Lk/e/a/c;->a(Ljava/lang/String;II)Lk/e/a/c;

    goto :goto_2

    .line 19
    :cond_4
    iput v5, v2, Lk/e/a/c;->b:I

    .line 20
    :goto_2
    new-instance v2, Lk/e/a/x$a;

    iget v3, p0, Lk/e/a/x;->g:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lk/e/a/x;->g:I

    invoke-direct {v2, v3, v1, p1, v0}, Lk/e/a/x$a;-><init>(IILjava/lang/String;I)V

    invoke-virtual {p0, v2}, Lk/e/a/x;->b(Lk/e/a/x$a;)Lk/e/a/x$a;

    iget p1, v2, Lk/e/a/w;->a:I

    return p1

    .line 21
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "UTF8 string too large"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x80

    add-int/2addr v0, v1

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    .line 2
    invoke-virtual {p0, v0}, Lk/e/a/x;->b(I)Lk/e/a/x$a;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    .line 3
    iget v3, v2, Lk/e/a/w;->b:I

    if-ne v3, v1, :cond_0

    iget v3, v2, Lk/e/a/x$a;->h:I

    if-ne v3, v0, :cond_0

    iget-object v3, v2, Lk/e/a/w;->e:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget p1, v2, Lk/e/a/w;->a:I

    return p1

    .line 5
    :cond_0
    iget-object v2, v2, Lk/e/a/x$a;->i:Lk/e/a/x$a;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v2, Lk/e/a/x$a;

    iget v3, p0, Lk/e/a/x;->k:I

    invoke-direct {v2, v3, v1, p1, v0}, Lk/e/a/x$a;-><init>(IILjava/lang/String;I)V

    invoke-virtual {p0, v2}, Lk/e/a/x;->a(Lk/e/a/x$a;)I

    move-result p1

    return p1
.end method
