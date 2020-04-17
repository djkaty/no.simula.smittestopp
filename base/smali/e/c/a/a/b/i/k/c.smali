.class public Le/c/a/a/b/i/k/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/a/a/b/i/k/c$b;,
        Le/c/a/a/b/i/k/c$c;,
        Le/c/a/a/b/i/k/c$a;
    }
.end annotation


# static fields
.field public static final n:Lcom/google/android/gms/common/api/Status;

.field public static final o:Lcom/google/android/gms/common/api/Status;

.field public static final p:Ljava/lang/Object;

.field public static q:Le/c/a/a/b/i/k/c;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public final d:Landroid/content/Context;

.field public final e:Le/c/a/a/b/d;

.field public final f:Le/c/a/a/b/j/j;

.field public final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Le/c/a/a/b/i/k/h0<",
            "*>;",
            "Le/c/a/a/b/i/k/c$a<",
            "*>;>;"
        }
    .end annotation
.end field

.field public j:Le/c/a/a/b/i/k/j;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field public final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/c/a/a/b/i/k/h0<",
            "*>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field public final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/c/a/a/b/i/k/h0<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final m:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const-string v2, "Sign-out occurred while this API call was in progress."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Le/c/a/a/b/i/k/c;->n:Lcom/google/android/gms/common/api/Status;

    .line 2
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "The user must be signed in to make this API call."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Le/c/a/a/b/i/k/c;->o:Lcom/google/android/gms/common/api/Status;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le/c/a/a/b/i/k/c;->p:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Le/c/a/a/b/d;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    .line 2
    iput-wide v0, p0, Le/c/a/a/b/i/k/c;->a:J

    const-wide/32 v0, 0x1d4c0

    .line 3
    iput-wide v0, p0, Le/c/a/a/b/i/k/c;->b:J

    const-wide/16 v0, 0x2710

    .line 4
    iput-wide v0, p0, Le/c/a/a/b/i/k/c;->c:J

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Le/c/a/a/b/i/k/c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Le/c/a/a/b/i/k/c;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x5

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Le/c/a/a/b/i/k/c;->i:Ljava/util/Map;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Le/c/a/a/b/i/k/c;->j:Le/c/a/a/b/i/k/j;

    .line 9
    new-instance v0, Ld/f/c;

    invoke-direct {v0}, Ld/f/c;-><init>()V

    iput-object v0, p0, Le/c/a/a/b/i/k/c;->k:Ljava/util/Set;

    .line 10
    new-instance v0, Ld/f/c;

    invoke-direct {v0}, Ld/f/c;-><init>()V

    iput-object v0, p0, Le/c/a/a/b/i/k/c;->l:Ljava/util/Set;

    .line 11
    iput-object p1, p0, Le/c/a/a/b/i/k/c;->d:Landroid/content/Context;

    .line 12
    new-instance p1, Le/c/a/a/d/a/c;

    invoke-direct {p1, p2, p0}, Le/c/a/a/d/a/c;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    .line 13
    iput-object p3, p0, Le/c/a/a/b/i/k/c;->e:Le/c/a/a/b/d;

    .line 14
    new-instance p1, Le/c/a/a/b/j/j;

    invoke-direct {p1, p3}, Le/c/a/a/b/j/j;-><init>(Le/c/a/a/b/e;)V

    iput-object p1, p0, Le/c/a/a/b/i/k/c;->f:Le/c/a/a/b/j/j;

    .line 15
    iget-object p1, p0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Le/c/a/a/b/i/k/c;
    .locals 4

    .line 1
    sget-object v0, Le/c/a/a/b/i/k/c;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Le/c/a/a/b/i/k/c;->q:Le/c/a/a/b/i/k/c;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GoogleApiHandler"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 5
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 6
    new-instance v2, Le/c/a/a/b/i/k/c;

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 8
    sget-object v3, Le/c/a/a/b/d;->c:Le/c/a/a/b/d;

    .line 9
    invoke-direct {v2, p0, v1, v3}, Le/c/a/a/b/i/k/c;-><init>(Landroid/content/Context;Landroid/os/Looper;Le/c/a/a/b/d;)V

    sput-object v2, Le/c/a/a/b/i/k/c;->q:Le/c/a/a/b/i/k/c;

    .line 10
    :cond_0
    sget-object p0, Le/c/a/a/b/i/k/c;->q:Le/c/a/a/b/i/k/c;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(Le/c/a/a/b/i/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/a/a/b/i/c<",
            "*>;)V"
        }
    .end annotation

    .line 12
    iget-object v0, p1, Le/c/a/a/b/i/c;->d:Le/c/a/a/b/i/k/h0;

    .line 13
    iget-object v1, p0, Le/c/a/a/b/i/k/c;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/c/a/a/b/i/k/c$a;

    if-nez v1, :cond_0

    .line 14
    new-instance v1, Le/c/a/a/b/i/k/c$a;

    invoke-direct {v1, p0, p1}, Le/c/a/a/b/i/k/c$a;-><init>(Le/c/a/a/b/i/k/c;Le/c/a/a/b/i/c;)V

    .line 15
    iget-object p1, p0, Le/c/a/a/b/i/k/c;->i:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_0
    invoke-virtual {v1}, Le/c/a/a/b/i/k/c$a;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 17
    iget-object p1, p0, Le/c/a/a/b/i/k/c;->l:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_1
    invoke-virtual {v1}, Le/c/a/a/b/i/k/c$a;->a()V

    return-void
