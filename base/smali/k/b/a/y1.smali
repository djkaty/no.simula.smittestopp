.class public Lk/b/a/y1;
.super Lk/b/a/b2;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:Z

.field public C:Z

.field public z:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p2}, Lk/b/a/b2;-><init>(Ljava/io/InputStream;II)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lk/b/a/y1;->B:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lk/b/a/y1;->C:Z

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p2

    iput p2, p0, Lk/b/a/y1;->z:I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Lk/b/a/y1;->A:I

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lk/b/a/y1;->a()Z

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lk/b/a/y1;->B:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lk/b/a/y1;->C:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lk/b/a/y1;->z:I

    if-nez v0, :cond_0

    iget v0, p0, Lk/b/a/y1;->A:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk/b/a/y1;->B:Z

    invoke-virtual {p0, v0}, Lk/b/a/b2;->a(Z)V

    :cond_0
    iget-boolean v0, p0, Lk/b/a/y1;->B:Z

    return v0
.end method

.method public read()I
    .locals 3

    invoke-virtual {p0}, Lk/b/a/y1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lk/b/a/b2;->x:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1

    iget v1, p0, Lk/b/a/y1;->z:I

    iget v2, p0, Lk/b/a/y1;->A:I

    iput v2, p0, Lk/b/a/y1;->z:I

    iput v0, p0, Lk/b/a/y1;->A:I

    return v1

    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public read([BII)I
    .locals 2

    iget-boolean v0, p0, Lk/b/a/y1;->C:Z

    if-nez v0, :cond_4

    const/4 v0, 0x3

    if-ge p3, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lk/b/a/y1;->B:Z

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    iget-object v0, p0, Lk/b/a/b2;->x:Ljava/io/InputStream;

    add-int/lit8 v1, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-virtual {v0, p1, v1, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-ltz p3, :cond_3

    iget v0, p0, Lk/b/a/y1;->z:I

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    iget v0, p0, Lk/b/a/y1;->A:I

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    iget-object p1, p0, Lk/b/a/b2;->x:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Lk/b/a/y1;->z:I

    iget-object p1, p0, Lk/b/a/b2;->x:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Lk/b/a/y1;->A:I

    if-ltz p1, :cond_2

    add-int/lit8 p3, p3, 0x2

    return p3

    :cond_2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_4
    :goto_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method
