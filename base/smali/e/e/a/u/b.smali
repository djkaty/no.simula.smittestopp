.class public final Le/e/a/u/b;
.super Le/e/a/u/d;
.source "SourceFile"


# static fields
.field public static final N:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/e/a/u/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final I:Le/e/a/u/a;

.field public final J:Le/e/a/v/c;

.field public final K:Le/e/a/v/c;

.field public final L:Le/e/a/v/c;

.field public final M:Ljava/security/PrivateKey;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Le/e/a/u/a;

    sget-object v2, Le/e/a/u/a;->y:Le/e/a/u/a;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Le/e/a/u/a;->z:Le/e/a/u/a;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Le/e/a/u/a;->A:Le/e/a/u/a;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Le/e/a/u/a;->B:Le/e/a/u/a;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Le/e/a/u/b;->N:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Le/e/a/u/a;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/u/g;Ljava/util/Set;Le/e/a/a;Ljava/lang/String;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/security/KeyStore;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/e/a/u/a;",
            "Le/e/a/v/c;",
            "Le/e/a/v/c;",
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

    move-object v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 1
    sget-object v1, Le/e/a/u/f;->y:Le/e/a/u/f;

    move-object v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    invoke-direct/range {v0 .. v10}, Le/e/a/u/d;-><init>(Le/e/a/u/f;Le/e/a/u/g;Ljava/util/Set;Le/e/a/a;Ljava/lang/String;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/security/KeyStore;)V

    if-eqz v12, :cond_2

    .line 2
    iput-object v12, v11, Le/e/a/u/b;->I:Le/e/a/u/a;

    if-eqz v13, :cond_1

    .line 3
    iput-object v13, v11, Le/e/a/u/b;->J:Le/e/a/v/c;

    if-eqz v14, :cond_0

    .line 4
    iput-object v14, v11, Le/e/a/u/b;->K:Le/e/a/v/c;

    .line 5
    invoke-static/range {p1 .. p3}, Le/e/a/u/b;->a(Le/e/a/u/a;Le/e/a/v/c;Le/e/a/v/c;)V

    .line 6
    invoke-virtual {p0}, Le/e/a/u/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/e/a/u/b;->a(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, v11, Le/e/a/u/b;->L:Le/e/a/v/c;

    .line 8
    iput-object v0, v11, Le/e/a/u/b;->M:Ljava/security/PrivateKey;

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'y\' coordinate must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'x\' coordinate must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The curve must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Le/e/a/u/a;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/u/g;Ljava/util/Set;Le/e/a/a;Ljava/lang/String;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/security/KeyStore;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/e/a/u/a;",
            "Le/e/a/v/c;",
            "Le/e/a/v/c;",
            "Le/e/a/v/c;",
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

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    .line 12
    sget-object v1, Le/e/a/u/f;->y:Le/e/a/u/f;

    move-object/from16 v0, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v0 .. v10}, Le/e/a/u/d;-><init>(Le/e/a/u/f;Le/e/a/u/g;Ljava/util/Set;Le/e/a/a;Ljava/lang/String;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/security/KeyStore;)V

    if-eqz v12, :cond_3

    .line 13
    iput-object v12, v11, Le/e/a/u/b;->I:Le/e/a/u/a;

    if-eqz v13, :cond_2

    .line 14
    iput-object v13, v11, Le/e/a/u/b;->J:Le/e/a/v/c;

    if-eqz v14, :cond_1

    .line 15
    iput-object v14, v11, Le/e/a/u/b;->K:Le/e/a/v/c;

    .line 16
    invoke-static/range {p1 .. p3}, Le/e/a/u/b;->a(Le/e/a/u/a;Le/e/a/v/c;Le/e/a/v/c;)V

    .line 17
    invoke-virtual/range {p0 .. p0}, Le/e/a/u/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v11, v0}, Le/e/a/u/b;->a(Ljava/util/List;)V

    if-eqz v15, :cond_0

    .line 18
    iput-object v15, v11, Le/e/a/u/b;->L:Le/e/a/v/c;

    const/4 v0, 0x0

    .line 19
    iput-object v0, v11, Le/e/a/u/b;->M:Ljava/security/PrivateKey;

    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'d\' coordinate must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'y\' coordinate must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'x\' coordinate must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The curve must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Li/a/b/d;)Le/e/a/u/b;
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "crv"

    .line 21
    invoke-static {v0, v1}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/u/a;->a(Ljava/lang/String;)Le/e/a/u/a;

    move-result-object v3

    .line 22
    new-instance v4, Le/e/a/v/c;

    const-string v1, "x"

    invoke-static {v0, v1}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Le/e/a/v/c;-><init>(Ljava/lang/String;)V

    .line 23
    new-instance v5, Le/e/a/v/c;

    const-string v1, "y"

    invoke-static {v0, v1}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Le/e/a/v/c;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->d(Li/a/b/d;)Le/e/a/u/f;

    move-result-object v1

    .line 25
    sget-object v2, Le/e/a/u/f;->y:Le/e/a/u/f;

    const/4 v15, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    const-string v2, "d"

    .line 26
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 27
    new-instance v1, Le/e/a/v/c;

    invoke-static {v0, v2}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Le/e/a/v/c;-><init>(Ljava/lang/String;)V

    :cond_0
    move-object v6, v1

    if-nez v6, :cond_1

    .line 28
    :try_start_0
    new-instance v1, Le/e/a/u/b;

    .line 29
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->e(Li/a/b/d;)Le/e/a/u/g;

    move-result-object v6

    .line 30
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->c(Li/a/b/d;)Ljava/util/Set;

    move-result-object v7

    .line 31
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->a(Li/a/b/d;)Le/e/a/a;

    move-result-object v8

    .line 32
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->b(Li/a/b/d;)Ljava/lang/String;

    move-result-object v9

    .line 33
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->i(Li/a/b/d;)Ljava/net/URI;

    move-result-object v10

    .line 34
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->h(Li/a/b/d;)Le/e/a/v/c;

    move-result-object v11

    .line 35
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->g(Li/a/b/d;)Le/e/a/v/c;

    move-result-object v12

    .line 36
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->f(Li/a/b/d;)Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v14}, Le/e/a/u/b;-><init>(Le/e/a/u/a;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/u/g;Ljava/util/Set;Le/e/a/a;Ljava/lang/String;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/security/KeyStore;)V

    return-object v1

    .line 37
    :cond_1
    new-instance v1, Le/e/a/u/b;

    .line 38
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->e(Li/a/b/d;)Le/e/a/u/g;

    move-result-object v7

    .line 39
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->c(Li/a/b/d;)Ljava/util/Set;

    move-result-object v8

    .line 40
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->a(Li/a/b/d;)Le/e/a/a;

    move-result-object v9

    .line 41
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->b(Li/a/b/d;)Ljava/lang/String;

    move-result-object v10

    .line 42
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->i(Li/a/b/d;)Ljava/net/URI;

    move-result-object v11

    .line 43
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->h(Li/a/b/d;)Le/e/a/v/c;

    move-result-object v12

    .line 44
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->g(Li/a/b/d;)Le/e/a/v/c;

    move-result-object v13

    .line 45
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->f(Li/a/b/d;)Ljava/util/List;

    move-result-object v14

    const/4 v0, 0x0

    move-object v2, v1

    move-object v15, v0

    invoke-direct/range {v2 .. v15}, Le/e/a/u/b;-><init>(Le/e/a/u/a;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/u/g;Ljava/util/Set;Le/e/a/a;Ljava/lang/String;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 46
    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_2
    const/4 v2, 0x0

    .line 47
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "The key type \"kty\" must be EC"

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static a(Le/e/a/u/a;Le/e/a/v/c;Le/e/a/v/c;)V
    .locals 4

    .line 1
    sget-object v0, Le/e/a/u/b;->N:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Le/e/a/v/a;->d()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Le/e/a/v/a;->d()Ljava/math/BigInteger;

    move-result-object p2

    if-eqz p0, :cond_1

    .line 3
    invoke-static {p0}, Le/e/a/u/c;->a(Le/e/a/u/a;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v2

    .line 7
    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    check-cast v0, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v3, 0x2

    .line 8
    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    const/4 v3, 0x3

    .line 9
    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 10
    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid EC JWK: The \'x\' and \'y\' public coordinates are not on the "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " curve"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p0, 0x0

    .line 12
    throw p0

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown / unsupported curve: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 15
    :try_start_0
    invoke-virtual {p0}, Le/e/a/u/d;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/ECPublicKey;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    iget-object v1, p0, Le/e/a/u/b;->J:Le/e/a/v/c;

    .line 17
    invoke-virtual {v1}, Le/e/a/v/a;->d()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    iget-object v1, p0, Le/e/a/u/b;->K:Le/e/a/v/c;

    .line 19
    invoke-virtual {v1}, Le/e/a/v/a;->d()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :catch_0
    :goto_0
    if-eqz v0, :cond_3

    return-void

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The public subject key info of the first X.509 certificate in the chain must match the JWK type and public parameters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

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
    iget-object v1, p0, Le/e/a/u/b;->I:Le/e/a/u/a;

    .line 3
    iget-object v1, v1, Le/e/a/u/a;->x:Ljava/lang/String;

    const-string v2, "crv"

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
    iget-object v1, p0, Le/e/a/u/b;->J:Le/e/a/v/c;

    .line 9
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v2, "x"

    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Le/e/a/u/b;->K:Le/e/a/v/c;

    .line 12
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v2, "y"

    .line 13
    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/e/a/u/b;->L:Le/e/a/v/c;

    if-nez v0, :cond_1

    iget-object v0, p0, Le/e/a/u/b;->M:Ljava/security/PrivateKey;

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
    instance-of v1, p1, Le/e/a/u/b;

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
    check-cast p1, Le/e/a/u/b;

    .line 4
    iget-object v1, p0, Le/e/a/u/b;->I:Le/e/a/u/a;

    iget-object v3, p1, Le/e/a/u/b;->I:Le/e/a/u/a;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/e/a/u/b;->J:Le/e/a/v/c;

    iget-object v3, p1, Le/e/a/u/b;->J:Le/e/a/v/c;

    .line 5
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/e/a/u/b;->K:Le/e/a/v/c;

    iget-object v3, p1, Le/e/a/u/b;->K:Le/e/a/v/c;

    .line 6
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/e/a/u/b;->L:Le/e/a/v/c;

    iget-object v3, p1, Le/e/a/u/b;->L:Le/e/a/v/c;

    .line 7
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/e/a/u/b;->M:Ljava/security/PrivateKey;

    iget-object p1, p1, Le/e/a/u/b;->M:Ljava/security/PrivateKey;

    .line 8
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
    .locals 3

    .line 1
    invoke-super {p0}, Le/e/a/u/d;->f()Li/a/b/d;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/e/a/u/b;->I:Le/e/a/u/a;

    .line 3
    iget-object v1, v1, Le/e/a/u/a;->x:Ljava/lang/String;

    const-string v2, "crv"

    .line 4
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Le/e/a/u/b;->J:Le/e/a/v/c;

    .line 6
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v2, "x"

    .line 7
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Le/e/a/u/b;->K:Le/e/a/v/c;

    .line 9
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v2, "y"

    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Le/e/a/u/b;->L:Le/e/a/v/c;

    if-eqz v1, :cond_0

    .line 12
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v2, "d"

    .line 13
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-super {p0}, Le/e/a/u/d;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/b;->I:Le/e/a/u/a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/b;->J:Le/e/a/v/c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/b;->K:Le/e/a/v/c;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/b;->L:Le/e/a/v/c;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/b;->M:Ljava/security/PrivateKey;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
