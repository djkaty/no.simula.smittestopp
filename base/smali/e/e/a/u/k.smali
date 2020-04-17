.class public final Le/e/a/u/k;
.super Le/e/a/u/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/e/a/u/k$a;
    }
.end annotation


# instance fields
.field public final I:Le/e/a/v/c;

.field public final J:Le/e/a/v/c;

.field public final K:Le/e/a/v/c;

.field public final L:Le/e/a/v/c;

.field public final M:Le/e/a/v/c;

.field public final N:Le/e/a/v/c;

.field public final O:Le/e/a/v/c;

.field public final P:Le/e/a/v/c;

.field public final Q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/e/a/u/k$a;",
            ">;"
        }
    .end annotation
.end field

.field public final R:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/security/PrivateKey;Le/e/a/u/g;Ljava/util/Set;Le/e/a/a;Ljava/lang/String;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/security/KeyStore;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/e/a/v/c;",
            "Le/e/a/v/c;",
            "Le/e/a/v/c;",
            "Le/e/a/v/c;",
            "Le/e/a/v/c;",
            "Le/e/a/v/c;",
            "Le/e/a/v/c;",
            "Le/e/a/v/c;",
            "Ljava/util/List<",
            "Le/e/a/u/k$a;",
            ">;",
            "Ljava/security/PrivateKey;",
            "Le/e/a/u/g;",
            "Ljava/util/Set<",
            "Le/e/a/u/e;",
            ">;",
            "Le/e/a/a;",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            "Le/e/a/v/c;",
            "Le/e/a/v/c;",
            "Ljava/util/List<",
            "Le/e/a/v/a;",
            ">;",
            "Ljava/security/KeyStore;",
            ")V"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v10, p6

    move-object/from16 v9, p7

    move-object/from16 v8, p8

    .line 1
    sget-object v1, Le/e/a/u/f;->z:Le/e/a/u/f;

    move-object/from16 v0, p0

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move-object/from16 v4, p13

    move-object/from16 v5, p14

    move-object/from16 v6, p15

    move-object/from16 v7, p16

    move-object/from16 v8, p17

    move-object/from16 v9, p18

    move-object/from16 v10, p19

    invoke-direct/range {v0 .. v10}, Le/e/a/u/d;-><init>(Le/e/a/u/f;Le/e/a/u/g;Ljava/util/Set;Le/e/a/a;Ljava/lang/String;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/security/KeyStore;)V

    if-eqz v12, :cond_10

    .line 2
    iput-object v12, v11, Le/e/a/u/k;->I:Le/e/a/v/c;

    if-eqz v13, :cond_f

    .line 3
    iput-object v13, v11, Le/e/a/u/k;->J:Le/e/a/v/c;

    .line 4
    invoke-virtual/range {p0 .. p0}, Le/e/a/u/d;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual/range {p0 .. p0}, Le/e/a/u/d;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 6
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Le/e/a/u/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    iget-object v2, v11, Le/e/a/u/k;->J:Le/e/a/v/c;

    invoke-virtual {v2}, Le/e/a/v/a;->d()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, v11, Le/e/a/u/k;->I:Le/e/a/v/c;

    invoke-virtual {v2}, Le/e/a/v/a;->d()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :catch_0
    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The public subject key info of the first X.509 certificate in the chain must match the JWK type and public parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    move-object/from16 v0, p3

    .line 10
    iput-object v0, v11, Le/e/a/u/k;->K:Le/e/a/v/c;

    if-eqz v14, :cond_5

    if-eqz v15, :cond_5

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    if-eqz v0, :cond_6

    move-object/from16 v2, p8

    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    .line 11
    iput-object v14, v11, Le/e/a/u/k;->L:Le/e/a/v/c;

    .line 12
    iput-object v15, v11, Le/e/a/u/k;->M:Le/e/a/v/c;

    .line 13
    iput-object v0, v11, Le/e/a/u/k;->N:Le/e/a/v/c;

    .line 14
    iput-object v1, v11, Le/e/a/u/k;->O:Le/e/a/v/c;

    .line 15
    iput-object v2, v11, Le/e/a/u/k;->P:Le/e/a/v/c;

    if-eqz p9, :cond_4

    .line 16
    invoke-static/range {p9 .. p9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v11, Le/e/a/u/k;->Q:Ljava/util/List;

    goto :goto_2

    .line 17
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, v11, Le/e/a/u/k;->Q:Ljava/util/List;

    :goto_2
    move-object/from16 v0, p10

    goto :goto_3

    :cond_5
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    :cond_6
    move-object/from16 v2, p8

    :cond_7
    const/4 v3, 0x0

    if-nez v14, :cond_8

    if-nez v15, :cond_8

    if-nez v0, :cond_8

    if-nez v1, :cond_8

    if-nez v2, :cond_8

    if-nez p9, :cond_8

    .line 18
    iput-object v3, v11, Le/e/a/u/k;->L:Le/e/a/v/c;

    .line 19
    iput-object v3, v11, Le/e/a/u/k;->M:Le/e/a/v/c;

    .line 20
    iput-object v3, v11, Le/e/a/u/k;->N:Le/e/a/v/c;

    .line 21
    iput-object v3, v11, Le/e/a/u/k;->O:Le/e/a/v/c;

    .line 22
    iput-object v3, v11, Le/e/a/u/k;->P:Le/e/a/v/c;

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, v11, Le/e/a/u/k;->Q:Ljava/util/List;

    goto :goto_2

    :cond_8
    if-nez v14, :cond_a

    if-nez v15, :cond_a

    if-nez v0, :cond_a

    if-nez v1, :cond_a

    if-eqz v2, :cond_9

    goto :goto_4

    .line 24
    :cond_9
    iput-object v3, v11, Le/e/a/u/k;->L:Le/e/a/v/c;

    .line 25
    iput-object v3, v11, Le/e/a/u/k;->M:Le/e/a/v/c;

    .line 26
    iput-object v3, v11, Le/e/a/u/k;->N:Le/e/a/v/c;

    .line 27
    iput-object v3, v11, Le/e/a/u/k;->O:Le/e/a/v/c;

    .line 28
    iput-object v3, v11, Le/e/a/u/k;->P:Le/e/a/v/c;

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, v11, Le/e/a/u/k;->Q:Ljava/util/List;

    goto :goto_2

    .line 30
    :goto_3
    iput-object v0, v11, Le/e/a/u/k;->R:Ljava/security/PrivateKey;

    return-void

    :cond_a
    :goto_4
    if-eqz v14, :cond_e

    if-eqz v15, :cond_d

    if-eqz v0, :cond_c

    if-nez v1, :cond_b

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incomplete second private (CRT) representation: The second factor CRT exponent must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incomplete second private (CRT) representation: The first CRT coefficient must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incomplete second private (CRT) representation: The first factor CRT exponent must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incomplete second private (CRT) representation: The second prime factor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incomplete second private (CRT) representation: The first prime factor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The public exponent value must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The modulus value must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public d()Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    iget-object v1, p0, Le/e/a/u/k;->J:Le/e/a/v/c;

    .line 3
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v2, "e"

    .line 4
    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Le/e/a/u/d;->x:Le/e/a/u/f;

    .line 6
    iget-object v1, v1, Le/e/a/u/f;->x:Ljava/lang/String;

    const-string v2, "kty"

    .line 7
    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Le/e/a/u/k;->I:Le/e/a/v/c;

    .line 9
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v2, "n"

    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/e/a/u/k;->K:Le/e/a/v/c;

    if-nez v0, :cond_1

    iget-object v0, p0, Le/e/a/u/k;->L:Le/e/a/v/c;

    if-nez v0, :cond_1

    iget-object v0, p0, Le/e/a/u/k;->R:Ljava/security/PrivateKey;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Le/e/a/u/k;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-super {p0, p1}, Le/e/a/u/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 3
    :cond_2
    check-cast p1, Le/e/a/u/k;

    .line 4
    iget-object v1, p0, Le/e/a/u/k;->I:Le/e/a/v/c;

    iget-object v3, p1, Le/e/a/u/k;->I:Le/e/a/v/c;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/e/a/u/k;->J:Le/e/a/v/c;

    iget-object v3, p1, Le/e/a/u/k;->J:Le/e/a/v/c;

    .line 5
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/e/a/u/k;->K:Le/e/a/v/c;

    iget-object v3, p1, Le/e/a/u/k;->K:Le/e/a/v/c;

    .line 6
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/e/a/u/k;->L:Le/e/a/v/c;

    iget-object v3, p1, Le/e/a/u/k;->L:Le/e/a/v/c;

    .line 7
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/e/a/u/k;->M:Le/e/a/v/c;

    iget-object v3, p1, Le/e/a/u/k;->M:Le/e/a/v/c;

    .line 8
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/e/a/u/k;->N:Le/e/a/v/c;

    iget-object v3, p1, Le/e/a/u/k;->N:Le/e/a/v/c;

    .line 9
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/e/a/u/k;->O:Le/e/a/v/c;

    iget-object v3, p1, Le/e/a/u/k;->O:Le/e/a/v/c;

    .line 10
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/e/a/u/k;->P:Le/e/a/v/c;

    iget-object v3, p1, Le/e/a/u/k;->P:Le/e/a/v/c;

    .line 11
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/e/a/u/k;->Q:Ljava/util/List;

    iget-object v3, p1, Le/e/a/u/k;->Q:Ljava/util/List;

    .line 12
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/e/a/u/k;->R:Ljava/security/PrivateKey;

    iget-object p1, p1, Le/e/a/u/k;->R:Ljava/security/PrivateKey;

    .line 13
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Li/a/b/d;
    .locals 8

    .line 1
    invoke-super {p0}, Le/e/a/u/d;->f()Li/a/b/d;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/e/a/u/k;->I:Le/e/a/v/c;

    .line 3
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v2, "n"

    .line 4
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Le/e/a/u/k;->J:Le/e/a/v/c;

    .line 6
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v2, "e"

    .line 7
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Le/e/a/u/k;->K:Le/e/a/v/c;

    const-string v2, "d"

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_0
    iget-object v1, p0, Le/e/a/u/k;->L:Le/e/a/v/c;

    if-eqz v1, :cond_1

    .line 12
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v3, "p"

    .line 13
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_1
    iget-object v1, p0, Le/e/a/u/k;->M:Le/e/a/v/c;

    if-eqz v1, :cond_2

    .line 15
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v3, "q"

    .line 16
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_2
    iget-object v1, p0, Le/e/a/u/k;->N:Le/e/a/v/c;

    if-eqz v1, :cond_3

    .line 18
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v3, "dp"

    .line 19
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_3
    iget-object v1, p0, Le/e/a/u/k;->O:Le/e/a/v/c;

    if-eqz v1, :cond_4

    .line 21
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v3, "dq"

    .line 22
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_4
    iget-object v1, p0, Le/e/a/u/k;->P:Le/e/a/v/c;

    if-eqz v1, :cond_5

    .line 24
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v3, "qi"

    .line 25
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_5
    iget-object v1, p0, Le/e/a/u/k;->Q:Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 27
    new-instance v1, Li/a/b/a;

    invoke-direct {v1}, Li/a/b/a;-><init>()V

    .line 28
    iget-object v3, p0, Le/e/a/u/k;->Q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/e/a/u/k$a;

    .line 29
    new-instance v5, Li/a/b/d;

    invoke-direct {v5}, Li/a/b/d;-><init>()V

    .line 30
    iget-object v6, v4, Le/e/a/u/k$a;->x:Le/e/a/v/c;

    .line 31
    iget-object v6, v6, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v7, "r"

    .line 32
    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v6, v4, Le/e/a/u/k$a;->y:Le/e/a/v/c;

    .line 34
    iget-object v6, v6, Le/e/a/v/a;->x:Ljava/lang/String;

    .line 35
    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v4, v4, Le/e/a/u/k$a;->z:Le/e/a/v/c;

    .line 37
    iget-object v4, v4, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v6, "t"

    .line 38
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const-string v2, "oth"

    .line 40
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-super {p0}, Le/e/a/u/d;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/k;->I:Le/e/a/v/c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/k;->J:Le/e/a/v/c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/k;->K:Le/e/a/v/c;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/k;->L:Le/e/a/v/c;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/k;->M:Le/e/a/v/c;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/k;->N:Le/e/a/v/c;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/k;->O:Le/e/a/v/c;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/k;->P:Le/e/a/v/c;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/k;->Q:Ljava/util/List;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/k;->R:Ljava/security/PrivateKey;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
