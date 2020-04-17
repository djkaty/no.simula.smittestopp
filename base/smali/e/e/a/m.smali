.class public final Le/e/a/m;
.super Le/e/a/b;
.source "SourceFile"


# static fields
.field public static final L:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "alg"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "jku"

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "jwk"

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "x5u"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "x5t"

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "x5t#S256"

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "x5c"

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "kid"

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "typ"

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "cty"

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "crit"

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Le/e/a/m;->L:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Le/e/a/l;Le/e/a/h;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Le/e/a/u/d;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Le/e/a/v/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/e/a/l;",
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Le/e/a/v/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p13}, Le/e/a/b;-><init>(Le/e/a/a;Le/e/a/h;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Le/e/a/u/d;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Le/e/a/v/c;)V

    .line 2
    iget-object p1, p1, Le/e/a/a;->x:Ljava/lang/String;

    .line 3
    sget-object p2, Le/e/a/a;->y:Le/e/a/a;

    .line 4
    iget-object p2, p2, Le/e/a/a;->x:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The JWS algorithm \"alg\" cannot be \"none\""

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Le/e/a/v/c;)Le/e/a/m;
    .locals 17

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
    instance-of v2, v1, Le/e/a/l;

    if-eqz v2, :cond_10

    .line 5
    move-object v4, v1

    check-cast v4, Le/e/a/l;

    .line 6
    iget-object v1, v4, Le/e/a/a;->x:Ljava/lang/String;

    .line 7
    sget-object v2, Le/e/a/a;->y:Le/e/a/a;

    .line 8
    iget-object v2, v2, Le/e/a/a;->x:Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 10
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v5, v2

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "alg"

    .line 11
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v3, "typ"

    .line 12
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13
    invoke-static {v0, v2}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 14
    new-instance v5, Le/e/a/h;

    invoke-direct {v5, v2}, Le/e/a/h;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const-string v3, "cty"

    .line 15
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 16
    invoke-static {v0, v2}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_2
    const-string v3, "crit"

    .line 17
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 18
    invoke-static {v0, v2}, Le/c/a/a/b/l/c;->e(Li/a/b/d;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 19
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_1

    :cond_3
    const-string v3, "jku"

    .line 20
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 21
    invoke-static {v0, v2}, Le/c/a/a/b/l/c;->f(Li/a/b/d;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v8

    goto :goto_1

    :cond_4
    const-string v3, "jwk"

    .line 22
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 23
    invoke-static {v0, v2}, Le/c/a/a/b/l/c;->b(Li/a/b/d;Ljava/lang/String;)Li/a/b/d;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 24
    invoke-static {v2}, Le/e/a/u/d;->a(Li/a/b/d;)Le/e/a/u/d;

    move-result-object v9

    goto :goto_1

    :cond_5
    const-string v3, "x5u"

    .line 25
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 26
    invoke-static {v0, v2}, Le/c/a/a/b/l/c;->f(Li/a/b/d;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v10

    goto :goto_1

    :cond_6
    const-string v3, "x5t"

    .line 27
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 28
    invoke-static {v0, v2}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/v/c;->a(Ljava/lang/String;)Le/e/a/v/c;

    move-result-object v11

    goto :goto_1

    :cond_7
    const-string v3, "x5t#S256"

    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 30
    invoke-static {v0, v2}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/v/c;->a(Ljava/lang/String;)Le/e/a/v/c;

    move-result-object v12

    goto :goto_1

    :cond_8
    const-string v3, "x5c"

    .line 31
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 32
    invoke-static {v0, v2}, Le/c/a/a/b/l/c;->a(Li/a/b/d;Ljava/lang/String;)Li/a/b/a;

    move-result-object v2

    invoke-static {v2}, Le/c/a/a/b/l/c;->a(Li/a/b/a;)Ljava/util/List;

    move-result-object v13

    goto :goto_1

    :cond_9
    const-string v3, "kid"

    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 34
    invoke-static {v0, v2}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :cond_a
    :goto_1
    move-object/from16 v16, v0

    goto :goto_2

    .line 35
    :cond_b
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v0

    .line 36
    sget-object v0, Le/e/a/m;->L:Ljava/util/Set;

    .line 37
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    if-nez v15, :cond_c

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v15, v0

    .line 39
    :cond_c
    invoke-interface {v15, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move-object/from16 v0, v16

    goto/16 :goto_0

    .line 40
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter name \""

    const-string v3, "\" matches a registered name"

    invoke-static {v1, v2, v3}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_e
    new-instance v0, Le/e/a/m;

    move-object v3, v0

    move-object/from16 v16, p0

    invoke-direct/range {v3 .. v16}, Le/e/a/m;-><init>(Le/e/a/l;Le/e/a/h;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Le/e/a/u/d;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Le/e/a/v/c;)V

    return-object v0

    .line 42
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The JWS algorithm \"alg\" cannot be \"none\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_10
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    const-string v2, "The algorithm \"alg\" header parameter must be for signatures"

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
