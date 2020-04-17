.class public final Lk/b/i/b/g/x;
.super Lk/b/i/b/g/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/b/i/b/g/x$b;
    }
.end annotation


# instance fields
.field public final b:Lk/b/i/b/g/w;

.field public final c:[B

.field public final d:[B

.field public final e:[B

.field public final f:[B

.field public volatile g:Lk/b/i/b/g/a;


# direct methods
.method public synthetic constructor <init>(Lk/b/i/b/g/x$b;Lk/b/i/b/g/x$a;)V
    .locals 10

    .line 1
    iget-object p2, p1, Lk/b/i/b/g/x$b;->a:Lk/b/i/b/g/w;

    .line 2
    iget-object p2, p2, Lk/b/i/b/g/w;->f:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0, p2}, Lk/b/i/b/g/p;-><init>(ZLjava/lang/String;)V

    .line 4
    iget-object p2, p1, Lk/b/i/b/g/x$b;->a:Lk/b/i/b/g/w;

    .line 5
    iput-object p2, p0, Lk/b/i/b/g/x;->b:Lk/b/i/b/g/w;

    if-eqz p2, :cond_10

    .line 6
    iget v1, p2, Lk/b/i/b/g/w;->g:I

    .line 7
    iget-object v2, p1, Lk/b/i/b/g/x$b;->i:[B

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 8
    iget p2, p2, Lk/b/i/b/g/w;->b:I

    .line 9
    invoke-static {v2, v3}, Lk/b/c/e/a;->b([BI)I

    move-result v0

    int-to-long v3, v0

    invoke-static {p2, v3, v4}, Lk/b/c/e/a;->a(IJ)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    invoke-static {v2, p2, v1}, Lk/b/c/e/a;->b([BII)[B

    move-result-object p2

    iput-object p2, p0, Lk/b/i/b/g/x;->c:[B

    add-int/lit8 p2, v1, 0x4

    invoke-static {v2, p2, v1}, Lk/b/c/e/a;->b([BII)[B

    move-result-object v3

    iput-object v3, p0, Lk/b/i/b/g/x;->d:[B

    add-int/2addr p2, v1

    invoke-static {v2, p2, v1}, Lk/b/c/e/a;->b([BII)[B

    move-result-object v3

    iput-object v3, p0, Lk/b/i/b/g/x;->e:[B

    add-int/2addr p2, v1

    invoke-static {v2, p2, v1}, Lk/b/c/e/a;->b([BII)[B

    move-result-object v3

    iput-object v3, p0, Lk/b/i/b/g/x;->f:[B

    add-int/2addr p2, v1

    array-length v1, v2

    sub-int/2addr v1, p2

    invoke-static {v2, p2, v1}, Lk/b/c/e/a;->b([BII)[B

    move-result-object p2

    :try_start_0
    const-class v1, Lk/b/i/b/g/a;

    invoke-static {p2, v1}, Lk/b/c/e/a;->a([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lk/b/i/b/g/a;

    .line 10
    iget v1, p2, Lk/b/i/b/g/a;->G:I

    if-ne v1, v0, :cond_0

    .line 11
    iget-object p1, p1, Lk/b/i/b/g/x$b;->a:Lk/b/i/b/g/w;

    .line 12
    iget-object p1, p1, Lk/b/i/b/g/w;->d:Lk/b/a/o;

    .line 13
    new-instance v0, Lk/b/i/b/g/a;

    invoke-direct {v0, p2, p1}, Lk/b/i/b/g/a;-><init>(Lk/b/i/b/g/a;Lk/b/a/o;)V

    .line 14
    iput-object v0, p0, Lk/b/i/b/g/x;->g:Lk/b/i/b/g/a;

    goto/16 :goto_7

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "serialized BDS has wrong index"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index out of bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_2
    iget-object p2, p1, Lk/b/i/b/g/x$b;->d:[B

    if-eqz p2, :cond_4

    .line 16
    array-length v2, p2

    if-ne v2, v1, :cond_3

    iput-object p2, p0, Lk/b/i/b/g/x;->c:[B

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size of secretKeySeed needs to be equal size of digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-array v2, v1, [B

    iput-object v2, p0, Lk/b/i/b/g/x;->c:[B

    .line 17
    :goto_0
    iget-object v2, p1, Lk/b/i/b/g/x$b;->e:[B

    if-eqz v2, :cond_6

    .line 18
    array-length v4, v2

    if-ne v4, v1, :cond_5

    iput-object v2, p0, Lk/b/i/b/g/x;->d:[B

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size of secretKeyPRF needs to be equal size of digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-array v2, v1, [B

    iput-object v2, p0, Lk/b/i/b/g/x;->d:[B

    .line 19
    :goto_1
    iget-object v2, p1, Lk/b/i/b/g/x$b;->f:[B

    if-eqz v2, :cond_8

    .line 20
    array-length v4, v2

    if-ne v4, v1, :cond_7

    iput-object v2, p0, Lk/b/i/b/g/x;->e:[B

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size of publicSeed needs to be equal size of digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-array v4, v1, [B

    iput-object v4, p0, Lk/b/i/b/g/x;->e:[B

    .line 21
    :goto_2
    iget-object v4, p1, Lk/b/i/b/g/x$b;->g:[B

    if-eqz v4, :cond_a

    .line 22
    array-length v5, v4

    if-ne v5, v1, :cond_9

    iput-object v4, p0, Lk/b/i/b/g/x;->f:[B

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size of root needs to be equal size of digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-array v1, v1, [B

    iput-object v1, p0, Lk/b/i/b/g/x;->f:[B

    .line 23
    :goto_3
    iget-object v1, p1, Lk/b/i/b/g/x$b;->h:Lk/b/i/b/g/a;

    if-eqz v1, :cond_b

    goto :goto_5

    .line 24
    :cond_b
    iget v1, p1, Lk/b/i/b/g/x$b;->b:I

    .line 25
    iget-object v4, p0, Lk/b/i/b/g/x;->b:Lk/b/i/b/g/w;

    .line 26
    iget v5, v4, Lk/b/i/b/g/w;->b:I

    shl-int v5, v0, v5

    add-int/lit8 v5, v5, -0x2

    if-ge v1, v5, :cond_d

    if-eqz v2, :cond_d

    if-eqz p2, :cond_d

    .line 27
    new-instance v1, Lk/b/i/b/g/a;

    new-instance v5, Lk/b/i/b/g/j$b;

    invoke-direct {v5}, Lk/b/i/b/g/j$b;-><init>()V

    invoke-virtual {v5}, Lk/b/i/b/g/j$b;->b()Lk/b/i/b/g/o;

    move-result-object v5

    check-cast v5, Lk/b/i/b/g/j;

    .line 28
    iget v6, p1, Lk/b/i/b/g/x$b;->b:I

    .line 29
    invoke-virtual {v4}, Lk/b/i/b/g/w;->a()Lk/b/i/b/g/k;

    move-result-object v7

    .line 30
    iget v8, v4, Lk/b/i/b/g/w;->b:I

    .line 31
    iget v4, v4, Lk/b/i/b/g/w;->c:I

    shl-int v9, v0, v8

    sub-int/2addr v9, v0

    .line 32
    invoke-direct {v1, v7, v8, v4, v9}, Lk/b/i/b/g/a;-><init>(Lk/b/i/b/g/k;III)V

    invoke-virtual {v1, v2, p2, v5}, Lk/b/i/b/g/a;->a([B[BLk/b/i/b/g/j;)V

    :goto_4
    iget v0, v1, Lk/b/i/b/g/a;->G:I

    if-ge v0, v6, :cond_c

    invoke-virtual {v1, v2, p2, v5}, Lk/b/i/b/g/a;->b([B[BLk/b/i/b/g/j;)V

    iput-boolean v3, v1, Lk/b/i/b/g/a;->H:Z

    goto :goto_4

    .line 33
    :cond_c
    :goto_5
    iput-object v1, p0, Lk/b/i/b/g/x;->g:Lk/b/i/b/g/a;

    goto :goto_6

    :cond_d
    new-instance p2, Lk/b/i/b/g/a;

    iget-object v1, p0, Lk/b/i/b/g/x;->b:Lk/b/i/b/g/w;

    .line 34
    iget v2, v1, Lk/b/i/b/g/w;->b:I

    shl-int v2, v0, v2

    sub-int/2addr v2, v0

    .line 35
    iget v3, p1, Lk/b/i/b/g/x$b;->b:I

    .line 36
    invoke-virtual {v1}, Lk/b/i/b/g/w;->a()Lk/b/i/b/g/k;

    move-result-object v4

    .line 37
    iget v5, v1, Lk/b/i/b/g/w;->b:I

    .line 38
    iget v1, v1, Lk/b/i/b/g/w;->c:I

    .line 39
    invoke-direct {p2, v4, v5, v1, v3}, Lk/b/i/b/g/a;-><init>(Lk/b/i/b/g/k;III)V

    iput v2, p2, Lk/b/i/b/g/a;->I:I

    iput v3, p2, Lk/b/i/b/g/a;->G:I

    iput-boolean v0, p2, Lk/b/i/b/g/a;->H:Z

    .line 40
    iput-object p2, p0, Lk/b/i/b/g/x;->g:Lk/b/i/b/g/a;

    .line 41
    :goto_6
    iget p1, p1, Lk/b/i/b/g/x$b;->c:I

    if-ltz p1, :cond_f

    .line 42
    iget-object p2, p0, Lk/b/i/b/g/x;->g:Lk/b/i/b/g/a;

    .line 43
    iget p2, p2, Lk/b/i/b/g/a;->I:I

    if-ne p1, p2, :cond_e

    goto :goto_7

    .line 44
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxIndex set but not reflected in state"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    :goto_7
    return-void

    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "params == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()[B
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lk/b/i/b/g/x;->b()[B

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()[B
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lk/b/i/b/g/x;->b:Lk/b/i/b/g/w;

    .line 1
    iget v0, v0, Lk/b/i/b/g/w;->g:I

    add-int/lit8 v1, v0, 0x4

    add-int v2, v1, v0

    add-int v3, v2, v0

    add-int/2addr v0, v3

    .line 2
    new-array v0, v0, [B

    const/4 v4, 0x0

    iget-object v5, p0, Lk/b/i/b/g/x;->g:Lk/b/i/b/g/a;

    .line 3
    iget v5, v5, Lk/b/i/b/g/a;->G:I

    .line 4
    invoke-static {v5, v0, v4}, Lk/b/c/e/a;->b(I[BI)V

    iget-object v4, p0, Lk/b/i/b/g/x;->c:[B

    const/4 v5, 0x4

    invoke-static {v0, v4, v5}, Lk/b/c/e/a;->a([B[BI)V

    iget-object v4, p0, Lk/b/i/b/g/x;->d:[B

    invoke-static {v0, v4, v1}, Lk/b/c/e/a;->a([B[BI)V

    iget-object v1, p0, Lk/b/i/b/g/x;->e:[B

    invoke-static {v0, v1, v2}, Lk/b/c/e/a;->a([B[BI)V

    iget-object v1, p0, Lk/b/i/b/g/x;->f:[B

    invoke-static {v0, v1, v3}, Lk/b/c/e/a;->a([B[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lk/b/i/b/g/x;->g:Lk/b/i/b/g/a;

    .line 5
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-static {v0, v1}, Lk/b/c/e/a;->a([B[B)[B

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error serializing bds state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
