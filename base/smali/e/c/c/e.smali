.class public final Le/c/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/gson/internal/Excluder;

.field public b:Le/c/c/t;

.field public c:Le/c/c/d;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Le/c/c/f<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/c/c/u;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/c/c/u;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/gson/internal/Excluder;->D:Lcom/google/gson/internal/Excluder;

    iput-object v0, p0, Le/c/c/e;->a:Lcom/google/gson/internal/Excluder;

    .line 3
    sget-object v0, Le/c/c/t;->DEFAULT:Le/c/c/t;

    iput-object v0, p0, Le/c/c/e;->b:Le/c/c/t;

    .line 4
    sget-object v0, Le/c/c/c;->IDENTITY:Le/c/c/c;

    iput-object v0, p0, Le/c/c/e;->c:Le/c/c/d;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le/c/c/e;->d:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/c/c/e;->e:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/c/c/e;->f:Ljava/util/List;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Le/c/c/e;->g:Z

    const/4 v1, 0x2

    .line 9
    iput v1, p0, Le/c/c/e;->h:I

    .line 10
    iput v1, p0, Le/c/c/e;->i:I

    .line 11
    iput-boolean v0, p0, Le/c/c/e;->j:Z

    .line 12
    iput-boolean v0, p0, Le/c/c/e;->k:Z

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Le/c/c/e;->l:Z

    .line 14
    iput-boolean v0, p0, Le/c/c/e;->m:Z

    .line 15
    iput-boolean v0, p0, Le/c/c/e;->n:Z

    .line 16
    iput-boolean v0, p0, Le/c/c/e;->o:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/google/gson/Gson;
    .locals 20

    move-object/from16 v0, p0

    .line 12
    new-instance v15, Ljava/util/ArrayList;

    iget-object v1, v0, Le/c/c/e;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, v0, Le/c/c/e;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    iget-object v1, v0, Le/c/c/e;->e:Ljava/util/List;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    invoke-static {v15}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Le/c/c/e;->f:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 17
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 18
    iget v1, v0, Le/c/c/e;->h:I

    iget v2, v0, Le/c/c/e;->i:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    if-eq v2, v3, :cond_0

    .line 19
    new-instance v3, Lcom/google/gson/DefaultDateTypeAdapter;

    const-class v4, Ljava/util/Date;

    invoke-direct {v3, v4, v1, v2}, Lcom/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    .line 20
    new-instance v4, Lcom/google/gson/DefaultDateTypeAdapter;

    const-class v5, Ljava/sql/Timestamp;

    invoke-direct {v4, v5, v1, v2}, Lcom/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    .line 21
    new-instance v5, Lcom/google/gson/DefaultDateTypeAdapter;

    const-class v6, Ljava/sql/Date;

    invoke-direct {v5, v6, v1, v2}, Lcom/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;II)V

    .line 22
    const-class v1, Ljava/util/Date;

    invoke-static {v1, v3}, Lcom/google/gson/internal/bind/TypeAdapters;->a(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Le/c/c/u;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    const-class v1, Ljava/sql/Timestamp;

    .line 24
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$32;

    invoke-direct {v2, v1, v4}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 25
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    const-class v1, Ljava/sql/Date;

    .line 27
    new-instance v2, Lcom/google/gson/internal/bind/TypeAdapters$32;

    invoke-direct {v2, v1, v5}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    .line 28
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_0
    new-instance v19, Lcom/google/gson/Gson;

    move-object/from16 v1, v19

    iget-object v2, v0, Le/c/c/e;->a:Lcom/google/gson/internal/Excluder;

    iget-object v3, v0, Le/c/c/e;->c:Le/c/c/d;

    iget-object v4, v0, Le/c/c/e;->d:Ljava/util/Map;

    iget-boolean v5, v0, Le/c/c/e;->g:Z

    iget-boolean v6, v0, Le/c/c/e;->j:Z

    iget-boolean v7, v0, Le/c/c/e;->n:Z

    iget-boolean v8, v0, Le/c/c/e;->l:Z

    iget-boolean v9, v0, Le/c/c/e;->m:Z

    iget-boolean v10, v0, Le/c/c/e;->o:Z

    iget-boolean v11, v0, Le/c/c/e;->k:Z

    iget-object v12, v0, Le/c/c/e;->b:Le/c/c/t;

    const/4 v13, 0x0

    iget v14, v0, Le/c/c/e;->h:I

    iget v13, v0, Le/c/c/e;->i:I

    move-object/from16 v18, v15

    move v15, v13

    iget-object v13, v0, Le/c/c/e;->e:Ljava/util/List;

    move-object/from16 v16, v13

    iget-object v13, v0, Le/c/c/e;->f:Ljava/util/List;

    move-object/from16 v17, v13

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v18}, Lcom/google/gson/Gson;-><init>(Lcom/google/gson/internal/Excluder;Le/c/c/d;Ljava/util/Map;ZZZZZZZLe/c/c/t;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v19
.end method

.method public a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Le/c/c/e;
    .locals 6

    .line 1
    instance-of v0, p2, Le/c/c/r;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    instance-of v3, p2, Le/c/c/i;

    if-nez v3, :cond_1

    instance-of v3, p2, Le/c/c/f;

    if-nez v3, :cond_1

    instance-of v3, p2, Lcom/google/gson/TypeAdapter;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Le/c/a/a/b/l/c;->a(Z)V

    .line 2
    instance-of v3, p2, Le/c/c/f;

    if-eqz v3, :cond_2

    .line 3
    iget-object v3, p0, Le/c/c/e;->d:Ljava/util/Map;

    move-object v4, p2

    check-cast v4, Le/c/c/f;

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v0, :cond_3

    .line 4
    instance-of v0, p2, Le/c/c/i;

    if-eqz v0, :cond_5

    .line 5
    :cond_3
    invoke-static {p1}, Le/c/c/x/a;->get(Ljava/lang/reflect/Type;)Le/c/c/x/a;

    move-result-object v0

    .line 6
    iget-object v3, p0, Le/c/c/e;->e:Ljava/util/List;

    .line 7
    invoke-virtual {v0}, Le/c/c/x/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v0}, Le/c/c/x/a;->getRawType()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_4

    const/4 v1, 0x1

    .line 8
    :cond_4
    new-instance v2, Lcom/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v4, 0x0

    invoke-direct {v2, p2, v0, v1, v4}, Lcom/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Le/c/c/x/a;ZLjava/lang/Class;)V

    .line 9
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_5
    instance-of v0, p2, Lcom/google/gson/TypeAdapter;

    if-eqz v0, :cond_6

    .line 11
    iget-object v0, p0, Le/c/c/e;->e:Ljava/util/List;

    invoke-static {p1}, Le/c/c/x/a;->get(Ljava/lang/reflect/Type;)Le/c/c/x/a;

    move-result-object p1

    check-cast p2, Lcom/google/gson/TypeAdapter;

    invoke-static {p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters;->a(Le/c/c/x/a;Lcom/google/gson/TypeAdapter;)Le/c/c/u;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object p0
.end method

.method public b()Le/c/c/e;
    .locals 2

    .line 1
    iget-object v0, p0, Le/c/c/e;->a:Lcom/google/gson/internal/Excluder;

    .line 2
    invoke-virtual {v0}, Lcom/google/gson/internal/Excluder;->clone()Lcom/google/gson/internal/Excluder;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/google/gson/internal/Excluder;->A:Z

    .line 4
    iput-object v0, p0, Le/c/c/e;->a:Lcom/google/gson/internal/Excluder;

    return-object p0
.end method
