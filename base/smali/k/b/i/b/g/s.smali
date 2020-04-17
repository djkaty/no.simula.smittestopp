.class public final Lk/b/i/b/g/s;
.super Lk/b/i/b/g/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/b/i/b/g/s$b;
    }
.end annotation


# instance fields
.field public final b:Lk/b/i/b/g/r;

.field public final c:[B

.field public final d:[B

.field public final e:[B

.field public final f:[B

.field public volatile g:J

.field public volatile h:Lk/b/i/b/g/b;


# direct methods
.method public synthetic constructor <init>(Lk/b/i/b/g/s$b;Lk/b/i/b/g/s$a;)V
    .locals 9

    .line 1
    iget-object p2, p1, Lk/b/i/b/g/s$b;->a:Lk/b/i/b/g/r;

    .line 2
    iget-object p2, p2, Lk/b/i/b/g/r;->b:Lk/b/i/b/g/w;

    .line 3
    iget-object p2, p2, Lk/b/i/b/g/w;->f:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0, p2}, Lk/b/i/b/g/q;-><init>(ZLjava/lang/String;)V

    .line 5
    iget-object p2, p1, Lk/b/i/b/g/s$b;->a:Lk/b/i/b/g/r;

    .line 6
    iput-object p2, p0, Lk/b/i/b/g/s;->b:Lk/b/i/b/g/r;

    if-eqz p2, :cond_f

    .line 7
    iget-object v0, p2, Lk/b/i/b/g/r;->b:Lk/b/i/b/g/w;

    .line 8
    iget v0, v0, Lk/b/i/b/g/w;->g:I

    .line 9
    iget-object v1, p1, Lk/b/i/b/g/s$b;->i:[B

    if-eqz v1, :cond_2

    .line 10
    iget-object v2, p1, Lk/b/i/b/g/s$b;->j:Lk/b/i/b/g/w;

    if-eqz v2, :cond_1

    .line 11
    iget p2, p2, Lk/b/i/b/g/r;->c:I

    add-int/lit8 v2, p2, 0x7

    .line 12
    div-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lk/b/c/e/a;->a([BII)J

    move-result-wide v4

    iput-wide v4, p0, Lk/b/i/b/g/s;->g:J

    iget-wide v4, p0, Lk/b/i/b/g/s;->g:J

    invoke-static {p2, v4, v5}, Lk/b/c/e/a;->a(IJ)Z

    move-result p2

    if-eqz p2, :cond_0

    add-int/2addr v2, v3

    invoke-static {v1, v2, v0}, Lk/b/c/e/a;->b([BII)[B

    move-result-object p2

    iput-object p2, p0, Lk/b/i/b/g/s;->c:[B

    add-int/2addr v2, v0

    invoke-static {v1, v2, v0}, Lk/b/c/e/a;->b([BII)[B

    move-result-object p2

    iput-object p2, p0, Lk/b/i/b/g/s;->d:[B

    add-int/2addr v2, v0

    invoke-static {v1, v2, v0}, Lk/b/c/e/a;->b([BII)[B

    move-result-object p2

    iput-object p2, p0, Lk/b/i/b/g/s;->e:[B

    add-int/2addr v2, v0

    invoke-static {v1, v2, v0}, Lk/b/c/e/a;->b([BII)[B

    move-result-object p2

    iput-object p2, p0, Lk/b/i/b/g/s;->f:[B

    add-int/2addr v2, v0

    array-length p2, v1

    sub-int/2addr p2, v2

    invoke-static {v1, v2, p2}, Lk/b/c/e/a;->b([BII)[B

    move-result-object p2

    :try_start_0
    const-class v0, Lk/b/i/b/g/b;

    invoke-static {p2, v0}, Lk/b/c/e/a;->a([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lk/b/i/b/g/b;

    .line 13
    iget-object p1, p1, Lk/b/i/b/g/s$b;->j:Lk/b/i/b/g/w;

    .line 14
    iget-object p1, p1, Lk/b/i/b/g/w;->d:Lk/b/a/o;

    .line 15
    invoke-virtual {p2, p1}, Lk/b/i/b/g/b;->a(Lk/b/a/o;)Lk/b/i/b/g/b;

    move-result-object p1

    iput-object p1, p0, Lk/b/i/b/g/s;->h:Lk/b/i/b/g/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

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

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index out of bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "xmss == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    iget-wide v1, p1, Lk/b/i/b/g/s$b;->b:J

    .line 17
    iput-wide v1, p0, Lk/b/i/b/g/s;->g:J

    .line 18
    iget-object v8, p1, Lk/b/i/b/g/s$b;->d:[B

    if-eqz v8, :cond_4

    .line 19
    array-length p2, v8

    if-ne p2, v0, :cond_3

    iput-object v8, p0, Lk/b/i/b/g/s;->c:[B

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size of secretKeySeed needs to be equal size of digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-array p2, v0, [B

    iput-object p2, p0, Lk/b/i/b/g/s;->c:[B

    .line 20
    :goto_0
    iget-object p2, p1, Lk/b/i/b/g/s$b;->e:[B

    if-eqz p2, :cond_6

    .line 21
    array-length v1, p2

    if-ne v1, v0, :cond_5

    iput-object p2, p0, Lk/b/i/b/g/s;->d:[B

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size of secretKeyPRF needs to be equal size of digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-array p2, v0, [B

    iput-object p2, p0, Lk/b/i/b/g/s;->d:[B

    .line 22
    :goto_1
    iget-object v7, p1, Lk/b/i/b/g/s$b;->f:[B

    if-eqz v7, :cond_8

    .line 23
    array-length p2, v7

    if-ne p2, v0, :cond_7

    iput-object v7, p0, Lk/b/i/b/g/s;->e:[B

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size of publicSeed needs to be equal size of digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-array p2, v0, [B

    iput-object p2, p0, Lk/b/i/b/g/s;->e:[B

    .line 24
    :goto_2
    iget-object p2, p1, Lk/b/i/b/g/s$b;->g:[B

    if-eqz p2, :cond_a

    .line 25
    array-length v1, p2

    if-ne v1, v0, :cond_9

    iput-object p2, p0, Lk/b/i/b/g/s;->f:[B

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size of root needs to be equal size of digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-array p2, v0, [B

    iput-object p2, p0, Lk/b/i/b/g/s;->f:[B

    .line 26
    :goto_3
    iget-object p2, p1, Lk/b/i/b/g/s$b;->h:Lk/b/i/b/g/b;

    if-eqz p2, :cond_b

    goto :goto_4

    .line 27
    :cond_b
    iget-wide v0, p1, Lk/b/i/b/g/s$b;->b:J

    .line 28
    iget-object p2, p0, Lk/b/i/b/g/s;->b:Lk/b/i/b/g/r;

    .line 29
    iget p2, p2, Lk/b/i/b/g/r;->c:I

    .line 30
    invoke-static {p2, v0, v1}, Lk/b/c/e/a;->a(IJ)Z

    move-result p2

    if-eqz p2, :cond_c

    if-eqz v7, :cond_c

    if-eqz v8, :cond_c

    new-instance p2, Lk/b/i/b/g/b;

    iget-object v4, p0, Lk/b/i/b/g/s;->b:Lk/b/i/b/g/r;

    .line 31
    iget-wide v5, p1, Lk/b/i/b/g/s$b;->b:J

    move-object v3, p2

    .line 32
    invoke-direct/range {v3 .. v8}, Lk/b/i/b/g/b;-><init>(Lk/b/i/b/g/r;J[B[B)V

    goto :goto_4

    :cond_c
    new-instance p2, Lk/b/i/b/g/b;

    .line 33
    iget-wide v0, p1, Lk/b/i/b/g/s$b;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 34
    invoke-direct {p2, v0, v1}, Lk/b/i/b/g/b;-><init>(J)V

    :goto_4
    iput-object p2, p0, Lk/b/i/b/g/s;->h:Lk/b/i/b/g/b;

    .line 35
    iget-wide p1, p1, Lk/b/i/b/g/s$b;->c:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_e

    .line 36
    iget-object v0, p0, Lk/b/i/b/g/s;->h:Lk/b/i/b/g/b;

    .line 37
    iget-wide v0, v0, Lk/b/i/b/g/b;->y:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    goto :goto_5

    .line 38
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxIndex set but not reflected in state"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    :goto_5
    return-void

    :cond_f
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
    invoke-virtual {p0}, Lk/b/i/b/g/s;->b()[B

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
    iget-object v0, p0, Lk/b/i/b/g/s;->b:Lk/b/i/b/g/r;

    .line 1
    iget-object v0, v0, Lk/b/i/b/g/r;->b:Lk/b/i/b/g/w;

    .line 2
    iget v0, v0, Lk/b/i/b/g/w;->g:I

    .line 3
    iget-object v1, p0, Lk/b/i/b/g/s;->b:Lk/b/i/b/g/r;

    .line 4
    iget v1, v1, Lk/b/i/b/g/r;->c:I

    add-int/lit8 v1, v1, 0x7

    .line 5
    div-int/lit8 v1, v1, 0x8

    add-int v2, v1, v0

    add-int/2addr v2, v0

    add-int/2addr v2, v0

    add-int/2addr v2, v0

    new-array v2, v2, [B

    const/4 v3, 0x0

    iget-wide v4, p0, Lk/b/i/b/g/s;->g:J

    invoke-static {v4, v5, v1}, Lk/b/c/e/a;->a(JI)[B

    move-result-object v4

    invoke-static {v2, v4, v3}, Lk/b/c/e/a;->a([B[BI)V

    add-int/2addr v1, v3

    iget-object v3, p0, Lk/b/i/b/g/s;->c:[B

    invoke-static {v2, v3, v1}, Lk/b/c/e/a;->a([B[BI)V

    add-int/2addr v1, v0

    iget-object v3, p0, Lk/b/i/b/g/s;->d:[B

    invoke-static {v2, v3, v1}, Lk/b/c/e/a;->a([B[BI)V

    add-int/2addr v1, v0

    iget-object v3, p0, Lk/b/i/b/g/s;->e:[B

    invoke-static {v2, v3, v1}, Lk/b/c/e/a;->a([B[BI)V

    add-int/2addr v1, v0

    iget-object v0, p0, Lk/b/i/b/g/s;->f:[B

    invoke-static {v2, v0, v1}, Lk/b/c/e/a;->a([B[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lk/b/i/b/g/s;->h:Lk/b/i/b/g/b;

    .line 6
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 7
    invoke-static {v2, v0}, Lk/b/c/e/a;->a([B[B)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error serializing bds state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
