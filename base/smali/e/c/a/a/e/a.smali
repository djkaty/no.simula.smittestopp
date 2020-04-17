.class public Le/c/a/a/e/a;
.super Le/c/a/a/b/i/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/a/a/e/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/a/a/b/i/c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Le/c/a/a/e/c;->c:Le/c/a/a/b/i/a;

    new-instance v1, Le/c/a/a/b/i/k/a;

    invoke-direct {v1}, Le/c/a/a/b/i/k/a;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Le/c/a/a/b/i/c;-><init>(Landroid/content/Context;Le/c/a/a/b/i/a;Le/c/a/a/b/i/a$d;Le/c/a/a/b/i/k/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/location/LocationRequest;Le/c/a/a/e/b;Landroid/os/Looper;)Le/c/a/a/g/h;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Le/c/a/a/e/b;",
            "Landroid/os/Looper;",
            ")",
            "Le/c/a/a/g/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v8, Le/c/a/a/d/c/q;

    sget-object v2, Le/c/a/a/d/c/q;->E:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Le/c/a/a/d/c/q;-><init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/List;Ljava/lang/String;ZZZLjava/lang/String;)V

    if-eqz p3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string p3, "Can\'t create handler inside thread that has not called Looper.prepare()"

    invoke-static {p1, p3}, Ld/b/a/r;->a(ZLjava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    .line 3
    :goto_1
    const-class p1, Le/c/a/a/e/b;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Listener must not be null"

    .line 4
    invoke-static {p2, v0}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Looper must not be null"

    .line 5
    invoke-static {p3, v0}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Listener type must not be null"

    .line 6
    invoke-static {p1, v0}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Le/c/a/a/b/i/k/f;

    invoke-direct {v0, p3, p2, p1}, Le/c/a/a/b/i/k/f;-><init>(Landroid/os/Looper;Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance p1, Le/c/a/a/e/l;

    invoke-direct {p1, v0, v8, v0}, Le/c/a/a/e/l;-><init>(Le/c/a/a/b/i/k/f;Le/c/a/a/d/c/q;Le/c/a/a/b/i/k/f;)V

    new-instance p2, Le/c/a/a/e/m;

    .line 9
    iget-object p3, v0, Le/c/a/a/b/i/k/f;->c:Le/c/a/a/b/i/k/f$a;

    .line 10
    invoke-direct {p2, p0, p3}, Le/c/a/a/e/m;-><init>(Le/c/a/a/e/a;Le/c/a/a/b/i/k/f$a;)V

    .line 11
    invoke-static {p1}, Ld/b/a/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {p2}, Ld/b/a/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p3, p1, Le/c/a/a/b/i/k/g;->a:Le/c/a/a/b/i/k/f;

    .line 14
    iget-object p3, p3, Le/c/a/a/b/i/k/f;->c:Le/c/a/a/b/i/k/f$a;

    const-string v0, "Listener has already been released."

    .line 15
    invoke-static {p3, v0}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object p3, p2, Le/c/a/a/b/i/k/h;->a:Le/c/a/a/b/i/k/f$a;

    .line 17
    invoke-static {p3, v0}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object p3, p1, Le/c/a/a/b/i/k/g;->a:Le/c/a/a/b/i/k/f;

    .line 19
    iget-object p3, p3, Le/c/a/a/b/i/k/f;->c:Le/c/a/a/b/i/k/f$a;

    .line 20
    iget-object v0, p2, Le/c/a/a/b/i/k/h;->a:Le/c/a/a/b/i/k/f$a;

    .line 21
    invoke-virtual {p3, v0}, Le/c/a/a/b/i/k/f$a;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 22
    iget-object p3, p0, Le/c/a/a/b/i/c;->f:Le/c/a/a/b/i/k/c;

    if-eqz p3, :cond_2

    .line 23
    new-instance v0, Le/c/a/a/g/b;

    invoke-direct {v0}, Le/c/a/a/g/b;-><init>()V

    .line 24
    new-instance v1, Le/c/a/a/b/i/k/f0;

    new-instance v2, Le/c/a/a/b/i/k/v;

    invoke-direct {v2, p1, p2}, Le/c/a/a/b/i/k/v;-><init>(Le/c/a/a/b/i/k/g;Le/c/a/a/b/i/k/h;)V

    invoke-direct {v1, v2, v0}, Le/c/a/a/b/i/k/f0;-><init>(Le/c/a/a/b/i/k/v;Le/c/a/a/g/b;)V

    .line 25
    iget-object p1, p3, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    new-instance p2, Le/c/a/a/b/i/k/u;

    iget-object p3, p3, Le/c/a/a/b/i/k/c;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    invoke-direct {p2, v1, p3, p0}, Le/c/a/a/b/i/k/u;-><init>(Le/c/a/a/b/i/k/m;ILe/c/a/a/b/i/c;)V

    const/16 p3, 0x8

    .line 27
    invoke-virtual {p1, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 29
    iget-object p1, v0, Le/c/a/a/g/b;->a:Le/c/a/a/g/h;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    .line 30
    throw p1

    .line 31
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Listener registration and unregistration methods must be constructed with the same ListenerHolder."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Le/c/a/a/e/b;)Le/c/a/a/g/h;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/a/a/e/b;",
            ")",
            "Le/c/a/a/g/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-class v0, Le/c/a/a/e/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Listener must not be null"

    .line 32
    invoke-static {p1, v1}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Listener type must not be null"

    .line 33
    invoke-static {v0, v1}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 35
    new-instance v1, Le/c/a/a/b/i/k/f$a;

    invoke-direct {v1, p1, v0}, Le/c/a/a/b/i/k/f$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "Listener key cannot be null."

    .line 36
    invoke-static {v1, p1}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object p1, p0, Le/c/a/a/b/i/c;->f:Le/c/a/a/b/i/k/c;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 38
    new-instance v2, Le/c/a/a/g/b;

    invoke-direct {v2}, Le/c/a/a/g/b;-><init>()V

    .line 39
    new-instance v3, Le/c/a/a/b/i/k/g0;

    invoke-direct {v3, v1, v2}, Le/c/a/a/b/i/k/g0;-><init>(Le/c/a/a/b/i/k/f$a;Le/c/a/a/g/b;)V

    .line 40
    iget-object v1, p1, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    new-instance v4, Le/c/a/a/b/i/k/u;

    iget-object p1, p1, Le/c/a/a/b/i/k/c;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-direct {v4, v3, p1, p0}, Le/c/a/a/b/i/k/u;-><init>(Le/c/a/a/b/i/k/m;ILe/c/a/a/b/i/c;)V

    const/16 p1, 0xd

    .line 42
    invoke-virtual {v1, p1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 43
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 44
    iget-object p1, v2, Le/c/a/a/g/b;->a:Le/c/a/a/g/h;

    .line 45
    new-instance v1, Le/c/a/a/b/i/k/b0;

    invoke-direct {v1}, Le/c/a/a/b/i/k/b0;-><init>()V

    if-eqz p1, :cond_0

    .line 46
    sget-object v0, Le/c/a/a/g/c;->a:Ljava/util/concurrent/Executor;

    .line 47
    new-instance v2, Le/c/a/a/g/h;

    invoke-direct {v2}, Le/c/a/a/g/h;-><init>()V

    .line 48
    iget-object v3, p1, Le/c/a/a/g/h;->b:Le/c/a/a/g/g;

    new-instance v4, Le/c/a/a/g/d;

    invoke-direct {v4, v0, v1, v2}, Le/c/a/a/g/d;-><init>(Ljava/util/concurrent/Executor;Le/c/a/a/b/i/k/b0;Le/c/a/a/g/h;)V

    invoke-virtual {v3, v4}, Le/c/a/a/g/g;->a(Le/c/a/a/g/f;)V

    .line 49
    invoke-virtual {p1}, Le/c/a/a/g/h;->c()V

    return-object v2

    .line 50
    :cond_0
    throw v0

    .line 51
    :cond_1
    throw v0

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Listener type must not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
