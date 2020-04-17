.class public abstract Lg/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/c/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/c/l/d;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/c/l/c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lg/c/b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lg/c/l/h$a;

.field public final g:Lg/c/l/c$a;

.field public final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public i:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/c/a;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/c/a;->b:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/c/a;->c:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/c/a;->d:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lg/c/b;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lg/c/a;->e:Ljava/util/Map;

    .line 7
    new-instance v0, Lg/c/l/h$a;

    invoke-direct {v0}, Lg/c/l/h$a;-><init>()V

    iput-object v0, p0, Lg/c/a;->f:Lg/c/l/h$a;

    .line 8
    new-instance v0, Lg/c/l/c$a;

    invoke-direct {v0}, Lg/c/l/c$a;-><init>()V

    iput-object v0, p0, Lg/c/a;->g:Lg/c/l/c$a;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lg/c/a;->i:Z

    .line 10
    iput-object p1, p0, Lg/c/a;->h:Ljava/lang/Class;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 28
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 29
    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/c/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2
    iget-object v0, p0, Lg/c/a;->c:Ljava/util/List;

    new-instance v1, Lg/c/l/e;

    iget-object v2, p0, Lg/c/a;->f:Lg/c/l/h$a;

    .line 3
    new-instance v3, Lg/c/l/g;

    iget-object v4, v2, Lg/c/l/h$a;->a:Ljava/util/Map;

    iget-object v2, v2, Lg/c/l/h$a;->b:Ljava/util/Map;

    invoke-direct {v3, v4, v2}, Lg/c/l/g;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 4
    invoke-direct {v1, v3}, Lg/c/l/e;-><init>(Lg/c/l/h;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lg/c/a;->e:Ljava/util/Map;

    sget-object v1, Lg/c/b;->TypeMapper:Lg/c/b;

    iget-object v3, p0, Lg/c/a;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    new-instance v3, Lg/c/l/b;

    iget-object v5, p0, Lg/c/a;->c:Ljava/util/List;

    invoke-direct {v3, v5}, Lg/c/l/b;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lg/c/a;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/c/l/d;

    :goto_0
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lg/c/a;->d:Ljava/util/List;

    iget-object v1, p0, Lg/c/a;->g:Lg/c/l/c$a;

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 7
    new-instance v5, Lg/c/l/f;

    iget-object v1, v1, Lg/c/l/c$a;->a:Ljava/util/Map;

    invoke-direct {v5, v1}, Lg/c/l/f;-><init>(Ljava/util/Map;)V

    .line 8
    invoke-interface {v0, v2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lg/c/a;->e:Ljava/util/Map;

    sget-object v1, Lg/c/b;->FunctionMapper:Lg/c/b;

    iget-object v5, p0, Lg/c/a;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_1

    new-instance v2, Lg/c/l/a;

    iget-object v4, p0, Lg/c/a;->d:Ljava/util/List;

    invoke-direct {v2, v4}, Lg/c/l/a;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lg/c/a;->d:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/c/l/c;

    :goto_1
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :try_start_0
    iget-object v0, p0, Lg/c/a;->h:Ljava/lang/Class;

    iget-object v1, p0, Lg/c/a;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lg/c/a;->a:Ljava/util/List;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    sget-object v4, Lg/c/a$b;->a:Ljava/util/List;

    .line 13
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 15
    iget-object v4, p0, Lg/c/a;->e:Ljava/util/Map;

    .line 16
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 17
    invoke-virtual {p0, v0, v1, v2, v4}, Lg/c/a;->a(Ljava/lang/Class;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    throw v3

    :catch_0
    move-exception v0

    .line 18
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/RuntimeException;

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 19
    :goto_2
    iget-boolean v1, p0, Lg/c/a;->i:Z

    if-nez v1, :cond_3

    .line 20
    invoke-virtual {p0, v0}, Lg/c/a;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 21
    :cond_3
    throw v0

    :catch_1
    move-exception v0

    .line 22
    iget-boolean v1, p0, Lg/c/a;->i:Z

    if-nez v1, :cond_4

    .line 23
    invoke-virtual {p0, v0}, Lg/c/a;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 24
    :cond_4
    throw v0

    .line 25
    :cond_5
    throw v3

    .line 26
    :cond_6
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    const-string v1, "no library names specified"

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract a(Ljava/lang/Class;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Lg/c/b;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TT;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lg/c/a;->h:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    iget-object v3, p0, Lg/c/a;->h:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-class v4, Lg/c/m/e;

    aput-object v4, v2, v3

    new-instance v3, Lg/c/a$a;

    invoke-direct {v3, p0, p1}, Lg/c/a$a;-><init>(Lg/c/a;Ljava/lang/Throwable;)V

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
