.class public Lk/a/b/a/c/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/k0;


# static fields
.field public static final j:Ljava/nio/ByteBuffer;

.field public static final k:Lk/a/b/a/c/l;

.field public static l:I


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field public b:I

.field public c:[B

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sput-object v1, Lk/a/b/a/c/l;->j:Ljava/nio/ByteBuffer;

    .line 3
    new-instance v1, Lk/a/b/a/c/l;

    invoke-direct {v1, v0}, Lk/a/b/a/c/l;-><init>(Z)V

    sput-object v1, Lk/a/b/a/c/l;->k:Lk/a/b/a/c/l;

    const/4 v0, -0x1

    .line 4
    sput v0, Lk/a/b/a/c/l;->l:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lk/a/b/a/c/l;->b:I

    .line 3
    iput v0, p0, Lk/a/b/a/c/l;->h:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lk/a/b/a/c/l;->i:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lk/a/b/a/c/l;->b:I

    .line 15
    iput v0, p0, Lk/a/b/a/c/l;->h:I

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lk/a/b/a/c/l;->i:Z

    .line 17
    iput-boolean p1, p0, Lk/a/b/a/c/l;->i:Z

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lk/a/b/a/c/l;->b:I

    .line 7
    iput v0, p0, Lk/a/b/a/c/l;->h:I

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lk/a/b/a/c/l;->i:Z

    .line 9
    iput-object p1, p0, Lk/a/b/a/c/l;->c:[B

    .line 10
    iput p2, p0, Lk/a/b/a/c/l;->d:I

    if-eqz p1, :cond_0

    .line 11
    array-length p1, p1

    iput p1, p0, Lk/a/b/a/c/l;->g:I

    .line 12
    :cond_0
    iget p1, p0, Lk/a/b/a/c/l;->g:I

    iput p1, p0, Lk/a/b/a/c/l;->f:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 32
    iget v0, p0, Lk/a/b/a/c/l;->f:I

    return v0
.end method

.method public a(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;
    .locals 11

    .line 33
    invoke-virtual {p0}, Lk/a/b/a/c/l;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 34
    :cond_0
    invoke-virtual {p0}, Lk/a/b/a/c/l;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lk/a/b/a/c/l;->c:[B

    iget v1, p0, Lk/a/b/a/c/l;->d:I

    invoke-virtual {p0}, Lk/a/b/a/c/l;->c()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p1

    goto/16 :goto_3

    .line 36
    :cond_1
    invoke-virtual {p0}, Lk/a/b/a/c/l;->c()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    move-result v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 37
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 38
    iget v2, p0, Lk/a/b/a/c/l;->b:I

    .line 39
    iget v3, p0, Lk/a/b/a/c/l;->f:I

    .line 40
    iget v4, p0, Lk/a/b/a/c/l;->e:I

    sub-int/2addr v3, v4

    .line 41
    iget-object v4, p0, Lk/a/b/a/c/l;->c:[B

    array-length v4, v4

    iget v5, p0, Lk/a/b/a/c/l;->d:I

    sub-int/2addr v4, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 42
    iget-object v5, p0, Lk/a/b/a/c/l;->c:[B

    iget v6, p0, Lk/a/b/a/c/l;->d:I

    invoke-static {v5, v6, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 43
    sget-object v6, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v3, :cond_3

    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    .line 44
    :goto_0
    invoke-virtual {p1, v5, v1, v8}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v9

    .line 45
    invoke-virtual {v9}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz v8, :cond_4

    .line 46
    invoke-virtual {p1, v1}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v9

    goto :goto_2

    .line 47
    :cond_4
    invoke-virtual {v9}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v8

    if-eqz v8, :cond_5

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v7

    .line 48
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v6

    .line 49
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 50
    invoke-virtual {v6, v1}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    move-object v1, v6

    goto :goto_1

    .line 51
    :cond_5
    iget-object v5, p0, Lk/a/b/a/c/l;->a:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 52
    array-length v7, v5

    sub-int v8, v3, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 53
    invoke-static {v5, v6, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    add-int/2addr v4, v7

    .line 54
    :goto_1
    invoke-virtual {v9}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 55
    :goto_2
    invoke-virtual {v9}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 56
    invoke-virtual {v9}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 57
    :cond_6
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/CharBuffer;

    .line 58
    :goto_3
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(I)Lk/a/b/a/c/k0;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lk/a/b/a/c/l;->a(I)Lk/a/b/a/c/l;

    return-object p0
.end method

.method public a([B)Lk/a/b/a/c/k0;
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lk/a/b/a/c/l;->a([BII)Lk/a/b/a/c/l;

    return-object p0
.end method

.method public bridge synthetic a([BII)Lk/a/b/a/c/k0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/a/b/a/c/l;->a([BII)Lk/a/b/a/c/l;

    return-object p0
.end method

.method public a(I)Lk/a/b/a/c/l;
    .locals 5

    if-ltz p1, :cond_6

    .line 14
    iget v0, p0, Lk/a/b/a/c/l;->f:I

    if-gt p1, v0, :cond_6

    .line 15
    iget v0, p0, Lk/a/b/a/c/l;->e:I

    sub-int v0, p1, v0

    const/4 v1, -0x1

    if-ltz v0, :cond_2

    :goto_0
    if-lez v0, :cond_4

    .line 16
    iget-object v2, p0, Lk/a/b/a/c/l;->c:[B

    array-length v3, v2

    iget v4, p0, Lk/a/b/a/c/l;->d:I

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    add-int/2addr v4, v0

    .line 17
    iput v4, p0, Lk/a/b/a/c/l;->d:I

    goto :goto_2

    .line 18
    :cond_0
    array-length v2, v2

    sub-int/2addr v2, v4

    sub-int/2addr v0, v2

    .line 19
    iget v2, p0, Lk/a/b/a/c/l;->b:I

    if-eq v2, v1, :cond_1

    iget-object v3, p0, Lk/a/b/a/c/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    .line 20
    iget-object v2, p0, Lk/a/b/a/c/l;->a:Ljava/util/ArrayList;

    iget v3, p0, Lk/a/b/a/c/l;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lk/a/b/a/c/l;->b:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Lk/a/b/a/c/l;->c:[B

    const/4 v2, 0x0

    .line 21
    iput v2, p0, Lk/a/b/a/c/l;->d:I

    goto :goto_0

    .line 22
    :cond_1
    iget-object v2, p0, Lk/a/b/a/c/l;->c:[B

    array-length v2, v2

    iput v2, p0, Lk/a/b/a/c/l;->d:I

    goto :goto_0

    .line 23
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    :goto_1
    if-lez v0, :cond_4

    .line 24
    iget v2, p0, Lk/a/b/a/c/l;->d:I

    sub-int v3, v2, v0

    if-ltz v3, :cond_3

    .line 25
    iput v3, p0, Lk/a/b/a/c/l;->d:I

    goto :goto_2

    :cond_3
    sub-int/2addr v0, v2

    .line 26
    iget-object v2, p0, Lk/a/b/a/c/l;->a:Ljava/util/ArrayList;

    iget v3, p0, Lk/a/b/a/c/l;->b:I

    add-int/2addr v3, v1

    iput v3, p0, Lk/a/b/a/c/l;->b:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Lk/a/b/a/c/l;->c:[B

    .line 27
    array-length v2, v2

    iput v2, p0, Lk/a/b/a/c/l;->d:I

    goto :goto_1

    .line 28
    :cond_4
    :goto_2
    iput p1, p0, Lk/a/b/a/c/l;->e:I

    .line 29
    iget v0, p0, Lk/a/b/a/c/l;->h:I

    if-le v0, p1, :cond_5

    .line 30
    sget p1, Lk/a/b/a/c/l;->l:I

    iput p1, p0, Lk/a/b/a/c/l;->h:I

    :cond_5
    return-object p0

    .line 31
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "position must be non-negative and no greater than the limit"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a([BII)Lk/a/b/a/c/l;
    .locals 5

    .line 4
    array-length v0, p1

    or-int v1, p2, p3

    if-ltz v1, :cond_3

    int-to-long v1, p2

    int-to-long v3, p3

    add-long/2addr v1, v3

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-gtz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lk/a/b/a/c/l;->c()I

    move-result v0

    if-gt p3, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-lez p3, :cond_0

    .line 6
    iget-object v1, p0, Lk/a/b/a/c/l;->c:[B

    array-length v1, v1

    iget v2, p0, Lk/a/b/a/c/l;->d:I

    sub-int/2addr v1, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 7
    iget-object v2, p0, Lk/a/b/a/c/l;->c:[B

    iget v3, p0, Lk/a/b/a/c/l;->d:I

    add-int v4, p2, v0

    invoke-static {v2, v3, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v2, p0, Lk/a/b/a/c/l;->d:I

    add-int/2addr v2, v1

    iput v2, p0, Lk/a/b/a/c/l;->d:I

    sub-int/2addr p3, v1

    add-int/2addr v0, v1

    .line 9
    invoke-virtual {p0}, Lk/a/b/a/c/l;->p()V

    goto :goto_0

    .line 10
    :cond_0
    iget p1, p0, Lk/a/b/a/c/l;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lk/a/b/a/c/l;->e:I

    return-object p0

    .line 11
    :cond_1
    new-instance p1, Ljava/nio/BufferUnderflowException;

    invoke-direct {p1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p1

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "target is to small for specified read size"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "offset and legnth must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(I)Lk/a/b/a/c/k0;
    .locals 1

    if-ltz p1, :cond_2

    .line 1
    iget v0, p0, Lk/a/b/a/c/l;->g:I

    if-gt p1, v0, :cond_2

    .line 2
    iget v0, p0, Lk/a/b/a/c/l;->h:I

    if-le v0, p1, :cond_0

    .line 3
    sget v0, Lk/a/b/a/c/l;->l:I

    iput v0, p0, Lk/a/b/a/c/l;->h:I

    .line 4
    :cond_0
    iget v0, p0, Lk/a/b/a/c/l;->e:I

    if-le v0, p1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lk/a/b/a/c/l;->a(I)Lk/a/b/a/c/l;

    .line 6
    :cond_1
    iput p1, p0, Lk/a/b/a/c/l;->f:I

    return-object p0

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "limit must be non-negative and no greater than the capacity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b([B)Lk/a/b/a/c/l;
    .locals 3

    .line 9
    iget-boolean v0, p0, Lk/a/b/a/c/l;->i:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 10
    array-length v0, p1

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lk/a/b/a/c/l;->c:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 12
    iput-object p1, p0, Lk/a/b/a/c/l;->c:[B

    .line 13
    iput v1, p0, Lk/a/b/a/c/l;->d:I

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lk/a/b/a/c/l;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk/a/b/a/c/l;->a:Ljava/util/ArrayList;

    .line 16
    iget-object v2, p0, Lk/a/b/a/c/l;->c:[B

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lk/a/b/a/c/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iput v1, p0, Lk/a/b/a/c/l;->b:I

    .line 19
    invoke-virtual {p0}, Lk/a/b/a/c/l;->p()V

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {p0}, Lk/a/b/a/c/l;->p()V

    .line 22
    :goto_0
    iget v0, p0, Lk/a/b/a/c/l;->g:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lk/a/b/a/c/l;->g:I

    .line 23
    iput v0, p0, Lk/a/b/a/c/l;->f:I

    return-object p0

    .line 24
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array must not be empty or null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public b()Z
    .locals 1

    .line 8
    invoke-virtual {p0}, Lk/a/b/a/c/l;->c()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()I
    .locals 2

    .line 1
    iget v0, p0, Lk/a/b/a/c/l;->f:I

    iget v1, p0, Lk/a/b/a/c/l;->e:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public d()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/c/l;->c()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/l;->c:[B

    array-length v2, v0

    iget v3, p0, Lk/a/b/a/c/l;->d:I

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    if-lt v2, v1, :cond_0

    add-int/lit8 v2, v3, 0x1

    .line 3
    iput v2, p0, Lk/a/b/a/c/l;->d:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lk/a/b/a/c/l;->d:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v5, 0x1

    iput v3, p0, Lk/a/b/a/c/l;->d:I

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v2, v5

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lk/a/b/a/c/l;->d:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    or-int/2addr v0, v2

    .line 4
    invoke-virtual {p0}, Lk/a/b/a/c/l;->p()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    :goto_0
    if-ltz v0, :cond_1

    .line 5
    iget-object v2, p0, Lk/a/b/a/c/l;->c:[B

    iget v3, p0, Lk/a/b/a/c/l;->d:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lk/a/b/a/c/l;->d:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v4, v2

    .line 6
    invoke-virtual {p0}, Lk/a/b/a/c/l;->p()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move v0, v4

    .line 7
    :goto_1
    iget v2, p0, Lk/a/b/a/c/l;->e:I

    add-int/2addr v2, v1

    iput v2, p0, Lk/a/b/a/c/l;->e:I

    return v0

    .line 8
    :cond_2
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method public e()Ljava/nio/ByteBuffer;
    .locals 8

    .line 1
    iget v0, p0, Lk/a/b/a/c/l;->f:I

    .line 2
    iget v1, p0, Lk/a/b/a/c/l;->e:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lk/a/b/a/c/l;->j:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, p0, Lk/a/b/a/c/l;->c:[B

    array-length v2, v1

    iget v3, p0, Lk/a/b/a/c/l;->d:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_1

    .line 5
    invoke-static {v1, v3, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1

    .line 6
    :cond_1
    new-array v2, v0, [B

    .line 7
    iget v4, p0, Lk/a/b/a/c/l;->b:I

    .line 8
    array-length v5, v1

    sub-int/2addr v5, v3

    const/4 v6, 0x0

    invoke-static {v1, v3, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget-object v1, p0, Lk/a/b/a/c/l;->c:[B

    array-length v1, v1

    iget v3, p0, Lk/a/b/a/c/l;->d:I

    sub-int/2addr v1, v3

    :goto_0
    if-ge v1, v0, :cond_2

    .line 10
    iget-object v3, p0, Lk/a/b/a/c/l;->a:Ljava/util/ArrayList;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    sub-int v5, v0, v1

    .line 11
    array-length v7, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 12
    invoke-static {v3, v6, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v5

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 14
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lk/a/b/a/c/k0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lk/a/b/a/c/k0;

    .line 3
    invoke-virtual {p0}, Lk/a/b/a/c/l;->c()I

    move-result v1

    .line 4
    invoke-interface {p1}, Lk/a/b/a/c/k0;->c()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    if-nez v1, :cond_3

    return v0

    .line 5
    :cond_3
    invoke-virtual {p0}, Lk/a/b/a/c/l;->o()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lk/a/b/a/c/l;->c:[B

    array-length v3, v3

    iget v4, p0, Lk/a/b/a/c/l;->d:I

    sub-int/2addr v3, v4

    if-gt v1, v3, :cond_4

    goto :goto_3

    .line 6
    :cond_4
    invoke-interface {p0}, Lk/a/b/a/c/k0;->position()I

    move-result v1

    .line 7
    :try_start_0
    invoke-interface {p1}, Lk/a/b/a/c/k0;->position()I

    move-result v3

    :goto_0
    invoke-interface {p0}, Lk/a/b/a/c/k0;->b()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 8
    invoke-interface {p0}, Lk/a/b/a/c/k0;->get()B

    move-result v4

    invoke-interface {p1, v3}, Lk/a/b/a/c/k0;->get(I)B

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, v5, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_6

    .line 9
    invoke-interface {p0, v1}, Lk/a/b/a/c/k0;->a(I)Lk/a/b/a/c/k0;

    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    invoke-interface {p0, v1}, Lk/a/b/a/c/k0;->a(I)Lk/a/b/a/c/k0;

    :goto_2
    return v0

    :catchall_0
    move-exception p1

    invoke-interface {p0, v1}, Lk/a/b/a/c/k0;->a(I)Lk/a/b/a/c/k0;

    .line 10
    throw p1

    .line 11
    :cond_8
    :goto_3
    iget-object v3, p0, Lk/a/b/a/c/l;->c:[B

    iget v4, p0, Lk/a/b/a/c/l;->d:I

    .line 12
    invoke-interface {p1}, Lk/a/b/a/c/k0;->position()I

    move-result v5

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v1, :cond_a

    add-int v7, v4, v6

    .line 13
    aget-byte v7, v3, v7

    add-int v8, v5, v6

    invoke-interface {p1, v8}, Lk/a/b/a/c/k0;->get(I)B

    move-result v8

    if-eq v7, v8, :cond_9

    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    return v0
.end method

.method public f()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/c/l;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public g()Lk/a/b/a/c/k0;
    .locals 3

    .line 1
    new-instance v0, Lk/a/b/a/c/l;

    iget-object v1, p0, Lk/a/b/a/c/l;->c:[B

    iget v2, p0, Lk/a/b/a/c/l;->d:I

    invoke-direct {v0, v1, v2}, Lk/a/b/a/c/l;-><init>([BI)V

    .line 2
    iget-object v1, p0, Lk/a/b/a/c/l;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lk/a/b/a/c/l;->a:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lk/a/b/a/c/l;->a:Ljava/util/ArrayList;

    .line 4
    :cond_0
    iget v1, p0, Lk/a/b/a/c/l;->g:I

    iput v1, v0, Lk/a/b/a/c/l;->g:I

    .line 5
    iget v1, p0, Lk/a/b/a/c/l;->b:I

    iput v1, v0, Lk/a/b/a/c/l;->b:I

    .line 6
    iget v1, p0, Lk/a/b/a/c/l;->f:I

    iput v1, v0, Lk/a/b/a/c/l;->f:I

    .line 7
    iget v1, p0, Lk/a/b/a/c/l;->e:I

    iput v1, v0, Lk/a/b/a/c/l;->e:I

    .line 8
    iget v1, p0, Lk/a/b/a/c/l;->h:I

    iput v1, v0, Lk/a/b/a/c/l;->h:I

    .line 9
    iget-boolean v1, p0, Lk/a/b/a/c/l;->i:Z

    iput-boolean v1, v0, Lk/a/b/a/c/l;->i:Z

    return-object v0
.end method

.method public get()B
    .locals 4

    .line 1
    iget v0, p0, Lk/a/b/a/c/l;->e:I

    iget v1, p0, Lk/a/b/a/c/l;->f:I

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lk/a/b/a/c/l;->c:[B

    iget v2, p0, Lk/a/b/a/c/l;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lk/a/b/a/c/l;->d:I

    aget-byte v1, v1, v2

    add-int/lit8 v0, v0, 0x1

    .line 3
    iput v0, p0, Lk/a/b/a/c/l;->e:I

    .line 4
    invoke-virtual {p0}, Lk/a/b/a/c/l;->p()V

    return v1

    .line 5
    :cond_0
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method public get(I)B
    .locals 4

    if-ltz p1, :cond_5

    .line 6
    iget v0, p0, Lk/a/b/a/c/l;->f:I

    if-ge p1, v0, :cond_5

    .line 7
    iget v0, p0, Lk/a/b/a/c/l;->e:I

    if-ne p1, v0, :cond_0

    .line 8
    iget-object p1, p0, Lk/a/b/a/c/l;->c:[B

    iget v0, p0, Lk/a/b/a/c/l;->d:I

    aget-byte p1, p1, v0

    goto :goto_2

    :cond_0
    if-ge p1, v0, :cond_2

    .line 9
    iget v1, p0, Lk/a/b/a/c/l;->b:I

    .line 10
    iget v2, p0, Lk/a/b/a/c/l;->d:I

    .line 11
    iget-object v3, p0, Lk/a/b/a/c/l;->c:[B

    sub-int/2addr v0, p1

    :goto_0
    if-ltz v0, :cond_4

    sub-int p1, v2, v0

    if-ltz p1, :cond_1

    .line 12
    aget-byte p1, v3, p1

    goto :goto_2

    :cond_1
    sub-int/2addr v0, v2

    .line 13
    iget-object p1, p0, Lk/a/b/a/c/l;->a:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, [B

    .line 14
    array-length v2, v3

    goto :goto_0

    .line 15
    :cond_2
    iget v1, p0, Lk/a/b/a/c/l;->b:I

    .line 16
    iget v2, p0, Lk/a/b/a/c/l;->d:I

    .line 17
    iget-object v3, p0, Lk/a/b/a/c/l;->c:[B

    sub-int/2addr p1, v0

    :goto_1
    if-ltz p1, :cond_4

    .line 18
    array-length v0, v3

    sub-int/2addr v0, v2

    if-ge p1, v0, :cond_3

    add-int/2addr v2, p1

    .line 19
    aget-byte p1, v3, v2

    goto :goto_2

    .line 20
    :cond_3
    array-length v0, v3

    sub-int/2addr v0, v2

    sub-int/2addr p1, v0

    .line 21
    iget-object v0, p0, Lk/a/b/a/c/l;->a:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [B

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_2
    return p1

    .line 22
    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "The given index is not valid: "

    invoke-static {v1, p1}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/c/l;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lk/a/b/a/c/l;->d:I

    iget v1, p0, Lk/a/b/a/c/l;->e:I

    sub-int/2addr v0, v1

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Buffer not backed by a single array"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/c/l;->c()I

    move-result v0

    .line 2
    iget v1, p0, Lk/a/b/a/c/l;->b:I

    const/4 v2, 0x1

    if-ltz v1, :cond_4

    iget-object v3, p0, Lk/a/b/a/c/l;->c:[B

    array-length v4, v3

    iget v5, p0, Lk/a/b/a/c/l;->d:I

    sub-int/2addr v4, v5

    if-gt v0, v4, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lk/a/b/a/c/l;->c()I

    move-result v0

    move v4, v0

    :goto_0
    if-lez v4, :cond_2

    .line 4
    array-length v6, v3

    sub-int/2addr v6, v5

    if-gt v4, v6, :cond_1

    add-int/2addr v5, v4

    goto :goto_1

    .line 5
    :cond_1
    array-length v3, v3

    sub-int/2addr v3, v5

    sub-int/2addr v4, v3

    .line 6
    iget-object v3, p0, Lk/a/b/a/c/l;->a:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    :goto_1
    if-lez v0, :cond_5

    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v5, v5, -0x1

    .line 7
    aget-byte v4, v3, v5

    add-int/2addr v2, v4

    if-nez v5, :cond_3

    if-lez v1, :cond_3

    .line 8
    iget-object v3, p0, Lk/a/b/a/c/l;->a:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 9
    array-length v4, v3

    move v5, v4

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-lez v0, :cond_5

    mul-int/lit8 v2, v2, 0x1f

    .line 10
    iget-object v1, p0, Lk/a/b/a/c/l;->c:[B

    iget v3, p0, Lk/a/b/a/c/l;->d:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v3, v0

    aget-byte v1, v1, v3

    add-int/2addr v2, v1

    goto :goto_2

    :cond_5
    return v2
.end method

.method public i()Lk/a/b/a/c/k0;
    .locals 4

    .line 1
    iget v0, p0, Lk/a/b/a/c/l;->f:I

    .line 2
    iget v1, p0, Lk/a/b/a/c/l;->e:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lk/a/b/a/c/l;->k:Lk/a/b/a/c/l;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lk/a/b/a/c/l;

    iget-object v2, p0, Lk/a/b/a/c/l;->c:[B

    iget v3, p0, Lk/a/b/a/c/l;->d:I

    invoke-direct {v1, v2, v3}, Lk/a/b/a/c/l;-><init>([BI)V

    .line 5
    iget-object v2, p0, Lk/a/b/a/c/l;->a:Ljava/util/ArrayList;

    iput-object v2, v1, Lk/a/b/a/c/l;->a:Ljava/util/ArrayList;

    .line 6
    iget v2, p0, Lk/a/b/a/c/l;->b:I

    iput v2, v1, Lk/a/b/a/c/l;->b:I

    .line 7
    iput v0, v1, Lk/a/b/a/c/l;->g:I

    .line 8
    iput v0, v1, Lk/a/b/a/c/l;->f:I

    const/4 v0, 0x0

    .line 9
    iput v0, v1, Lk/a/b/a/c/l;->e:I

    .line 10
    iput-boolean v0, v1, Lk/a/b/a/c/l;->i:Z

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public j()[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/c/l;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/l;->c:[B

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Buffer not backed by a single array"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/c/l;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public l()J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/c/l;->c()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    const-wide/16 v2, 0x0

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/l;->c:[B

    array-length v4, v0

    iget v5, p0, Lk/a/b/a/c/l;->d:I

    sub-int/2addr v4, v5

    if-lt v4, v1, :cond_0

    add-int/lit8 v2, v5, 0x1

    .line 3
    iput v2, p0, Lk/a/b/a/c/l;->d:I

    aget-byte v3, v0, v5

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x38

    shl-long/2addr v3, v5

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lk/a/b/a/c/l;->d:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v6, v2

    const/16 v2, 0x30

    shl-long/2addr v6, v2

    or-long v2, v3, v6

    add-int/lit8 v4, v5, 0x1

    iput v4, p0, Lk/a/b/a/c/l;->d:I

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    const/16 v7, 0x28

    shl-long/2addr v5, v7

    or-long/2addr v2, v5

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lk/a/b/a/c/l;->d:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v6, v4

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long/2addr v2, v6

    add-int/lit8 v4, v5, 0x1

    iput v4, p0, Lk/a/b/a/c/l;->d:I

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    const/16 v7, 0x18

    shl-long/2addr v5, v7

    or-long/2addr v2, v5

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lk/a/b/a/c/l;->d:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v6, v4

    const/16 v4, 0x10

    shl-long/2addr v6, v4

    or-long/2addr v2, v6

    add-int/lit8 v4, v5, 0x1

    iput v4, p0, Lk/a/b/a/c/l;->d:I

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    shl-long/2addr v5, v1

    or-long/2addr v2, v5

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lk/a/b/a/c/l;->d:I

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    const/4 v0, 0x0

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    .line 4
    invoke-virtual {p0}, Lk/a/b/a/c/l;->p()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x7

    :goto_0
    if-ltz v0, :cond_1

    .line 5
    iget-object v4, p0, Lk/a/b/a/c/l;->c:[B

    iget v5, p0, Lk/a/b/a/c/l;->d:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lk/a/b/a/c/l;->d:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    mul-int/lit8 v6, v0, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 6
    invoke-virtual {p0}, Lk/a/b/a/c/l;->p()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iget v0, p0, Lk/a/b/a/c/l;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lk/a/b/a/c/l;->e:I

    return-wide v2

    .line 8
    :cond_2
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method public m()S
    .locals 6

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/c/l;->c()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 2
    iget-object v3, p0, Lk/a/b/a/c/l;->c:[B

    iget v4, p0, Lk/a/b/a/c/l;->d:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lk/a/b/a/c/l;->d:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v0, v3

    int-to-short v0, v0

    .line 3
    invoke-virtual {p0}, Lk/a/b/a/c/l;->p()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4
    :cond_0
    iget v2, p0, Lk/a/b/a/c/l;->e:I

    add-int/2addr v2, v1

    iput v2, p0, Lk/a/b/a/c/l;->e:I

    return v0

    .line 5
    :cond_1
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method public bridge synthetic n()Lk/a/b/a/c/k0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/c/l;->n()Lk/a/b/a/c/l;

    return-object p0
.end method

.method public n()Lk/a/b/a/c/l;
    .locals 6

    .line 2
    iget-boolean v0, p0, Lk/a/b/a/c/l;->i:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lk/a/b/a/c/l;->c:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lk/a/b/a/c/l;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget v3, p0, Lk/a/b/a/c/l;->b:I

    if-ge v1, v3, :cond_1

    .line 4
    iget-object v3, p0, Lk/a/b/a/c/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 5
    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v3, v1

    .line 6
    iput v3, p0, Lk/a/b/a/c/l;->b:I

    .line 7
    iget-object v1, p0, Lk/a/b/a/c/l;->c:[B

    array-length v4, v1

    iget v5, p0, Lk/a/b/a/c/l;->d:I

    if-ne v4, v5, :cond_3

    .line 8
    array-length v1, v1

    add-int/2addr v2, v1

    const/4 v1, 0x0

    if-nez v3, :cond_2

    .line 9
    iget-object v3, p0, Lk/a/b/a/c/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 10
    iput-object v1, p0, Lk/a/b/a/c/l;->a:Ljava/util/ArrayList;

    .line 11
    :cond_2
    iput-object v1, p0, Lk/a/b/a/c/l;->c:[B

    const/4 v1, -0x1

    .line 12
    iput v1, p0, Lk/a/b/a/c/l;->b:I

    .line 13
    iput v0, p0, Lk/a/b/a/c/l;->d:I

    .line 14
    :cond_3
    iget v0, p0, Lk/a/b/a/c/l;->e:I

    sub-int/2addr v0, v2

    iput v0, p0, Lk/a/b/a/c/l;->e:I

    .line 15
    iget v0, p0, Lk/a/b/a/c/l;->g:I

    sub-int/2addr v0, v2

    iput v0, p0, Lk/a/b/a/c/l;->g:I

    iput v0, p0, Lk/a/b/a/c/l;->f:I

    .line 16
    iget v0, p0, Lk/a/b/a/c/l;->h:I

    sget v1, Lk/a/b/a/c/l;->l:I

    if-eq v0, v1, :cond_4

    sub-int/2addr v0, v2

    .line 17
    iput v0, p0, Lk/a/b/a/c/l;->h:I

    :cond_4
    :goto_1
    return-object p0
.end method

.method public o()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/l;->c:[B

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk/a/b/a/c/l;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/l;->c:[B

    array-length v0, v0

    iget v1, p0, Lk/a/b/a/c/l;->d:I

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Lk/a/b/a/c/l;->b:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lk/a/b/a/c/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lk/a/b/a/c/l;->a:Ljava/util/ArrayList;

    iget v1, p0, Lk/a/b/a/c/l;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lk/a/b/a/c/l;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lk/a/b/a/c/l;->c:[B

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lk/a/b/a/c/l;->d:I

    :cond_0
    return-void
.end method

.method public position()I
    .locals 1

    .line 1
    iget v0, p0, Lk/a/b/a/c/l;->e:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "CompositeReadableBuffer"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "{ pos="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    iget v1, p0, Lk/a/b/a/c/l;->e:I

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " limit="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    iget v1, p0, Lk/a/b/a/c/l;->f:I

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " capacity="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    iget v1, p0, Lk/a/b/a/c/l;->g:I

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " }"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
