.class public abstract Li/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Li/a/a/c<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Li/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public b:[Li/a/a/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Li/a/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;Li/a/a/i;)Li/a/a/c;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;",
            "Li/a/a/i;",
            ")",
            "Li/a/a/c<",
            "TP;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 9
    const-class v1, Ljava/lang/Object;

    sget-object v2, Li/a/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li/a/a/c;

    if-eqz v2, :cond_0

    return-object v2

    .line 10
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_1

    .line 11
    sget-object v3, Li/a/a/b;->a:Li/a/a/b;

    goto :goto_0

    :cond_1
    move-object/from16 v3, p1

    :goto_0
    move-object v4, v0

    :goto_1
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v4, v1, :cond_2a

    .line 12
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v2, v2, [Li/a/a/a;

    invoke-interface {v3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Li/a/a/a;

    .line 13
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.util."

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v7, "AccAccess"

    if-eqz v4, :cond_2

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "net.minidev.asm."

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 16
    :cond_2
    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17
    :goto_2
    new-instance v4, Li/a/a/h;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v4, v7}, Li/a/a/h;-><init>(Ljava/lang/ClassLoader;)V

    const/4 v7, 0x0

    .line 18
    :try_start_0
    invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    move-object v9, v0

    :goto_3
    if-eqz v9, :cond_5

    .line 20
    invoke-virtual {v9, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_5

    .line 21
    :cond_3
    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 22
    invoke-virtual {v9}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_4
    if-lt v12, v11, :cond_4

    .line 23
    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    goto :goto_3

    .line 24
    :cond_4
    aget-object v13, v10, v12

    .line 25
    invoke-virtual {v8, v13}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 26
    :cond_5
    :goto_5
    invoke-virtual {v8, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    if-nez v7, :cond_28

    .line 27
    new-instance v9, Li/a/a/d;

    invoke-direct {v9, v0, v2, v4}, Li/a/a/d;-><init>(Ljava/lang/Class;[Li/a/a/a;Li/a/a/h;)V

    .line 28
    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1f

    .line 29
    new-instance v1, Lk/e/a/g;

    invoke-direct {v1, v5}, Lk/e/a/g;-><init>(I)V

    .line 30
    iget-object v4, v9, Li/a/a/d;->a:[Li/a/a/a;

    array-length v4, v4

    const/16 v7, 0xa

    if-le v4, v7, :cond_6

    const/4 v4, 0x1

    goto :goto_7

    :cond_6
    const/4 v4, 0x0

    .line 31
    :goto_7
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "Lnet/minidev/asm/BeansAccess<L"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v9, Li/a/a/d;->f:Ljava/lang/String;

    const-string v11, ";>;"

    invoke-static {v7, v10, v11}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v11, 0x32

    const/16 v12, 0x21

    .line 32
    iget-object v13, v9, Li/a/a/d;->e:Ljava/lang/String;

    sget-object v15, Li/a/a/d;->i:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v10, v1

    move-object/from16 v16, v7

    invoke-virtual/range {v10 .. v16}, Lk/e/a/g;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v11, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v12, "<init>"

    const-string v13, "()V"

    .line 33
    invoke-virtual/range {v10 .. v15}, Lk/e/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lk/e/a/s;

    move-result-object v10

    const/16 v11, 0x19

    .line 34
    invoke-virtual {v10, v11, v6}, Lk/e/a/s;->d(II)V

    .line 35
    sget-object v11, Li/a/a/d;->i:Ljava/lang/String;

    const-string v15, "()V"

    const-string v14, "<init>"

    const/16 v12, 0xb7

    invoke-virtual {v10, v12, v11, v14, v15}, Lk/e/a/s;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0xb1

    .line 36
    invoke-virtual {v10, v11}, Lk/e/a/s;->a(I)V

    .line 37
    invoke-virtual {v10, v5, v5}, Lk/e/a/s;->c(II)V

    const/4 v11, 0x1

    const/16 v16, 0x0

    const-string v12, "set"

    const-string v13, "(Ljava/lang/Object;ILjava/lang/Object;)V"

    move-object v10, v1

    move-object/from16 v17, v14

    move-object v14, v7

    move-object v7, v15

    move-object/from16 v15, v16

    .line 38
    invoke-virtual/range {v10 .. v15}, Lk/e/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lk/e/a/s;

    move-result-object v10

    .line 39
    iget-object v11, v9, Li/a/a/d;->a:[Li/a/a/a;

    array-length v12, v11

    const/16 v13, 0x15

    const/16 v14, 0xe

    const/4 v15, 0x2

    if-eqz v12, :cond_c

    .line 40
    array-length v12, v11

    if-le v12, v14, :cond_a

    .line 41
    invoke-virtual {v10, v13, v15}, Lk/e/a/s;->d(II)V

    .line 42
    iget-object v11, v9, Li/a/a/d;->a:[Li/a/a/a;

    array-length v11, v11

    invoke-static {v11}, Le/c/a/a/b/l/c;->c(I)[Lk/e/a/q;

    move-result-object v12

    .line 43
    new-instance v13, Lk/e/a/q;

    invoke-direct {v13}, Lk/e/a/q;-><init>()V

    .line 44
    array-length v11, v12

    sub-int/2addr v11, v5

    invoke-virtual {v10, v6, v11, v13, v12}, Lk/e/a/s;->a(IILk/e/a/q;[Lk/e/a/q;)V

    .line 45
    iget-object v5, v9, Li/a/a/d;->a:[Li/a/a/a;

    array-length v14, v5

    const/4 v11, 0x0

    :goto_8
    if-lt v6, v14, :cond_7

    .line 46
    invoke-virtual {v10, v13}, Lk/e/a/s;->a(Lk/e/a/q;)V

    goto :goto_c

    .line 47
    :cond_7
    aget-object v15, v5, v6

    add-int/lit8 v16, v11, 0x1

    .line 48
    aget-object v11, v12, v11

    invoke-virtual {v10, v11}, Lk/e/a/s;->a(Lk/e/a/q;)V

    .line 49
    iget-object v11, v15, Li/a/a/a;->a:Ljava/lang/reflect/Field;

    if-nez v11, :cond_8

    iget-object v11, v15, Li/a/a/a;->c:Ljava/lang/reflect/Method;

    if-nez v11, :cond_8

    const/4 v11, 0x0

    goto :goto_9

    :cond_8
    const/4 v11, 0x1

    :goto_9
    if-nez v11, :cond_9

    const/16 v11, 0xb1

    .line 50
    invoke-virtual {v10, v11}, Lk/e/a/s;->a(I)V

    goto :goto_a

    .line 51
    :cond_9
    invoke-virtual {v9, v10, v15}, Li/a/a/d;->a(Lk/e/a/s;Li/a/a/a;)V

    :goto_a
    add-int/lit8 v6, v6, 0x1

    move/from16 v11, v16

    goto :goto_8

    .line 52
    :cond_a
    array-length v5, v11

    invoke-static {v5}, Le/c/a/a/b/l/c;->c(I)[Lk/e/a/q;

    move-result-object v5

    .line 53
    iget-object v6, v9, Li/a/a/d;->a:[Li/a/a/a;

    array-length v11, v6

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_b
    if-lt v12, v11, :cond_b

    goto :goto_c

    :cond_b
    aget-object v14, v6, v12

    .line 54
    aget-object v15, v5, v13

    move-object/from16 v16, v6

    const/4 v6, 0x2

    invoke-virtual {v9, v10, v6, v13, v15}, Li/a/a/d;->a(Lk/e/a/s;IILk/e/a/q;)V

    .line 55
    invoke-virtual {v9, v10, v14}, Li/a/a/d;->a(Lk/e/a/s;Li/a/a/a;)V

    .line 56
    aget-object v6, v5, v13

    invoke-virtual {v10, v6}, Lk/e/a/s;->a(Lk/e/a/q;)V

    const/16 v19, 0x3

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v10

    .line 57
    invoke-virtual/range {v18 .. v23}, Lk/e/a/s;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, v16

    goto :goto_b

    .line 58
    :cond_c
    :goto_c
    iget-object v5, v9, Li/a/a/d;->h:Ljava/lang/Class;

    if-eqz v5, :cond_d

    .line 59
    invoke-virtual {v9, v10, v5}, Li/a/a/d;->a(Lk/e/a/s;Ljava/lang/Class;)V

    goto :goto_d

    :cond_d
    const/16 v5, 0xb1

    .line 60
    invoke-virtual {v10, v5}, Lk/e/a/s;->a(I)V

    :goto_d
    const/4 v5, 0x0

    .line 61
    invoke-virtual {v10, v5, v5}, Lk/e/a/s;->c(II)V

    const/4 v11, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v12, "get"

    const-string v13, "(Ljava/lang/Object;I)Ljava/lang/Object;"

    const/16 v5, 0xe

    const/16 v6, 0x15

    move-object v10, v1

    .line 62
    invoke-virtual/range {v10 .. v15}, Lk/e/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lk/e/a/s;

    move-result-object v10

    .line 63
    iget-object v11, v9, Li/a/a/d;->a:[Li/a/a/a;

    array-length v12, v11

    if-nez v12, :cond_e

    const/16 v19, 0x3

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v10

    .line 64
    invoke-virtual/range {v18 .. v23}, Lk/e/a/s;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 65
    :cond_e
    array-length v12, v11

    if-le v12, v5, :cond_13

    const/4 v5, 0x2

    .line 66
    invoke-virtual {v10, v6, v5}, Lk/e/a/s;->d(II)V

    .line 67
    iget-object v5, v9, Li/a/a/d;->a:[Li/a/a/a;

    array-length v5, v5

    invoke-static {v5}, Le/c/a/a/b/l/c;->c(I)[Lk/e/a/q;

    move-result-object v5

    .line 68
    new-instance v6, Lk/e/a/q;

    invoke-direct {v6}, Lk/e/a/q;-><init>()V

    .line 69
    array-length v11, v5

    add-int/lit8 v11, v11, -0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v11, v6, v5}, Lk/e/a/s;->a(IILk/e/a/q;[Lk/e/a/q;)V

    .line 70
    iget-object v12, v9, Li/a/a/d;->a:[Li/a/a/a;

    array-length v13, v12

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_e
    if-lt v11, v13, :cond_f

    .line 71
    invoke-virtual {v10, v6}, Lk/e/a/s;->a(Lk/e/a/q;)V

    const/16 v19, 0x3

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v10

    .line 72
    invoke-virtual/range {v18 .. v23}, Lk/e/a/s;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 73
    :cond_f
    aget-object v15, v12, v11

    add-int/lit8 v16, v14, 0x1

    .line 74
    aget-object v14, v5, v14

    invoke-virtual {v10, v14}, Lk/e/a/s;->a(Lk/e/a/q;)V

    const/16 v19, 0x3

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v10

    .line 75
    invoke-virtual/range {v18 .. v23}, Lk/e/a/s;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 76
    iget-object v14, v15, Li/a/a/a;->a:Ljava/lang/reflect/Field;

    if-nez v14, :cond_10

    iget-object v14, v15, Li/a/a/a;->c:Ljava/lang/reflect/Method;

    if-nez v14, :cond_10

    const/4 v14, 0x0

    goto :goto_f

    :cond_10
    const/4 v14, 0x1

    :goto_f
    if-nez v14, :cond_11

    const/4 v14, 0x1

    .line 77
    invoke-virtual {v10, v14}, Lk/e/a/s;->a(I)V

    const/16 v14, 0xb0

    .line 78
    invoke-virtual {v10, v14}, Lk/e/a/s;->a(I)V

    move-object/from16 p1, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v12

    goto :goto_11

    :cond_11
    const/16 v14, 0x19

    move-object/from16 p1, v5

    const/4 v5, 0x1

    .line 79
    invoke-virtual {v10, v14, v5}, Lk/e/a/s;->d(II)V

    .line 80
    iget-object v5, v9, Li/a/a/d;->f:Ljava/lang/String;

    const/16 v14, 0xc0

    invoke-virtual {v10, v14, v5}, Lk/e/a/s;->a(ILjava/lang/String;)V

    .line 81
    iget-object v5, v15, Li/a/a/a;->e:Ljava/lang/Class;

    .line 82
    invoke-static {v5}, Lk/e/a/y;->b(Ljava/lang/Class;)Lk/e/a/y;

    move-result-object v5

    .line 83
    invoke-virtual {v15}, Li/a/a/a;->a()Z

    move-result v14

    if-eqz v14, :cond_12

    .line 84
    iget-object v14, v9, Li/a/a/d;->f:Ljava/lang/String;

    .line 85
    iget-object v15, v15, Li/a/a/a;->f:Ljava/lang/String;

    move-object/from16 v18, v6

    .line 86
    invoke-virtual {v5}, Lk/e/a/y;->a()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v19, v12

    const/16 v12, 0xb4

    invoke-virtual {v10, v12, v14, v15, v6}, Lk/e/a/s;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_12
    move-object/from16 v18, v6

    move-object/from16 v19, v12

    .line 87
    iget-object v6, v15, Li/a/a/a;->c:Ljava/lang/reflect/Method;

    invoke-static {v6}, Lk/e/a/y;->a(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v6

    .line 88
    iget-object v12, v9, Li/a/a/d;->f:Ljava/lang/String;

    iget-object v14, v15, Li/a/a/a;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xb6

    invoke-virtual {v10, v15, v12, v14, v6}, Lk/e/a/s;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_10
    invoke-static {v10, v5}, Le/c/a/a/b/l/c;->a(Lk/e/a/s;Lk/e/a/y;)V

    const/16 v5, 0xb0

    .line 90
    invoke-virtual {v10, v5}, Lk/e/a/s;->a(I)V

    :goto_11
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v5, p1

    move/from16 v14, v16

    move-object/from16 v6, v18

    move-object/from16 v12, v19

    goto/16 :goto_e

    .line 91
    :cond_13
    array-length v5, v11

    invoke-static {v5}, Le/c/a/a/b/l/c;->c(I)[Lk/e/a/q;

    move-result-object v5

    .line 92
    iget-object v6, v9, Li/a/a/d;->a:[Li/a/a/a;

    array-length v11, v6

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_12
    if-lt v12, v11, :cond_1c

    .line 93
    :goto_13
    iget-object v5, v9, Li/a/a/d;->h:Ljava/lang/Class;

    if-eqz v5, :cond_14

    .line 94
    invoke-virtual {v9, v10, v5}, Li/a/a/d;->a(Lk/e/a/s;Ljava/lang/Class;)V

    goto :goto_14

    :cond_14
    const/4 v5, 0x1

    .line 95
    invoke-virtual {v10, v5}, Lk/e/a/s;->a(I)V

    const/16 v5, 0xb0

    .line 96
    invoke-virtual {v10, v5}, Lk/e/a/s;->a(I)V

    :goto_14
    const/4 v5, 0x0

    .line 97
    invoke-virtual {v10, v5, v5}, Lk/e/a/s;->c(II)V

    const-string v5, "(Ljava/lang/Object;)Z"

    const-string v6, "equals"

    const-string v15, "java/lang/String"

    if-nez v4, :cond_17

    const/4 v11, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x0

    const-string v12, "set"

    const-string v13, "(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V"

    move-object v10, v1

    move-object/from16 p1, v3

    move-object v3, v15

    move-object/from16 v15, v16

    .line 98
    invoke-virtual/range {v10 .. v15}, Lk/e/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lk/e/a/s;

    move-result-object v10

    .line 99
    iget-object v11, v9, Li/a/a/d;->a:[Li/a/a/a;

    array-length v11, v11

    invoke-static {v11}, Le/c/a/a/b/l/c;->c(I)[Lk/e/a/q;

    move-result-object v11

    .line 100
    iget-object v12, v9, Li/a/a/d;->a:[Li/a/a/a;

    array-length v13, v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_15
    if-lt v14, v13, :cond_16

    .line 101
    iget-object v11, v9, Li/a/a/d;->h:Ljava/lang/Class;

    if-eqz v11, :cond_15

    .line 102
    invoke-virtual {v9, v10, v11}, Li/a/a/d;->b(Lk/e/a/s;Ljava/lang/Class;)V

    goto :goto_16

    :cond_15
    const/16 v11, 0xb1

    .line 103
    invoke-virtual {v10, v11}, Lk/e/a/s;->a(I)V

    :goto_16
    const/4 v11, 0x0

    .line 104
    invoke-virtual {v10, v11, v11}, Lk/e/a/s;->c(II)V

    move-object/from16 v25, v8

    goto :goto_17

    :cond_16
    move/from16 v16, v13

    .line 105
    aget-object v13, v12, v14

    move-object/from16 v24, v12

    const/16 v12, 0x19

    move-object/from16 v25, v8

    const/4 v8, 0x2

    .line 106
    invoke-virtual {v10, v12, v8}, Lk/e/a/s;->d(II)V

    .line 107
    iget-object v8, v13, Li/a/a/a;->f:Ljava/lang/String;

    invoke-virtual {v10, v8}, Lk/e/a/s;->a(Ljava/lang/Object;)V

    const/16 v8, 0xb6

    .line 108
    invoke-virtual {v10, v8, v3, v6, v5}, Lk/e/a/s;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    aget-object v8, v11, v15

    const/16 v12, 0x99

    invoke-virtual {v10, v12, v8}, Lk/e/a/s;->a(ILk/e/a/q;)V

    .line 110
    invoke-virtual {v9, v10, v13}, Li/a/a/d;->a(Lk/e/a/s;Li/a/a/a;)V

    .line 111
    aget-object v8, v11, v15

    invoke-virtual {v10, v8}, Lk/e/a/s;->a(Lk/e/a/q;)V

    const/16 v19, 0x3

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v10

    .line 112
    invoke-virtual/range {v18 .. v23}, Lk/e/a/s;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move/from16 v13, v16

    move-object/from16 v12, v24

    move-object/from16 v8, v25

    goto :goto_15

    :cond_17
    move-object/from16 p1, v3

    move-object/from16 v25, v8

    move-object v3, v15

    :goto_17
    if-nez v4, :cond_1b

    const/4 v11, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v12, "get"

    const-string v13, "(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;"

    move-object v10, v1

    .line 113
    invoke-virtual/range {v10 .. v15}, Lk/e/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lk/e/a/s;

    move-result-object v4

    .line 114
    iget-object v8, v9, Li/a/a/d;->a:[Li/a/a/a;

    array-length v8, v8

    invoke-static {v8}, Le/c/a/a/b/l/c;->c(I)[Lk/e/a/q;

    move-result-object v8

    .line 115
    iget-object v10, v9, Li/a/a/d;->a:[Li/a/a/a;

    array-length v11, v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_18
    if-lt v12, v11, :cond_19

    .line 116
    iget-object v3, v9, Li/a/a/d;->h:Ljava/lang/Class;

    if-eqz v3, :cond_18

    .line 117
    invoke-virtual {v9, v4, v3}, Li/a/a/d;->b(Lk/e/a/s;Ljava/lang/Class;)V

    goto :goto_19

    :cond_18
    const/4 v3, 0x1

    .line 118
    invoke-virtual {v4, v3}, Lk/e/a/s;->a(I)V

    const/16 v3, 0xb0

    .line 119
    invoke-virtual {v4, v3}, Lk/e/a/s;->a(I)V

    :goto_19
    const/4 v3, 0x0

    .line 120
    invoke-virtual {v4, v3, v3}, Lk/e/a/s;->c(II)V

    goto/16 :goto_1b

    .line 121
    :cond_19
    aget-object v14, v10, v12

    const/4 v15, 0x2

    move-object/from16 v16, v10

    const/16 v10, 0x19

    .line 122
    invoke-virtual {v4, v10, v15}, Lk/e/a/s;->d(II)V

    .line 123
    iget-object v15, v14, Li/a/a/a;->f:Ljava/lang/String;

    invoke-virtual {v4, v15}, Lk/e/a/s;->a(Ljava/lang/Object;)V

    const/16 v15, 0xb6

    .line 124
    invoke-virtual {v4, v15, v3, v6, v5}, Lk/e/a/s;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    aget-object v15, v8, v13

    const/16 v10, 0x99

    invoke-virtual {v4, v10, v15}, Lk/e/a/s;->a(ILk/e/a/q;)V

    const/4 v10, 0x1

    const/16 v15, 0x19

    .line 126
    invoke-virtual {v4, v15, v10}, Lk/e/a/s;->d(II)V

    .line 127
    iget-object v10, v9, Li/a/a/d;->f:Ljava/lang/String;

    const/16 v15, 0xc0

    invoke-virtual {v4, v15, v10}, Lk/e/a/s;->a(ILjava/lang/String;)V

    .line 128
    iget-object v10, v14, Li/a/a/a;->e:Ljava/lang/Class;

    .line 129
    invoke-static {v10}, Lk/e/a/y;->b(Ljava/lang/Class;)Lk/e/a/y;

    move-result-object v10

    .line 130
    invoke-virtual {v14}, Li/a/a/a;->a()Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 131
    iget-object v15, v9, Li/a/a/d;->f:Ljava/lang/String;

    .line 132
    iget-object v14, v14, Li/a/a/a;->f:Ljava/lang/String;

    move-object/from16 v24, v3

    .line 133
    invoke-virtual {v10}, Lk/e/a/y;->a()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v26, v5

    const/16 v5, 0xb4

    invoke-virtual {v4, v5, v15, v14, v3}, Lk/e/a/s;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :cond_1a
    move-object/from16 v24, v3

    move-object/from16 v26, v5

    .line 134
    iget-object v3, v14, Li/a/a/a;->c:Ljava/lang/reflect/Method;

    invoke-static {v3}, Lk/e/a/y;->a(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v3

    .line 135
    iget-object v5, v9, Li/a/a/d;->f:Ljava/lang/String;

    iget-object v14, v14, Li/a/a/a;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xb6

    invoke-virtual {v4, v15, v5, v14, v3}, Lk/e/a/s;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_1a
    invoke-static {v4, v10}, Le/c/a/a/b/l/c;->a(Lk/e/a/s;Lk/e/a/y;)V

    const/16 v3, 0xb0

    .line 137
    invoke-virtual {v4, v3}, Lk/e/a/s;->a(I)V

    .line 138
    aget-object v3, v8, v13

    invoke-virtual {v4, v3}, Lk/e/a/s;->a(Lk/e/a/q;)V

    const/16 v19, 0x3

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v4

    .line 139
    invoke-virtual/range {v18 .. v23}, Lk/e/a/s;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v10, v16

    move-object/from16 v3, v24

    move-object/from16 v5, v26

    goto/16 :goto_18

    :cond_1b
    :goto_1b
    const/16 v3, 0xb0

    const/4 v11, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v12, "newInstance"

    const-string v13, "()Ljava/lang/Object;"

    move-object v10, v1

    .line 140
    invoke-virtual/range {v10 .. v15}, Lk/e/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lk/e/a/s;

    move-result-object v4

    const/16 v5, 0xbb

    .line 141
    iget-object v6, v9, Li/a/a/d;->f:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lk/e/a/s;->a(ILjava/lang/String;)V

    const/16 v5, 0x59

    .line 142
    invoke-virtual {v4, v5}, Lk/e/a/s;->a(I)V

    .line 143
    iget-object v5, v9, Li/a/a/d;->f:Ljava/lang/String;

    const/16 v6, 0xb7

    move-object/from16 v8, v17

    invoke-virtual {v4, v6, v5, v8, v7}, Lk/e/a/s;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v4, v3}, Lk/e/a/s;->a(I)V

    const/4 v3, 0x1

    const/4 v5, 0x2

    .line 145
    invoke-virtual {v4, v5, v3}, Lk/e/a/s;->c(II)V

    .line 146
    invoke-virtual {v1}, Lk/e/a/g;->a()[B

    move-result-object v1

    .line 147
    iget-object v3, v9, Li/a/a/d;->b:Li/a/a/h;

    iget-object v4, v9, Li/a/a/d;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Li/a/a/h;->a(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object v7

    goto/16 :goto_21

    :cond_1c
    move-object/from16 p1, v3

    move-object/from16 v25, v8

    move-object/from16 v8, v17

    const/4 v14, 0x2

    .line 148
    aget-object v15, v6, v12

    .line 149
    aget-object v3, v5, v13

    invoke-virtual {v9, v10, v14, v13, v3}, Li/a/a/d;->a(Lk/e/a/s;IILk/e/a/q;)V

    const/16 v3, 0x19

    const/4 v14, 0x1

    .line 150
    invoke-virtual {v10, v3, v14}, Lk/e/a/s;->d(II)V

    .line 151
    iget-object v3, v9, Li/a/a/d;->f:Ljava/lang/String;

    const/16 v14, 0xc0

    invoke-virtual {v10, v14, v3}, Lk/e/a/s;->a(ILjava/lang/String;)V

    .line 152
    iget-object v3, v15, Li/a/a/a;->e:Ljava/lang/Class;

    .line 153
    invoke-static {v3}, Lk/e/a/y;->b(Ljava/lang/Class;)Lk/e/a/y;

    move-result-object v3

    .line 154
    invoke-virtual {v15}, Li/a/a/a;->a()Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 155
    iget-object v14, v9, Li/a/a/d;->f:Ljava/lang/String;

    .line 156
    iget-object v15, v15, Li/a/a/a;->f:Ljava/lang/String;

    move-object/from16 v16, v1

    .line 157
    invoke-virtual {v3}, Lk/e/a/y;->a()Ljava/lang/String;

    move-result-object v1

    move/from16 v17, v4

    const/16 v4, 0xb4

    invoke-virtual {v10, v4, v14, v15, v1}, Lk/e/a/s;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_1d
    move-object/from16 v16, v1

    move/from16 v17, v4

    .line 158
    iget-object v1, v15, Li/a/a/a;->c:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1e

    .line 159
    invoke-static {v1}, Lk/e/a/y;->a(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v1

    .line 160
    iget-object v4, v9, Li/a/a/d;->f:Ljava/lang/String;

    iget-object v14, v15, Li/a/a/a;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xb6

    invoke-virtual {v10, v15, v4, v14, v1}, Lk/e/a/s;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :goto_1c
    invoke-static {v10, v3}, Le/c/a/a/b/l/c;->a(Lk/e/a/s;Lk/e/a/y;)V

    const/16 v1, 0xb0

    .line 162
    invoke-virtual {v10, v1}, Lk/e/a/s;->a(I)V

    .line 163
    aget-object v1, v5, v13

    invoke-virtual {v10, v1}, Lk/e/a/s;->a(Lk/e/a/q;)V

    const/16 v19, 0x3

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v10

    .line 164
    invoke-virtual/range {v18 .. v23}, Lk/e/a/s;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, p1

    move-object/from16 v1, v16

    move/from16 v4, v17

    move-object/from16 v17, v8

    move-object/from16 v8, v25

    goto/16 :goto_12

    .line 165
    :cond_1e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no Getter for field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    iget-object v2, v15, Li/a/a/a;->f:Ljava/lang/String;

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Li/a/a/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    move-object/from16 p1, v3

    move-object/from16 v25, v8

    .line 168
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 169
    sget-object v5, Li/a/a/e;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    if-nez v3, :cond_20

    goto :goto_1e

    .line 170
    :cond_20
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_21

    :goto_1e
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v8, v25

    goto/16 :goto_6

    :cond_21
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    if-nez v5, :cond_22

    goto :goto_1d

    .line 171
    :cond_22
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1f
    if-lt v7, v6, :cond_23

    goto :goto_1d

    :cond_23
    aget-object v8, v5, v7

    .line 172
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v10

    and-int/lit8 v10, v10, 0x8

    if-nez v10, :cond_24

    goto :goto_20

    .line 173
    :cond_24
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 174
    array-length v11, v10

    const/4 v12, 0x1

    if-eq v11, v12, :cond_25

    goto :goto_20

    :cond_25
    const/4 v11, 0x0

    .line 175
    aget-object v10, v10, v11

    invoke-virtual {v10, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_26

    goto :goto_20

    .line 176
    :cond_26
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    .line 177
    sget-object v11, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_27

    goto :goto_20

    .line 178
    :cond_27
    iget-object v11, v9, Li/a/a/d;->g:Ljava/util/HashMap;

    invoke-virtual {v11, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_20
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_28
    move-object/from16 p1, v3

    move-object/from16 v25, v8

    .line 179
    :goto_21
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/a/a/c;

    .line 180
    invoke-virtual {v1, v2}, Li/a/a/c;->a([Li/a/a/a;)V

    .line 181
    sget-object v2, Li/a/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual/range {v25 .. v25}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_29

    return-object v1

    :cond_29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 183
    sget-object v3, Li/a/a/e;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-static {v1, v2}, Li/a/a/c;->a(Li/a/a/c;Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_22

    :catch_1
    move-exception v0

    .line 184
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error constructing accessor class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 185
    :cond_2a
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 186
    array-length v6, v5

    const/4 v7, 0x0

    :goto_23
    if-lt v7, v6, :cond_2b

    .line 187
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto/16 :goto_1

    .line 188
    :cond_2b
    aget-object v8, v5, v7

    .line 189
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    .line 190
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2c

    goto :goto_25

    .line 191
    :cond_2c
    new-instance v10, Li/a/a/a;

    invoke-direct {v10, v4, v8, v3}, Li/a/a/a;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Li/a/a/i;)V

    .line 192
    iget-object v8, v10, Li/a/a/a;->a:Ljava/lang/reflect/Field;

    if-nez v8, :cond_2d

    iget-object v8, v10, Li/a/a/a;->c:Ljava/lang/reflect/Method;

    if-nez v8, :cond_2d

    iget-object v8, v10, Li/a/a/a;->b:Ljava/lang/reflect/Method;

    if-nez v8, :cond_2d

    const/4 v8, 0x0

    goto :goto_24

    :cond_2d
    const/4 v8, 0x1

    :goto_24
    if-nez v8, :cond_2e

    goto :goto_25

    .line 193
    :cond_2e
    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_25
    add-int/lit8 v7, v7, 0x1

    goto :goto_23
.end method

.method public static a(Li/a/a/c;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/a/c<",
            "*>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 194
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 195
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 196
    iget-object p0, p0, Li/a/a/c;->a:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void

    .line 197
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 198
    iget-object v2, p0, Li/a/a/c;->a:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li/a/a/a;

    if-eqz v2, :cond_1

    .line 199
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public a([Li/a/a/a;)V
    .locals 6

    .line 1
    iput-object p1, p0, Li/a/a/c;->b:[Li/a/a/a;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Li/a/a/c;->a:Ljava/util/HashMap;

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-object v3, p1, v1

    add-int/lit8 v4, v2, 0x1

    .line 4
    iput v2, v3, Li/a/a/a;->d:I

    .line 5
    iget-object v2, p0, Li/a/a/c;->a:Ljava/util/HashMap;

    .line 6
    iget-object v5, v3, Li/a/a/a;->f:Ljava/lang/String;

    .line 7
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0
.end method

.method public a()[Li/a/a/a;
    .locals 1

    .line 8
    iget-object v0, p0, Li/a/a/c;->b:[Li/a/a/a;

    return-object v0
.end method
