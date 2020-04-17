.class public Lk/b/a/l2/g;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public A:Z

.field public B:I

.field public x:Lk/b/a/l2/t;

.field public y:Lk/b/a/l2/a;

.field public z:Lk/b/a/r0;


# direct methods
.method public constructor <init>(Lk/b/a/u;)V
    .locals 3

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lk/b/a/l2/g;->A:Z

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    .line 1
    instance-of v1, v0, Lk/b/a/l2/t;

    if-eqz v1, :cond_0

    check-cast v0, Lk/b/a/l2/t;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Lk/b/a/l2/t;

    invoke-static {v0}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object v0

    invoke-direct {v1, v0}, Lk/b/a/l2/t;-><init>(Lk/b/a/u;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-object v0, p0, Lk/b/a/l2/g;->x:Lk/b/a/l2/t;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/l2/a;->a(Ljava/lang/Object;)Lk/b/a/l2/a;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/l2/g;->y:Lk/b/a/l2/a;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/r0;->a(Ljava/lang/Object;)Lk/b/a/r0;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/l2/g;->z:Lk/b/a/r0;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence wrong size for CertificateList"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 2

    new-instance v0, Lk/b/a/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lk/b/a/f;-><init>(I)V

    iget-object v1, p0, Lk/b/a/l2/g;->x:Lk/b/a/l2/t;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/l2/g;->y:Lk/b/a/l2/a;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/l2/g;->z:Lk/b/a/r0;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v0}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    return-object v1
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lk/b/a/l2/g;->A:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lk/b/a/n;->hashCode()I

    move-result v0

    iput v0, p0, Lk/b/a/l2/g;->B:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk/b/a/l2/g;->A:Z

    :cond_0
    iget v0, p0, Lk/b/a/l2/g;->B:I

    return v0
.end method
