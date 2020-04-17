.class public abstract Lk/b/f/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/b/f/a/b$a;,
        Lk/b/f/a/b$b;,
        Lk/b/f/a/b$c;,
        Lk/b/f/a/b$d;
    }
.end annotation


# instance fields
.field public a:Lk/b/f/b/a;

.field public b:Lk/b/f/a/c;

.field public c:Lk/b/f/a/c;

.field public d:I


# direct methods
.method public constructor <init>(Lk/b/f/b/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lk/b/f/a/b;->d:I

    iput-object p1, p0, Lk/b/f/a/b;->a:Lk/b/f/b/a;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/math/BigInteger;)Lk/b/f/a/c;
.end method

.method public abstract a()Lk/b/f/a/d;
.end method

.method public a(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lk/b/f/a/d;
    .locals 0

    invoke-virtual {p0, p1}, Lk/b/f/a/b;->a(Ljava/math/BigInteger;)Lk/b/f/a/c;

    move-result-object p1

    invoke-virtual {p0, p2}, Lk/b/f/a/b;->a(Ljava/math/BigInteger;)Lk/b/f/a/c;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lk/b/f/a/b;->a(Lk/b/f/a/c;Lk/b/f/a/c;)Lk/b/f/a/d;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lk/b/f/a/c;Lk/b/f/a/c;)Lk/b/f/a/d;
.end method

.method public a(Lk/b/f/a/d;)Lk/b/f/a/d;
    .locals 1

    .line 11
    iget-object v0, p1, Lk/b/f/a/d;->a:Lk/b/f/a/b;

    if-ne p0, v0, :cond_0

    return-object p1

    .line 12
    :cond_0
    invoke-virtual {p1}, Lk/b/f/a/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lk/b/f/a/b;->a()Lk/b/f/a/d;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lk/b/f/a/d;->d()Lk/b/f/a/d;

    move-result-object p1

    .line 13
    iget-object v0, p1, Lk/b/f/a/d;->b:Lk/b/f/a/c;

    .line 14
    invoke-virtual {v0}, Lk/b/f/a/c;->h()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lk/b/f/a/d;->b()Lk/b/f/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/f/a/c;->h()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lk/b/f/a/b;->a(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lk/b/f/a/d;

    move-result-object p1

    return-object p1
.end method

.method public a(Lk/b/f/a/b;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lk/b/f/a/b;->a:Lk/b/f/b/a;

    iget-object v1, p1, Lk/b/f/a/b;->a:Lk/b/f/b/a;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lk/b/f/a/b;->b:Lk/b/f/a/c;

    .line 4
    invoke-virtual {v0}, Lk/b/f/a/c;->h()Ljava/math/BigInteger;

    move-result-object v0

    .line 5
    iget-object v1, p1, Lk/b/f/a/b;->b:Lk/b/f/a/c;

    .line 6
    invoke-virtual {v1}, Lk/b/f/a/c;->h()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lk/b/f/a/b;->c:Lk/b/f/a/c;

    .line 8
    invoke-virtual {v0}, Lk/b/f/a/c;->h()Ljava/math/BigInteger;

    move-result-object v0

    .line 9
    iget-object p1, p1, Lk/b/f/a/b;->c:Lk/b/f/a/c;

    .line 10
    invoke-virtual {p1}, Lk/b/f/a/c;->h()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lk/b/f/a/b;

    if-eqz v0, :cond_0

    check-cast p1, Lk/b/f/a/b;

    invoke-virtual {p0, p1}, Lk/b/f/a/b;->a(Lk/b/f/a/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lk/b/f/a/b;->a:Lk/b/f/b/a;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 3
    iget-object v1, p0, Lk/b/f/a/b;->b:Lk/b/f/a/c;

    .line 4
    invoke-virtual {v1}, Lk/b/f/a/c;->h()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Lk/b/f/a/b;->c:Lk/b/f/a/c;

    .line 7
    invoke-virtual {v1}, Lk/b/f/a/c;->h()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
