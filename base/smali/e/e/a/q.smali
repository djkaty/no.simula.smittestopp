.class public final Le/e/a/q;
.super Le/e/a/e;
.source "SourceFile"


# static fields
.field public static final E:Ljava/util/Set;
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

    const-string v1, "typ"

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "cty"

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "crit"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Le/e/a/q;->E:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Le/e/a/h;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Le/e/a/v/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/e/a/h;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Le/e/a/v/c;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v1, Le/e/a/a;->y:Le/e/a/a;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Le/e/a/e;-><init>(Le/e/a/a;Le/e/a/h;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Le/e/a/v/c;)V

    return-void
.end method

.method public static a(Le/e/a/v/c;)Le/e/a/q;
    .locals 9

    .line 1
    invoke-virtual {p0}, Le/e/a/v/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Le/c/a/a/b/l/c;->b(Ljava/lang/String;)Li/a/b/d;

    move-result-object v0

    .line 3
    invoke-static {v0}, Le/e/a/e;->a(Li/a/b/d;)Le/e/a/a;

    move-result-object v1

    .line 4
    sget-object v2, Le/e/a/a;->y:Le/e/a/a;

    if-ne v1, v2, :cond_8

    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "alg"

    .line 6
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "typ"

    .line 7
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    invoke-static {v0, v2}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9
    new-instance v4, Le/e/a/h;

    invoke-direct {v4, v2}, Le/e/a/h;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "cty"

    .line 10
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    invoke-static {v0, v2}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    const-string v3, "crit"

    .line 12
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13
    invoke-static {v0, v2}, Le/c/a/a/b/l/c;->e(Li/a/b/d;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 14
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 16
    sget-object v8, Le/e/a/q;->E:Ljava/util/Set;

    .line 17
    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    if-nez v7, :cond_5

    .line 18
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 19
    :cond_5
    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 20
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The parameter name \""

    const-string v1, "\" matches a registered name"

    invoke-static {v0, v2, v1}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_7
    new-instance v0, Le/e/a/q;

    move-object v3, v0

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Le/e/a/q;-><init>(Le/e/a/h;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Le/e/a/v/c;)V

    return-object v0

    .line 22
    :cond_8
    new-instance p0, Ljava/text/ParseException;

    const/4 v0, 0x0

    const-string v1, "The algorithm \"alg\" header parameter must be \"none\""

    invoke-direct {p0, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
