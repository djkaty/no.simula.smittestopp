.class public Lk/b/a/i2/g;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public A:Ljava/math/BigInteger;

.field public B:Ljava/math/BigInteger;

.field public C:Ljava/math/BigInteger;

.field public D:Ljava/math/BigInteger;

.field public E:Ljava/math/BigInteger;

.field public F:Ljava/math/BigInteger;

.field public G:Lk/b/a/u;

.field public x:Ljava/math/BigInteger;

.field public y:Ljava/math/BigInteger;

.field public z:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lk/b/a/u;)V
    .locals 3

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lk/b/a/i2/g;->G:Lk/b/a/u;

    invoke-virtual {p1}, Lk/b/a/u;->j()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/l;

    invoke-virtual {v0}, Lk/b/a/l;->k()I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    invoke-virtual {v0}, Lk/b/a/l;->j()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/i2/g;->x:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/l;

    invoke-virtual {v0}, Lk/b/a/l;->j()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/i2/g;->y:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/l;

    invoke-virtual {v0}, Lk/b/a/l;->j()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/i2/g;->z:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/l;

    invoke-virtual {v0}, Lk/b/a/l;->j()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/i2/g;->A:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/l;

    invoke-virtual {v0}, Lk/b/a/l;->j()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/i2/g;->B:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/l;

    invoke-virtual {v0}, Lk/b/a/l;->j()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/i2/g;->C:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/l;

    invoke-virtual {v0}, Lk/b/a/l;->j()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/i2/g;->D:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/l;

    invoke-virtual {v0}, Lk/b/a/l;->j()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/i2/g;->E:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/l;

    invoke-virtual {v0}, Lk/b/a/l;->j()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/i2/g;->F:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk/b/a/u;

    iput-object p1, p0, Lk/b/a/i2/g;->G:Lk/b/a/u;

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong version for RSA private key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 3

    new-instance v0, Lk/b/a/f;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lk/b/a/f;-><init>(I)V

    new-instance v1, Lk/b/a/l;

    iget-object v2, p0, Lk/b/a/i2/g;->x:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lk/b/a/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/l;

    .line 1
    iget-object v2, p0, Lk/b/a/i2/g;->y:Ljava/math/BigInteger;

    .line 2
    invoke-direct {v1, v2}, Lk/b/a/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/l;

    .line 3
    iget-object v2, p0, Lk/b/a/i2/g;->z:Ljava/math/BigInteger;

    .line 4
    invoke-direct {v1, v2}, Lk/b/a/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/l;

    .line 5
    iget-object v2, p0, Lk/b/a/i2/g;->A:Ljava/math/BigInteger;

    .line 6
    invoke-direct {v1, v2}, Lk/b/a/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/l;

    .line 7
    iget-object v2, p0, Lk/b/a/i2/g;->B:Ljava/math/BigInteger;

    .line 8
    invoke-direct {v1, v2}, Lk/b/a/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/l;

    .line 9
    iget-object v2, p0, Lk/b/a/i2/g;->C:Ljava/math/BigInteger;

    .line 10
    invoke-direct {v1, v2}, Lk/b/a/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/l;

    .line 11
    iget-object v2, p0, Lk/b/a/i2/g;->D:Ljava/math/BigInteger;

    .line 12
    invoke-direct {v1, v2}, Lk/b/a/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/l;

    .line 13
    iget-object v2, p0, Lk/b/a/i2/g;->E:Ljava/math/BigInteger;

    .line 14
    invoke-direct {v1, v2}, Lk/b/a/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/l;

    .line 15
    iget-object v2, p0, Lk/b/a/i2/g;->F:Ljava/math/BigInteger;

    .line 16
    invoke-direct {v1, v2}, Lk/b/a/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/i2/g;->G:Lk/b/a/u;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    :cond_0
    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v0}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    return-object v1
.end method
