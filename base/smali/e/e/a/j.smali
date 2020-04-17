.class public final Le/e/a/j;
.super Le/e/a/b;
.source "SourceFile"


# static fields
.field public static final U:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final L:Le/e/a/d;

.field public final M:Le/e/a/u/d;

.field public final N:Le/e/a/c;

.field public final O:Le/e/a/v/c;

.field public final P:Le/e/a/v/c;

.field public final Q:Le/e/a/v/c;

.field public final R:I

.field public final S:Le/e/a/v/c;

.field public final T:Le/e/a/v/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "alg"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "enc"

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "epk"

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "zip"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "jku"

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "jwk"

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "x5u"

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "x5t"

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "x5t#S256"

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "x5c"

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "kid"

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "typ"

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "cty"

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "crit"

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "apu"

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "apv"

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "p2s"

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "p2c"

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "iv"

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "authTag"

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Le/e/a/j;->U:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Le/e/a/a;Le/e/a/d;Le/e/a/h;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Le/e/a/u/d;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/lang/String;Le/e/a/u/d;Le/e/a/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;ILe/e/a/v/c;Le/e/a/v/c;Ljava/util/Map;Le/e/a/v/c;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/e/a/a;",
            "Le/e/a/d;",
            "Le/e/a/h;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URI;",
            "Le/e/a/u/d;",
            "Ljava/net/URI;",
            "Le/e/a/v/c;",
            "Le/e/a/v/c;",
            "Ljava/util/List<",
            "Le/e/a/v/a;",
            ">;",
            "Ljava/lang/String;",
            "Le/e/a/u/d;",
            "Le/e/a/c;",
            "Le/e/a/v/c;",
            "Le/e/a/v/c;",
            "Le/e/a/v/c;",
            "I",
            "Le/e/a/v/c;",
            "Le/e/a/v/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Le/e/a/v/c;",
            ")V"
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p2

    move-object/from16 v13, p13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p21

    move-object v14, v13

    move-object/from16 v13, p22

    .line 1
    invoke-direct/range {v0 .. v13}, Le/e/a/b;-><init>(Le/e/a/a;Le/e/a/h;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Le/e/a/u/d;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Le/e/a/v/c;)V

    move-object/from16 v0, p1

    .line 2
    iget-object v0, v0, Le/e/a/a;->x:Ljava/lang/String;

    .line 3
    sget-object v1, Le/e/a/a;->y:Le/e/a/a;

    .line 4
    iget-object v1, v1, Le/e/a/a;->x:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v15, :cond_2

    if-eqz v14, :cond_1

    .line 6
    invoke-virtual/range {p13 .. p13}, Le/e/a/u/d;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ephemeral public key should not be a private key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    move-object v1, v14

    .line 8
    iput-object v15, v0, Le/e/a/j;->L:Le/e/a/d;

    .line 9
    iput-object v1, v0, Le/e/a/j;->M:Le/e/a/u/d;

    move-object/from16 v1, p14

    .line 10
    iput-object v1, v0, Le/e/a/j;->N:Le/e/a/c;

    move-object/from16 v1, p15

    .line 11
    iput-object v1, v0, Le/e/a/j;->O:Le/e/a/v/c;

    move-object/from16 v1, p16

    .line 12
    iput-object v1, v0, Le/e/a/j;->P:Le/e/a/v/c;

    move-object/from16 v1, p17

    .line 13
    iput-object v1, v0, Le/e/a/j;->Q:Le/e/a/v/c;

    move/from16 v1, p18

    .line 14
    iput v1, v0, Le/e/a/j;->R:I

    move-object/from16 v1, p19

    .line 15
    iput-object v1, v0, Le/e/a/j;->S:Le/e/a/v/c;

    move-object/from16 v1, p20

    .line 16
    iput-object v1, v0, Le/e/a/j;->T:Le/e/a/v/c;

    return-void

    :cond_2
    move-object/from16 v0, p0

    .line 17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The encryption method \"enc\" parameter must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object/from16 v0, p0

    .line 18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The JWE algorithm cannot be \"none\""

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Le/e/a/v/c;)Le/e/a/j;
    .locals 29

    .line 1
    invoke-virtual/range {p0 .. p0}, Le/e/a/v/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Le/c/a/a/b/l/c;->b(Ljava/lang/String;)Li/a/b/d;

    move-result-object v0

    .line 3
    invoke-static {v0}, Le/e/a/e;->a(Li/a/b/d;)Le/e/a/a;

    move-result-object v1

    .line 4
    instance-of v2, v1, Le/e/a/i;

    const/4 v3, 0x0

    if-eqz v2, :cond_24

    const-string v2, "enc"

    .line 5
    invoke-static {v0, v2}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    sget-object v5, Le/e/a/d;->z:Le/e/a/d;

    .line 7
    iget-object v5, v5, Le/e/a/a;->x:Ljava/lang/String;

    .line 8
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9
    sget-object v4, Le/e/a/d;->z:Le/e/a/d;

    goto :goto_0

    .line 10
    :cond_0
    sget-object v5, Le/e/a/d;->A:Le/e/a/d;

    .line 11
    iget-object v5, v5, Le/e/a/a;->x:Ljava/lang/String;

    .line 12
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 13
    sget-object v4, Le/e/a/d;->A:Le/e/a/d;

    goto :goto_0

    .line 14
    :cond_1
    sget-object v5, Le/e/a/d;->B:Le/e/a/d;

    .line 15
    iget-object v5, v5, Le/e/a/a;->x:Ljava/lang/String;

    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 17
    sget-object v4, Le/e/a/d;->B:Le/e/a/d;

    goto :goto_0

    .line 18
    :cond_2
    sget-object v5, Le/e/a/d;->E:Le/e/a/d;

    .line 19
    iget-object v5, v5, Le/e/a/a;->x:Ljava/lang/String;

    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 21
    sget-object v4, Le/e/a/d;->E:Le/e/a/d;

    goto :goto_0

    .line 22
    :cond_3
    sget-object v5, Le/e/a/d;->F:Le/e/a/d;

    .line 23
    iget-object v5, v5, Le/e/a/a;->x:Ljava/lang/String;

    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 25
    sget-object v4, Le/e/a/d;->F:Le/e/a/d;

    goto :goto_0

    .line 26
    :cond_4
    sget-object v5, Le/e/a/d;->G:Le/e/a/d;

    .line 27
    iget-object v5, v5, Le/e/a/a;->x:Ljava/lang/String;

    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 29
    sget-object v4, Le/e/a/d;->G:Le/e/a/d;

    goto :goto_0

    .line 30
    :cond_5
    sget-object v5, Le/e/a/d;->C:Le/e/a/d;

    .line 31
    iget-object v5, v5, Le/e/a/a;->x:Ljava/lang/String;

    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 33
    sget-object v4, Le/e/a/d;->C:Le/e/a/d;

    goto :goto_0

    .line 34
    :cond_6
    sget-object v5, Le/e/a/d;->D:Le/e/a/d;

    .line 35
    iget-object v5, v5, Le/e/a/a;->x:Ljava/lang/String;

    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 37
    sget-object v4, Le/e/a/d;->D:Le/e/a/d;

    :goto_0
    move-object v8, v4

    goto :goto_1

    .line 38
    :cond_7
    new-instance v5, Le/e/a/d;

    invoke-direct {v5, v4}, Le/e/a/d;-><init>(Ljava/lang/String;)V

    move-object v8, v5

    .line 39
    :goto_1
    move-object v7, v1

    check-cast v7, Le/e/a/i;

    .line 40
    iget-object v1, v7, Le/e/a/a;->x:Ljava/lang/String;

    .line 41
    sget-object v4, Le/e/a/a;->y:Le/e/a/a;

    .line 42
    iget-object v4, v4, Le/e/a/a;->x:Ljava/lang/String;

    .line 43
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    if-eqz v8, :cond_22

    .line 44
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v9, v4

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v25, v23

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    const/16 v24, 0x0

    :cond_8
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "alg"

    .line 45
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_2

    .line 46
    :cond_9
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_2

    :cond_a
    const-string v5, "typ"

    .line 47
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 48
    invoke-static {v0, v4}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 49
    new-instance v9, Le/e/a/h;

    invoke-direct {v9, v4}, Le/e/a/h;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    const-string v5, "cty"

    .line 50
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 51
    invoke-static {v0, v4}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_c
    const-string v5, "crit"

    .line 52
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 53
    invoke-static {v0, v4}, Le/c/a/a/b/l/c;->e(Li/a/b/d;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 54
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    :cond_d
    const-string v5, "jku"

    .line 55
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 56
    invoke-static {v0, v4}, Le/c/a/a/b/l/c;->f(Li/a/b/d;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v12

    goto :goto_2

    :cond_e
    const-string v5, "jwk"

    .line 57
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 58
    invoke-static {v0, v4}, Le/c/a/a/b/l/c;->b(Li/a/b/d;Ljava/lang/String;)Li/a/b/d;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 59
    invoke-static {v4}, Le/e/a/u/d;->a(Li/a/b/d;)Le/e/a/u/d;

    move-result-object v13

    goto :goto_2

    :cond_f
    const-string v5, "x5u"

    .line 60
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 61
    invoke-static {v0, v4}, Le/c/a/a/b/l/c;->f(Li/a/b/d;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v14

    goto :goto_2

    :cond_10
    const-string v5, "x5t"

    .line 62
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 63
    invoke-static {v0, v4}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/e/a/v/c;->a(Ljava/lang/String;)Le/e/a/v/c;

    move-result-object v15

    goto/16 :goto_2

    :cond_11
    const-string v5, "x5t#S256"

    .line 64
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 65
    invoke-static {v0, v4}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/e/a/v/c;->a(Ljava/lang/String;)Le/e/a/v/c;

    move-result-object v16

    goto/16 :goto_2

    :cond_12
    const-string v5, "x5c"

    .line 66
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 67
    invoke-static {v0, v4}, Le/c/a/a/b/l/c;->a(Li/a/b/d;Ljava/lang/String;)Li/a/b/a;

    move-result-object v4

    invoke-static {v4}, Le/c/a/a/b/l/c;->a(Li/a/b/a;)Ljava/util/List;

    move-result-object v17

    goto/16 :goto_2

    :cond_13
    const-string v5, "kid"

    .line 68
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 69
    invoke-static {v0, v4}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    :cond_14
    const-string v5, "epk"

    .line 70
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 71
    invoke-static {v0, v4}, Le/c/a/a/b/l/c;->b(Li/a/b/d;Ljava/lang/String;)Li/a/b/d;

    move-result-object v4

    invoke-static {v4}, Le/e/a/u/d;->a(Li/a/b/d;)Le/e/a/u/d;

    move-result-object v19

    goto/16 :goto_2

    :cond_15
    const-string v5, "zip"

    .line 72
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 73
    invoke-static {v0, v4}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 74
    new-instance v5, Le/e/a/c;

    invoke-direct {v5, v4}, Le/e/a/c;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v5

    goto/16 :goto_2

    :cond_16
    const-string v5, "apu"

    .line 75
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 76
    invoke-static {v0, v4}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/e/a/v/c;->a(Ljava/lang/String;)Le/e/a/v/c;

    move-result-object v21

    goto/16 :goto_2

    :cond_17
    const-string v5, "apv"

    .line 77
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 78
    invoke-static {v0, v4}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/e/a/v/c;->a(Ljava/lang/String;)Le/e/a/v/c;

    move-result-object v22

    goto/16 :goto_2

    :cond_18
    const-string v5, "p2s"

    .line 79
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 80
    invoke-static {v0, v4}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/e/a/v/c;->a(Ljava/lang/String;)Le/e/a/v/c;

    move-result-object v23

    goto/16 :goto_2

    :cond_19
    const-string v5, "p2c"

    .line 81
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 82
    const-class v5, Ljava/lang/Number;

    invoke-static {v0, v4, v5}, Le/c/a/a/b/l/c;->a(Li/a/b/d;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    if-eqz v5, :cond_1b

    .line 83
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v24

    if-ltz v24, :cond_1a

    goto/16 :goto_2

    .line 84
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The PBES2 count parameter must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1b
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "JSON object member with key \""

    const-string v2, "\" is missing or null"

    invoke-static {v1, v4, v2}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1c
    const-string v5, "iv"

    .line 86
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 87
    invoke-static {v0, v4}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/e/a/v/c;->a(Ljava/lang/String;)Le/e/a/v/c;

    move-result-object v25

    goto/16 :goto_2

    :cond_1d
    const-string v5, "tag"

    .line 88
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 89
    invoke-static {v0, v4}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/e/a/v/c;->a(Ljava/lang/String;)Le/e/a/v/c;

    move-result-object v26

    goto/16 :goto_2

    .line 90
    :cond_1e
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 91
    sget-object v6, Le/e/a/j;->U:Ljava/util/Set;

    .line 92
    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    if-nez v27, :cond_1f

    .line 93
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    :cond_1f
    move-object/from16 v6, v27

    .line 94
    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v27, v6

    goto/16 :goto_2

    .line 95
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter name \""

    const-string v2, "\" matches a registered name"

    invoke-static {v1, v4, v2}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_21
    new-instance v0, Le/e/a/j;

    move-object v6, v0

    move-object/from16 v28, p0

    invoke-direct/range {v6 .. v28}, Le/e/a/j;-><init>(Le/e/a/a;Le/e/a/d;Le/e/a/h;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Le/e/a/u/d;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/lang/String;Le/e/a/u/d;Le/e/a/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;ILe/e/a/v/c;Le/e/a/v/c;Ljava/util/Map;Le/e/a/v/c;)V

    return-object v0

    .line 97
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The encryption method \"enc\" parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The JWE algorithm \"alg\" cannot be \"none\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_24
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "The algorithm \"alg\" header parameter must be for encryption"

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method


# virtual methods
.method public b()Li/a/b/d;
    .locals 3

    .line 1
    invoke-super {p0}, Le/e/a/b;->b()Li/a/b/d;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/e/a/j;->L:Le/e/a/d;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Le/e/a/a;->x:Ljava/lang/String;

    const-string v2, "enc"

    .line 4
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object v1, p0, Le/e/a/j;->M:Le/e/a/u/d;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Le/e/a/u/d;->f()Li/a/b/d;

    move-result-object v1

    const-string v2, "epk"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    iget-object v1, p0, Le/e/a/j;->N:Le/e/a/c;

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, v1, Le/e/a/c;->x:Ljava/lang/String;

    const-string v2, "zip"

    .line 9
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_2
    iget-object v1, p0, Le/e/a/j;->O:Le/e/a/v/c;

    if-eqz v1, :cond_3

    .line 11
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v2, "apu"

    .line 12
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_3
    iget-object v1, p0, Le/e/a/j;->P:Le/e/a/v/c;

    if-eqz v1, :cond_4

    .line 14
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v2, "apv"

    .line 15
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_4
    iget-object v1, p0, Le/e/a/j;->Q:Le/e/a/v/c;

    if-eqz v1, :cond_5

    .line 17
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v2, "p2s"

    .line 18
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_5
    iget v1, p0, Le/e/a/j;->R:I

    if-lez v1, :cond_6

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "p2c"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_6
    iget-object v1, p0, Le/e/a/j;->S:Le/e/a/v/c;

    if-eqz v1, :cond_7

    .line 22
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v2, "iv"

    .line 23
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_7
    iget-object v1, p0, Le/e/a/j;->T:Le/e/a/v/c;

    if-eqz v1, :cond_8

    .line 25
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v2, "tag"

    .line 26
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-object v0
.end method
