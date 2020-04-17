.class public Lk/b/a/t1;
.super Lk/b/a/x;
.source "SourceFile"


# instance fields
.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lk/b/a/x;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lk/b/a/t1;->z:I

    return-void
.end method

.method public constructor <init>(Lk/b/a/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lk/b/a/x;-><init>(Lk/b/a/e;)V

    const/4 p1, -0x1

    iput p1, p0, Lk/b/a/t1;->z:I

    return-void
.end method

.method public constructor <init>(Lk/b/a/f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lk/b/a/x;-><init>(Lk/b/a/f;Z)V

    const/4 p1, -0x1

    iput p1, p0, Lk/b/a/t1;->z:I

    return-void
.end method

.method public constructor <init>(Z[Lk/b/a/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lk/b/a/x;-><init>(Z[Lk/b/a/e;)V

    const/4 p1, -0x1

    iput p1, p0, Lk/b/a/t1;->z:I

    return-void
.end method


# virtual methods
.method public a(Lk/b/a/r;Z)V
    .locals 7

    if-eqz p2, :cond_0

    const/16 p2, 0x31

    .line 1
    iget-object v0, p1, Lk/b/a/r;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write(I)V

    .line 2
    :cond_0
    invoke-virtual {p1}, Lk/b/a/r;->b()Lk/b/a/r;

    move-result-object p2

    iget-object v0, p0, Lk/b/a/x;->x:[Lk/b/a/e;

    array-length v0, v0

    iget v1, p0, Lk/b/a/t1;->z:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_3

    const/16 v1, 0x10

    if-le v0, v1, :cond_1

    goto :goto_2

    :cond_1
    new-array v1, v0, [Lk/b/a/t;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    iget-object v6, p0, Lk/b/a/x;->x:[Lk/b/a/e;

    aget-object v6, v6, v4

    invoke-interface {v6}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object v6

    invoke-virtual {v6}, Lk/b/a/t;->i()Lk/b/a/t;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-virtual {v6}, Lk/b/a/t;->f()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput v5, p0, Lk/b/a/t1;->z:I

    invoke-virtual {p1, v5}, Lk/b/a/r;->a(I)V

    :goto_1
    if-ge v2, v0, :cond_4

    aget-object p1, v1, v2

    invoke-virtual {p2, p1, v3}, Lk/b/a/r;->a(Lk/b/a/t;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lk/b/a/t1;->j()I

    move-result v1

    invoke-virtual {p1, v1}, Lk/b/a/r;->a(I)V

    :goto_3
    if-ge v2, v0, :cond_4

    iget-object p1, p0, Lk/b/a/x;->x:[Lk/b/a/e;

    aget-object p1, p1, v2

    invoke-interface {p1}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object p1

    invoke-virtual {p2, p1, v3}, Lk/b/a/r;->a(Lk/b/a/t;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public f()I
    .locals 2

    invoke-virtual {p0}, Lk/b/a/t1;->j()I

    move-result v0

    invoke-static {v0}, Lk/b/a/d2;->a(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method public i()Lk/b/a/t;
    .locals 0

    return-object p0
.end method

.method public final j()I
    .locals 4

    iget v0, p0, Lk/b/a/t1;->z:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lk/b/a/x;->x:[Lk/b/a/e;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lk/b/a/x;->x:[Lk/b/a/e;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object v3

    invoke-virtual {v3}, Lk/b/a/t;->i()Lk/b/a/t;

    move-result-object v3

    invoke-virtual {v3}, Lk/b/a/t;->f()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lk/b/a/t1;->z:I

    :cond_1
    iget v0, p0, Lk/b/a/t1;->z:I

    return v0
.end method
