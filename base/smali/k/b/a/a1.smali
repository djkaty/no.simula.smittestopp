.class public Lk/b/a/a1;
.super Lk/b/a/p;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lk/b/a/e;)V
    .locals 1

    invoke-interface {p1}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object p1

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Lk/b/a/n;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/p;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lk/b/a/p;-><init>([B)V

    return-void
.end method


# virtual methods
.method public a(Lk/b/a/r;Z)V
    .locals 2

    iget-object v0, p0, Lk/b/a/p;->x:[B

    const/4 v1, 0x4

    invoke-virtual {p1, p2, v1, v0}, Lk/b/a/r;->a(ZI[B)V

    return-void
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Lk/b/a/p;->x:[B

    array-length v0, v0

    invoke-static {v0}, Lk/b/a/d2;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lk/b/a/p;->x:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Lk/b/a/t;
    .locals 0

    return-object p0
.end method

.method public i()Lk/b/a/t;
    .locals 0

    return-object p0
.end method
