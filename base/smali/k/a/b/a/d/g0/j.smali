.class public Lk/a/b/a/d/g0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk/a/b/a/d/g0/a0;

.field public final b:Lk/a/b/a/c/x;

.field public final c:Lk/a/b/a/d/g0/k;

.field public d:I

.field public final e:B

.field public f:I

.field public g:I

.field public h:J


# direct methods
.method public constructor <init>(Lk/a/b/a/c/x;IBLk/a/b/a/d/g0/a0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk/a/b/a/d/g0/k;

    invoke-direct {v0}, Lk/a/b/a/d/g0/k;-><init>()V

    iput-object v0, p0, Lk/a/b/a/d/g0/j;->c:Lk/a/b/a/d/g0/k;

    const/high16 v1, 0x10000

    .line 3
    iput v1, p0, Lk/a/b/a/d/g0/j;->f:I

    .line 4
    iput-object p1, p0, Lk/a/b/a/d/g0/j;->b:Lk/a/b/a/c/x;

    .line 5
    iput p2, p0, Lk/a/b/a/d/g0/j;->d:I

    .line 6
    iput-byte p3, p0, Lk/a/b/a/d/g0/j;->e:B

    .line 7
    iput-object p4, p0, Lk/a/b/a/d/g0/j;->a:Lk/a/b/a/d/g0/a0;

    .line 8
    iput-object v0, p1, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lk/a/b/a/c/k0;Ljava/lang/Runnable;)I
    .locals 3

    .line 65
    iget-object v0, p0, Lk/a/b/a/d/g0/j;->c:Lk/a/b/a/d/g0/k;

    iget v1, p0, Lk/a/b/a/d/g0/j;->g:I

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Lk/a/b/a/d/g0/k;->a(I)V

    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lk/a/b/a/d/g0/j;->b:Lk/a/b/a/c/x;

    invoke-virtual {v0, p1}, Lk/a/b/a/c/x;->b(Ljava/lang/Object;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lk/a/b/a/d/g0/j;->c:Lk/a/b/a/d/g0/k;

    .line 68
    iget v0, v0, Lk/a/b/a/d/g0/k;->b:I

    .line 69
    iget v1, p0, Lk/a/b/a/d/g0/j;->g:I

    sub-int/2addr v0, v1

    if-eqz p3, :cond_1

    .line 70
    iget v1, p0, Lk/a/b/a/d/g0/j;->d:I

    if-lez v1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lk/a/b/a/c/k0;->c()I

    move-result v1

    add-int/2addr v1, v0

    iget v2, p0, Lk/a/b/a/d/g0/j;->d:I

    if-le v1, v2, :cond_1

    .line 71
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    const/4 p3, 0x0

    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lk/a/b/a/d/g0/j;->a(Ljava/lang/Object;Lk/a/b/a/c/k0;Ljava/lang/Runnable;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public a(Ljava/nio/ByteBuffer;)I
    .locals 7

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/j;->c:Lk/a/b/a/d/g0/k;

    .line 2
    iget v1, v0, Lk/a/b/a/d/g0/k;->b:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    iget-object v3, v0, Lk/a/b/a/d/g0/k;->a:[B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v3, v2, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v3, v0, Lk/a/b/a/d/g0/k;->a:[B

    invoke-virtual {p1, v3, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 7
    :goto_0
    iget p1, v0, Lk/a/b/a/d/g0/k;->b:I

    if-eq v1, p1, :cond_2

    sub-int/2addr p1, v1

    .line 8
    iget-object v3, v0, Lk/a/b/a/d/g0/k;->a:[B

    invoke-static {v3, v1, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iput p1, v0, Lk/a/b/a/d/g0/k;->b:I

    goto :goto_1

    .line 10
    :cond_2
    iput v2, v0, Lk/a/b/a/d/g0/k;->b:I

    :goto_1
    return v1
.end method

.method public a(ILjava/lang/Object;Lk/a/b/a/c/k0;Ljava/lang/Runnable;)V
    .locals 7

    .line 11
    iget-object v0, p0, Lk/a/b/a/d/g0/j;->c:Lk/a/b/a/d/g0/k;

    .line 12
    iget v0, v0, Lk/a/b/a/d/g0/k;->b:I

    .line 13
    iput v0, p0, Lk/a/b/a/d/g0/j;->g:I

    .line 14
    invoke-virtual {p0, p2, p3, p4}, Lk/a/b/a/d/g0/j;->a(Ljava/lang/Object;Lk/a/b/a/c/k0;Ljava/lang/Runnable;)I

    move-result p4

    .line 15
    iget v0, p0, Lk/a/b/a/d/g0/j;->d:I

    if-lez v0, :cond_0

    sub-int/2addr v0, p4

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :goto_0
    const/4 p4, 0x0

    if-nez p3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 16
    :cond_1
    invoke-interface {p3}, Lk/a/b/a/c/k0;->c()I

    move-result v1

    :goto_1
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 17
    iget-object v1, p0, Lk/a/b/a/d/g0/j;->a:Lk/a/b/a/d/g0/a0;

    invoke-virtual {v1}, Lk/a/b/a/d/g0/a0;->X()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 18
    iget-object v1, p0, Lk/a/b/a/d/g0/j;->a:Lk/a/b/a/d/g0/a0;

    invoke-virtual {v1}, Lk/a/b/a/d/g0/a0;->V()Lk/a/b/a/d/g0/p;

    move-result-object v1

    .line 19
    iget-byte v3, p0, Lk/a/b/a/d/g0/j;->e:B

    if-nez v3, :cond_7

    if-eqz p3, :cond_2

    .line 20
    invoke-interface {p3}, Lk/a/b/a/c/k0;->i()Lk/a/b/a/c/k0;

    move-result-object p4

    .line 21
    invoke-interface {p4, v0}, Lk/a/b/a/c/k0;->b(I)Lk/a/b/a/c/k0;

    goto :goto_2

    :cond_2
    move-object p4, v2

    :goto_2
    if-nez p4, :cond_3

    move-object p4, v2

    goto :goto_3

    .line 22
    :cond_3
    invoke-interface {p4}, Lk/a/b/a/c/k0;->o()Z

    move-result v3

    if-nez v3, :cond_4

    .line 23
    invoke-interface {p4}, Lk/a/b/a/c/k0;->c()I

    move-result v3

    new-array v3, v3, [B

    .line 24
    invoke-interface {p4}, Lk/a/b/a/c/k0;->g()Lk/a/b/a/c/k0;

    move-result-object p4

    .line 25
    invoke-interface {p4, v3}, Lk/a/b/a/c/k0;->a([B)Lk/a/b/a/c/k0;

    .line 26
    new-instance p4, Lk/a/b/a/b/a;

    invoke-direct {p4, v3}, Lk/a/b/a/b/a;-><init>([B)V

    goto :goto_3

    .line 27
    :cond_4
    new-instance v3, Lk/a/b/a/b/a;

    invoke-interface {p4}, Lk/a/b/a/c/k0;->j()[B

    move-result-object v4

    invoke-interface {p4}, Lk/a/b/a/c/k0;->h()I

    move-result v5

    invoke-interface {p4}, Lk/a/b/a/c/k0;->position()I

    move-result v6

    add-int/2addr v6, v5

    invoke-interface {p4}, Lk/a/b/a/c/k0;->c()I

    move-result p4

    invoke-direct {v3, v4, v6, p4}, Lk/a/b/a/b/a;-><init>([BII)V

    move-object p4, v3

    :goto_3
    if-nez p2, :cond_5

    .line 28
    sget-object p2, Lk/a/b/a/b/n/h;->a:Lk/a/b/a/b/n/h;

    goto :goto_4

    .line 29
    :cond_5
    check-cast p2, Lk/a/b/a/b/n/l;

    .line 30
    :goto_4
    new-instance v3, Lk/a/b/a/e/a;

    invoke-direct {v3, p1, p2, p4}, Lk/a/b/a/e/a;-><init>(ILk/a/b/a/b/n/l;Lk/a/b/a/b/a;)V

    .line 31
    iget-object p2, p0, Lk/a/b/a/d/g0/j;->a:Lk/a/b/a/d/g0/a0;

    sget-object p4, Lk/a/b/a/d/g0/a0;->F0:Ljava/lang/String;

    .line 32
    invoke-virtual {p2}, Lk/a/b/a/d/g0/a0;->Z()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 33
    iget v4, v3, Lk/a/b/a/e/a;->a:I

    .line 34
    iget-object v5, v3, Lk/a/b/a/e/a;->b:Lk/a/b/a/b/n/l;

    .line 35
    iget-object v6, v3, Lk/a/b/a/e/a;->c:Lk/a/b/a/b/a;

    .line 36
    invoke-virtual {p2, p4, v4, v5, v6}, Lk/a/b/a/d/g0/a0;->a(Ljava/lang/String;ILjava/lang/Object;Lk/a/b/a/b/a;)V

    :cond_6
    if-eqz v1, :cond_9

    .line 37
    invoke-interface {v1, v3}, Lk/a/b/a/d/g0/p;->a(Lk/a/b/a/e/a;)V

    goto :goto_5

    .line 38
    :cond_7
    check-cast p2, Lk/a/b/a/b/l/c;

    .line 39
    iget-object v3, p0, Lk/a/b/a/d/g0/j;->a:Lk/a/b/a/d/g0/a0;

    sget-object v4, Lk/a/b/a/d/g0/a0;->F0:Ljava/lang/String;

    .line 40
    invoke-virtual {v3}, Lk/a/b/a/d/g0/a0;->Z()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 41
    invoke-virtual {v3, v4, p4, p2, v2}, Lk/a/b/a/d/g0/a0;->a(Ljava/lang/String;ILjava/lang/Object;Lk/a/b/a/b/a;)V

    :cond_8
    if-eqz v1, :cond_9

    .line 42
    invoke-interface {v1}, Lk/a/b/a/d/g0/p;->b()V

    :cond_9
    :goto_5
    if-lez v0, :cond_c

    .line 43
    invoke-interface {p3}, Lk/a/b/a/c/k0;->a()I

    move-result p2

    .line 44
    invoke-interface {p3}, Lk/a/b/a/c/k0;->position()I

    move-result p4

    add-int/2addr p4, v0

    invoke-interface {p3, p4}, Lk/a/b/a/c/k0;->b(I)Lk/a/b/a/c/k0;

    .line 45
    iget-object p4, p0, Lk/a/b/a/d/g0/j;->c:Lk/a/b/a/d/g0/k;

    if-eqz p4, :cond_b

    .line 46
    invoke-interface {p3}, Lk/a/b/a/c/k0;->c()I

    move-result v0

    .line 47
    invoke-virtual {p4, v0}, Lk/a/b/a/d/g0/k;->c(I)V

    .line 48
    invoke-interface {p3}, Lk/a/b/a/c/k0;->o()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 49
    invoke-interface {p3}, Lk/a/b/a/c/k0;->j()[B

    move-result-object v1

    invoke-interface {p3}, Lk/a/b/a/c/k0;->h()I

    move-result v2

    invoke-interface {p3}, Lk/a/b/a/c/k0;->position()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v2, p4, Lk/a/b/a/d/g0/k;->a:[B

    iget v4, p4, Lk/a/b/a/d/g0/k;->b:I

    invoke-static {v1, v3, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    invoke-interface {p3}, Lk/a/b/a/c/k0;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {p3, v1}, Lk/a/b/a/c/k0;->a(I)Lk/a/b/a/c/k0;

    goto :goto_6

    .line 51
    :cond_a
    iget-object v1, p4, Lk/a/b/a/d/g0/k;->a:[B

    iget v2, p4, Lk/a/b/a/d/g0/k;->b:I

    invoke-interface {p3, v1, v2, v0}, Lk/a/b/a/c/k0;->a([BII)Lk/a/b/a/c/k0;

    .line 52
    :goto_6
    iget v1, p4, Lk/a/b/a/d/g0/k;->b:I

    add-int/2addr v1, v0

    iput v1, p4, Lk/a/b/a/d/g0/k;->b:I

    .line 53
    invoke-interface {p3, p2}, Lk/a/b/a/c/k0;->b(I)Lk/a/b/a/c/k0;

    goto :goto_7

    .line 54
    :cond_b
    throw v2

    .line 55
    :cond_c
    :goto_7
    iget-object p2, p0, Lk/a/b/a/d/g0/j;->c:Lk/a/b/a/d/g0/k;

    .line 56
    iget p3, p2, Lk/a/b/a/d/g0/k;->b:I

    .line 57
    iget p4, p0, Lk/a/b/a/d/g0/j;->g:I

    sub-int v0, p3, p4

    .line 58
    invoke-virtual {p2, p4}, Lk/a/b/a/d/g0/k;->a(I)V

    .line 59
    iget-object p2, p0, Lk/a/b/a/d/g0/j;->c:Lk/a/b/a/d/g0/k;

    invoke-virtual {p2, v0}, Lk/a/b/a/d/g0/k;->b(I)V

    .line 60
    iget-object p2, p0, Lk/a/b/a/d/g0/j;->c:Lk/a/b/a/d/g0/k;

    const/4 p4, 0x2

    invoke-virtual {p2, p4}, Lk/a/b/a/d/g0/k;->a(B)V

    .line 61
    iget-object p2, p0, Lk/a/b/a/d/g0/j;->c:Lk/a/b/a/d/g0/k;

    iget-byte p4, p0, Lk/a/b/a/d/g0/j;->e:B

    invoke-virtual {p2, p4}, Lk/a/b/a/d/g0/k;->a(B)V

    .line 62
    iget-object p2, p0, Lk/a/b/a/d/g0/j;->c:Lk/a/b/a/d/g0/k;

    int-to-short p1, p1

    invoke-virtual {p2, p1}, Lk/a/b/a/d/g0/k;->a(S)V

    .line 63
    iget-object p1, p0, Lk/a/b/a/d/g0/j;->c:Lk/a/b/a/d/g0/k;

    invoke-virtual {p1, p3}, Lk/a/b/a/d/g0/k;->a(I)V

    .line 64
    iget-wide p1, p0, Lk/a/b/a/d/g0/j;->h:J

    const-wide/16 p3, 0x1

    add-long/2addr p1, p3

    iput-wide p1, p0, Lk/a/b/a/d/g0/j;->h:J

    return-void
.end method
