.class public final Le/b/a/a/p/e;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public A:I

.field public final B:I

.field public final x:Le/b/a/a/p/b;

.field public final y:Ljava/io/InputStream;

.field public z:[B


# direct methods
.method public constructor <init>(Le/b/a/a/p/b;Ljava/io/InputStream;[BII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    iput-object p1, p0, Le/b/a/a/p/e;->x:Le/b/a/a/p/b;

    .line 3
    iput-object p2, p0, Le/b/a/a/p/e;->y:Ljava/io/InputStream;

    .line 4
    iput-object p3, p0, Le/b/a/a/p/e;->z:[B

    .line 5
    iput p4, p0, Le/b/a/a/p/e;->A:I

    .line 6
    iput p5, p0, Le/b/a/a/p/e;->B:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/a/a/p/e;->z:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Le/b/a/a/p/e;->z:[B

    .line 3
    iget-object v1, p0, Le/b/a/a/p/e;->x:Le/b/a/a/p/b;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Le/b/a/a/p/b;->a([B)V

    :cond_0
    return-void
.end method

.method public available()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/a/a/p/e;->z:[B

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Le/b/a/a/p/e;->B:I

    iget v1, p0, Le/b/a/a/p/e;->A:I

    sub-int/2addr v0, v1

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Le/b/a/a/p/e;->y:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/b/a/a/p/e;->a()V

    .line 2
    iget-object v0, p0, Le/b/a/a/p/e;->y:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/a/p/e;->z:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Le/b/a/a/p/e;->y:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    :cond_0
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/a/p/e;->z:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Le/b/a/a/p/e;->y:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/b/a/a/p/e;->z:[B

    if-eqz v0, :cond_1

    .line 2
    iget v1, p0, Le/b/a/a/p/e;->A:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/p/e;->A:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 3
    iget v1, p0, Le/b/a/a/p/e;->B:I

    if-lt v2, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Le/b/a/a/p/e;->a()V

    :cond_0
    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Le/b/a/a/p/e;->y:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2

    .line 6
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Le/b/a/a/p/e;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2

    .line 7
    iget-object v0, p0, Le/b/a/a/p/e;->z:[B

    if-eqz v0, :cond_2

    .line 8
    iget v0, p0, Le/b/a/a/p/e;->B:I

    iget v1, p0, Le/b/a/a/p/e;->A:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_0

    move p3, v0

    .line 9
    :cond_0
    iget-object v0, p0, Le/b/a/a/p/e;->z:[B

    iget v1, p0, Le/b/a/a/p/e;->A:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget p1, p0, Le/b/a/a/p/e;->A:I

    add-int/2addr p1, p3

    iput p1, p0, Le/b/a/a/p/e;->A:I

    .line 11
    iget p2, p0, Le/b/a/a/p/e;->B:I

    if-lt p1, p2, :cond_1

    .line 12
    invoke-virtual {p0}, Le/b/a/a/p/e;->a()V

    :cond_1
    return p3

    .line 13
    :cond_2
    iget-object v0, p0, Le/b/a/a/p/e;->y:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/a/p/e;->z:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Le/b/a/a/p/e;->y:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    :cond_0
    return-void
.end method

.method public skip(J)J
    .locals 8

    .line 1
    iget-object v0, p0, Le/b/a/a/p/e;->z:[B

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Le/b/a/a/p/e;->B:I

    iget v3, p0, Le/b/a/a/p/e;->A:I

    sub-int/2addr v0, v3

    int-to-long v4, v0

    cmp-long v0, v4, p1

    if-lez v0, :cond_0

    long-to-int v0, p1

    add-int/2addr v3, v0

    .line 3
    iput v3, p0, Le/b/a/a/p/e;->A:I

    return-wide p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/b/a/a/p/e;->a()V

    add-long v6, v4, v1

    sub-long/2addr p1, v4

    goto :goto_0

    :cond_1
    move-wide v6, v1

    :goto_0
    cmp-long v0, p1, v1

    if-lez v0, :cond_2

    .line 5
    iget-object v0, p0, Le/b/a/a/p/e;->y:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    add-long/2addr v6, p1

    :cond_2
    return-wide v6
.end method
