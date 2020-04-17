.class public abstract Le/e/a/b;
.super Le/e/a/e;
.source "SourceFile"


# instance fields
.field public final E:Ljava/net/URI;

.field public final F:Le/e/a/u/d;

.field public final G:Ljava/net/URI;

.field public final H:Le/e/a/v/c;

.field public final I:Le/e/a/v/c;

.field public final J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/e/a/v/a;",
            ">;"
        }
    .end annotation
.end field

.field public final K:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/e/a/a;Le/e/a/h;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Le/e/a/u/d;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Le/e/a/v/c;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/e/a/a;",
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

    move-object v7, p0

    move-object/from16 v8, p10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    .line 1
    invoke-direct/range {v0 .. v6}, Le/e/a/e;-><init>(Le/e/a/a;Le/e/a/h;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Le/e/a/v/c;)V

    move-object v0, p5

    .line 2
    iput-object v0, v7, Le/e/a/b;->E:Ljava/net/URI;

    move-object v0, p6

    .line 3
    iput-object v0, v7, Le/e/a/b;->F:Le/e/a/u/d;

    move-object/from16 v0, p7

    .line 4
    iput-object v0, v7, Le/e/a/b;->G:Ljava/net/URI;

    move-object/from16 v0, p8

    .line 5
    iput-object v0, v7, Le/e/a/b;->H:Le/e/a/v/c;

    move-object/from16 v0, p9

    .line 6
    iput-object v0, v7, Le/e/a/b;->I:Le/e/a/v/c;

    if-eqz v8, :cond_0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v7, Le/e/a/b;->J:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    iput-object v0, v7, Le/e/a/b;->J:Ljava/util/List;

    :goto_0
    move-object/from16 v0, p11

    .line 9
    iput-object v0, v7, Le/e/a/b;->K:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Li/a/b/d;
    .locals 3

    .line 1
    invoke-super {p0}, Le/e/a/e;->b()Li/a/b/d;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/e/a/b;->E:Ljava/net/URI;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jku"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v1, p0, Le/e/a/b;->F:Le/e/a/u/d;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Le/e/a/u/d;->f()Li/a/b/d;

    move-result-object v1

    const-string v2, "jwk"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object v1, p0, Le/e/a/b;->G:Ljava/net/URI;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x5u"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_2
    iget-object v1, p0, Le/e/a/b;->H:Le/e/a/v/c;

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v2, "x5t"

    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_3
    iget-object v1, p0, Le/e/a/b;->I:Le/e/a/v/c;

    if-eqz v1, :cond_4

    .line 12
    iget-object v1, v1, Le/e/a/v/a;->x:Ljava/lang/String;

    const-string v2, "x5t#S256"

    .line 13
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_4
    iget-object v1, p0, Le/e/a/b;->J:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 15
    iget-object v1, p0, Le/e/a/b;->J:Ljava/util/List;

    const-string v2, "x5c"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_5
    iget-object v1, p0, Le/e/a/b;->K:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v2, "kid"

    .line 17
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method
