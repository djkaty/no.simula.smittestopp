.class public Lk/b/a/i2/f;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public A:Lk/b/a/x;

.field public B:Lk/b/a/b;

.field public x:Lk/b/a/l;

.field public y:Lk/b/a/l2/a;

.field public z:Lk/b/a/p;


# direct methods
.method public constructor <init>(Lk/b/a/l2/a;Lk/b/a/e;Lk/b/a/x;[B)V
    .locals 2

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    new-instance v0, Lk/b/a/l;

    if-eqz p4, :cond_0

    sget-object v1, Lk/b/j/b;->b:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    sget-object v1, Lk/b/j/b;->a:Ljava/math/BigInteger;

    :goto_0
    invoke-direct {v0, v1}, Lk/b/a/l;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lk/b/a/i2/f;->x:Lk/b/a/l;

    iput-object p1, p0, Lk/b/a/i2/f;->y:Lk/b/a/l2/a;

    new-instance p1, Lk/b/a/a1;

    invoke-direct {p1, p2}, Lk/b/a/a1;-><init>(Lk/b/a/e;)V

    iput-object p1, p0, Lk/b/a/i2/f;->z:Lk/b/a/p;

    iput-object p3, p0, Lk/b/a/i2/f;->A:Lk/b/a/x;

    if-nez p4, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    new-instance p1, Lk/b/a/r0;

    invoke-direct {p1, p4}, Lk/b/a/r0;-><init>([B)V

    :goto_1
    iput-object p1, p0, Lk/b/a/i2/f;->B:Lk/b/a/b;

    return-void
.end method

.method public constructor <init>(Lk/b/a/u;)V
    .locals 5

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    invoke-virtual {p1}, Lk/b/a/u;->j()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/l;->a(Ljava/lang/Object;)Lk/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/i2/f;->x:Lk/b/a/l;

    .line 1
    invoke-virtual {v0}, Lk/b/a/l;->k()I

    move-result v0

    if-ltz v0, :cond_5

    const/4 v1, 0x1

    if-gt v0, v1, :cond_5

    .line 2
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lk/b/a/l2/a;->a(Ljava/lang/Object;)Lk/b/a/l2/a;

    move-result-object v2

    iput-object v2, p0, Lk/b/a/i2/f;->y:Lk/b/a/l2/a;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lk/b/a/p;->a(Ljava/lang/Object;)Lk/b/a/p;

    move-result-object v2

    iput-object v2, p0, Lk/b/a/i2/f;->z:Lk/b/a/p;

    const/4 v2, -0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/b/a/b0;

    .line 3
    iget v4, v3, Lk/b/a/b0;->x:I

    if-le v4, v2, :cond_3

    const/4 v2, 0x0

    if-eqz v4, :cond_2

    if-ne v4, v1, :cond_1

    if-lt v0, v1, :cond_0

    .line 4
    invoke-static {v3, v2}, Lk/b/a/r0;->a(Lk/b/a/b0;Z)Lk/b/a/r0;

    move-result-object v2

    iput-object v2, p0, Lk/b/a/i2/f;->B:Lk/b/a/b;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'publicKey\' requires version v2(1) or later"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown optional field in private key info"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {v3, v2}, Lk/b/a/x;->a(Lk/b/a/b0;Z)Lk/b/a/x;

    move-result-object v2

    iput-object v2, p0, Lk/b/a/i2/f;->A:Lk/b/a/x;

    :goto_1
    move v2, v4

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid optional field in private key info"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void

    .line 5
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid version for private key info"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/Object;)Lk/b/a/i2/f;
    .locals 1

    instance-of v0, p0, Lk/b/a/i2/f;

    if-eqz v0, :cond_0

    check-cast p0, Lk/b/a/i2/f;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lk/b/a/i2/f;

    invoke-static {p0}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/b/a/i2/f;-><init>(Lk/b/a/u;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 5

    new-instance v0, Lk/b/a/f;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lk/b/a/f;-><init>(I)V

    iget-object v1, p0, Lk/b/a/i2/f;->x:Lk/b/a/l;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/i2/f;->y:Lk/b/a/l2/a;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/i2/f;->z:Lk/b/a/p;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/i2/f;->A:Lk/b/a/x;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Lk/b/a/h1;

    invoke-direct {v3, v2, v2, v1}, Lk/b/a/h1;-><init>(ZILk/b/a/e;)V

    invoke-virtual {v0, v3}, Lk/b/a/f;->a(Lk/b/a/e;)V

    :cond_0
    iget-object v1, p0, Lk/b/a/i2/f;->B:Lk/b/a/b;

    if-eqz v1, :cond_1

    new-instance v3, Lk/b/a/h1;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Lk/b/a/h1;-><init>(ZILk/b/a/e;)V

    invoke-virtual {v0, v3}, Lk/b/a/f;->a(Lk/b/a/e;)V

    :cond_1
    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v0}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    return-object v1
.end method

.method public f()Lk/b/a/e;
    .locals 1

    iget-object v0, p0, Lk/b/a/i2/f;->z:Lk/b/a/p;

    invoke-virtual {v0}, Lk/b/a/p;->j()[B

    move-result-object v0

    invoke-static {v0}, Lk/b/a/t;->a([B)Lk/b/a/t;

    move-result-object v0

    return-object v0
.end method
