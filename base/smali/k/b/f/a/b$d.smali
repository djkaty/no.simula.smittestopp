.class public Lk/b/f/a/b$d;
.super Lk/b/f/a/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/f/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public e:Ljava/math/BigInteger;

.field public f:Ljava/math/BigInteger;

.field public g:Lk/b/f/a/d$d;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0, p1}, Lk/b/f/a/b$b;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lk/b/f/a/b$d;->e:Ljava/math/BigInteger;

    invoke-static {p1}, Lk/b/f/a/c$d;->b(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lk/b/f/a/b$d;->f:Ljava/math/BigInteger;

    new-instance p1, Lk/b/f/a/d$d;

    const/4 p4, 0x0

    invoke-direct {p1, p0, p4, p4}, Lk/b/f/a/d$d;-><init>(Lk/b/f/a/b;Lk/b/f/a/c;Lk/b/f/a/c;)V

    iput-object p1, p0, Lk/b/f/a/b$d;->g:Lk/b/f/a/d$d;

    invoke-virtual {p0, p2}, Lk/b/f/a/b$d;->a(Ljava/math/BigInteger;)Lk/b/f/a/c;

    move-result-object p1

    iput-object p1, p0, Lk/b/f/a/b;->b:Lk/b/f/a/c;

    invoke-virtual {p0, p3}, Lk/b/f/a/b$d;->a(Ljava/math/BigInteger;)Lk/b/f/a/c;

    move-result-object p1

    iput-object p1, p0, Lk/b/f/a/b;->c:Lk/b/f/a/c;

    const/4 p1, 0x4

    iput p1, p0, Lk/b/f/a/b;->d:I

    return-void
.end method


# virtual methods
.method public a(Ljava/math/BigInteger;)Lk/b/f/a/c;
    .locals 3

    new-instance v0, Lk/b/f/a/c$d;

    iget-object v1, p0, Lk/b/f/a/b$d;->e:Ljava/math/BigInteger;

    iget-object v2, p0, Lk/b/f/a/b$d;->f:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, p1}, Lk/b/f/a/c$d;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public a()Lk/b/f/a/d;
    .locals 1

    iget-object v0, p0, Lk/b/f/a/b$d;->g:Lk/b/f/a/d$d;

    return-object v0
.end method

.method public a(Lk/b/f/a/c;Lk/b/f/a/c;)Lk/b/f/a/d;
    .locals 1

    new-instance v0, Lk/b/f/a/d$d;

    invoke-direct {v0, p0, p1, p2}, Lk/b/f/a/d$d;-><init>(Lk/b/f/a/b;Lk/b/f/a/c;Lk/b/f/a/c;)V

    return-object v0
.end method

.method public a(Lk/b/f/a/d;)Lk/b/f/a/d;
    .locals 5

    .line 1
    iget-object v0, p1, Lk/b/f/a/d;->a:Lk/b/f/a/b;

    if-eq p0, v0, :cond_1

    .line 2
    iget v0, p0, Lk/b/f/a/b;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lk/b/f/a/d;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p1, Lk/b/f/a/d;->a:Lk/b/f/a/b;

    .line 5
    iget v0, v0, Lk/b/f/a/b;->d:I

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lk/b/f/a/d$d;

    iget-object v1, p1, Lk/b/f/a/d;->b:Lk/b/f/a/c;

    invoke-virtual {v1}, Lk/b/f/a/c;->h()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lk/b/f/a/b$d;->a(Ljava/math/BigInteger;)Lk/b/f/a/c;

    move-result-object v1

    iget-object v2, p1, Lk/b/f/a/d;->c:Lk/b/f/a/c;

    invoke-virtual {v2}, Lk/b/f/a/c;->h()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Lk/b/f/a/b$d;->a(Ljava/math/BigInteger;)Lk/b/f/a/c;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lk/b/f/a/c;

    iget-object p1, p1, Lk/b/f/a/d;->d:[Lk/b/f/a/c;

    const/4 v4, 0x0

    aget-object p1, p1, v4

    invoke-virtual {p1}, Lk/b/f/a/c;->h()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/b/f/a/b$d;->a(Ljava/math/BigInteger;)Lk/b/f/a/c;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-direct {v0, p0, v1, v2, v3}, Lk/b/f/a/d$d;-><init>(Lk/b/f/a/b;Lk/b/f/a/c;Lk/b/f/a/c;[Lk/b/f/a/c;)V

    return-object v0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lk/b/f/a/b;->a(Lk/b/f/a/d;)Lk/b/f/a/d;

    move-result-object p1

    return-object p1
.end method
