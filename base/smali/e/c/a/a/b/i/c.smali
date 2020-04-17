.class public Le/c/a/a/b/i/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/a/a/b/i/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Le/c/a/a/b/i/a$d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/c/a/a/b/i/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/b/i/a<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final c:Le/c/a/a/b/i/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field public final d:Le/c/a/a/b/i/k/h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/b/i/k/h0<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final e:I

.field public final f:Le/c/a/a/b/i/k/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/c/a/a/b/i/a;Le/c/a/a/b/i/a$d;Le/c/a/a/b/i/k/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/c/a/a/b/i/a<",
            "TO;>;TO;",
            "Le/c/a/a/b/i/k/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "StatusExceptionMapper must not be null."

    .line 1
    invoke-static {p4, v0}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 3
    new-instance v1, Le/c/a/a/b/i/c$a;

    const/4 v2, 0x0

    invoke-direct {v1, p4, v2, v0}, Le/c/a/a/b/i/c$a;-><init>(Le/c/a/a/b/i/k/a;Landroid/accounts/Account;Landroid/os/Looper;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p4, "Null context is not permitted."

    .line 5
    invoke-static {p1, p4}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "Api must not be null."

    .line 6
    invoke-static {p2, p4}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    .line 7
    invoke-static {v1, p4}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le/c/a/a/b/i/c;->a:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Le/c/a/a/b/i/c;->b:Le/c/a/a/b/i/a;

    .line 10
    iput-object p3, p0, Le/c/a/a/b/i/c;->c:Le/c/a/a/b/i/a$d;

    .line 11
    new-instance p1, Le/c/a/a/b/i/k/h0;

    invoke-direct {p1, p2, p3}, Le/c/a/a/b/i/k/h0;-><init>(Le/c/a/a/b/i/a;Le/c/a/a/b/i/a$d;)V

    .line 12
    iput-object p1, p0, Le/c/a/a/b/i/c;->d:Le/c/a/a/b/i/k/h0;

    .line 13
    new-instance p1, Le/c/a/a/b/i/k/t;

    .line 14
    iget-object p1, p0, Le/c/a/a/b/i/c;->a:Landroid/content/Context;

    invoke-static {p1}, Le/c/a/a/b/i/k/c;->a(Landroid/content/Context;)Le/c/a/a/b/i/k/c;

    move-result-object p1

    iput-object p1, p0, Le/c/a/a/b/i/c;->f:Le/c/a/a/b/i/k/c;

    .line 15
    iget-object p1, p1, Le/c/a/a/b/i/k/c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    .line 16
    iput p1, p0, Le/c/a/a/b/i/c;->e:I

    .line 17
    iget-object p1, p0, Le/c/a/a/b/i/c;->f:Le/c/a/a/b/i/k/c;

    .line 18
    iget-object p1, p1, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public a()Le/c/a/a/b/j/d$a;
    .locals 4

    .line 1
    new-instance v0, Le/c/a/a/b/j/d$a;

    invoke-direct {v0}, Le/c/a/a/b/j/d$a;-><init>()V

    .line 2
    iget-object v1, p0, Le/c/a/a/b/i/c;->c:Le/c/a/a/b/i/a$d;

    instance-of v2, v1, Le/c/a/a/b/i/a$d$b;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 3
    check-cast v1, Le/c/a/a/b/i/a$d$b;

    .line 4
    invoke-interface {v1}, Le/c/a/a/b/i/a$d$b;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v2, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->A:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/accounts/Account;

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->A:Ljava/lang/String;

    const-string v3, "com.google"

    invoke-direct {v2, v1, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Le/c/a/a/b/i/c;->c:Le/c/a/a/b/i/a$d;

    instance-of v2, v1, Le/c/a/a/b/i/a$d$a;

    if-eqz v2, :cond_2

    .line 7
    check-cast v1, Le/c/a/a/b/i/a$d$a;

    invoke-interface {v1}, Le/c/a/a/b/i/a$d$a;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    .line 8
    :cond_2
    :goto_0
    iput-object v3, v0, Le/c/a/a/b/j/d$a;->a:Landroid/accounts/Account;

    .line 9
    iget-object v1, p0, Le/c/a/a/b/i/c;->c:Le/c/a/a/b/i/a$d;

    instance-of v2, v1, Le/c/a/a/b/i/a$d$b;

    if-eqz v2, :cond_3

    .line 10
    check-cast v1, Le/c/a/a/b/i/a$d$b;

    .line 11
    invoke-interface {v1}, Le/c/a/a/b/i/a$d$b;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->b()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 14
    :goto_1
    iget-object v2, v0, Le/c/a/a/b/j/d$a;->b:Ld/f/c;

    if-nez v2, :cond_4

    .line 15
    new-instance v2, Ld/f/c;

    invoke-direct {v2}, Ld/f/c;-><init>()V

    iput-object v2, v0, Le/c/a/a/b/j/d$a;->b:Ld/f/c;

    .line 16
    :cond_4
    iget-object v2, v0, Le/c/a/a/b/j/d$a;->b:Ld/f/c;

    invoke-virtual {v2, v1}, Ld/f/c;->addAll(Ljava/util/Collection;)Z

    .line 17
    iget-object v1, p0, Le/c/a/a/b/i/c;->a:Landroid/content/Context;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 19
    iput-object v1, v0, Le/c/a/a/b/j/d$a;->e:Ljava/lang/String;

    .line 20
    iget-object v1, p0, Le/c/a/a/b/i/c;->a:Landroid/content/Context;

    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 22
    iput-object v1, v0, Le/c/a/a/b/j/d$a;->d:Ljava/lang/String;

    return-object v0
.end method
