.class public abstract Le/c/a/a/b/j/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/a/a/b/j/b$i;,
        Le/c/a/a/b/j/b$f;,
        Le/c/a/a/b/j/b$k;,
        Le/c/a/a/b/j/b$l;,
        Le/c/a/a/b/j/b$d;,
        Le/c/a/a/b/j/b$h;,
        Le/c/a/a/b/j/b$g;,
        Le/c/a/a/b/j/b$e;,
        Le/c/a/a/b/j/b$c;,
        Le/c/a/a/b/j/b$b;,
        Le/c/a/a/b/j/b$a;,
        Le/c/a/a/b/j/b$j;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final u:[Le/c/a/a/b/c;


# instance fields
.field public a:Le/c/a/a/b/j/f0;

.field public final b:Landroid/content/Context;

.field public final c:Le/c/a/a/b/j/i;

.field public final d:Landroid/os/Handler;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public g:Le/c/a/a/b/j/n;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mServiceBrokerLock"
    .end annotation
.end field

.field public h:Le/c/a/a/b/j/b$c;

.field public i:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field public final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/c/a/a/b/j/b$h<",
            "*>;>;"
        }
    .end annotation
.end field

.field public k:Le/c/a/a/b/j/b$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/b/j/b$j;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field public l:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field public final m:Le/c/a/a/b/j/b$a;

.field public final n:Le/c/a/a/b/j/b$b;

.field public final o:I

.field public final p:Ljava/lang/String;

.field public q:Le/c/a/a/b/a;

.field public r:Z

.field public volatile s:Le/c/a/a/b/j/z;

.field public t:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Le/c/a/a/b/c;

    .line 1
    sput-object v0, Le/c/a/a/b/j/b;->u:[Le/c/a/a/b/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Le/c/a/a/b/j/i;Le/c/a/a/b/e;ILe/c/a/a/b/j/b$a;Le/c/a/a/b/j/b$b;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/c/a/a/b/j/b;->e:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/c/a/a/b/j/b;->f:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/c/a/a/b/j/b;->j:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Le/c/a/a/b/j/b;->l:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Le/c/a/a/b/j/b;->q:Le/c/a/a/b/a;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Le/c/a/a/b/j/b;->r:Z

    .line 8
    iput-object v0, p0, Le/c/a/a/b/j/b;->s:Le/c/a/a/b/j/z;

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Le/c/a/a/b/j/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Context must not be null"

    .line 10
    invoke-static {p1, v0}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Le/c/a/a/b/j/b;->b:Landroid/content/Context;

    const-string p1, "Looper must not be null"

    .line 11
    invoke-static {p2, p1}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/os/Looper;

    const-string p1, "Supervisor must not be null"

    .line 12
    invoke-static {p3, p1}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Le/c/a/a/b/j/i;

    iput-object p3, p0, Le/c/a/a/b/j/b;->c:Le/c/a/a/b/j/i;

    const-string p1, "API availability must not be null"

    .line 13
    invoke-static {p4, p1}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Le/c/a/a/b/e;

    .line 14
    new-instance p1, Le/c/a/a/b/j/b$g;

    invoke-direct {p1, p0, p2}, Le/c/a/a/b/j/b$g;-><init>(Le/c/a/a/b/j/b;Landroid/os/Looper;)V

    iput-object p1, p0, Le/c/a/a/b/j/b;->d:Landroid/os/Handler;

    .line 15
    iput p5, p0, Le/c/a/a/b/j/b;->o:I

    .line 16
    iput-object p6, p0, Le/c/a/a/b/j/b;->m:Le/c/a/a/b/j/b$a;

    .line 17
    iput-object p7, p0, Le/c/a/a/b/j/b;->n:Le/c/a/a/b/j/b$b;

    .line 18
    iput-object p8, p0, Le/c/a/a/b/j/b;->p:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Le/c/a/a/b/j/b;)V
    .locals 3

    .line 12
    invoke-virtual {p0}, Le/c/a/a/b/j/b;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Le/c/a/a/b/j/b;->r:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 14
    :goto_0
    iget-object v1, p0, Le/c/a/a/b/j/b;->d:Landroid/os/Handler;

    iget-object p0, p0, Le/c/a/a/b/j/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/16 v2, 0x10

    invoke-virtual {v1, v0, p0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static synthetic b(Le/c/a/a/b/j/b;)Z
    .locals 2

    .line 63
    iget-boolean v0, p0, Le/c/a/a/b/j/b;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0}, Le/c/a/a/b/j/b;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 66
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Le/c/a/a/b/j/b;->l()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :catch_0
    :goto_0
    return v1
