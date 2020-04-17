.class public Lk/b/a/m2/a;
.super Lk/b/a/n;
.source "SourceFile"

# interfaces
.implements Lk/b/a/m2/f;


# instance fields
.field public x:Lk/b/f/a/b;

.field public y:[B

.field public z:Lk/b/a/o;


# direct methods
.method public constructor <init>(Lk/b/a/m2/e;Ljava/math/BigInteger;Ljava/math/BigInteger;Lk/b/a/u;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct/range {p0 .. p0}, Lk/b/a/n;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v0, Lk/b/a/m2/a;->z:Lk/b/a/o;

    .line 1
    iget-object v3, v1, Lk/b/a/m2/e;->x:Lk/b/a/o;

    .line 2
    iput-object v3, v0, Lk/b/a/m2/a;->z:Lk/b/a/o;

    sget-object v4, Lk/b/a/m2/f;->g:Lk/b/a/o;

    invoke-virtual {v3, v4}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_0

    .line 3
    iget-object v1, v1, Lk/b/a/m2/e;->y:Lk/b/a/t;

    .line 4
    check-cast v1, Lk/b/a/l;

    invoke-virtual {v1}, Lk/b/a/l;->j()Ljava/math/BigInteger;

    move-result-object v8

    new-instance v9, Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    invoke-static {v1}, Lk/b/a/p;->a(Ljava/lang/Object;)Lk/b/a/p;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/p;->j()[B

    move-result-object v1

    invoke-direct {v9, v6, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v10, Ljava/math/BigInteger;

    invoke-virtual {v2, v6}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    invoke-static {v1}, Lk/b/a/p;->a(Ljava/lang/Object;)Lk/b/a/p;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/p;->j()[B

    move-result-object v1

    invoke-direct {v10, v6, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v1, Lk/b/f/a/b$d;

    move-object v7, v1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {v7 .. v12}, Lk/b/f/a/b$d;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_1

    :cond_0
    iget-object v3, v0, Lk/b/a/m2/a;->z:Lk/b/a/o;

    sget-object v7, Lk/b/a/m2/f;->h:Lk/b/a/o;

    invoke-virtual {v3, v7}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5
    iget-object v1, v1, Lk/b/a/m2/e;->y:Lk/b/a/t;

    .line 6
    invoke-static {v1}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object v1

    invoke-virtual {v1, v4}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v3

    check-cast v3, Lk/b/a/l;

    invoke-virtual {v3}, Lk/b/a/l;->k()I

    move-result v8

    invoke-virtual {v1, v6}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v3

    check-cast v3, Lk/b/a/o;

    sget-object v7, Lk/b/a/m2/f;->i:Lk/b/a/o;

    invoke-virtual {v3, v7}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1, v5}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    invoke-static {v1}, Lk/b/a/l;->a(Ljava/lang/Object;)Lk/b/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/l;->k()I

    move-result v1

    move v9, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    sget-object v7, Lk/b/a/m2/f;->j:Lk/b/a/o;

    invoke-virtual {v3, v7}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v5}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    invoke-static {v1}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object v1

    invoke-virtual {v1, v4}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v3

    invoke-static {v3}, Lk/b/a/l;->a(Ljava/lang/Object;)Lk/b/a/l;

    move-result-object v3

    invoke-virtual {v3}, Lk/b/a/l;->k()I

    move-result v3

    invoke-virtual {v1, v6}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v7

    invoke-static {v7}, Lk/b/a/l;->a(Ljava/lang/Object;)Lk/b/a/l;

    move-result-object v7

    invoke-virtual {v7}, Lk/b/a/l;->k()I

    move-result v7

    invoke-virtual {v1, v5}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    invoke-static {v1}, Lk/b/a/l;->a(Ljava/lang/Object;)Lk/b/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/l;->k()I

    move-result v1

    move v11, v1

    move v9, v3

    move v10, v7

    :goto_0
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    invoke-static {v1}, Lk/b/a/p;->a(Ljava/lang/Object;)Lk/b/a/p;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/p;->j()[B

    move-result-object v1

    invoke-direct {v12, v6, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v13, Ljava/math/BigInteger;

    invoke-virtual {v2, v6}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    invoke-static {v1}, Lk/b/a/p;->a(Ljava/lang/Object;)Lk/b/a/p;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/p;->j()[B

    move-result-object v1

    invoke-direct {v13, v6, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v1, Lk/b/f/a/b$c;

    move-object v7, v1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v7 .. v15}, Lk/b/f/a/b$c;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_1
    iput-object v1, v0, Lk/b/a/m2/a;->x:Lk/b/f/a/b;

    invoke-virtual/range {p4 .. p4}, Lk/b/a/u;->size()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    invoke-virtual {v2, v5}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    check-cast v1, Lk/b/a/r0;

    invoke-virtual {v1}, Lk/b/a/b;->j()[B

    move-result-object v1

    iput-object v1, v0, Lk/b/a/m2/a;->y:[B

    :cond_2
    return-void

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This type of EC basis is not implemented"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This type of ECCurve is not implemented"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lk/b/f/a/b;[B)V
    .locals 3

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lk/b/a/m2/a;->z:Lk/b/a/o;

    iput-object p1, p0, Lk/b/a/m2/a;->x:Lk/b/f/a/b;

    invoke-static {p2}, Lk/b/c/e/a;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lk/b/a/m2/a;->y:[B

    .line 7
    iget-object p1, p0, Lk/b/a/m2/a;->x:Lk/b/f/a/b;

    .line 8
    iget-object p1, p1, Lk/b/f/a/b;->a:Lk/b/f/b/a;

    .line 9
    invoke-interface {p1}, Lk/b/f/b/a;->a()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 10
    sget-object p1, Lk/b/a/m2/f;->g:Lk/b/a/o;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lk/b/a/m2/a;->x:Lk/b/f/a/b;

    .line 11
    iget-object p1, p1, Lk/b/f/a/b;->a:Lk/b/f/b/a;

    .line 12
    invoke-interface {p1}, Lk/b/f/b/a;->a()I

    move-result v1

    if-le v1, v0, :cond_2

    invoke-interface {p1}, Lk/b/f/b/a;->b()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lk/b/f/a/a;->c:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of p1, p1, Lk/b/f/b/e;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    :cond_2
    if-eqz p2, :cond_3

    .line 13
    sget-object p1, Lk/b/a/m2/f;->h:Lk/b/a/o;

    :goto_1
    iput-object p1, p0, Lk/b/a/m2/a;->z:Lk/b/a/o;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This type of ECCurve is not implemented"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 3

    new-instance v0, Lk/b/a/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lk/b/a/f;-><init>(I)V

    iget-object v1, p0, Lk/b/a/m2/a;->z:Lk/b/a/o;

    sget-object v2, Lk/b/a/m2/f;->g:Lk/b/a/o;

    invoke-virtual {v1, v2}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lk/b/a/m2/d;

    iget-object v2, p0, Lk/b/a/m2/a;->x:Lk/b/f/a/b;

    .line 1
    iget-object v2, v2, Lk/b/f/a/b;->b:Lk/b/f/a/c;

    .line 2
    invoke-direct {v1, v2}, Lk/b/a/m2/d;-><init>(Lk/b/f/a/c;)V

    invoke-virtual {v1}, Lk/b/a/m2/d;->c()Lk/b/a/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/m2/d;

    iget-object v2, p0, Lk/b/a/m2/a;->x:Lk/b/f/a/b;

    .line 3
    iget-object v2, v2, Lk/b/f/a/b;->c:Lk/b/f/a/c;

    .line 4
    invoke-direct {v1, v2}, Lk/b/a/m2/d;-><init>(Lk/b/f/a/c;)V

    :goto_0
    invoke-virtual {v1}, Lk/b/a/m2/d;->c()Lk/b/a/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lk/b/a/m2/a;->z:Lk/b/a/o;

    sget-object v2, Lk/b/a/m2/f;->h:Lk/b/a/o;

    invoke-virtual {v1, v2}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lk/b/a/m2/d;

    iget-object v2, p0, Lk/b/a/m2/a;->x:Lk/b/f/a/b;

    .line 5
    iget-object v2, v2, Lk/b/f/a/b;->b:Lk/b/f/a/c;

    .line 6
    invoke-direct {v1, v2}, Lk/b/a/m2/d;-><init>(Lk/b/f/a/c;)V

    invoke-virtual {v1}, Lk/b/a/m2/d;->c()Lk/b/a/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/m2/d;

    iget-object v2, p0, Lk/b/a/m2/a;->x:Lk/b/f/a/b;

    .line 7
    iget-object v2, v2, Lk/b/f/a/b;->c:Lk/b/f/a/c;

    .line 8
    invoke-direct {v1, v2}, Lk/b/a/m2/d;-><init>(Lk/b/f/a/c;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lk/b/a/m2/a;->y:[B

    if-eqz v1, :cond_2

    new-instance v2, Lk/b/a/r0;

    invoke-direct {v2, v1}, Lk/b/a/r0;-><init>([B)V

    invoke-virtual {v0, v2}, Lk/b/a/f;->a(Lk/b/a/e;)V

    :cond_2
    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v0}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    return-object v1
.end method