.end method

.method public final a(Le/c/a/a/b/a;I)Z
    .locals 6

    .line 19
    iget-object v0, p0, Le/c/a/a/b/i/k/c;->e:Le/c/a/a/b/d;

    iget-object v1, p0, Le/c/a/a/b/i/k/c;->d:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 20
    iget v3, p1, Le/c/a/a/b/a;->y:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p1, Le/c/a/a/b/a;->z:Landroid/app/PendingIntent;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 21
    iget-object v2, p1, Le/c/a/a/b/a;->z:Landroid/app/PendingIntent;

    goto :goto_1

    .line 22
    :cond_1
    iget v3, p1, Le/c/a/a/b/a;->y:I

    .line 23
    invoke-virtual {v0, v1, v3, v2}, Le/c/a/a/b/e;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v2, 0x8000000

    .line 24
    invoke-static {v1, v4, v3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_3

    .line 25
    iget p1, p1, Le/c/a/a/b/a;->y:I

    .line 26
    invoke-static {v1, v2, p2}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 27
    invoke-virtual {v0, v1, p1, p2}, Le/c/a/a/b/d;->a(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    const/4 v4, 0x1

    :cond_3
    return v4

    .line 28
    :cond_4
    throw v2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/32 v3, 0x493e0

    const-string v5, "GoogleApiManager"

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0x1f

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unknown message id: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le/c/a/a/b/i/k/c$b;

    .line 4
    iget-object v0, p0, Le/c/a/a/b/i/k/c;->i:Ljava/util/Map;

    .line 5
    iget-object v3, p1, Le/c/a/a/b/i/k/c$b;->a:Le/c/a/a/b/i/k/h0;

    .line 6
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 7
    iget-object v0, p0, Le/c/a/a/b/i/k/c;->i:Ljava/util/Map;

    .line 8
    iget-object v3, p1, Le/c/a/a/b/i/k/c$b;->a:Le/c/a/a/b/i/k/h0;

    .line 9
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/a/a/b/i/k/c$a;

    .line 10
    iget-object v3, v0, Le/c/a/a/b/i/k/c$a;->k:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 11
    iget-object v3, v0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 12
    iget-object v3, v3, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    const/16 v4, 0xf

    .line 13
    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 14
    iget-object v3, v0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 15
    iget-object v3, v3, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    const/16 v4, 0x10

    .line 16
    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 17
    iget-object p1, p1, Le/c/a/a/b/i/k/c$b;->b:Le/c/a/a/b/c;

    .line 18
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Le/c/a/a/b/i/k/c$a;->a:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    iget-object v4, v0, Le/c/a/a/b/i/k/c$a;->a:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/c/a/a/b/i/k/m;

    .line 20
    instance-of v6, v5, Le/c/a/a/b/i/k/w;

    if-eqz v6, :cond_0

    .line 21
    move-object v6, v5

    check-cast v6, Le/c/a/a/b/i/k/w;

    invoke-virtual {v6, v0}, Le/c/a/a/b/i/k/w;->b(Le/c/a/a/b/i/k/c$a;)[Le/c/a/a/b/c;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 22
    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    .line 23
    aget-object v9, v6, v8

    invoke-static {v9, p1}, Ld/b/a/r;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, -0x1

    :goto_2
    if-ltz v8, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_0

    .line 24
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_4
    if-ge v1, v4, :cond_14

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    check-cast v5, Le/c/a/a/b/i/k/m;

    .line 26
    iget-object v6, v0, Le/c/a/a/b/i/k/c$a;->a:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 27
    new-instance v6, Le/c/a/a/b/i/j;

    invoke-direct {v6, p1}, Le/c/a/a/b/i/j;-><init>(Le/c/a/a/b/c;)V

    check-cast v5, Le/c/a/a/b/i/k/e0;

    .line 28
    iget-object v5, v5, Le/c/a/a/b/i/k/e0;->a:Le/c/a/a/g/b;

    .line 29
    iget-object v5, v5, Le/c/a/a/g/b;->a:Le/c/a/a/g/h;

    invoke-virtual {v5, v6}, Le/c/a/a/g/h;->b(Ljava/lang/Exception;)Z

    goto :goto_4

    .line 30
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le/c/a/a/b/i/k/c$b;

    .line 31
    iget-object v0, p0, Le/c/a/a/b/i/k/c;->i:Ljava/util/Map;

    .line 32
    iget-object v1, p1, Le/c/a/a/b/i/k/c$b;->a:Le/c/a/a/b/i/k/h0;

    .line 33
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 34
    iget-object v0, p0, Le/c/a/a/b/i/k/c;->i:Ljava/util/Map;

    .line 35
    iget-object v1, p1, Le/c/a/a/b/i/k/c$b;->a:Le/c/a/a/b/i/k/h0;

    .line 36
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/a/a/b/i/k/c$a;

    .line 37
    iget-object v1, v0, Le/c/a/a/b/i/k/c$a;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_a

    .line 38
    :cond_5
    iget-boolean p1, v0, Le/c/a/a/b/i/k/c$a;->j:Z

    if-nez p1, :cond_14

    .line 39
    iget-object p1, v0, Le/c/a/a/b/i/k/c$a;->b:Le/c/a/a/b/i/a$f;

    invoke-interface {p1}, Le/c/a/a/b/i/a$f;->c()Z

    move-result p1

    if-nez p1, :cond_6

    .line 40
    invoke-virtual {v0}, Le/c/a/a/b/i/k/c$a;->a()V

    goto/16 :goto_a

    .line 41
    :cond_6
    invoke-virtual {v0}, Le/c/a/a/b/i/k/c$a;->e()V

    goto/16 :goto_a

    .line 42
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le/c/a/a/b/i/k/k;

    if-eqz p1, :cond_8

    .line 43
    iget-object p1, p0, Le/c/a/a/b/i/k/c;->i:Ljava/util/Map;

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 44
    throw v6

    .line 45
    :cond_7
    iget-object p1, p0, Le/c/a/a/b/i/k/c;->i:Ljava/util/Map;

    .line 46
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/c/a/a/b/i/k/c$a;

    .line 47
    invoke-virtual {p1, v1}, Le/c/a/a/b/i/k/c$a;->a(Z)Z

    .line 48
    throw v6

    .line 49
    :cond_8
    throw v6

    .line 50
    :pswitch_3
    iget-object v0, p0, Le/c/a/a/b/i/k/c;->i:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 51
    iget-object v0, p0, Le/c/a/a/b/i/k/c;->i:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/c/a/a/b/i/k/c$a;

    .line 52
    invoke-virtual {p1, v2}, Le/c/a/a/b/i/k/c$a;->a(Z)Z

    goto/16 :goto_a

    .line 53
    :pswitch_4
    iget-object v0, p0, Le/c/a/a/b/i/k/c;->i:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 54
    iget-object v0, p0, Le/c/a/a/b/i/k/c;->i:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/c/a/a/b/i/k/c$a;

    .line 55
    iget-object v0, p1, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 56
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    .line 57
    invoke-static {v0}, Ld/b/a/r;->a(Landroid/os/Handler;)V

    .line 58
    iget-boolean v0, p1, Le/c/a/a/b/i/k/c$a;->j:Z

    if-eqz v0, :cond_14

    .line 59
    invoke-virtual {p1}, Le/c/a/a/b/i/k/c$a;->h()V

    .line 60
    iget-object v0, p1, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 61
    iget-object v1, v0, Le/c/a/a/b/i/k/c;->e:Le/c/a/a/b/d;

    .line 62
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->d:Landroid/content/Context;

    .line 63
    sget v3, Le/c/a/a/b/e;->a:I

    invoke-virtual {v1, v0, v3}, Le/c/a/a/b/e;->a(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x12

    const/16 v3, 0x8

    if-ne v0, v1, :cond_9

    .line 64
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Connection timed out while waiting for Google Play services update to complete."

    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_5

    .line 65
    :cond_9
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 66
    :goto_5
    invoke-virtual {p1, v0}, Le/c/a/a/b/i/k/c$a;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 67
    iget-object p1, p1, Le/c/a/a/b/i/k/c$a;->b:Le/c/a/a/b/i/a$f;

    invoke-interface {p1}, Le/c/a/a/b/i/a$f;->e()V

    goto/16 :goto_a

    .line 68
    :pswitch_5
    iget-object p1, p0, Le/c/a/a/b/i/k/c;->l:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/a/a/b/i/k/h0;

    .line 69
    iget-object v1, p0, Le/c/a/a/b/i/k/c;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/a/a/b/i/k/c$a;

    invoke-virtual {v0}, Le/c/a/a/b/i/k/c$a;->f()V

    goto :goto_6

    .line 70
    :cond_a
    iget-object p1, p0, Le/c/a/a/b/i/k/c;->l:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto/16 :goto_a

    .line 71
    :pswitch_6
    iget-object v0, p0, Le/c/a/a/b/i/k/c;->i:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 72
    iget-object v0, p0, Le/c/a/a/b/i/k/c;->i:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/c/a/a/b/i/k/c$a;

    .line 73
    iget-object v0, p1, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 74
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    .line 75
    invoke-static {v0}, Ld/b/a/r;->a(Landroid/os/Handler;)V

    .line 76
    iget-boolean v0, p1, Le/c/a/a/b/i/k/c$a;->j:Z

    if-eqz v0, :cond_14

    .line 77
    invoke-virtual {p1}, Le/c/a/a/b/i/k/c$a;->a()V

    goto/16 :goto_a

    .line 78
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le/c/a/a/b/i/c;

    invoke-virtual {p0, p1}, Le/c/a/a/b/i/k/c;->a(Le/c/a/a/b/i/c;)V

    goto/16 :goto_a

    .line 79
    :pswitch_8
    iget-object p1, p0, Le/c/a/a/b/i/k/c;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_14

    .line 80
    iget-object p1, p0, Le/c/a/a/b/i/k/c;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 81
    invoke-static {p1}, Le/c/a/a/b/i/k/b;->a(Landroid/app/Application;)V

    .line 82
    sget-object p1, Le/c/a/a/b/i/k/b;->B:Le/c/a/a/b/i/k/b;

    .line 83
    new-instance v0, Le/c/a/a/b/i/k/n;

    invoke-direct {v0, p0}, Le/c/a/a/b/i/k/n;-><init>(Le/c/a/a/b/i/k/c;)V

    .line 84
    invoke-virtual {p1, v0}, Le/c/a/a/b/i/k/b;->a(Le/c/a/a/b/i/k/b$a;)V

    .line 85
    sget-object p1, Le/c/a/a/b/i/k/b;->B:Le/c/a/a/b/i/k/b;

    .line 86
    iget-object v0, p1, Le/c/a/a/b/i/k/b;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    .line 87
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 88
    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 89
    iget-object v1, p1, Le/c/a/a/b/i/k/b;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_b

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_b

    .line 90
    iget-object v0, p1, Le/c/a/a/b/i/k/b;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 91
    :cond_b
    iget-object p1, p1, Le/c/a/a/b/i/k/b;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_14

    .line 92
    iput-wide v3, p0, Le/c/a/a/b/i/k/c;->c:J

    goto/16 :goto_a

    .line 93
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le/c/a/a/b/a;

    .line 94
    iget-object v1, p0, Le/c/a/a/b/i/k/c;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/c/a/a/b/i/k/c$a;

    .line 95
    iget v4, v3, Le/c/a/a/b/i/k/c$a;->h:I

    if-ne v4, v0, :cond_c

    goto :goto_7

    :cond_d
    move-object v3, v6

    :goto_7
    if-eqz v3, :cond_f

    .line 96
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    iget-object v4, p0, Le/c/a/a/b/i/k/c;->e:Le/c/a/a/b/d;

    .line 97
    iget v5, p1, Le/c/a/a/b/a;->y:I

    if-eqz v4, :cond_e

    .line 98
    invoke-static {v5}, Le/c/a/a/b/g;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 99
    iget-object p1, p1, Le/c/a/a/b/a;->A:Ljava/lang/String;

    .line 100
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x45

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 101
    invoke-virtual {v3, v0}, Le/c/a/a/b/i/k/c$a;->a(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_a

    .line 102
    :cond_e
    throw v6

    :cond_f
    const/16 p1, 0x4c

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Could not find API instance "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " while trying to fail enqueued calls."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v5, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 104
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le/c/a/a/b/i/k/u;

    .line 105
    iget-object v0, p0, Le/c/a/a/b/i/k/c;->i:Ljava/util/Map;

    iget-object v1, p1, Le/c/a/a/b/i/k/u;->c:Le/c/a/a/b/i/c;

    .line 106
    iget-object v1, v1, Le/c/a/a/b/i/c;->d:Le/c/a/a/b/i/k/h0;

    .line 107
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/a/a/b/i/k/c$a;

    if-nez v0, :cond_10

    .line 108
    iget-object v0, p1, Le/c/a/a/b/i/k/u;->c:Le/c/a/a/b/i/c;

    invoke-virtual {p0, v0}, Le/c/a/a/b/i/k/c;->a(Le/c/a/a/b/i/c;)V

    .line 109
    iget-object v0, p0, Le/c/a/a/b/i/k/c;->i:Ljava/util/Map;

    iget-object v1, p1, Le/c/a/a/b/i/k/u;->c:Le/c/a/a/b/i/c;

    .line 110
    iget-object v1, v1, Le/c/a/a/b/i/c;->d:Le/c/a/a/b/i/k/h0;

    .line 111
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/a/a/b/i/k/c$a;

    .line 112
    :cond_10
    invoke-virtual {v0}, Le/c/a/a/b/i/k/c$a;->b()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Le/c/a/a/b/i/k/c;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v3, p1, Le/c/a/a/b/i/k/u;->b:I

    if-eq v1, v3, :cond_11

    .line 113
    iget-object p1, p1, Le/c/a/a/b/i/k/u;->a:Le/c/a/a/b/i/k/m;

    sget-object v1, Le/c/a/a/b/i/k/c;->n:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v1}, Le/c/a/a/b/i/k/m;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 114
    invoke-virtual {v0}, Le/c/a/a/b/i/k/c$a;->f()V

    goto :goto_a

    .line 115
    :cond_11
    iget-object p1, p1, Le/c/a/a/b/i/k/u;->a:Le/c/a/a/b/i/k/m;

    invoke-virtual {v0, p1}, Le/c/a/a/b/i/k/c$a;->a(Le/c/a/a/b/i/k/m;)V

    goto :goto_a

    .line 116
    :pswitch_b
    iget-object p1, p0, Le/c/a/a/b/i/k/c;->i:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/a/a/b/i/k/c$a;

    .line 117
    invoke-virtual {v0}, Le/c/a/a/b/i/k/c$a;->g()V

    .line 118
    invoke-virtual {v0}, Le/c/a/a/b/i/k/c$a;->a()V

    goto :goto_8

    .line 119
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le/c/a/a/b/i/k/i0;

    if-eqz p1, :cond_12

    .line 120
    throw v6

    .line 121
    :cond_12
    throw v6

    .line 122
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_13

    const-wide/16 v3, 0x2710

    .line 123
    :cond_13
    iput-wide v3, p0, Le/c/a/a/b/i/k/c;->c:J

    .line 124
    iget-object p1, p0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    iget-object p1, p0, Le/c/a/a/b/i/k/c;->i:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/c/a/a/b/i/k/h0;

    .line 126
    iget-object v3, p0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    .line 127
    invoke-virtual {v3, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v4, p0, Le/c/a/a/b/i/k/c;->c:J

    .line 128
    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_9

    :cond_14
    :goto_a
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
