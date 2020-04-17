.class public final Le/e/a/u/j;
.super Le/e/a/u/d;
.source "SourceFile"


# instance fields
.field public final I:Le/e/a/v/c;


# direct methods
.method public constructor <init>(Le/e/a/v/c;Le/e/a/u/g;Ljava/util/Set;Le/e/a/a;Ljava/lang/String;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/security/KeyStore;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    move-object v0, p1

    .line 1
    sget-object v2, Le/e/a/u/f;->A:Le/e/a/u/f;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Le/e/a/u/d;-><init>(Le/e/a/u/f;Le/e/a/u/g;Ljava/util/Set;Le/e/a/a;Ljava/lang/String;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/security/KeyStore;)V

    if-eqz v0, :cond_0

    move-object v1, p0

    .line 2
    iput-object v0, v1, Le/e/a/u/j;->I:Le/e/a/v/c;

    return-void

    :cond_0
    move-object v1, p0

    .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The key value must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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
    iget-object v1, p0, Le/e/a/u/j;->I:Le/e/a/v/c;

    .line 3
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v2, "k"

    .line 4
    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Le/e/a/u/d;->x:Le/e/a/u/f;

    .line 6
    iget-object v1, v1, Le/e/a/u/f;->x:Ljava/lang/String;

    const-string v2, "kty"

    .line 7
    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Le/e/a/u/j;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 2
    :cond_1
    invoke-super {p0, p1}, Le/e/a/u/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 3
    :cond_2
    check-cast p1, Le/e/a/u/j;

    .line 4
    iget-object v0, p0, Le/e/a/u/j;->I:Le/e/a/v/c;

    iget-object p1, p1, Le/e/a/u/j;->I:Le/e/a/v/c;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Li/a/b/d;
    .locals 3

    .line 1
    invoke-super {p0}, Le/e/a/u/d;->f()Li/a/b/d;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/e/a/u/j;->I:Le/e/a/v/c;

    .line 3
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v2, "k"

    .line 4
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-super {p0}, Le/e/a/u/d;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Le/e/a/u/j;->I:Le/e/a/v/c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
