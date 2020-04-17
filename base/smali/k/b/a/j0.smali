.class public Lk/b/a/j0;
.super Lk/b/a/u;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lk/b/a/u;-><init>()V

    return-void
.end method

.method public constructor <init>(Lk/b/a/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lk/b/a/u;-><init>(Lk/b/a/e;)V

    return-void
.end method

.method public constructor <init>(Lk/b/a/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lk/b/a/u;-><init>(Lk/b/a/f;)V

    return-void
.end method


# virtual methods
.method public a(Lk/b/a/r;Z)V
    .locals 2

    iget-object v0, p0, Lk/b/a/u;->x:[Lk/b/a/e;

    const/16 v1, 0x30

    invoke-virtual {p1, p2, v1, v0}, Lk/b/a/r;->a(ZI[Lk/b/a/e;)V

    return-void
.end method

.method public f()I
    .locals 4

    iget-object v0, p0, Lk/b/a/u;->x:[Lk/b/a/e;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lk/b/a/u;->x:[Lk/b/a/e;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object v3

    invoke-virtual {v3}, Lk/b/a/t;->f()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    return v2
.end method
