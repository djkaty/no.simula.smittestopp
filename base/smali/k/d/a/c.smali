.class public Lk/d/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/d/a/c$b;
    }
.end annotation


# static fields
.field public static volatile s:Lk/d/a/c;

.field public static final t:Lk/d/a/d;

.field public static final u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lk/d/a/q;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lk/d/a/c$b;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lk/d/a/h;

.field public final f:Lk/d/a/l;

.field public final g:Lk/d/a/b;

.field public final h:Lk/d/a/a;

.field public final i:Lk/d/a/p;

.field public final j:Ljava/util/concurrent/ExecutorService;

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:I

.field public final r:Lk/d/a/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk/d/a/d;

    invoke-direct {v0}, Lk/d/a/d;-><init>()V

    sput-object v0, Lk/d/a/c;->t:Lk/d/a/d;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lk/d/a/c;->u:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    sget-object v0, Lk/d/a/c;->t:Lk/d/a/d;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Lk/d/a/c$a;

    invoke-direct {v1, p0}, Lk/d/a/c$a;-><init>(Lk/d/a/c;)V

    iput-object v1, p0, Lk/d/a/c;->d:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 4
    sget-boolean v2, Lk/d/a/r/a;->b:Z

    if-eqz v2, :cond_0

    .line 5
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_0

    .line 6
    new-instance v2, Lk/d/a/r/a;

    const-string v3, "EventBus"

    invoke-direct {v2, v3}, Lk/d/a/r/a;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    new-instance v2, Lk/d/a/g$a;

    invoke-direct {v2}, Lk/d/a/g$a;-><init>()V

    .line 8
    :goto_1
    iput-object v2, p0, Lk/d/a/c;->r:Lk/d/a/g;

    .line 9
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lk/d/a/c;->a:Ljava/util/Map;

    .line 10
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lk/d/a/c;->b:Ljava/util/Map;

    .line 11
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lk/d/a/c;->c:Ljava/util/Map;

    .line 12
    sget-boolean v2, Lk/d/a/r/a;->b:Z

    if-eqz v2, :cond_2

    .line 13
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-object v2, v1

    :goto_2
    if-nez v2, :cond_1

    goto :goto_3

    .line 14
    :cond_1
    new-instance v3, Lk/d/a/h$a;

    invoke-direct {v3, v2}, Lk/d/a/h$a;-><init>(Landroid/os/Looper;)V

    goto :goto_4

    :cond_2
    :goto_3
    move-object v3, v1

    .line 15
    :goto_4
    iput-object v3, p0, Lk/d/a/c;->e:Lk/d/a/h;

    if-eqz v3, :cond_3

    .line 16
    new-instance v1, Lk/d/a/f;

    iget-object v2, v3, Lk/d/a/h$a;->a:Landroid/os/Looper;

    const/16 v3, 0xa

    invoke-direct {v1, p0, v2, v3}, Lk/d/a/f;-><init>(Lk/d/a/c;Landroid/os/Looper;I)V

    .line 17
    :cond_3
    iput-object v1, p0, Lk/d/a/c;->f:Lk/d/a/l;

    .line 18
    new-instance v1, Lk/d/a/b;

    invoke-direct {v1, p0}, Lk/d/a/b;-><init>(Lk/d/a/c;)V

    iput-object v1, p0, Lk/d/a/c;->g:Lk/d/a/b;

    .line 19
    new-instance v1, Lk/d/a/a;

    invoke-direct {v1, p0}, Lk/d/a/a;-><init>(Lk/d/a/c;)V

    iput-object v1, p0, Lk/d/a/c;->h:Lk/d/a/a;

    .line 20
    iget-object v1, v0, Lk/d/a/d;->j:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    :goto_5
    iput v1, p0, Lk/d/a/c;->q:I

    .line 21
    new-instance v1, Lk/d/a/p;

    iget-object v2, v0, Lk/d/a/d;->j:Ljava/util/List;

    iget-boolean v3, v0, Lk/d/a/d;->h:Z

    iget-boolean v4, v0, Lk/d/a/d;->g:Z

    invoke-direct {v1, v2, v3, v4}, Lk/d/a/p;-><init>(Ljava/util/List;ZZ)V

    iput-object v1, p0, Lk/d/a/c;->i:Lk/d/a/p;

    .line 22
    iget-boolean v1, v0, Lk/d/a/d;->a:Z

    iput-boolean v1, p0, Lk/d/a/c;->l:Z

    .line 23
    iget-boolean v1, v0, Lk/d/a/d;->b:Z

    iput-boolean v1, p0, Lk/d/a/c;->m:Z

    .line 24
    iget-boolean v1, v0, Lk/d/a/d;->c:Z

    iput-boolean v1, p0, Lk/d/a/c;->n:Z

    .line 25
    iget-boolean v1, v0, Lk/d/a/d;->d:Z

    iput-boolean v1, p0, Lk/d/a/c;->o:Z

    .line 26
    iget-boolean v1, v0, Lk/d/a/d;->e:Z

    iput-boolean v1, p0, Lk/d/a/c;->k:Z

    .line 27
    iget-boolean v1, v0, Lk/d/a/d;->f:Z

    iput-boolean v1, p0, Lk/d/a/c;->p:Z

    .line 28
    iget-object v0, v0, Lk/d/a/d;->i:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lk/d/a/c;->j:Ljava/util/concurrent/ExecutorService;

    return-void

    .line 29
    :cond_5
    throw v1
