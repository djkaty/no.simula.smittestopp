.class public Lk/b/a/i2/h;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public x:Ljava/math/BigInteger;

.field public y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    iput-object p1, p0, Lk/b/a/i2/h;->x:Ljava/math/BigInteger;

    iput-object p2, p0, Lk/b/a/i2/h;->y:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lk/b/a/u;)V
    .locals 4

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lk/b/a/u;->j()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/l;->a(Ljava/lang/Object;)Lk/b/a/l;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1
    new-instance v2, Ljava/math/BigInteger;

    iget-object v0, v0, Lk/b/a/l;->x:[B

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 2
    iput-object v2, p0, Lk/b/a/i2/h;->x:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/l;->a(Ljava/lang/Object;)Lk/b/a/l;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Ljava/math/BigInteger;

    iget-object p1, p1, Lk/b/a/l;->x:[B

    invoke-direct {v0, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 4
    iput-object v0, p0, Lk/b/a/i2/h;->y:Ljava/math/BigInteger;

    return-void

    .line 5
    :cond_0
    throw v1

    :cond_1
    throw v1

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad sequence size: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 3

    new-instance v0, Lk/b/a/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lk/b/a/f;-><init>(I)V

    new-instance v1, Lk/b/a/l;

    .line 1
    iget-object v2, p0, Lk/b/a/i2/h;->x:Ljava/math/BigInteger;

    .line 2
    invoke-direct {v1, v2}, Lk/b/a/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/l;

    .line 3
    iget-object v2, p0, Lk/b/a/i2/h;->y:Ljava/math/BigInteger;

    .line 4
    invoke-direct {v1, v2}, Lk/b/a/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v0}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    return-object v1
.end method
