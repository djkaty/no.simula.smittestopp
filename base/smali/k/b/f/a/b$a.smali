.class public abstract Lk/b/f/a/b$a;
.super Lk/b/f/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/f/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(IIII)V
    .locals 5

    if-eqz p2, :cond_4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-nez p3, :cond_1

    if-nez p4, :cond_0

    new-array p3, v2, [I

    aput v3, p3, v3

    aput p2, p3, v1

    aput p1, p3, v0

    .line 1
    invoke-static {p3}, Lk/b/f/b/b;->a([I)Lk/b/f/b/e;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "k3 must be 0 if k2 == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-le p3, p2, :cond_3

    if-le p4, p3, :cond_2

    const/4 v4, 0x5

    new-array v4, v4, [I

    aput v3, v4, v3

    aput p2, v4, v1

    aput p3, v4, v0

    aput p4, v4, v2

    const/4 p2, 0x4

    aput p1, v4, p2

    invoke-static {v4}, Lk/b/f/b/b;->a([I)Lk/b/f/b/e;

    move-result-object p1

    .line 2
    :goto_0
    invoke-direct {p0, p1}, Lk/b/f/a/b;-><init>(Lk/b/f/b/a;)V

    return-void

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "k3 must be > k2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "k2 must be > k1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "k1 must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lk/b/f/a/d;
    .locals 2

    invoke-virtual {p0, p1}, Lk/b/f/a/b;->a(Ljava/math/BigInteger;)Lk/b/f/a/c;

    move-result-object p1

    invoke-virtual {p0, p2}, Lk/b/f/a/b;->a(Ljava/math/BigInteger;)Lk/b/f/a/c;

    move-result-object p2

    .line 1
    iget v0, p0, Lk/b/f/a/b;->d:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lk/b/f/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lk/b/f/a/c;->g()Lk/b/f/a/c;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lk/b/f/a/b;->c:Lk/b/f/a/c;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    check-cast p2, Lk/b/f/a/c$c;

    .line 5
    invoke-virtual {p1}, Lk/b/f/a/c;->c()Lk/b/f/a/c;

    move-result-object v0

    invoke-virtual {p2, v0}, Lk/b/f/a/c$c;->c(Lk/b/f/a/c;)Lk/b/f/a/c;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p1}, Lk/b/f/a/c;->a(Lk/b/f/a/c;)Lk/b/f/a/c;

    move-result-object p2

    :goto_0
    move-object v0, p0

    check-cast v0, Lk/b/f/a/b$c;

    .line 7
    new-instance v1, Lk/b/f/a/d$c;

    invoke-direct {v1, v0, p1, p2}, Lk/b/f/a/d$c;-><init>(Lk/b/f/a/b;Lk/b/f/a/c;Lk/b/f/a/c;)V

    return-object v1
.end method
