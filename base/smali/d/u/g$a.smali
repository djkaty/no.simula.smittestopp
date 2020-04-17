.class public Ld/u/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/u/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ld/u/g;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field public d:Ljava/util/concurrent/Executor;

.field public e:Ljava/util/concurrent/Executor;

.field public f:Ld/w/a/c$c;

.field public g:Z

.field public h:Ld/u/g$c;

.field public i:Z

.field public j:Z

.field public final k:Ld/u/g$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld/u/g$a;->c:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Ld/u/g$a;->a:Ljava/lang/Class;

    .line 4
    iput-object p3, p0, Ld/u/g$a;->b:Ljava/lang/String;

    .line 5
    sget-object p1, Ld/u/g$c;->AUTOMATIC:Ld/u/g$c;

    iput-object p1, p0, Ld/u/g$a;->h:Ld/u/g$c;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Ld/u/g$a;->i:Z

    .line 7
    new-instance p1, Ld/u/g$d;

    invoke-direct {p1}, Ld/u/g$d;-><init>()V

    iput-object p1, p0, Ld/u/g$a;->k:Ld/u/g$d;

    return-void
.end method


# virtual methods
.method public a()Ld/u/g;
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ld/u/g$a;->c:Landroid/content/Context;

    if-eqz v1, :cond_c

    .line 2
    iget-object v1, v0, Ld/u/g$a;->a:Ljava/lang/Class;

    if-eqz v1, :cond_b

    .line 3
    iget-object v1, v0, Ld/u/g$a;->d:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    iget-object v1, v0, Ld/u/g$a;->e:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    .line 4
    sget-object v1, Ld/c/a/a/a;->d:Ljava/util/concurrent/Executor;

    .line 5
    iput-object v1, v0, Ld/u/g$a;->e:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Ld/u/g$a;->d:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, v0, Ld/u/g$a;->d:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_1

    iget-object v2, v0, Ld/u/g$a;->e:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_1

    .line 7
    iput-object v1, v0, Ld/u/g$a;->e:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, v0, Ld/u/g$a;->d:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_2

    iget-object v1, v0, Ld/u/g$a;->e:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_2

    .line 9
    iput-object v1, v0, Ld/u/g$a;->d:Ljava/util/concurrent/Executor;

    .line 10
    :cond_2
    :goto_0
    iget-object v1, v0, Ld/u/g$a;->f:Ld/w/a/c$c;

    if-nez v1, :cond_3

    .line 11
    new-instance v1, Ld/w/a/f/d;

    invoke-direct {v1}, Ld/w/a/f/d;-><init>()V

    iput-object v1, v0, Ld/u/g$a;->f:Ld/w/a/c$c;

    .line 12
    :cond_3
    new-instance v1, Ld/u/a;

    iget-object v3, v0, Ld/u/g$a;->c:Landroid/content/Context;

    iget-object v4, v0, Ld/u/g$a;->b:Ljava/lang/String;

    iget-object v5, v0, Ld/u/g$a;->f:Ld/w/a/c$c;

    iget-object v6, v0, Ld/u/g$a;->k:Ld/u/g$d;

    const/4 v7, 0x0

    iget-boolean v8, v0, Ld/u/g$a;->g:Z

    iget-object v2, v0, Ld/u/g$a;->h:Ld/u/g$c;

    .line 13
    invoke-virtual {v2, v3}, Ld/u/g$c;->resolve(Landroid/content/Context;)Ld/u/g$c;

    move-result-object v9

    iget-object v10, v0, Ld/u/g$a;->d:Ljava/util/concurrent/Executor;

    iget-object v11, v0, Ld/u/g$a;->e:Ljava/util/concurrent/Executor;

    const/4 v12, 0x0

    iget-boolean v13, v0, Ld/u/g$a;->i:Z

    iget-boolean v14, v0, Ld/u/g$a;->j:Z

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Ld/u/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ld/w/a/c$c;Ld/u/g$d;Ljava/util/List;ZLd/u/g$c;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;)V

    .line 14
    iget-object v2, v0, Ld/u/g$a;->a:Ljava/lang/Class;

    .line 15
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    goto :goto_1

    .line 18
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 19
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x2e

    const/16 v8, 0x5f

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_Impl"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 20
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v3, v4

    goto :goto_2

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 21
    :goto_2
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    check-cast v2, Ld/u/g;

    if-eqz v2, :cond_a

    .line 24
    move-object v3, v2

    check-cast v3, Lno/simula/corona/MeasurementDatabase_Impl;

    .line 25
    new-instance v4, Ld/u/h;

    new-instance v5, Lj/b/a/u;

    const/4 v7, 0x7

    invoke-direct {v5, v3, v7}, Lj/b/a/u;-><init>(Lno/simula/corona/MeasurementDatabase_Impl;I)V

    const-string v3, "8260d2f713a01361d6ce911d0c7159cc"

    const-string v7, "d0c844f687e96ba35d4d3a97249d2973"

    invoke-direct {v4, v1, v5, v3, v7}, Ld/u/h;-><init>(Ld/u/a;Ld/u/h$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v3, v1, Ld/u/a;->b:Landroid/content/Context;

    iget-object v5, v1, Ld/u/a;->c:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 27
    new-instance v7, Ld/w/a/c$b;

    invoke-direct {v7, v3, v5, v4}, Ld/w/a/c$b;-><init>(Landroid/content/Context;Ljava/lang/String;Ld/w/a/c$a;)V

    .line 28
    iget-object v3, v1, Ld/u/a;->a:Ld/w/a/c$c;

    invoke-interface {v3, v7}, Ld/w/a/c$c;->a(Ld/w/a/c$b;)Ld/w/a/c;

    move-result-object v3

    .line 29
    iput-object v3, v2, Ld/u/g;->c:Ld/w/a/c;

    .line 30
    instance-of v4, v3, Ld/u/j;

    if-eqz v4, :cond_6

    .line 31
    check-cast v3, Ld/u/j;

    .line 32
    iput-object v1, v3, Ld/u/j;->f:Ld/u/a;

    .line 33
    :cond_6
    iget-object v3, v1, Ld/u/a;->g:Ld/u/g$c;

    sget-object v4, Ld/u/g$c;->WRITE_AHEAD_LOGGING:Ld/u/g$c;

    if-ne v3, v4, :cond_7

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    .line 34
    :goto_3
    iget-object v3, v2, Ld/u/g;->c:Ld/w/a/c;

    invoke-interface {v3, v6}, Ld/w/a/c;->a(Z)V

    .line 35
    iget-object v3, v1, Ld/u/a;->e:Ljava/util/List;

    iput-object v3, v2, Ld/u/g;->g:Ljava/util/List;

    .line 36
    iget-object v3, v1, Ld/u/a;->h:Ljava/util/concurrent/Executor;

    iput-object v3, v2, Ld/u/g;->b:Ljava/util/concurrent/Executor;

    .line 37
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 38
    iget-boolean v3, v1, Ld/u/a;->f:Z

    iput-boolean v3, v2, Ld/u/g;->e:Z

    .line 39
    iput-boolean v6, v2, Ld/u/g;->f:Z

    .line 40
    iget-boolean v3, v1, Ld/u/a;->j:Z

    if-eqz v3, :cond_8

    .line 41
    iget-object v3, v2, Ld/u/g;->d:Ld/u/e;

    iget-object v4, v1, Ld/u/a;->b:Landroid/content/Context;

    iget-object v1, v1, Ld/u/a;->c:Ljava/lang/String;

    .line 42
    new-instance v5, Ld/u/f;

    iget-object v6, v3, Ld/u/e;->d:Ld/u/g;

    .line 43
    iget-object v6, v6, Ld/u/g;->b:Ljava/util/concurrent/Executor;

    .line 44
    invoke-direct {v5, v4, v1, v3, v6}, Ld/u/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ld/u/e;Ljava/util/concurrent/Executor;)V

    :cond_8
    return-object v2

    .line 45
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must set a non-null context to create the configuration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    const/4 v1, 0x0

    .line 46
    throw v1

    .line 47
    :catch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Failed to create an instance of "

    invoke-static {v3}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 48
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :catch_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Cannot access the constructor"

    invoke-static {v3}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 50
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :catch_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "cannot find implementation for "

    invoke-static {v3}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 52
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must provide an abstract class that extends RoomDatabase"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot provide null context for the database."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
