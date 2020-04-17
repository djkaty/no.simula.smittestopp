.class public final Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/c/c/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;,
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$a;
    }
.end annotation


# instance fields
.field public final A:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

.field public final B:Le/c/c/w/a0/b;

.field public final x:Le/c/c/w/g;

.field public final y:Le/c/c/d;

.field public final z:Lcom/google/gson/internal/Excluder;


# direct methods
.method public constructor <init>(Le/c/c/w/g;Le/c/c/d;Lcom/google/gson/internal/Excluder;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Le/c/c/w/a0/b;->a:Le/c/c/w/a0/b;

    .line 3
    iput-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->B:Le/c/c/w/a0/b;

    .line 4
    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->x:Le/c/c/w/g;

    .line 5
    iput-object p2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->y:Le/c/c/d;

    .line 6
    iput-object p3, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->z:Lcom/google/gson/internal/Excluder;

    .line 7
    iput-object p4, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->A:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/Gson;Le/c/c/x/a;)Lcom/google/gson/TypeAdapter;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Le/c/c/x/a<",
            "TT;>;)",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 19
    const-class v13, Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Le/c/c/x/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 20
    invoke-virtual {v13, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v14, 0x0

    if-nez v1, :cond_0

    return-object v14

    .line 21
    :cond_0
    iget-object v1, v11, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->x:Le/c/c/w/g;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Le/c/c/w/g;->a(Le/c/c/x/a;)Le/c/c/w/s;

    move-result-object v15

    .line 22
    new-instance v10, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    .line 23
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move-object v14, v9

    move-object/from16 v34, v10

    move-object/from16 v22, v15

    goto/16 :goto_a

    .line 25
    :cond_2
    invoke-virtual/range {p2 .. p2}, Le/c/c/x/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    move-object v7, v0

    move-object/from16 v16, v2

    :goto_0
    if-eq v7, v13, :cond_1

    .line 26
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 27
    array-length v5, v6

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_e

    aget-object v2, v6, v3

    const/4 v1, 0x1

    .line 28
    invoke-virtual {v11, v2, v1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    .line 29
    invoke-virtual {v11, v2, v4}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v17

    if-nez v0, :cond_3

    if-nez v17, :cond_3

    move/from16 v20, v3

    move/from16 v32, v5

    move-object/from16 v33, v6

    move-object/from16 p2, v7

    move-object v12, v8

    move-object v14, v9

    move-object/from16 v34, v10

    move-object/from16 v19, v13

    move-object/from16 v22, v15

    const/16 v31, 0x0

    goto/16 :goto_9

    .line 30
    :cond_3
    iget-object v4, v11, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->B:Le/c/c/w/a0/b;

    invoke-virtual {v4, v2}, Le/c/c/w/a0/b;->a(Ljava/lang/reflect/AccessibleObject;)V

    .line 31
    invoke-virtual/range {v16 .. v16}, Le/c/c/x/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v14

    invoke-static {v4, v7, v14}, Le/c/c/w/a;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v14

    .line 32
    const-class v4, Le/c/c/v/c;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Le/c/c/v/c;

    if-nez v4, :cond_4

    .line 33
    iget-object v4, v11, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->y:Le/c/c/d;

    invoke-interface {v4, v2}, Le/c/c/d;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v4

    .line 34
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move/from16 v19, v0

    goto :goto_2

    .line 35
    :cond_4
    invoke-interface {v4}, Le/c/c/v/c;->value()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-interface {v4}, Le/c/c/v/c;->alternate()[Ljava/lang/String;

    move-result-object v4

    move/from16 v19, v0

    .line 37
    array-length v0, v4

    if-nez v0, :cond_5

    .line 38
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :goto_2
    move/from16 v20, v3

    const/16 v18, 0x1

    goto :goto_4

    .line 39
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    move/from16 v20, v3

    array-length v3, v4

    const/16 v18, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    array-length v1, v4

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_6

    move/from16 v21, v1

    aget-object v1, v4, v3

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v21

    goto :goto_3

    :cond_6
    move-object v4, v0

    .line 43
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v19

    const/4 v1, 0x0

    move-object/from16 v19, v13

    const/4 v13, 0x0

    :goto_5
    if-ge v1, v3, :cond_c

    .line 44
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v15

    move-object/from16 v15, v21

    check-cast v15, Ljava/lang/String;

    if-eqz v1, :cond_7

    const/16 v21, 0x0

    goto :goto_6

    :cond_7
    move/from16 v21, v0

    .line 45
    :goto_6
    invoke-static {v14}, Le/c/c/x/a;->get(Ljava/lang/reflect/Type;)Le/c/c/x/a;

    move-result-object v0

    move/from16 v23, v1

    .line 46
    invoke-virtual {v0}, Le/c/c/x/a;->getRawType()Ljava/lang/Class;

    move-result-object v1

    move/from16 v24, v3

    .line 47
    sget-object v3, Le/c/c/w/t;->a:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    .line 48
    const-class v1, Le/c/c/v/b;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Le/c/c/v/b;

    if-eqz v1, :cond_8

    .line 49
    iget-object v3, v11, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->A:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    move-object/from16 v26, v2

    iget-object v2, v11, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->x:Le/c/c/w/g;

    invoke-virtual {v3, v2, v12, v0, v1}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->a(Le/c/c/w/g;Lcom/google/gson/Gson;Le/c/c/x/a;Le/c/c/v/b;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    goto :goto_7

    :cond_8
    move-object/from16 v26, v2

    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_9

    const/16 v27, 0x1

    goto :goto_8

    :cond_9
    const/16 v27, 0x0

    :goto_8
    if-nez v1, :cond_a

    .line 50
    invoke-virtual {v12, v0}, Lcom/google/gson/Gson;->a(Le/c/c/x/a;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    :cond_a
    move-object/from16 v28, v1

    .line 51
    new-instance v3, Le/c/c/w/z/c;

    move-object/from16 v29, v0

    move-object v0, v3

    move/from16 v18, v23

    const/16 v23, 0x1

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v11, v3

    move/from16 v3, v21

    move-object/from16 v30, v4

    const/16 v31, 0x0

    move/from16 v4, v17

    move/from16 v32, v5

    move-object/from16 v5, v26

    move-object/from16 v33, v6

    move/from16 v6, v27

    move-object/from16 p2, v7

    move-object/from16 v7, v28

    move-object v12, v8

    move-object/from16 v8, p1

    move-object/from16 v27, v14

    move-object v14, v9

    move-object/from16 v9, v29

    move-object/from16 v34, v10

    move/from16 v10, v25

    invoke-direct/range {v0 .. v10}, Le/c/c/w/z/c;-><init>(Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/google/gson/TypeAdapter;Lcom/google/gson/Gson;Le/c/c/x/a;Z)V

    .line 52
    invoke-virtual {v14, v15, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$a;

    if-nez v13, :cond_b

    move-object v13, v0

    :cond_b
    add-int/lit8 v1, v18, 0x1

    move-object/from16 v11, p0

    move-object/from16 v7, p2

    move-object v8, v12

    move-object v9, v14

    move/from16 v0, v21

    move-object/from16 v15, v22

    move/from16 v3, v24

    move-object/from16 v2, v26

    move-object/from16 v14, v27

    move-object/from16 v4, v30

    move/from16 v5, v32

    move-object/from16 v6, v33

    move-object/from16 v10, v34

    const/16 v18, 0x1

    move-object/from16 v12, p1

    goto/16 :goto_5

    :cond_c
    move/from16 v32, v5

    move-object/from16 v33, v6

    move-object/from16 p2, v7

    move-object v12, v8

    move-object v14, v9

    move-object/from16 v34, v10

    move-object/from16 v22, v15

    const/16 v31, 0x0

    if-nez v13, :cond_d

    :goto_9
    add-int/lit8 v3, v20, 0x1

    move-object/from16 v11, p0

    move-object/from16 v7, p2

    move-object v8, v12

    move-object v9, v14

    move-object/from16 v13, v19

    move-object/from16 v15, v22

    move/from16 v5, v32

    move-object/from16 v6, v33

    move-object/from16 v10, v34

    const/4 v4, 0x0

    const/4 v14, 0x0

    move-object/from16 v12, p1

    goto/16 :goto_1

    .line 53
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declares multiple JSON fields named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object/from16 p2, v7

    move-object v12, v8

    move-object v14, v9

    move-object/from16 v34, v10

    move-object/from16 v19, v13

    move-object/from16 v22, v15

    .line 54
    invoke-virtual/range {v16 .. v16}, Le/c/c/x/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-static {v0, v2, v1}, Le/c/c/w/a;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Le/c/c/x/a;->get(Ljava/lang/reflect/Type;)Le/c/c/x/a;

    move-result-object v16

    .line 55
    invoke-virtual/range {v16 .. v16}, Le/c/c/x/a;->getRawType()Ljava/lang/Class;

    move-result-object v7

    move-object/from16 v11, p0

    const/4 v14, 0x0

    move-object/from16 v12, p1

    goto/16 :goto_0

    :goto_a
    move-object/from16 v0, v22

    move-object/from16 v1, v34

    .line 56
    invoke-direct {v1, v0, v14}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Le/c/c/w/s;Ljava/util/Map;)V

    return-object v1
.end method

.method public a(Ljava/lang/reflect/Field;Z)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->z:Lcom/google/gson/internal/Excluder;

    .line 2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/gson/internal/Excluder;->a(Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v0, v1, p2}, Lcom/google/gson/internal/Excluder;->a(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_d

    .line 5
    iget v1, v0, Lcom/google/gson/internal/Excluder;->y:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    goto/16 :goto_3

    .line 6
    :cond_2
    iget-wide v1, v0, Lcom/google/gson/internal/Excluder;->x:D

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    cmpl-double v7, v1, v5

    if-eqz v7, :cond_3

    const-class v1, Le/c/c/v/d;

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Le/c/c/v/d;

    const-class v2, Le/c/c/v/e;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Le/c/c/v/e;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/internal/Excluder;->a(Le/c/c/v/d;Le/c/c/v/e;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_3

    .line 8
    :cond_3
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    .line 9
    :cond_4
    iget-boolean v1, v0, Lcom/google/gson/internal/Excluder;->A:Z

    if-eqz v1, :cond_6

    .line 10
    const-class v1, Le/c/c/v/a;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Le/c/c/v/a;

    if-eqz v1, :cond_b

    if-eqz p2, :cond_5

    .line 11
    invoke-interface {v1}, Le/c/c/v/a;->serialize()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_5
    invoke-interface {v1}, Le/c/c/v/a;->deserialize()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    .line 12
    :cond_6
    iget-boolean v1, v0, Lcom/google/gson/internal/Excluder;->z:Z

    if-nez v1, :cond_7

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/internal/Excluder;->c(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    .line 13
    :cond_7
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/internal/Excluder;->b(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    if-eqz p2, :cond_9

    .line 14
    iget-object p2, v0, Lcom/google/gson/internal/Excluder;->B:Ljava/util/List;

    goto :goto_2

    :cond_9
    iget-object p2, v0, Lcom/google/gson/internal/Excluder;->C:Ljava/util/List;

    .line 15
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 16
    new-instance v0, Le/c/c/b;

    invoke-direct {v0, p1}, Le/c/c/b;-><init>(Ljava/lang/reflect/Field;)V

    .line 17
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/c/c/a;

    .line 18
    invoke-interface {p2, v0}, Le/c/c/a;->a(Le/c/c/b;)Z

    move-result p2

    if-eqz p2, :cond_a

    :cond_b
    :goto_3
    const/4 p1, 0x1

    goto :goto_4

    :cond_c
    const/4 p1, 0x0

    :goto_4
    if-nez p1, :cond_d

    goto :goto_5

    :cond_d
    const/4 v3, 0x0

    :goto_5
    return v3
.end method
