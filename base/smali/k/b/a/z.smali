.class public Lk/b/a/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:I

.field public final c:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-static {p1}, Lk/b/a/d2;->a(Ljava/io/InputStream;)I

    move-result v0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/b/a/z;->a:Ljava/io/InputStream;

    iput v0, p0, Lk/b/a/z;->b:I

    const/16 p1, 0xb

    new-array p1, p1, [[B

    iput-object p1, p0, Lk/b/a/z;->c:[[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/b/a/z;->a:Ljava/io/InputStream;

    iput p2, p0, Lk/b/a/z;->b:I

    const/16 p1, 0xb

    new-array p1, p1, [[B

    iput-object p1, p0, Lk/b/a/z;->c:[[B

    return-void
.end method


# virtual methods
.method public a()Lk/b/a/e;
    .locals 11

    iget-object v0, p0, Lk/b/a/z;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, p0, Lk/b/a/z;->a:Ljava/io/InputStream;

    instance-of v2, v1, Lk/b/a/y1;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Lk/b/a/y1;

    .line 2
    iput-boolean v3, v1, Lk/b/a/y1;->C:Z

    invoke-virtual {v1}, Lk/b/a/y1;->a()Z

    .line 3
    :cond_1
    iget-object v1, p0, Lk/b/a/z;->a:Ljava/io/InputStream;

    invoke-static {v1, v0}, Lk/b/a/k;->a(Ljava/io/InputStream;I)I

    move-result v1

    and-int/lit8 v2, v0, 0x20

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lk/b/a/z;->a:Ljava/io/InputStream;

    iget v6, p0, Lk/b/a/z;->b:I

    const/16 v7, 0x8

    const/16 v8, 0x11

    const/16 v9, 0x10

    const/4 v10, 0x4

    if-eq v1, v10, :cond_3

    if-eq v1, v9, :cond_3

    if-eq v1, v8, :cond_3

    if-ne v1, v7, :cond_4

    :cond_3
    const/4 v3, 0x1

    :cond_4
    invoke-static {v5, v6, v3}, Lk/b/a/k;->a(Ljava/io/InputStream;IZ)I

    move-result v3

    if-gez v3, :cond_c

    if-eqz v2, :cond_b

    new-instance v2, Lk/b/a/y1;

    iget-object v3, p0, Lk/b/a/z;->a:Ljava/io/InputStream;

    iget v5, p0, Lk/b/a/z;->b:I

    invoke-direct {v2, v3, v5}, Lk/b/a/y1;-><init>(Ljava/io/InputStream;I)V

    new-instance v3, Lk/b/a/z;

    iget v5, p0, Lk/b/a/z;->b:I

    invoke-direct {v3, v2, v5}, Lk/b/a/z;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_5

    new-instance v0, Lk/b/a/f0;

    invoke-direct {v0, v1, v3}, Lk/b/a/f0;-><init>(ILk/b/a/z;)V

    return-object v0

    :cond_5
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    new-instance v0, Lk/b/a/o0;

    invoke-direct {v0, v4, v1, v3}, Lk/b/a/o0;-><init>(ZILk/b/a/z;)V

    return-object v0

    :cond_6
    if-eq v1, v10, :cond_a

    if-eq v1, v7, :cond_9

    if-eq v1, v9, :cond_8

    if-ne v1, v8, :cond_7

    .line 4
    new-instance v0, Lk/b/a/m0;

    invoke-direct {v0, v3}, Lk/b/a/m0;-><init>(Lk/b/a/z;)V

    goto :goto_1

    :cond_7
    new-instance v0, Lk/b/a/h;

    const-string v2, "unknown BER object encountered: 0x"

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lk/b/a/h;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lk/b/a/k0;

    invoke-direct {v0, v3}, Lk/b/a/k0;-><init>(Lk/b/a/z;)V

    goto :goto_1

    :cond_9
    new-instance v0, Lk/b/a/t0;

    invoke-direct {v0, v3}, Lk/b/a/t0;-><init>(Lk/b/a/z;)V

    goto :goto_1

    :cond_a
    new-instance v0, Lk/b/a/i0;

    invoke-direct {v0, v3}, Lk/b/a/i0;-><init>(Lk/b/a/z;)V

    :goto_1
    return-object v0

    .line 5
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite-length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v4, Lk/b/a/w1;

    iget-object v5, p0, Lk/b/a/z;->a:Ljava/io/InputStream;

    iget v6, p0, Lk/b/a/z;->b:I

    invoke-direct {v4, v5, v3, v6}, Lk/b/a/w1;-><init>(Ljava/io/InputStream;II)V

    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_d

    new-instance v0, Lk/b/a/m1;

    invoke-virtual {v4}, Lk/b/a/w1;->a()[B

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lk/b/a/m1;-><init>(ZI[B)V

    return-object v0

    :cond_d
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_e

    new-instance v0, Lk/b/a/o0;

    new-instance v3, Lk/b/a/z;

    invoke-direct {v3, v4}, Lk/b/a/z;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2, v1, v3}, Lk/b/a/o0;-><init>(ZILk/b/a/z;)V

    return-object v0

    :cond_e
    if-eqz v2, :cond_13

    if-eq v1, v10, :cond_12

    if-eq v1, v7, :cond_11

    if-eq v1, v9, :cond_10

    if-ne v1, v8, :cond_f

    new-instance v0, Lk/b/a/u1;

    new-instance v1, Lk/b/a/z;

    invoke-direct {v1, v4}, Lk/b/a/z;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lk/b/a/u1;-><init>(Lk/b/a/z;)V

    return-object v0

    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v2, "unknown tag "

    const-string v3, " encountered"

    invoke-static {v2, v1, v3}, Le/a/a/a/a;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Lk/b/a/s1;

    new-instance v1, Lk/b/a/z;

    invoke-direct {v1, v4}, Lk/b/a/z;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lk/b/a/s1;-><init>(Lk/b/a/z;)V

    return-object v0

    :cond_11
    new-instance v0, Lk/b/a/t0;

    new-instance v1, Lk/b/a/z;

    invoke-direct {v1, v4}, Lk/b/a/z;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lk/b/a/t0;-><init>(Lk/b/a/z;)V

    return-object v0

    :cond_12
    new-instance v0, Lk/b/a/i0;

    new-instance v1, Lk/b/a/z;

    invoke-direct {v1, v4}, Lk/b/a/z;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lk/b/a/i0;-><init>(Lk/b/a/z;)V

    return-object v0

    :cond_13
    if-eq v1, v10, :cond_14

    :try_start_0
    iget-object v0, p0, Lk/b/a/z;->c:[[B

    invoke-static {v1, v4, v0}, Lk/b/a/k;->a(ILk/b/a/w1;[[B)Lk/b/a/t;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lk/b/a/h;

    const-string v2, "corrupted stream detected"

    invoke-direct {v1, v2, v0}, Lk/b/a/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_14
    new-instance v0, Lk/b/a/b1;

    invoke-direct {v0, v4}, Lk/b/a/b1;-><init>(Lk/b/a/w1;)V

    return-object v0
.end method

.method public a(ZI)Lk/b/a/t;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lk/b/a/z;->a:Ljava/io/InputStream;

    check-cast p1, Lk/b/a/w1;

    new-instance v1, Lk/b/a/v1;

    new-instance v2, Lk/b/a/a1;

    invoke-virtual {p1}, Lk/b/a/w1;->a()[B

    move-result-object p1

    invoke-direct {v2, p1}, Lk/b/a/a1;-><init>([B)V

    invoke-direct {v1, v0, p2, v2}, Lk/b/a/v1;-><init>(ZILk/b/a/e;)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lk/b/a/z;->b()Lk/b/a/f;

    move-result-object p1

    iget-object v1, p0, Lk/b/a/z;->a:Ljava/io/InputStream;

    instance-of v1, v1, Lk/b/a/y1;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 6
    iget v1, p1, Lk/b/a/f;->b:I

    if-ne v1, v2, :cond_1

    .line 7
    new-instance v1, Lk/b/a/n0;

    invoke-virtual {p1, v0}, Lk/b/a/f;->a(I)Lk/b/a/e;

    move-result-object p1

    invoke-direct {v1, v2, p2, p1}, Lk/b/a/n0;-><init>(ZILk/b/a/e;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lk/b/a/n0;

    invoke-static {p1}, Lk/b/a/g0;->a(Lk/b/a/f;)Lk/b/a/j0;

    move-result-object p1

    invoke-direct {v1, v0, p2, p1}, Lk/b/a/n0;-><init>(ZILk/b/a/e;)V

    :goto_0
    return-object v1

    .line 8
    :cond_2
    iget v1, p1, Lk/b/a/f;->b:I

    if-ne v1, v2, :cond_3

    .line 9
    new-instance v1, Lk/b/a/v1;

    invoke-virtual {p1, v0}, Lk/b/a/f;->a(I)Lk/b/a/e;

    move-result-object p1

    invoke-direct {v1, v2, p2, p1}, Lk/b/a/v1;-><init>(ZILk/b/a/e;)V

    goto :goto_1

    :cond_3
    new-instance v1, Lk/b/a/v1;

    invoke-static {p1}, Lk/b/a/p1;->a(Lk/b/a/f;)Lk/b/a/u;

    move-result-object p1

    invoke-direct {v1, v0, p2, p1}, Lk/b/a/v1;-><init>(ZILk/b/a/e;)V

    :goto_1
    return-object v1
.end method

.method public b()Lk/b/a/f;
    .locals 3

    invoke-virtual {p0}, Lk/b/a/z;->a()Lk/b/a/e;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lk/b/a/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk/b/a/f;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v1, Lk/b/a/f;

    const/16 v2, 0xa

    .line 1
    invoke-direct {v1, v2}, Lk/b/a/f;-><init>(I)V

    .line 2
    :cond_1
    instance-of v2, v0, Lk/b/a/x1;

    if-eqz v2, :cond_2

    check-cast v0, Lk/b/a/x1;

    invoke-interface {v0}, Lk/b/a/x1;->a()Lk/b/a/t;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lk/b/a/f;->a(Lk/b/a/e;)V

    invoke-virtual {p0}, Lk/b/a/z;->a()Lk/b/a/e;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1
.end method
