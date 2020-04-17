.class public Lk/b/a/u0;
.super Lk/b/a/t;
.source "SourceFile"

# interfaces
.implements Lk/b/a/a0;


# instance fields
.field public final x:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lk/b/a/t;-><init>()V

    iput-object p1, p0, Lk/b/a/u0;->x:[B

    return-void
.end method


# virtual methods
.method public a(Lk/b/a/r;Z)V
    .locals 2

    iget-object v0, p0, Lk/b/a/u0;->x:[B

    const/16 v1, 0x1b

    invoke-virtual {p1, p2, v1, v0}, Lk/b/a/r;->a(ZI[B)V

    return-void
.end method

.method public a(Lk/b/a/t;)Z
    .locals 1

    instance-of v0, p1, Lk/b/a/u0;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lk/b/a/u0;

    iget-object v0, p0, Lk/b/a/u0;->x:[B

    iget-object p1, p1, Lk/b/a/u0;->x:[B

    .line 1
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lk/b/a/u0;->x:[B

    invoke-static {v0}, Lk/b/j/f;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Lk/b/a/u0;->x:[B

    array-length v0, v0

    invoke-static {v0}, Lk/b/a/d2;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lk/b/a/u0;->x:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lk/b/a/u0;->x:[B

    invoke-static {v0}, Lk/b/c/e/a;->d([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lk/b/a/u0;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
