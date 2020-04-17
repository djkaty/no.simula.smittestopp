.class public abstract Le/e/a/u/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/b/b;
.implements Ljava/io/Serializable;


# instance fields
.field public final A:Le/e/a/a;

.field public final B:Ljava/lang/String;

.field public final C:Ljava/net/URI;

.field public final D:Le/e/a/v/c;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public E:Le/e/a/v/c;

.field public final F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/e/a/v/a;",
            ">;"
        }
    .end annotation
.end field

.field public final G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field public final H:Ljava/security/KeyStore;

.field public final x:Le/e/a/u/f;

.field public final y:Le/e/a/u/g;

.field public final z:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/e/a/u/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/e/a/u/f;Le/e/a/u/g;Ljava/util/Set;Le/e/a/a;Ljava/lang/String;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/security/KeyStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/e/a/u/f;",
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    .line 2
    iput-object p1, p0, Le/e/a/u/d;->x:Le/e/a/u/f;

    .line 3
    invoke-static {p2, p3}, Le/e/a/u/h;->a(Le/e/a/u/g;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iput-object p2, p0, Le/e/a/u/d;->y:Le/e/a/u/g;

    .line 5
    iput-object p3, p0, Le/e/a/u/d;->z:Ljava/util/Set;

    .line 6
    iput-object p4, p0, Le/e/a/u/d;->A:Le/e/a/a;

    .line 7
    iput-object p5, p0, Le/e/a/u/d;->B:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Le/e/a/u/d;->C:Ljava/net/URI;

    .line 9
    iput-object p7, p0, Le/e/a/u/d;->D:Le/e/a/v/c;

    .line 10
    iput-object p8, p0, Le/e/a/u/d;->E:Le/e/a/v/c;

    if-eqz p9, :cond_1

    .line 11
    invoke-interface {p9}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The X.509 certificate chain \"x5c\" must not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    :goto_0
    iput-object p9, p0, Le/e/a/u/d;->F:Ljava/util/List;

    .line 14
    :try_start_0
    invoke-static {p9}, Le/c/a/a/b/l/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le/e/a/u/d;->G:Ljava/util/List;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    iput-object p10, p0, Le/e/a/u/d;->H:Ljava/security/KeyStore;

    return-void

    :catch_0
    move-exception p1

    .line 16
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Invalid X.509 certificate chain \"x5c\": "

    invoke-static {p3}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The key use \"use\" and key options \"key_opts\" parameters are not consistent, see RFC 7517, section 4.3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The key type \"kty\" parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Li/a/b/d;)Le/e/a/u/d;
    .locals 25

    move-object/from16 v0, p0

    const-string v1, "kty"

    .line 2
    invoke-static {v0, v1}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/u/f;->a(Ljava/lang/String;)Le/e/a/u/f;

    move-result-object v2

    .line 3
    sget-object v3, Le/e/a/u/f;->y:Le/e/a/u/f;

    if-ne v2, v3, :cond_0

    .line 4
    invoke-static/range {p0 .. p0}, Le/e/a/u/b;->a(Li/a/b/d;)Le/e/a/u/b;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    sget-object v3, Le/e/a/u/f;->z:Le/e/a/u/f;

    if-ne v2, v3, :cond_a

    .line 6
    new-instance v6, Le/e/a/v/c;

    const-string v2, "n"

    invoke-static {v0, v2}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Le/e/a/v/c;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v7, Le/e/a/v/c;

    const-string v2, "e"

    invoke-static {v0, v2}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Le/e/a/v/c;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {v0, v1}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/u/f;->a(Ljava/lang/String;)Le/e/a/u/f;

    move-result-object v1

    .line 9
    sget-object v2, Le/e/a/u/f;->z:Le/e/a/u/f;

    if-ne v1, v2, :cond_9

    const-string v1, "d"

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 11
    new-instance v2, Le/e/a/v/c;

    invoke-static {v0, v1}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Le/e/a/v/c;-><init>(Ljava/lang/String;)V

    move-object v8, v2

    goto :goto_0

    :cond_1
    move-object v8, v3

    :goto_0
    const-string v1, "p"

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    new-instance v2, Le/e/a/v/c;

    invoke-static {v0, v1}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Le/e/a/v/c;-><init>(Ljava/lang/String;)V

    move-object v9, v2

    goto :goto_1

    :cond_2
    move-object v9, v3

    :goto_1
    const-string v1, "q"

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 15
    new-instance v2, Le/e/a/v/c;

    invoke-static {v0, v1}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Le/e/a/v/c;-><init>(Ljava/lang/String;)V

    move-object v10, v2

    goto :goto_2

    :cond_3
    move-object v10, v3

    :goto_2
    const-string v1, "dp"

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 17
    new-instance v2, Le/e/a/v/c;

    invoke-static {v0, v1}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Le/e/a/v/c;-><init>(Ljava/lang/String;)V

    move-object v11, v2

    goto :goto_3

    :cond_4
    move-object v11, v3

    :goto_3
    const-string v1, "dq"

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 19
    new-instance v2, Le/e/a/v/c;

    invoke-static {v0, v1}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Le/e/a/v/c;-><init>(Ljava/lang/String;)V

    move-object v12, v2

    goto :goto_4

    :cond_5
    move-object v12, v3

    :goto_4
    const-string v2, "qi"

    .line 20
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 21
    new-instance v5, Le/e/a/v/c;

    invoke-static {v0, v2}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Le/e/a/v/c;-><init>(Ljava/lang/String;)V

    move-object v13, v5

    goto :goto_5

    :cond_6
    move-object v13, v3

    :goto_5
    const-string v2, "oth"

    .line 22
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 23
    invoke-static {v0, v2}, Le/c/a/a/b/l/c;->a(Li/a/b/d;Ljava/lang/String;)Li/a/b/a;

    move-result-object v2

    .line 24
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 26
    instance-of v14, v5, Li/a/b/d;

    if-eqz v14, :cond_7

    .line 27
    check-cast v5, Li/a/b/d;

    .line 28
    new-instance v14, Le/e/a/v/c;

    const-string v15, "r"

    invoke-static {v5, v15}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Le/e/a/v/c;-><init>(Ljava/lang/String;)V

    .line 29
    new-instance v15, Le/e/a/v/c;

    invoke-static {v5, v1}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4}, Le/e/a/v/c;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance v4, Le/e/a/v/c;

    move-object/from16 v16, v1

    const-string v1, "t"

    invoke-static {v5, v1}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Le/e/a/v/c;-><init>(Ljava/lang/String;)V

    .line 31
    new-instance v1, Le/e/a/u/k$a;

    invoke-direct {v1, v14, v15, v4}, Le/e/a/u/k$a;-><init>(Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;)V

    .line 32
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_7
    move-object/from16 v16, v1

    :goto_7
    move-object/from16 v1, v16

    goto :goto_6

    :cond_8
    move-object v14, v3

    .line 33
    :try_start_0
    new-instance v1, Le/e/a/u/k;

    const/4 v15, 0x0

    .line 34
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->e(Li/a/b/d;)Le/e/a/u/g;

    move-result-object v16

    .line 35
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->c(Li/a/b/d;)Ljava/util/Set;

    move-result-object v17

    .line 36
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->a(Li/a/b/d;)Le/e/a/a;

    move-result-object v18

    .line 37
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->b(Li/a/b/d;)Ljava/lang/String;

    move-result-object v19

    .line 38
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->i(Li/a/b/d;)Ljava/net/URI;

    move-result-object v20

    .line 39
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->h(Li/a/b/d;)Le/e/a/v/c;

    move-result-object v21

    .line 40
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->g(Li/a/b/d;)Le/e/a/v/c;

    move-result-object v22

    .line 41
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->f(Li/a/b/d;)Ljava/util/List;

    move-result-object v23

    const/16 v24, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v24}, Le/e/a/u/k;-><init>(Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/security/PrivateKey;Le/e/a/u/g;Ljava/util/Set;Le/e/a/a;Ljava/lang/String;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 42
    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_9
    const/4 v2, 0x0

    .line 43
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "The key type \"kty\" must be RSA"

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 44
    :cond_a
    sget-object v1, Le/e/a/u/f;->A:Le/e/a/u/f;

    if-ne v2, v1, :cond_c

    .line 45
    new-instance v4, Le/e/a/v/c;

    const-string v1, "k"

    invoke-static {v0, v1}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Le/e/a/v/c;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->d(Li/a/b/d;)Le/e/a/u/f;

    move-result-object v1

    .line 47
    sget-object v2, Le/e/a/u/f;->A:Le/e/a/u/f;

    if-ne v1, v2, :cond_b

    .line 48
    new-instance v1, Le/e/a/u/j;

    .line 49
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->e(Li/a/b/d;)Le/e/a/u/g;

    move-result-object v5

    .line 50
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->c(Li/a/b/d;)Ljava/util/Set;

    move-result-object v6

    .line 51
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->a(Li/a/b/d;)Le/e/a/a;

    move-result-object v7

    .line 52
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->b(Li/a/b/d;)Ljava/lang/String;

    move-result-object v8

    .line 53
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->i(Li/a/b/d;)Ljava/net/URI;

    move-result-object v9

    .line 54
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->h(Li/a/b/d;)Le/e/a/v/c;

    move-result-object v10

    .line 55
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->g(Li/a/b/d;)Le/e/a/v/c;

    move-result-object v11

    .line 56
    invoke-static/range {p0 .. p0}, Le/c/a/a/b/l/c;->f(Li/a/b/d;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v13}, Le/e/a/u/j;-><init>(Le/e/a/v/c;Le/e/a/u/g;Ljava/util/Set;Le/e/a/a;Ljava/lang/String;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/security/KeyStore;)V

    return-object v1

    .line 57
    :cond_b
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "The key type \"kty\" must be oct"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 58
    :cond_c
    sget-object v1, Le/e/a/u/f;->B:Le/e/a/u/f;

    if-ne v2, v1, :cond_d

    .line 59
    invoke-static/range {p0 .. p0}, Le/e/a/u/i;->a(Li/a/b/d;)Le/e/a/u/i;

    move-result-object v0

    return-object v0

    .line 60
    :cond_d
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported key type \"kty\" parameter: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/e/a/u/d;->f()Li/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Li/a/b/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/e/a/u/d;->G:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end method

.method public abstract e()Z
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Le/e/a/u/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Le/e/a/u/d;

    .line 3
    iget-object v1, p0, Le/e/a/u/d;->x:Le/e/a/u/f;

    iget-object v3, p1, Le/e/a/u/d;->x:Le/e/a/u/f;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/e/a/u/d;->y:Le/e/a/u/g;

    iget-object v3, p1, Le/e/a/u/d;->y:Le/e/a/u/g;

    .line 4
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/e/a/u/d;->z:Ljava/util/Set;

    iget-object v3, p1, Le/e/a/u/d;->z:Ljava/util/Set;

    .line 5
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/e/a/u/d;->A:Le/e/a/a;

    iget-object v3, p1, Le/e/a/u/d;->A:Le/e/a/a;

    .line 6
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/e/a/u/d;->B:Ljava/lang/String;

    iget-object v3, p1, Le/e/a/u/d;->B:Ljava/lang/String;

    .line 7
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/e/a/u/d;->C:Ljava/net/URI;

    iget-object v3, p1, Le/e/a/u/d;->C:Ljava/net/URI;

    .line 8
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/e/a/u/d;->D:Le/e/a/v/c;

    iget-object v3, p1, Le/e/a/u/d;->D:Le/e/a/v/c;

    .line 9
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/e/a/u/d;->E:Le/e/a/v/c;

    iget-object v3, p1, Le/e/a/u/d;->E:Le/e/a/v/c;

    .line 10
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/e/a/u/d;->F:Ljava/util/List;

    iget-object v3, p1, Le/e/a/u/d;->F:Ljava/util/List;

    .line 11
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/e/a/u/d;->G:Ljava/util/List;

    iget-object v3, p1, Le/e/a/u/d;->G:Ljava/util/List;

    .line 12
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/e/a/u/d;->H:Ljava/security/KeyStore;

    iget-object p1, p1, Le/e/a/u/d;->H:Ljava/security/KeyStore;

    .line 13
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Li/a/b/d;
    .locals 4

    .line 1
    new-instance v0, Li/a/b/d;

    invoke-direct {v0}, Li/a/b/d;-><init>()V

    .line 2
    iget-object v1, p0, Le/e/a/u/d;->x:Le/e/a/u/f;

    .line 3
    iget-object v1, v1, Le/e/a/u/f;->x:Ljava/lang/String;

    const-string v2, "kty"

    .line 4
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Le/e/a/u/d;->y:Le/e/a/u/g;

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, v1, Le/e/a/u/g;->x:Ljava/lang/String;

    const-string v2, "use"

    .line 7
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    iget-object v1, p0, Le/e/a/u/d;->z:Ljava/util/Set;

    if-eqz v1, :cond_2

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Le/e/a/u/d;->z:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    iget-object v2, p0, Le/e/a/u/d;->z:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/e/a/u/e;

    .line 11
    invoke-virtual {v3}, Le/e/a/u/e;->identifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v2, "key_ops"

    .line 12
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_2
    iget-object v1, p0, Le/e/a/u/d;->A:Le/e/a/a;

    if-eqz v1, :cond_3

    .line 14
    iget-object v1, v1, Le/e/a/a;->x:Ljava/lang/String;

    const-string v2, "alg"

    .line 15
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_3
    iget-object v1, p0, Le/e/a/u/d;->B:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v2, "kid"

    .line 17
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_4
    iget-object v1, p0, Le/e/a/u/d;->C:Ljava/net/URI;

    if-eqz v1, :cond_5

    .line 19
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x5u"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_5
    iget-object v1, p0, Le/e/a/u/d;->D:Le/e/a/v/c;

    if-eqz v1, :cond_6

    .line 21
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v2, "x5t"

    .line 22
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_6
    iget-object v1, p0, Le/e/a/u/d;->E:Le/e/a/v/c;

    if-eqz v1, :cond_7

    .line 24
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v2, "x5t#S256"

    .line 25
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_7
    iget-object v1, p0, Le/e/a/u/d;->F:Ljava/util/List;

    if-eqz v1, :cond_9

    .line 27
    new-instance v1, Li/a/b/a;

    invoke-direct {v1}, Li/a/b/a;-><init>()V

    .line 28
    iget-object v2, p0, Le/e/a/u/d;->F:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/e/a/v/a;

    .line 29
    iget-object v3, v3, Le/e/a/v/a;->x:Ljava/lang/String;

    .line 30
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    const-string v2, "x5c"

    .line 31
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Le/e/a/u/d;->x:Le/e/a/u/f;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/d;->y:Le/e/a/u/g;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/d;->z:Ljava/util/Set;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/d;->A:Le/e/a/a;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/d;->B:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/d;->C:Ljava/net/URI;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/d;->D:Le/e/a/v/c;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/d;->E:Le/e/a/v/c;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/d;->F:Ljava/util/List;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/d;->G:Ljava/util/List;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/d;->H:Ljava/security/KeyStore;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/e/a/u/d;->f()Li/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Li/a/b/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
