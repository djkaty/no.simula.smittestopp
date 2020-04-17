.class public abstract Lk/c/a/a/a/s/s/h;
.super Lk/c/a/a/a/s/s/u;
.source "SourceFile"

# interfaces
.implements Lk/c/a/a/a/m;


# direct methods
.method public constructor <init>(B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lk/c/a/a/a/s/s/u;-><init>(B)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()[B
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lk/c/a/a/a/s/s/u;->h()[B

    move-result-object v0
    :try_end_0
    .catch Lk/c/a/a/a/k; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lk/c/a/a/a/n;

    .line 3
    iget-object v0, v0, Lk/c/a/a/a/k;->y:Ljava/lang/Throwable;

    .line 4
    invoke-direct {v1, v0}, Lk/c/a/a/a/n;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public d()[B
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lk/c/a/a/a/s/s/u;->k()[B

    move-result-object v0
    :try_end_0
    .catch Lk/c/a/a/a/k; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lk/c/a/a/a/n;

    .line 3
    iget-object v0, v0, Lk/c/a/a/a/k;->y:Ljava/lang/Throwable;

    .line 4
    invoke-direct {v1, v0}, Lk/c/a/a/a/n;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()I
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lk/c/a/a/a/s/s/u;->h()[B

    move-result-object v0
    :try_end_0
    .catch Lk/c/a/a/a/k; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    array-length v0, v0

    return v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Lk/c/a/a/a/n;

    .line 4
    iget-object v0, v0, Lk/c/a/a/a/k;->y:Ljava/lang/Throwable;

    .line 5
    invoke-direct {v1, v0}, Lk/c/a/a/a/n;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
