.class public Lk/a/b/a/c/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/y0;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk/a/b/a/c/u;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public a(B)V
    .locals 0

    .line 1
    iget p1, p0, Lk/a/b/a/c/u;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lk/a/b/a/c/u;->a:I

    return-void
.end method

.method public a(D)V
    .locals 0

    .line 3
    iget p1, p0, Lk/a/b/a/c/u;->a:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lk/a/b/a/c/u;->a:I

    return-void
.end method

.method public a(F)V
    .locals 0

    .line 2
    iget p1, p0, Lk/a/b/a/c/u;->a:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lk/a/b/a/c/u;->a:I

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 7
    iput p1, p0, Lk/a/b/a/c/u;->a:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 6
    iget p1, p0, Lk/a/b/a/c/u;->a:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lk/a/b/a/c/u;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 10
    iget v0, p0, Lk/a/b/a/c/u;->a:I

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lk/a/b/a/c/u;->a:I

    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 8
    iget v0, p0, Lk/a/b/a/c/u;->a:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lk/a/b/a/c/u;->a:I

    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public a(S)V
    .locals 0

    .line 5
    iget p1, p0, Lk/a/b/a/c/u;->a:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lk/a/b/a/c/u;->a:I

    return-void
.end method

.method public a([BII)V
    .locals 0

    .line 4
    iget p1, p0, Lk/a/b/a/c/u;->a:I

    add-int/2addr p1, p3

    iput p1, p0, Lk/a/b/a/c/u;->a:I

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    iget p1, p0, Lk/a/b/a/c/u;->a:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lk/a/b/a/c/u;->a:I

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .locals 2

    .line 1
    iget v0, p0, Lk/a/b/a/c/u;->a:I

    const v1, 0x7fffffff

    sub-int/2addr v1, v0

    return v1
.end method

.method public synthetic c(I)V
    .locals 0

    invoke-static {p0, p1}, Lk/a/b/a/c/x0;->a(Lk/a/b/a/c/y0;I)V

    return-void
.end method

.method public position()I
    .locals 1

    .line 1
    iget v0, p0, Lk/a/b/a/c/u;->a:I

    return v0
.end method
