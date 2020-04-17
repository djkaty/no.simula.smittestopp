.class public Lk/f/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/f/b;


# instance fields
.field public x:Ljava/lang/String;

.field public y:Lk/f/e/d;

.field public z:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lk/f/d/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk/f/e/d;Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/f/e/d;",
            "Ljava/util/Queue<",
            "Lk/f/d/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk/f/d/a;->y:Lk/f/e/d;

    .line 3
    iget-object p1, p1, Lk/f/e/d;->x:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lk/f/d/a;->x:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lk/f/d/a;->z:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 10
    sget-object v0, Lk/f/d/b;->ERROR:Lk/f/d/b;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lk/f/d/a;->a(Lk/f/d/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 11
    sget-object v0, Lk/f/d/b;->ERROR:Lk/f/d/b;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lk/f/d/a;->a(Lk/f/d/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 8
    sget-object v0, Lk/f/d/b;->INFO:Lk/f/d/b;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lk/f/d/a;->a(Lk/f/d/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 9
    sget-object v0, Lk/f/d/b;->INFO:Lk/f/d/b;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lk/f/d/a;->a(Lk/f/d/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 12
    sget-object v0, Lk/f/d/b;->ERROR:Lk/f/d/b;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lk/f/d/a;->a(Lk/f/d/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lk/f/d/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    new-instance p1, Lk/f/d/d;

    invoke-direct {p1}, Lk/f/d/d;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    iget-object p2, p0, Lk/f/d/a;->y:Lk/f/e/d;

    .line 4
    iput-object p2, p1, Lk/f/d/d;->a:Lk/f/e/d;

    .line 5
    iput-object p3, p1, Lk/f/d/d;->b:[Ljava/lang/Object;

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 7
    iget-object p2, p0, Lk/f/d/a;->z:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 2
    sget-object v0, Lk/f/d/b;->DEBUG:Lk/f/d/b;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lk/f/d/a;->a(Lk/f/d/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 3
    sget-object v0, Lk/f/d/b;->INFO:Lk/f/d/b;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lk/f/d/a;->a(Lk/f/d/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 4
    sget-object v0, Lk/f/d/b;->WARN:Lk/f/d/b;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lk/f/d/a;->a(Lk/f/d/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 5
    sget-object v0, Lk/f/d/b;->WARN:Lk/f/d/b;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lk/f/d/a;->a(Lk/f/d/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lk/f/d/b;->TRACE:Lk/f/d/b;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lk/f/d/a;->a(Lk/f/d/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 3
    sget-object v0, Lk/f/d/b;->INFO:Lk/f/d/b;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lk/f/d/a;->a(Lk/f/d/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 4
    sget-object v0, Lk/f/d/b;->WARN:Lk/f/d/b;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lk/f/d/a;->a(Lk/f/d/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 2
    sget-object v0, Lk/f/d/b;->DEBUG:Lk/f/d/b;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lk/f/d/a;->a(Lk/f/d/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-object v0, Lk/f/d/b;->TRACE:Lk/f/d/b;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lk/f/d/a;->a(Lk/f/d/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 5
    sget-object v0, Lk/f/d/b;->WARN:Lk/f/d/b;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lk/f/d/a;->a(Lk/f/d/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 3
    sget-object v0, Lk/f/d/b;->WARN:Lk/f/d/b;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lk/f/d/a;->a(Lk/f/d/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lk/f/d/b;->TRACE:Lk/f/d/b;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lk/f/d/a;->a(Lk/f/d/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 4
    sget-object v0, Lk/f/d/b;->ERROR:Lk/f/d/b;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lk/f/d/a;->a(Lk/f/d/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    sget-object v0, Lk/f/d/b;->DEBUG:Lk/f/d/b;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lk/f/d/a;->a(Lk/f/d/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lk/f/d/b;->TRACE:Lk/f/d/b;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lk/f/d/a;->a(Lk/f/d/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 3
    sget-object v0, Lk/f/d/b;->DEBUG:Lk/f/d/b;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lk/f/d/a;->a(Lk/f/d/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 2
    sget-object v0, Lk/f/d/b;->TRACE:Lk/f/d/b;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lk/f/d/a;->a(Lk/f/d/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 4
    sget-object v0, Lk/f/d/b;->ERROR:Lk/f/d/b;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lk/f/d/a;->a(Lk/f/d/b;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/f/d/a;->x:Ljava/lang/String;

    return-object v0
.end method
