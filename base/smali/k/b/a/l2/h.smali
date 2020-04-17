.class public Lk/b/a/l2/h;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public x:Lk/b/a/l;

.field public y:Lk/b/a/l;

.field public z:Lk/b/a/l;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    new-instance v0, Lk/b/a/l;

    invoke-direct {v0, p1}, Lk/b/a/l;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lk/b/a/l2/h;->x:Lk/b/a/l;

    new-instance p1, Lk/b/a/l;

    invoke-direct {p1, p2}, Lk/b/a/l;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lk/b/a/l2/h;->y:Lk/b/a/l;

    new-instance p1, Lk/b/a/l;

    invoke-direct {p1, p3}, Lk/b/a/l;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lk/b/a/l2/h;->z:Lk/b/a/l;

    return-void
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 2

    new-instance v0, Lk/b/a/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lk/b/a/f;-><init>(I)V

    iget-object v1, p0, Lk/b/a/l2/h;->x:Lk/b/a/l;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/l2/h;->y:Lk/b/a/l;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/l2/h;->z:Lk/b/a/l;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v0}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    return-object v1
.end method