.end method

.method public static a(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 75
    sget-object v0, Lk/d/a/c;->u:Ljava/util/Map;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-object v1, Lk/d/a/c;->u:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v3}, Lk/d/a/c;->a(Ljava/util/List;[Ljava/lang/Class;)V

    .line 80
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 81
    :cond_0
    sget-object v2, Lk/d/a/c;->u:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Ljava/util/List;[Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 84
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 85
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lk/d/a/c;->a(Ljava/util/List;[Ljava/lang/Class;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static b()Lk/d/a/c;
    .locals 2

    .line 1
    sget-object v0, Lk/d/a/c;->s:Lk/d/a/c;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lk/d/a/c;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lk/d/a/c;->s:Lk/d/a/c;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lk/d/a/c;

    invoke-direct {v0}, Lk/d/a/c;-><init>()V

    sput-object v0, Lk/d/a/c;->s:Lk/d/a/c;

    .line 5
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 27
    iget-object v0, p0, Lk/d/a/c;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/d/a/c$b;

    .line 28
    iget-object v1, v0, Lk/d/a/c$b;->a:Ljava/util/List;

    .line 29
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-boolean p1, v0, Lk/d/a/c$b;->b:Z

    if-nez p1, :cond_2

    .line 31
    invoke-virtual {p0}, Lk/d/a/c;->a()Z

    move-result p1

    iput-boolean p1, v0, Lk/d/a/c$b;->c:Z

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, v0, Lk/d/a/c$b;->b:Z

    .line 33
    iget-boolean p1, v0, Lk/d/a/c$b;->e:Z

    if-nez p1, :cond_1

    :goto_0
    const/4 p1, 0x0

    .line 34
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 35
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lk/d/a/c;->a(Ljava/lang/Object;Lk/d/a/c$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 36
    :cond_0
    iput-boolean p1, v0, Lk/d/a/c$b;->b:Z

    .line 37
    iput-boolean p1, v0, Lk/d/a/c$b;->c:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 38
    iput-boolean p1, v0, Lk/d/a/c$b;->b:Z

    .line 39
    iput-boolean p1, v0, Lk/d/a/c$b;->c:Z

    .line 40
    throw v1

    .line 41
    :cond_1
    new-instance p1, Lk/d/a/e;

    const-string v0, "Internal error. Abort state was not reset"

    invoke-direct {p1, v0}, Lk/d/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(Ljava/lang/Object;Lk/d/a/c$b;)V
    .locals 6

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 43
    iget-boolean v1, p0, Lk/d/a/c;->p:Z

    if-eqz v1, :cond_0

    .line 44
    invoke-static {v0}, Lk/d/a/c;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 45
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 46
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 47
    invoke-virtual {p0, p1, p2, v5}, Lk/d/a/c;->a(Ljava/lang/Object;Lk/d/a/c$b;Ljava/lang/Class;)Z

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lk/d/a/c;->a(Ljava/lang/Object;Lk/d/a/c$b;Ljava/lang/Class;)Z

    move-result v4

    :cond_1
    if-nez v4, :cond_3

    .line 49
    iget-boolean p2, p0, Lk/d/a/c;->m:Z

    if-eqz p2, :cond_2

    .line 50
    iget-object p2, p0, Lk/d/a/c;->r:Lk/d/a/g;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No subscribers registered for event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lk/d/a/g;->a(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 51
    :cond_2
    iget-boolean p2, p0, Lk/d/a/c;->o:Z

    if-eqz p2, :cond_3

    const-class p2, Lk/d/a/i;

    if-eq v0, p2, :cond_3

    const-class p2, Lk/d/a/n;

    if-eq v0, p2, :cond_3

    .line 52
    new-instance p2, Lk/d/a/i;

    invoke-direct {p2, p0, p1}, Lk/d/a/i;-><init>(Lk/d/a/c;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lk/d/a/c;->a(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/Object;Lk/d/a/o;)V
    .locals 7

    .line 1
    iget-object v0, p2, Lk/d/a/o;->c:Ljava/lang/Class;

    .line 2
    new-instance v1, Lk/d/a/q;

    invoke-direct {v1, p1, p2}, Lk/d/a/q;-><init>(Ljava/lang/Object;Lk/d/a/o;)V

    .line 3
    iget-object v2, p0, Lk/d/a/c;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 5
    iget-object v3, p0, Lk/d/a/c;->a:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 7
    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-gt v4, v3, :cond_3

    if-eq v4, v3, :cond_2

    .line 8
    iget v5, p2, Lk/d/a/o;->d:I

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk/d/a/q;

    iget-object v6, v6, Lk/d/a/q;->b:Lk/d/a/o;

    iget v6, v6, Lk/d/a/o;->d:I

    if-le v5, v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 9
    :cond_2
    :goto_2
    invoke-virtual {v2, v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 10
    :cond_3
    iget-object v2, p0, Lk/d/a/c;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_4

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v3, p0, Lk/d/a/c;->b:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_4
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-boolean p1, p2, Lk/d/a/o;->e:Z

    if-eqz p1, :cond_7

    .line 15
    iget-boolean p1, p0, Lk/d/a/c;->p:Z

    if-eqz p1, :cond_6

    .line 16
    iget-object p1, p0, Lk/d/a/c;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 20
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 21
    invoke-virtual {p0}, Lk/d/a/c;->a()Z

    move-result v2

    invoke-virtual {p0, v1, p2, v2}, Lk/d/a/c;->a(Lk/d/a/q;Ljava/lang/Object;Z)V

    goto :goto_3

    .line 22
    :cond_6
    iget-object p1, p0, Lk/d/a/c;->c:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 23
    invoke-virtual {p0}, Lk/d/a/c;->a()Z

    move-result p2

    invoke-virtual {p0, v1, p1, p2}, Lk/d/a/c;->a(Lk/d/a/q;Ljava/lang/Object;Z)V

    :cond_7
    return-void

    .line 24
    :cond_8
    new-instance p2, Lk/d/a/e;

    const-string v1, "Subscriber "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already registered to event "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lk/d/a/e;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Lk/d/a/j;)V
    .locals 2

    .line 88
    iget-object v0, p1, Lk/d/a/j;->a:Ljava/lang/Object;

    .line 89
    iget-object v1, p1, Lk/d/a/j;->b:Lk/d/a/q;

    .line 90
    invoke-static {p1}, Lk/d/a/j;->a(Lk/d/a/j;)V

    .line 91
    iget-boolean p1, v1, Lk/d/a/q;->c:Z

    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p0, v1, v0}, Lk/d/a/c;->a(Lk/d/a/q;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lk/d/a/q;Ljava/lang/Object;)V
    .locals 5

    .line 93
    :try_start_0
    iget-object v0, p1, Lk/d/a/q;->b:Lk/d/a/o;

    iget-object v0, v0, Lk/d/a/o;->a:Ljava/lang/reflect/Method;

    iget-object v1, p1, Lk/d/a/q;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 94
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected exception"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 96
    instance-of v1, p2, Lk/d/a/n;

    if-eqz v1, :cond_0

    .line 97
    iget-boolean v1, p0, Lk/d/a/c;->l:Z

    if-eqz v1, :cond_2

    .line 98
    iget-object v1, p0, Lk/d/a/c;->r:Lk/d/a/g;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SubscriberExceptionEvent subscriber "

    invoke-static {v3}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object p1, p1, Lk/d/a/q;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " threw an exception"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1, v0}, Lk/d/a/g;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    check-cast p2, Lk/d/a/n;

    .line 100
    iget-object p1, p0, Lk/d/a/c;->r:Lk/d/a/g;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v1, "Initial event "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lk/d/a/n;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " caused exception in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lk/d/a/n;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p2, p2, Lk/d/a/n;->a:Ljava/lang/Throwable;

    invoke-interface {p1, v0, v1, p2}, Lk/d/a/g;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 101
    :cond_0
    iget-boolean v1, p0, Lk/d/a/c;->k:Z

    if-nez v1, :cond_3

    .line 102
    iget-boolean v1, p0, Lk/d/a/c;->l:Z

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, p0, Lk/d/a/c;->r:Lk/d/a/g;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Could not dispatch event: "

    invoke-static {v3}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to subscribing class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lk/d/a/q;->a:Ljava/lang/Object;

    .line 104
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-interface {v1, v2, v3, v0}, Lk/d/a/g;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    :cond_1
    iget-boolean v1, p0, Lk/d/a/c;->n:Z

    if-eqz v1, :cond_2

    .line 107
    new-instance v1, Lk/d/a/n;

    iget-object p1, p1, Lk/d/a/q;->a:Ljava/lang/Object;

    invoke-direct {v1, p0, v0, p2, p1}, Lk/d/a/n;-><init>(Lk/d/a/c;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    invoke-virtual {p0, v1}, Lk/d/a/c;->a(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void

    .line 109
    :cond_3
    new-instance p1, Lk/d/a/e;

    const-string p2, "Invoking subscriber failed"

    invoke-direct {p1, p2, v0}, Lk/d/a/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final a(Lk/d/a/q;Ljava/lang/Object;Z)V
    .locals 2

    .line 64
    iget-object v0, p1, Lk/d/a/q;->b:Lk/d/a/o;

    iget-object v0, v0, Lk/d/a/o;->b:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p3, 0x4

    if-ne v0, p3, :cond_0

    .line 65
    iget-object p3, p0, Lk/d/a/c;->h:Lk/d/a/a;

    invoke-virtual {p3, p1, p2}, Lk/d/a/a;->a(Lk/d/a/q;Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Unknown thread mode: "

    invoke-static {p3}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p1, p1, Lk/d/a/q;->b:Lk/d/a/o;

    iget-object p1, p1, Lk/d/a/o;->b:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    if-eqz p3, :cond_2

    .line 67
    iget-object p3, p0, Lk/d/a/c;->g:Lk/d/a/b;

    invoke-virtual {p3, p1, p2}, Lk/d/a/b;->a(Lk/d/a/q;Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0, p1, p2}, Lk/d/a/c;->a(Lk/d/a/q;Ljava/lang/Object;)V

    goto :goto_0

    .line 69
    :cond_3
    iget-object p3, p0, Lk/d/a/c;->f:Lk/d/a/l;

    if-eqz p3, :cond_4

    .line 70
    invoke-interface {p3, p1, p2}, Lk/d/a/l;->a(Lk/d/a/q;Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_4
    invoke-virtual {p0, p1, p2}, Lk/d/a/c;->a(Lk/d/a/q;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_6

    .line 72
    invoke-virtual {p0, p1, p2}, Lk/d/a/c;->a(Lk/d/a/q;Ljava/lang/Object;)V

    goto :goto_0

    .line 73
    :cond_6
    iget-object p3, p0, Lk/d/a/c;->f:Lk/d/a/l;

    invoke-interface {p3, p1, p2}, Lk/d/a/l;->a(Lk/d/a/q;Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_7
    invoke-virtual {p0, p1, p2}, Lk/d/a/c;->a(Lk/d/a/q;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final a()Z
    .locals 4

    .line 25
    iget-object v0, p0, Lk/d/a/c;->e:Lk/d/a/h;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    check-cast v0, Lk/d/a/h$a;

    .line 26
    iget-object v0, v0, Lk/d/a/h$a;->a:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final a(Ljava/lang/Object;Lk/d/a/c$b;Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lk/d/a/c$b;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lk/d/a/c;->a:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 55
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 56
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 57
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/d/a/q;

    .line 58
    iput-object p1, p2, Lk/d/a/c$b;->d:Ljava/lang/Object;

    .line 59
    :try_start_1
    iget-boolean v2, p2, Lk/d/a/c$b;->c:Z

    invoke-virtual {p0, v1, p1, v2}, Lk/d/a/c;->a(Lk/d/a/q;Ljava/lang/Object;Z)V

    .line 60
    iget-boolean v1, p2, Lk/d/a/c$b;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    iput-boolean v0, p2, Lk/d/a/c$b;->e:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-boolean v0, p2, Lk/d/a/c$b;->e:Z

    .line 62
    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0

    :catchall_1
    move-exception p1

    .line 63
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public b(Ljava/lang/Object;)V
    .locals 11

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lk/d/a/c;->i:Lk/d/a/p;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 8
    sget-object v3, Lk/d/a/p;->d:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    goto/16 :goto_5

    .line 9
    :cond_0
    iget-boolean v3, v1, Lk/d/a/p;->c:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {v1}, Lk/d/a/p;->a()Lk/d/a/p$a;

    move-result-object v3

    .line 11
    iput-object v0, v3, Lk/d/a/p$a;->e:Ljava/lang/Class;

    .line 12
    iput-boolean v4, v3, Lk/d/a/p$a;->f:Z

    .line 13
    iput-object v2, v3, Lk/d/a/p$a;->g:Lk/d/a/s/a;

    .line 14
    :goto_0
    iget-object v2, v3, Lk/d/a/p$a;->e:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 15
    invoke-virtual {v1, v3}, Lk/d/a/p;->a(Lk/d/a/p$a;)V

    .line 16
    invoke-virtual {v3}, Lk/d/a/p$a;->a()V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v1, v3}, Lk/d/a/p;->b(Lk/d/a/p$a;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_4

    .line 18
    :cond_2
    invoke-virtual {v1}, Lk/d/a/p;->a()Lk/d/a/p$a;

    move-result-object v3

    .line 19
    iput-object v0, v3, Lk/d/a/p$a;->e:Ljava/lang/Class;

    .line 20
    iput-boolean v4, v3, Lk/d/a/p$a;->f:Z

    .line 21
    iput-object v2, v3, Lk/d/a/p$a;->g:Lk/d/a/s/a;

    .line 22
    :goto_1
    iget-object v5, v3, Lk/d/a/p$a;->e:Ljava/lang/Class;

    if-eqz v5, :cond_9

    .line 23
    iget-object v5, v3, Lk/d/a/p$a;->g:Lk/d/a/s/a;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Lk/d/a/s/a;->c()Lk/d/a/s/a;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 24
    iget-object v5, v3, Lk/d/a/p$a;->g:Lk/d/a/s/a;

    invoke-interface {v5}, Lk/d/a/s/a;->c()Lk/d/a/s/a;

    move-result-object v5

    .line 25
    iget-object v6, v3, Lk/d/a/p$a;->e:Ljava/lang/Class;

    invoke-interface {v5}, Lk/d/a/s/a;->b()Ljava/lang/Class;

    move-result-object v7

    if-ne v6, v7, :cond_3

    goto :goto_2

    .line 26
    :cond_3
    iget-object v5, v1, Lk/d/a/p;->a:Ljava/util/List;

    if-eqz v5, :cond_5

    .line 27
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk/d/a/s/b;

    .line 28
    iget-object v7, v3, Lk/d/a/p$a;->e:Ljava/lang/Class;

    invoke-interface {v6, v7}, Lk/d/a/s/b;->a(Ljava/lang/Class;)Lk/d/a/s/a;

    move-result-object v6

    if-eqz v6, :cond_4

    move-object v5, v6

    goto :goto_2

    :cond_5
    move-object v5, v2

    .line 29
    :goto_2
    iput-object v5, v3, Lk/d/a/p$a;->g:Lk/d/a/s/a;

    if-eqz v5, :cond_7

    .line 30
    invoke-interface {v5}, Lk/d/a/s/a;->a()[Lk/d/a/o;

    move-result-object v5

    .line 31
    array-length v6, v5

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_8

    aget-object v8, v5, v7

    .line 32
    iget-object v9, v8, Lk/d/a/o;->a:Ljava/lang/reflect/Method;

    iget-object v10, v8, Lk/d/a/o;->c:Ljava/lang/Class;

    invoke-virtual {v3, v9, v10}, Lk/d/a/p$a;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 33
    iget-object v9, v3, Lk/d/a/p$a;->a:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 34
    :cond_7
    invoke-virtual {v1, v3}, Lk/d/a/p;->a(Lk/d/a/p$a;)V

    .line 35
    :cond_8
    invoke-virtual {v3}, Lk/d/a/p$a;->a()V

    goto :goto_1

    .line 36
    :cond_9
    invoke-virtual {v1, v3}, Lk/d/a/p;->b(Lk/d/a/p$a;)Ljava/util/List;

    move-result-object v1

    :goto_4
    move-object v3, v1

    .line 37
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 38
    sget-object v1, Lk/d/a/p;->d:Ljava/util/Map;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :goto_5
    monitor-enter p0

    .line 40
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/d/a/o;

    .line 41
    invoke-virtual {p0, p1, v1}, Lk/d/a/c;->a(Ljava/lang/Object;Lk/d/a/o;)V

    goto :goto_6

    .line 42
    :cond_a
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 43
    :cond_b
    new-instance p1, Lk/d/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " and its super classes have no public methods with the @Subscribe annotation"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lk/d/a/e;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_c
    throw v2
.end method

.method public declared-synchronized c(Ljava/lang/Object;)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk/d/a/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 3
    iget-object v2, p0, Lk/d/a/c;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 5
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk/d/a/q;

    .line 6
    iget-object v6, v5, Lk/d/a/q;->a:Ljava/lang/Object;

    if-ne v6, p1, :cond_1

    .line 7
    iput-boolean v3, v5, Lk/d/a/q;->c:Z

    .line 8
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lk/d/a/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 10
    :cond_3
    iget-object v0, p0, Lk/d/a/c;->r:Lk/d/a/g;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscriber to unregister was not registered before: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lk/d/a/g;->a(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "EventBus[indexCount="

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lk/d/a/c;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventInheritance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lk/d/a/c;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
