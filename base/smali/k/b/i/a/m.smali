.class public Lk/b/i/a/m;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public final A:[B

.field public final B:[B

.field public final C:[B

.field public final D:I

.field public final E:[B

.field public final x:I

.field public final y:I

.field public final z:[B


# direct methods
.method public constructor <init>(I[B[B[B[B[B)V
    .locals 1

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lk/b/i/a/m;->x:I

    iput p1, p0, Lk/b/i/a/m;->y:I

    invoke-static {p2}, Lk/b/c/e/a;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/a/m;->z:[B

    invoke-static {p3}, Lk/b/c/e/a;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/a/m;->A:[B

    invoke-static {p4}, Lk/b/c/e/a;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/a/m;->B:[B

    invoke-static {p5}, Lk/b/c/e/a;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/a/m;->C:[B

    invoke-static {p6}, Lk/b/c/e/a;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/a/m;->E:[B

    const/4 p1, -0x1

    iput p1, p0, Lk/b/i/a/m;->D:I

    return-void
.end method

.method public constructor <init>(I[B[B[B[B[BI)V
    .locals 1

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lk/b/i/a/m;->x:I

    iput p1, p0, Lk/b/i/a/m;->y:I

    invoke-static {p2}, Lk/b/c/e/a;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/a/m;->z:[B

    invoke-static {p3}, Lk/b/c/e/a;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/a/m;->A:[B

    invoke-static {p4}, Lk/b/c/e/a;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/a/m;->B:[B

    invoke-static {p5}, Lk/b/c/e/a;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/a/m;->C:[B

    invoke-static {p6}, Lk/b/c/e/a;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/a/m;->E:[B

    iput p7, p0, Lk/b/i/a/m;->D:I

    return-void
.end method

.method public constructor <init>(Lk/b/a/u;)V
    .locals 8

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    invoke-static {v1}, Lk/b/a/l;->a(Ljava/lang/Object;)Lk/b/a/l;

    move-result-object v1

    sget-object v2, Lk/b/j/b;->a:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Lk/b/a/l;->a(Ljava/math/BigInteger;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lk/b/j/b;->b:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Lk/b/a/l;->a(Ljava/math/BigInteger;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown version of sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lk/b/a/l;->k()I

    move-result v1

    iput v1, p0, Lk/b/i/a/m;->x:I

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key sequence wrong size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v4

    invoke-static {v4}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object v4

    invoke-virtual {v4, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v5

    invoke-static {v5}, Lk/b/a/l;->a(Ljava/lang/Object;)Lk/b/a/l;

    move-result-object v5

    invoke-virtual {v5}, Lk/b/a/l;->k()I

    move-result v5

    iput v5, p0, Lk/b/i/a/m;->y:I

    invoke-virtual {v4, v1}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v5

    invoke-static {v5}, Lk/b/a/p;->a(Ljava/lang/Object;)Lk/b/a/p;

    move-result-object v5

    invoke-virtual {v5}, Lk/b/a/p;->j()[B

    move-result-object v5

    invoke-static {v5}, Lk/b/c/e/a;->a([B)[B

    move-result-object v5

    iput-object v5, p0, Lk/b/i/a/m;->z:[B

    invoke-virtual {v4, v3}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v5

    invoke-static {v5}, Lk/b/a/p;->a(Ljava/lang/Object;)Lk/b/a/p;

    move-result-object v5

    invoke-virtual {v5}, Lk/b/a/p;->j()[B

    move-result-object v5

    invoke-static {v5}, Lk/b/c/e/a;->a([B)[B

    move-result-object v5

    iput-object v5, p0, Lk/b/i/a/m;->A:[B

    invoke-virtual {v4, v2}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v5

    invoke-static {v5}, Lk/b/a/p;->a(Ljava/lang/Object;)Lk/b/a/p;

    move-result-object v5

    invoke-virtual {v5}, Lk/b/a/p;->j()[B

    move-result-object v5

    invoke-static {v5}, Lk/b/c/e/a;->a([B)[B

    move-result-object v5

    iput-object v5, p0, Lk/b/i/a/m;->B:[B

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v5

    invoke-static {v5}, Lk/b/a/p;->a(Ljava/lang/Object;)Lk/b/a/p;

    move-result-object v5

    invoke-virtual {v5}, Lk/b/a/p;->j()[B

    move-result-object v5

    invoke-static {v5}, Lk/b/c/e/a;->a([B)[B

    move-result-object v5

    iput-object v5, p0, Lk/b/i/a/m;->C:[B

    invoke-virtual {v4}, Lk/b/a/u;->size()I

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x5

    if-ne v5, v6, :cond_5

    invoke-virtual {v4, v7}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v4

    invoke-static {v4}, Lk/b/a/b0;->a(Ljava/lang/Object;)Lk/b/a/b0;

    move-result-object v4

    .line 1
    iget v5, v4, Lk/b/a/b0;->x:I

    if-nez v5, :cond_4

    .line 2
    invoke-static {v4, v0}, Lk/b/a/l;->a(Lk/b/a/b0;Z)Lk/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/l;->k()I

    move-result v0

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag in XMSSPrivateKey"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {v4}, Lk/b/a/u;->size()I

    move-result v0

    if-ne v0, v7, :cond_7

    const/4 v0, -0x1

    :goto_2
    iput v0, p0, Lk/b/i/a/m;->D:I

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v0

    if-ne v0, v2, :cond_6

    invoke-virtual {p1, v3}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/b0;->a(Ljava/lang/Object;)Lk/b/a/b0;

    move-result-object p1

    invoke-static {p1, v1}, Lk/b/a/p;->a(Lk/b/a/b0;Z)Lk/b/a/p;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/p;->j()[B

    move-result-object p1

    invoke-static {p1}, Lk/b/c/e/a;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/a/m;->E:[B

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    iput-object p1, p0, Lk/b/i/a/m;->E:[B

    :goto_3
    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "keySeq should be 5 or 6 in length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 8

    new-instance v0, Lk/b/a/f;

    const/16 v1, 0xa

    .line 1
    invoke-direct {v0, v1}, Lk/b/a/f;-><init>(I)V

    .line 2
    iget v2, p0, Lk/b/i/a/m;->D:I

    if-ltz v2, :cond_0

    new-instance v2, Lk/b/a/l;

    const-wide/16 v3, 0x1

    invoke-direct {v2, v3, v4}, Lk/b/a/l;-><init>(J)V

    goto :goto_0

    :cond_0
    new-instance v2, Lk/b/a/l;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Lk/b/a/l;-><init>(J)V

    :goto_0
    invoke-virtual {v0, v2}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v2, Lk/b/a/f;

    .line 3
    invoke-direct {v2, v1}, Lk/b/a/f;-><init>(I)V

    .line 4
    new-instance v1, Lk/b/a/l;

    iget v3, p0, Lk/b/i/a/m;->y:I

    int-to-long v3, v3

    invoke-direct {v1, v3, v4}, Lk/b/a/l;-><init>(J)V

    invoke-virtual {v2, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/a1;

    iget-object v3, p0, Lk/b/i/a/m;->z:[B

    invoke-direct {v1, v3}, Lk/b/a/a1;-><init>([B)V

    invoke-virtual {v2, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/a1;

    iget-object v3, p0, Lk/b/i/a/m;->A:[B

    invoke-direct {v1, v3}, Lk/b/a/a1;-><init>([B)V

    invoke-virtual {v2, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/a1;

    iget-object v3, p0, Lk/b/i/a/m;->B:[B

    invoke-direct {v1, v3}, Lk/b/a/a1;-><init>([B)V

    invoke-virtual {v2, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/a1;

    iget-object v3, p0, Lk/b/i/a/m;->C:[B

    invoke-direct {v1, v3}, Lk/b/a/a1;-><init>([B)V

    invoke-virtual {v2, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget v1, p0, Lk/b/i/a/m;->D:I

    const/4 v3, 0x0

    if-ltz v1, :cond_1

    new-instance v4, Lk/b/a/h1;

    new-instance v5, Lk/b/a/l;

    int-to-long v6, v1

    invoke-direct {v5, v6, v7}, Lk/b/a/l;-><init>(J)V

    invoke-direct {v4, v3, v3, v5}, Lk/b/a/h1;-><init>(ZILk/b/a/e;)V

    invoke-virtual {v2, v4}, Lk/b/a/f;->a(Lk/b/a/e;)V

    :cond_1
    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v2}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/h1;

    const/4 v2, 0x1

    new-instance v4, Lk/b/a/a1;

    iget-object v5, p0, Lk/b/i/a/m;->E:[B

    invoke-direct {v4, v5}, Lk/b/a/a1;-><init>([B)V

    invoke-direct {v1, v2, v3, v4}, Lk/b/a/h1;-><init>(ZILk/b/a/e;)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v0}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    return-object v1
.end method