.end method


# virtual methods
.method public abstract a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public a(ILandroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Le/c/a/a/b/j/b$c;)V
    .locals 1

    const-string v0, "Connection progress callbacks cannot be null."

    .line 7
    invoke-static {p1, v0}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Le/c/a/a/b/j/b$c;

    iput-object p1, p0, Le/c/a/a/b/j/b;->h:Le/c/a/a/b/j/b$c;

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Le/c/a/a/b/j/b;->b(ILandroid/os/IInterface;)V

    return-void
.end method

.method public a(Le/c/a/a/b/j/b$e;)V
    .locals 2

    .line 47
    check-cast p1, Le/c/a/a/b/i/k/q;

    .line 48
    iget-object v0, p1, Le/c/a/a/b/i/k/q;->a:Le/c/a/a/b/i/k/c$a;

    iget-object v0, v0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 49
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    .line 50
    new-instance v1, Le/c/a/a/b/i/k/r;

    invoke-direct {v1, p1}, Le/c/a/a/b/i/k/r;-><init>(Le/c/a/a/b/i/k/q;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Le/c/a/a/b/j/k;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/a/a/b/j/k;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Le/c/a/a/b/j/b;->j()Landroid/os/Bundle;

    move-result-object v0

    .line 16
    new-instance v1, Le/c/a/a/b/j/g;

    iget v2, p0, Le/c/a/a/b/j/b;->o:I

    invoke-direct {v1, v2}, Le/c/a/a/b/j/g;-><init>(I)V

    iget-object v2, p0, Le/c/a/a/b/j/b;->b:Landroid/content/Context;

    .line 17
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 18
    iput-object v2, v1, Le/c/a/a/b/j/g;->A:Ljava/lang/String;

    .line 19
    iput-object v0, v1, Le/c/a/a/b/j/g;->D:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    .line 20
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/common/api/Scope;

    iput-object p2, v1, Le/c/a/a/b/j/g;->C:[Lcom/google/android/gms/common/api/Scope;

    .line 21
    :cond_0
    invoke-virtual {p0}, Le/c/a/a/b/j/b;->g()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 22
    move-object p2, p0

    check-cast p2, Le/c/a/a/b/j/h;

    .line 23
    iget-object p2, p2, Le/c/a/a/b/j/h;->w:Landroid/accounts/Account;

    if-eqz p2, :cond_1

    goto :goto_0

    .line 24
    :cond_1
    new-instance p2, Landroid/accounts/Account;

    const-string v0, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {p2, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :goto_0
    iput-object p2, v1, Le/c/a/a/b/j/g;->E:Landroid/accounts/Account;

    if-eqz p1, :cond_2

    .line 26
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, v1, Le/c/a/a/b/j/g;->B:Landroid/os/IBinder;

    .line 27
    :cond_2
    sget-object p1, Le/c/a/a/b/j/b;->u:[Le/c/a/a/b/c;

    .line 28
    iput-object p1, v1, Le/c/a/a/b/j/g;->F:[Le/c/a/a/b/c;

    .line 29
    iput-object p1, v1, Le/c/a/a/b/j/g;->G:[Le/c/a/a/b/c;

    const/4 p1, 0x1

    .line 30
    :try_start_0
    iget-object p2, p0, Le/c/a/a/b/j/b;->f:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :try_start_1
    iget-object v0, p0, Le/c/a/a/b/j/b;->g:Le/c/a/a/b/j/n;

    if-eqz v0, :cond_3

    .line 32
    iget-object v0, p0, Le/c/a/a/b/j/b;->g:Le/c/a/a/b/j/n;

    new-instance v2, Le/c/a/a/b/j/b$i;

    iget-object v3, p0, Le/c/a/a/b/j/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v2, p0, v3}, Le/c/a/a/b/j/b$i;-><init>(Le/c/a/a/b/j/b;I)V

    invoke-interface {v0, v2, v1}, Le/c/a/a/b/j/n;->a(Le/c/a/a/b/j/l;Le/c/a/a/b/j/g;)V

    goto :goto_1

    :cond_3
    const-string v0, "GmsClient"

    const-string v1, "mServiceBroker is null, client disconnected"

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_1
    monitor-exit p2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    :goto_2
    const-string v0, "GmsClient"

    const-string v1, "IGmsServiceBroker.getService failed"

    .line 35
    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p2, 0x8

    .line 36
    iget-object v0, p0, Le/c/a/a/b/j/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 38
    iget-object v1, p0, Le/c/a/a/b/j/b;->d:Landroid/os/Handler;

    new-instance v2, Le/c/a/a/b/j/b$k;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3, v3}, Le/c/a/a/b/j/b$k;-><init>(Le/c/a/a/b/j/b;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 p2, -0x1

    .line 39
    invoke-virtual {v1, p1, v0, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 40
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_2
    move-exception p1

    .line 41
    throw p1

    :catch_3
    move-exception p2

    const-string v0, "GmsClient"

    const-string v1, "IGmsServiceBroker.getService failed"

    .line 42
    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    iget-object p2, p0, Le/c/a/a/b/j/b;->d:Landroid/os/Handler;

    iget-object v0, p0, Le/c/a/a/b/j/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x6

    .line 45
    invoke-virtual {p2, v1, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 46
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a()Z
    .locals 3

    .line 9
    iget-object v0, p0, Le/c/a/a/b/j/b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    iget v1, p0, Le/c/a/a/b/j/b;->l:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Le/c/a/a/b/j/b;->l:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(IILandroid/os/IInterface;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/c/a/a/b/j/b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Le/c/a/a/b/j/b;->l:I

    if-eq v1, p1, :cond_0

    const/4 p1, 0x0

    .line 3
    monitor-exit v0

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0, p2, p3}, Le/c/a/a/b/j/b;->b(ILandroid/os/IInterface;)V

    const/4 p1, 0x1

    .line 5
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(ILandroid/os/IInterface;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 3
    :goto_2
    invoke-static {v3}, Ld/b/a/r;->a(Z)V

    .line 4
    iget-object v3, p0, Le/c/a/a/b/j/b;->e:Ljava/lang/Object;

    monitor-enter v3

    .line 5
    :try_start_0
    iput p1, p0, Le/c/a/a/b/j/b;->l:I

    .line 6
    iput-object p2, p0, Le/c/a/a/b/j/b;->i:Landroid/os/IInterface;

    .line 7
    invoke-virtual {p0, p1, p2}, Le/c/a/a/b/j/b;->a(ILandroid/os/IInterface;)V

    const/4 p2, 0x0

    if-eq p1, v1, :cond_7

    const/4 v1, 0x2

    const/4 v4, 0x3

    if-eq p1, v1, :cond_4

    if-eq p1, v4, :cond_4

    if-eq p1, v2, :cond_3

    goto/16 :goto_4

    .line 8
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto/16 :goto_4

    .line 9
    :cond_4
    iget-object p1, p0, Le/c/a/a/b/j/b;->k:Le/c/a/a/b/j/b$j;

    if-eqz p1, :cond_6

    iget-object p1, p0, Le/c/a/a/b/j/b;->a:Le/c/a/a/b/j/f0;

    if-eqz p1, :cond_6

    const-string p1, "GmsClient"

    .line 10
    iget-object v1, p0, Le/c/a/a/b/j/b;->a:Le/c/a/a/b/j/f0;

    .line 11
    iget-object v1, v1, Le/c/a/a/b/j/f0;->a:Ljava/lang/String;

    .line 12
    iget-object v2, p0, Le/c/a/a/b/j/b;->a:Le/c/a/a/b/j/f0;

    .line 13
    iget-object v2, v2, Le/c/a/a/b/j/f0;->b:Ljava/lang/String;

    .line 14
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x46

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object p1, p0, Le/c/a/a/b/j/b;->c:Le/c/a/a/b/j/i;

    iget-object v1, p0, Le/c/a/a/b/j/b;->a:Le/c/a/a/b/j/f0;

    .line 17
    iget-object v1, v1, Le/c/a/a/b/j/f0;->a:Ljava/lang/String;

    .line 18
    iget-object v2, p0, Le/c/a/a/b/j/b;->a:Le/c/a/a/b/j/f0;

    .line 19
    iget-object v2, v2, Le/c/a/a/b/j/f0;->b:Ljava/lang/String;

    .line 20
    iget-object v4, p0, Le/c/a/a/b/j/b;->a:Le/c/a/a/b/j/f0;

    .line 21
    iget v4, v4, Le/c/a/a/b/j/f0;->c:I

    .line 22
    iget-object v5, p0, Le/c/a/a/b/j/b;->k:Le/c/a/a/b/j/b$j;

    .line 23
    invoke-virtual {p0}, Le/c/a/a/b/j/b;->n()Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_5

    .line 24
    new-instance p2, Le/c/a/a/b/j/i$a;

    invoke-direct {p2, v1, v2, v4}, Le/c/a/a/b/j/i$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1, p2, v5, v6}, Le/c/a/a/b/j/i;->b(Le/c/a/a/b/j/i$a;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Le/c/a/a/b/j/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_3

    .line 26
    :cond_5
    throw p2

    .line 27
    :cond_6
    :goto_3
    new-instance p1, Le/c/a/a/b/j/b$j;

    iget-object p2, p0, Le/c/a/a/b/j/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p1, p0, p2}, Le/c/a/a/b/j/b$j;-><init>(Le/c/a/a/b/j/b;I)V

    iput-object p1, p0, Le/c/a/a/b/j/b;->k:Le/c/a/a/b/j/b$j;

    .line 28
    new-instance p1, Le/c/a/a/b/j/f0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p2, "com.google.android.gms"

    .line 29
    :try_start_1
    invoke-virtual {p0}, Le/c/a/a/b/j/b;->m()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-direct {p1, p2, v1, v0}, Le/c/a/a/b/j/f0;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 31
    iput-object p1, p0, Le/c/a/a/b/j/b;->a:Le/c/a/a/b/j/f0;

    .line 32
    iget-object p2, p0, Le/c/a/a/b/j/b;->c:Le/c/a/a/b/j/i;

    .line 33
    iget-object v0, p1, Le/c/a/a/b/j/f0;->a:Ljava/lang/String;

    .line 34
    iget-object v1, p1, Le/c/a/a/b/j/f0;->b:Ljava/lang/String;

    .line 35
    iget p1, p1, Le/c/a/a/b/j/f0;->c:I

    .line 36
    iget-object v2, p0, Le/c/a/a/b/j/b;->k:Le/c/a/a/b/j/b$j;

    .line 37
    invoke-virtual {p0}, Le/c/a/a/b/j/b;->n()Ljava/lang/String;

    move-result-object v4

    .line 38
    new-instance v5, Le/c/a/a/b/j/i$a;

    invoke-direct {v5, v0, v1, p1}, Le/c/a/a/b/j/i$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p2, v5, v2, v4}, Le/c/a/a/b/j/i;->a(Le/c/a/a/b/j/i$a;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "GmsClient"

    .line 39
    iget-object p2, p0, Le/c/a/a/b/j/b;->a:Le/c/a/a/b/j/f0;

    .line 40
    iget-object p2, p2, Le/c/a/a/b/j/f0;->a:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Le/c/a/a/b/j/b;->a:Le/c/a/a/b/j/f0;

    .line 42
    iget-object v0, v0, Le/c/a/a/b/j/f0;->b:Ljava/lang/String;

    .line 43
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x22

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "unable to connect to service: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 44
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x10

    .line 45
    iget-object p2, p0, Le/c/a/a/b/j/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    .line 47
    iget-object v0, p0, Le/c/a/a/b/j/b;->d:Landroid/os/Handler;

    new-instance v1, Le/c/a/a/b/j/b$l;

    invoke-direct {v1, p0, p1}, Le/c/a/a/b/j/b$l;-><init>(Le/c/a/a/b/j/b;I)V

    const/4 p1, 0x7

    const/4 v2, -0x1

    .line 48
    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 50
    :cond_7
    iget-object p1, p0, Le/c/a/a/b/j/b;->k:Le/c/a/a/b/j/b$j;

    if-eqz p1, :cond_9

    .line 51
    iget-object p1, p0, Le/c/a/a/b/j/b;->c:Le/c/a/a/b/j/i;

    iget-object v0, p0, Le/c/a/a/b/j/b;->a:Le/c/a/a/b/j/f0;

    .line 52
    iget-object v0, v0, Le/c/a/a/b/j/f0;->a:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Le/c/a/a/b/j/b;->a:Le/c/a/a/b/j/f0;

    .line 54
    iget-object v1, v1, Le/c/a/a/b/j/f0;->b:Ljava/lang/String;

    .line 55
    iget-object v2, p0, Le/c/a/a/b/j/b;->a:Le/c/a/a/b/j/f0;

    .line 56
    iget v2, v2, Le/c/a/a/b/j/f0;->c:I

    .line 57
    iget-object v4, p0, Le/c/a/a/b/j/b;->k:Le/c/a/a/b/j/b$j;

    .line 58
    invoke-virtual {p0}, Le/c/a/a/b/j/b;->n()Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_8

    .line 59
    new-instance v6, Le/c/a/a/b/j/i$a;

    invoke-direct {v6, v0, v1, v2}, Le/c/a/a/b/j/i$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1, v6, v4, v5}, Le/c/a/a/b/j/i;->b(Le/c/a/a/b/j/i$a;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 60
    iput-object p2, p0, Le/c/a/a/b/j/b;->k:Le/c/a/a/b/j/b$j;

    goto :goto_4

    .line 61
    :cond_8
    throw p2

    .line 62
    :cond_9
    :goto_4
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()[Le/c/a/a/b/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/c/a/a/b/j/b;->s:Le/c/a/a/b/j/z;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Le/c/a/a/b/j/z;->y:[Le/c/a/a/b/c;

    return-object v0
.end method

.method public c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/c/a/a/b/j/b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Le/c/a/a/b/j/b;->l:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/c/a/a/b/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/c/a/a/b/j/b;->a:Le/c/a/a/b/j/f0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/c/a/a/b/j/f0;->b:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to connect when checking package"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/c/a/a/b/j/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2
    iget-object v0, p0, Le/c/a/a/b/j/b;->j:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Le/c/a/a/b/j/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    iget-object v3, p0, Le/c/a/a/b/j/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/c/a/a/b/j/b$h;

    invoke-virtual {v3}, Le/c/a/a/b/j/b$h;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Le/c/a/a/b/j/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    iget-object v1, p0, Le/c/a/a/b/j/b;->f:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 8
    :try_start_1
    iput-object v0, p0, Le/c/a/a/b/j/b;->g:Le/c/a/a/b/j/n;

    .line 9
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, v1, v0}, Le/c/a/a/b/j/b;->b(ILandroid/os/IInterface;)V

    return-void

    :catchall_0
    move-exception v0

    .line 11
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 12
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()Landroid/os/Bundle;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final k()Landroid/os/IInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/c/a/a/b/j/b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Le/c/a/a/b/j/b;->l:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 3
    invoke-virtual {p0}, Le/c/a/a/b/j/b;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Le/c/a/a/b/j/b;->i:Landroid/os/IInterface;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Client is connected but service is null"

    invoke-static {v1, v2}, Ld/b/a/r;->a(ZLjava/lang/Object;)V

    .line 5
    iget-object v1, p0, Le/c/a/a/b/j/b;->i:Landroid/os/IInterface;

    monitor-exit v0

    return-object v1

    .line 6
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_2
    new-instance v1, Landroid/os/DeadObjectException;

    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract l()Ljava/lang/String;
.end method

.method public abstract m()Ljava/lang/String;
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/c/a/a/b/j/b;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/c/a/a/b/j/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final o()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/c/a/a/b/j/b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Le/c/a/a/b/j/b;->l:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
