.class public abstract Lk/b/f/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/b/f/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/b/f/a/c$a;,
        Lk/b/f/a/c$b;,
        Lk/b/f/a/c$c;,
        Lk/b/f/a/c$d;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    invoke-virtual {p0}, Lk/b/f/a/c;->h()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public abstract a(Lk/b/f/a/c;)Lk/b/f/a/c;
.end method

.method public abstract b()I
.end method

.method public abstract b(Lk/b/f/a/c;)Lk/b/f/a/c;
.end method

.method public abstract c()Lk/b/f/a/c;
.end method

.method public abstract c(Lk/b/f/a/c;)Lk/b/f/a/c;
.end method

.method public d()Z
    .locals 2

    invoke-virtual {p0}, Lk/b/f/a/c;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public e()Z
    .locals 1

    invoke-virtual {p0}, Lk/b/f/a/c;->h()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract f()Lk/b/f/a/c;
.end method

.method public abstract g()Lk/b/f/a/c;
.end method

.method public abstract h()Ljava/math/BigInteger;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lk/b/f/a/c;->h()Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
