.class public Lk/b/a/n1;
.super Lk/b/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lk/b/a/b;-><init>([BI)V

    return-void
.end method


# virtual methods
.method public a(Lk/b/a/r;Z)V
    .locals 3

    iget v0, p0, Lk/b/a/b;->y:I

    int-to-byte v0, v0

    iget-object v1, p0, Lk/b/a/b;->x:[B

    const/4 v2, 0x3

    invoke-virtual {p1, p2, v2, v0, v1}, Lk/b/a/r;->a(ZIB[B)V

    return-void
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Lk/b/a/b;->x:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lk/b/a/d2;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lk/b/a/b;->x:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()Lk/b/a/t;
    .locals 0

    return-object p0
.end method
