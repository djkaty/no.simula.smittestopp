.class public final Lj/b/a/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/b/a/s;


# instance fields
.field public final a:Ld/u/g;

.field public final b:Ld/u/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/u/b<",
            "Lj/b/a/r;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ld/u/k;

.field public final d:Ld/u/k;


# direct methods
.method public constructor <init>(Ld/u/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj/b/a/t;->a:Ld/u/g;

    .line 3
    new-instance v0, Lj/b/a/t$a;

    invoke-direct {v0, p0, p1}, Lj/b/a/t$a;-><init>(Lj/b/a/t;Ld/u/g;)V

    iput-object v0, p0, Lj/b/a/t;->b:Ld/u/b;

    .line 4
    new-instance v0, Lj/b/a/t$b;

    invoke-direct {v0, p0, p1}, Lj/b/a/t$b;-><init>(Lj/b/a/t;Ld/u/g;)V

    iput-object v0, p0, Lj/b/a/t;->c:Ld/u/k;

    .line 5
    new-instance v0, Lj/b/a/t$c;

    invoke-direct {v0, p0, p1}, Lj/b/a/t$c;-><init>(Lj/b/a/t;Ld/u/g;)V

    iput-object v0, p0, Lj/b/a/t;->d:Ld/u/k;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lj/b/a/t;->a:Ld/u/g;

    invoke-virtual {v0}, Ld/u/g;->b()V

    .line 2
    iget-object v0, p0, Lj/b/a/t;->d:Ld/u/k;

    invoke-virtual {v0}, Ld/u/k;->a()Ld/w/a/f/f;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lj/b/a/t;->a:Ld/u/g;

    invoke-virtual {v1}, Ld/u/g;->c()V

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ld/w/a/f/f;->a()I

    .line 5
    iget-object v1, p0, Lj/b/a/t;->a:Ld/u/g;

    invoke-virtual {v1}, Ld/u/g;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Lj/b/a/t;->a:Ld/u/g;

    invoke-virtual {v1}, Ld/u/g;->d()V

    .line 7
    iget-object v1, p0, Lj/b/a/t;->d:Ld/u/k;

    .line 8
    iget-object v2, v1, Ld/u/k;->c:Ld/w/a/f/f;

    if-ne v0, v2, :cond_0

    .line 9
    iget-object v0, v1, Ld/u/k;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 10
    iget-object v2, p0, Lj/b/a/t;->a:Ld/u/g;

    invoke-virtual {v2}, Ld/u/g;->d()V

    .line 11
    iget-object v2, p0, Lj/b/a/t;->d:Ld/u/k;

    invoke-virtual {v2, v0}, Ld/u/k;->a(Ld/w/a/f/f;)V

    .line 12
    throw v1
.end method
