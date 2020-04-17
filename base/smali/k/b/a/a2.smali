.class public Lk/b/a/a2;
.super Lk/b/a/u;
.source "SourceFile"


# instance fields
.field public y:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lk/b/a/u;-><init>()V

    iput-object p1, p0, Lk/b/a/a2;->y:[B

    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)Lk/b/a/e;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lk/b/a/a2;->l()V

    .line 1
    iget-object v0, p0, Lk/b/a/u;->x:[Lk/b/a/e;

    aget-object p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lk/b/a/r;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lk/b/a/a2;->y:[B

    if-eqz v0, :cond_0

    const/16 v0, 0x30

    iget-object v1, p0, Lk/b/a/a2;->y:[B

    invoke-virtual {p1, p2, v0, v1}, Lk/b/a/r;->a(ZI[B)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lk/b/a/u;->i()Lk/b/a/t;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lk/b/a/t;->a(Lk/b/a/r;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lk/b/a/a2;->y:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk/b/a/a2;->y:[B

    array-length v0, v0

    invoke-static {v0}, Lk/b/a/d2;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lk/b/a/a2;->y:[B

    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-super {p0}, Lk/b/a/u;->i()Lk/b/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/t;->f()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Lk/b/a/t;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lk/b/a/a2;->l()V

    invoke-super {p0}, Lk/b/a/u;->h()Lk/b/a/t;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hashCode()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lk/b/a/a2;->l()V

    invoke-super {p0}, Lk/b/a/u;->hashCode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()Lk/b/a/t;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lk/b/a/a2;->l()V

    invoke-super {p0}, Lk/b/a/u;->i()Lk/b/a/t;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lk/b/a/e;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lk/b/a/a2;->l()V

    invoke-super {p0}, Lk/b/a/u;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()Ljava/util/Enumeration;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lk/b/a/a2;->y:[B

    if-eqz v0, :cond_0

    new-instance v0, Lk/b/a/z1;

    iget-object v1, p0, Lk/b/a/a2;->y:[B

    invoke-direct {v0, v1}, Lk/b/a/z1;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1
    :cond_0
    :try_start_1
    new-instance v0, Lk/b/a/u$a;

    invoke-direct {v0, p0}, Lk/b/a/u$a;-><init>(Lk/b/a/u;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public k()[Lk/b/a/e;
    .locals 1

    invoke-virtual {p0}, Lk/b/a/a2;->l()V

    .line 1
    iget-object v0, p0, Lk/b/a/u;->x:[Lk/b/a/e;

    return-object v0
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Lk/b/a/a2;->y:[B

    if-eqz v0, :cond_1

    new-instance v0, Lk/b/a/f;

    const/16 v1, 0xa

    .line 1
    invoke-direct {v0, v1}, Lk/b/a/f;-><init>(I)V

    .line 2
    new-instance v1, Lk/b/a/z1;

    iget-object v2, p0, Lk/b/a/a2;->y:[B

    invoke-direct {v1, v2}, Lk/b/a/z1;-><init>([B)V

    :goto_0
    invoke-virtual {v1}, Lk/b/a/z1;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lk/b/a/z1;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/b/a/t;

    invoke-virtual {v0, v2}, Lk/b/a/f;->a(Lk/b/a/e;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lk/b/a/f;->a()[Lk/b/a/e;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/u;->x:[Lk/b/a/e;

    const/4 v0, 0x0

    iput-object v0, p0, Lk/b/a/a2;->y:[B

    :cond_1
    return-void
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lk/b/a/a2;->l()V

    .line 1
    iget-object v0, p0, Lk/b/a/u;->x:[Lk/b/a/e;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
