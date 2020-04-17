.class public Lk/a/b/a/d/g0/w;
.super Lk/a/b/a/d/g0/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/d/g0/l<",
        "Lk/a/b/a/d/g0/l0;",
        "Lk/a/b/a/d/g0/l0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lk/a/b/a/d/g0/l0;Lk/a/b/a/d/g0/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lk/a/b/a/d/g0/l;-><init>(Lk/a/b/a/d/g0/l0;Lk/a/b/a/d/g0/l0;)V

    return-void
.end method


# virtual methods
.method public bufferSize()I
    .locals 1

    .line 1
    sget-object v0, Lk/a/b/a/d/g0/b;->b:[B

    array-length v0, v0

    return v0
.end method

.method public makeDetermination([B)V
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    sget-object v1, Lk/a/b/a/d/g0/b;->b:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 3
    :goto_0
    sget-object v1, Lk/a/b/a/d/g0/b;->b:[B

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 4
    aget-byte v2, p1, v0

    aget-byte v1, v1, v0

    if-eq v2, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk/a/b/a/d/g0/l;->_wrapper2:Lk/a/b/a/d/g0/l0;

    iput-object p1, p0, Lk/a/b/a/d/g0/l;->_selectedTransportWrapper:Lk/a/b/a/d/g0/l0;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lk/a/b/a/d/g0/l;->_wrapper1:Lk/a/b/a/d/g0/l0;

    iput-object p1, p0, Lk/a/b/a/d/g0/l;->_selectedTransportWrapper:Lk/a/b/a/d/g0/l0;

    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "insufficient bytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
