.class public Le/e/a/u/i;
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

.field public final K:[B

.field public final L:Le/e/a/v/c;

.field public final M:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Le/e/a/u/a;

    sget-object v2, Le/e/a/u/a;->C:Le/e/a/u/a;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Le/e/a/u/a;->D:Le/e/a/u/a;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Le/e/a/u/a;->E:Le/e/a/u/a;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Le/e/a/u/a;->F:Le/e/a/u/a;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Le/e/a/u/i;->N:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Le/e/a/u/a;Le/e/a/v/c;Le/e/a/u/g;Ljava/util/Set;Le/e/a/a;Ljava/lang/String;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/security/KeyStore;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/e/a/u/a;",
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

    move-object v12, p1

    move-object/from16 v13, p2

    .line 1
    sget-object v1, Le/e/a/u/f;->B:Le/e/a/u/f;

    move-object v0, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Le/e/a/u/d;-><init>(Le/e/a/u/f;Le/e/a/u/g;Ljava/util/Set;Le/e/a/a;Ljava/lang/String;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/security/KeyStore;)V

    if-eqz v12, :cond_2

    .line 2
    sget-object v0, Le/e/a/u/i;->N:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iput-object v12, v11, Le/e/a/u/i;->I:Le/e/a/u/a;

    if-eqz v13, :cond_0

    .line 4
    iput-object v13, v11, Le/e/a/u/i;->J:Le/e/a/v/c;

    .line 5
    invoke-virtual/range {p2 .. p2}, Le/e/a/v/a;->b()[B

    move-result-object v0

    iput-object v0, v11, Le/e/a/u/i;->K:[B

    const/4 v0, 0x0

    .line 6
    iput-object v0, v11, Le/e/a/u/i;->L:Le/e/a/v/c;

    .line 7
    iput-object v0, v11, Le/e/a/u/i;->M:[B

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'x\' parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown / unsupported curve: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The curve must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 11
    sget-object v1, Le/e/a/u/f;->B:Le/e/a/u/f;

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

    if-eqz v12, :cond_3

    .line 12
    sget-object v0, Le/e/a/u/i;->N:Ljava/util/Set;

    invoke-interface {v0, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    iput-object v12, v11, Le/e/a/u/i;->I:Le/e/a/u/a;

    if-eqz v13, :cond_1

    .line 14
    iput-object v13, v11, Le/e/a/u/i;->J:Le/e/a/v/c;

    .line 15
    invoke-virtual/range {p2 .. p2}, Le/e/a/v/a;->b()[B

    move-result-object v0

    iput-object v0, v11, Le/e/a/u/i;->K:[B

    if-eqz v14, :cond_0

    .line 16
    iput-object v14, v11, Le/e/a/u/i;->L:Le/e/a/v/c;

    .line 17
    invoke-virtual/range {p3 .. p3}, Le/e/a/v/a;->b()[B

    move-result-object v0

    iput-object v0, v11, Le/e/a/u/i;->M:[B

    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'d\' parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'x\' parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown / unsupported curve: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The curve must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Li/a/b/d;)Le/e/a/u/i;
    .locals 15

    const-string v0, "crv"

    .line 1
    invoke-static {p0, v0}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/u/a;->a(Ljava/lang/String;)Le/e/a/u/a;

    move-result-object v2

    .line 2
    new-instance v3, Le/e/a/v/c;

    const-string v0, "x"

    invoke-static {p0, v0}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Le/e/a/v/c;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Le/c/a/a/b/l/c;->d(Li/a/b/d;)Le/e/a/u/f;

    move-result-object v0

    .line 4
    sget-object v1, Le/e/a/u/f;->B:Le/e/a/u/f;

    const/4 v14, 0x0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    const-string v1, "d"

    .line 5
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 6
    new-instance v0, Le/e/a/v/c;

    invoke-static {p0, v1}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Le/e/a/v/c;-><init>(Ljava/lang/String;)V

    :cond_0
    move-object v4, v0

    if-nez v4, :cond_1

    .line 7
    :try_start_0
    new-instance v0, Le/e/a/u/i;

    .line 8
    invoke-static {p0}, Le/c/a/a/b/l/c;->e(Li/a/b/d;)Le/e/a/u/g;

    move-result-object v4

    .line 9
    invoke-static {p0}, Le/c/a/a/b/l/c;->c(Li/a/b/d;)Ljava/util/Set;

    move-result-object v5

    .line 10
    invoke-static {p0}, Le/c/a/a/b/l/c;->a(Li/a/b/d;)Le/e/a/a;

    move-result-object v6

    .line 11
    invoke-static {p0}, Le/c/a/a/b/l/c;->b(Li/a/b/d;)Ljava/lang/String;

    move-result-object v7

    .line 12
    invoke-static {p0}, Le/c/a/a/b/l/c;->i(Li/a/b/d;)Ljava/net/URI;

    move-result-object v8

    .line 13
    invoke-static {p0}, Le/c/a/a/b/l/c;->h(Li/a/b/d;)Le/e/a/v/c;

    move-result-object v9

    .line 14
    invoke-static {p0}, Le/c/a/a/b/l/c;->g(Li/a/b/d;)Le/e/a/v/c;

    move-result-object v10

    .line 15
    invoke-static {p0}, Le/c/a/a/b/l/c;->f(Li/a/b/d;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Le/e/a/u/i;-><init>(Le/e/a/u/a;Le/e/a/v/c;Le/e/a/u/g;Ljava/util/Set;Le/e/a/a;Ljava/lang/String;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/security/KeyStore;)V

    return-object v0

    .line 16
    :cond_1
    new-instance v0, Le/e/a/u/i;

    .line 17
    invoke-static {p0}, Le/c/a/a/b/l/c;->e(Li/a/b/d;)Le/e/a/u/g;

    move-result-object v5

    .line 18
    invoke-static {p0}, Le/c/a/a/b/l/c;->c(Li/a/b/d;)Ljava/util/Set;

    move-result-object v6

    .line 19
    invoke-static {p0}, Le/c/a/a/b/l/c;->a(Li/a/b/d;)Le/e/a/a;

    move-result-object v7

    .line 20
    invoke-static {p0}, Le/c/a/a/b/l/c;->b(Li/a/b/d;)Ljava/lang/String;

    move-result-object v8

    .line 21
    invoke-static {p0}, Le/c/a/a/b/l/c;->i(Li/a/b/d;)Ljava/net/URI;

    move-result-object v9

    .line 22
    invoke-static {p0}, Le/c/a/a/b/l/c;->h(Li/a/b/d;)Le/e/a/v/c;

    move-result-object v10

    .line 23
    invoke-static {p0}, Le/c/a/a/b/l/c;->g(Li/a/b/d;)Le/e/a/v/c;

    move-result-object v11

    .line 24
    invoke-static {p0}, Le/c/a/a/b/l/c;->f(Li/a/b/d;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Le/e/a/u/i;-><init>(Le/e/a/u/a;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/u/g;Ljava/util/Set;Le/e/a/a;Ljava/lang/String;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 25
    new-instance v0, Ljava/text/ParseException;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v14}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 26
    :cond_2
    new-instance p0, Ljava/text/ParseException;

    const-string v0, "The key type \"kty\" must be OKP"

    invoke-direct {p0, v0, v14}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
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
    iget-object v1, p0, Le/e/a/u/i;->I:Le/e/a/u/a;

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
    iget-object v1, p0, Le/e/a/u/i;->J:Le/e/a/v/c;

    .line 9
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v2, "x"

    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/e/a/u/i;->L:Le/e/a/v/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Le/e/a/u/i;

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
    check-cast p1, Le/e/a/u/i;

    .line 4
    iget-object v1, p0, Le/e/a/u/i;->I:Le/e/a/u/a;

    iget-object v3, p1, Le/e/a/u/i;->I:Le/e/a/u/a;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/e/a/u/i;->J:Le/e/a/v/c;

    iget-object v3, p1, Le/e/a/u/i;->J:Le/e/a/v/c;

    .line 5
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/e/a/u/i;->K:[B

    iget-object v3, p1, Le/e/a/u/i;->K:[B

    .line 6
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/e/a/u/i;->L:Le/e/a/v/c;

    iget-object v3, p1, Le/e/a/u/i;->L:Le/e/a/v/c;

    .line 7
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Le/e/a/u/i;->M:[B

    iget-object p1, p1, Le/e/a/u/i;->M:[B

    .line 8
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

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
    iget-object v1, p0, Le/e/a/u/i;->I:Le/e/a/u/a;

    .line 3
    iget-object v1, v1, Le/e/a/u/a;->x:Ljava/lang/String;

    const-string v2, "crv"

    .line 4
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Le/e/a/u/i;->J:Le/e/a/v/c;

    .line 6
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v2, "x"

    .line 7
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Le/e/a/u/i;->L:Le/e/a/v/c;

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v2, "d"

    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-super {p0}, Le/e/a/u/d;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/i;->I:Le/e/a/u/a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/i;->J:Le/e/a/v/c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/i;->L:Le/e/a/v/c;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Le/e/a/u/i;->K:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Le/e/a/u/i;->M:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method
