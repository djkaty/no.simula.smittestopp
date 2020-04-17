.class public Lk/b/a/m2/b;
.super Lk/b/a/n;
.source "SourceFile"

# interfaces
.implements Lk/b/a/m2/f;


# static fields
.field public static final C:Ljava/math/BigInteger;


# instance fields
.field public A:Ljava/math/BigInteger;

.field public B:[B

.field public x:Lk/b/f/a/b;

.field public y:Lk/b/a/m2/c;

.field public z:Ljava/math/BigInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lk/b/a/m2/b;->C:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lk/b/a/u;)V
    .locals 5

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    instance-of v1, v1, Lk/b/a/l;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    check-cast v0, Lk/b/a/l;

    sget-object v1, Lk/b/a/m2/b;->C:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lk/b/a/l;->a(Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    check-cast v0, Lk/b/a/l;

    invoke-virtual {v0}, Lk/b/a/l;->j()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/m2/b;->z:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    check-cast v0, Lk/b/a/l;

    invoke-virtual {v0}, Lk/b/a/l;->j()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/m2/b;->A:Ljava/math/BigInteger;

    :cond_0
    new-instance v0, Lk/b/a/m2/a;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    invoke-static {v1}, Lk/b/a/m2/e;->a(Ljava/lang/Object;)Lk/b/a/m2/e;

    move-result-object v1

    iget-object v2, p0, Lk/b/a/m2/b;->z:Ljava/math/BigInteger;

    iget-object v3, p0, Lk/b/a/m2/b;->A:Ljava/math/BigInteger;

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v4

    invoke-static {v4}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lk/b/a/m2/a;-><init>(Lk/b/a/m2/e;Ljava/math/BigInteger;Ljava/math/BigInteger;Lk/b/a/u;)V

    .line 1
    iget-object v1, v0, Lk/b/a/m2/a;->x:Lk/b/f/a/b;

    .line 2
    iput-object v1, p0, Lk/b/a/m2/b;->x:Lk/b/f/a/b;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object p1

    instance-of v1, p1, Lk/b/a/m2/c;

    if-eqz v1, :cond_1

    check-cast p1, Lk/b/a/m2/c;

    iput-object p1, p0, Lk/b/a/m2/b;->y:Lk/b/a/m2/c;

    goto :goto_0

    :cond_1
    new-instance v1, Lk/b/a/m2/c;

    iget-object v2, p0, Lk/b/a/m2/b;->x:Lk/b/f/a/b;

    check-cast p1, Lk/b/a/p;

    invoke-direct {v1, v2, p1}, Lk/b/a/m2/c;-><init>(Lk/b/f/a/b;Lk/b/a/p;)V

    iput-object v1, p0, Lk/b/a/m2/b;->y:Lk/b/a/m2/c;

    .line 3
    :goto_0
    iget-object p1, v0, Lk/b/a/m2/a;->y:[B

    invoke-static {p1}, Lk/b/c/e/a;->a([B)[B

    move-result-object p1

    .line 4
    iput-object p1, p0, Lk/b/a/m2/b;->B:[B

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad version in X9ECParameters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/Object;)Lk/b/a/m2/b;
    .locals 1

    instance-of v0, p0, Lk/b/a/m2/b;

    if-eqz v0, :cond_0

    check-cast p0, Lk/b/a/m2/b;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lk/b/a/m2/b;

    invoke-static {p0}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/b/a/m2/b;-><init>(Lk/b/a/u;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 4

    new-instance v0, Lk/b/a/f;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lk/b/a/f;-><init>(I)V

    new-instance v1, Lk/b/a/l;

    sget-object v2, Lk/b/a/m2/b;->C:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lk/b/a/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/m2/a;

    iget-object v2, p0, Lk/b/a/m2/b;->x:Lk/b/f/a/b;

    iget-object v3, p0, Lk/b/a/m2/b;->B:[B

    invoke-direct {v1, v2, v3}, Lk/b/a/m2/a;-><init>(Lk/b/f/a/b;[B)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/m2/b;->y:Lk/b/a/m2/c;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/l;

    iget-object v2, p0, Lk/b/a/m2/b;->z:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lk/b/a/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/m2/b;->A:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    new-instance v2, Lk/b/a/l;

    invoke-direct {v2, v1}, Lk/b/a/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v2}, Lk/b/a/f;->a(Lk/b/a/e;)V

    :cond_0
    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v0}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    return-object v1
.end method
