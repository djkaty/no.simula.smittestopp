.class public Lk/f/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/f/b;


# instance fields
.field public A:Ljava/lang/reflect/Method;

.field public B:Lk/f/d/a;

.field public C:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lk/f/d/d;",
            ">;"
        }
    .end annotation
.end field

.field public final D:Z

.field public final x:Ljava/lang/String;

.field public volatile y:Lk/f/b;

.field public z:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Queue;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Queue<",
            "Lk/f/d/d;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk/f/e/d;->x:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lk/f/e/d;->C:Ljava/util/Queue;

    .line 4
    iput-boolean p3, p0, Lk/f/e/d;->D:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lk/f/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lk/f/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lk/f/b;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lk/f/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 6
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lk/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0}, Lk/f/b;->a()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lk/f/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 6
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lk/f/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lk/f/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 4
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0}, Lk/f/b;->b()Z

    move-result v0

    return v0
.end method

.method public c()Lk/f/b;
    .locals 2

    .line 6
    iget-object v0, p0, Lk/f/e/d;->y:Lk/f/b;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lk/f/e/d;->y:Lk/f/b;

    return-object v0

    .line 8
    :cond_0
    iget-boolean v0, p0, Lk/f/e/d;->D:Z

    if-eqz v0, :cond_1

    .line 9
    sget-object v0, Lk/f/e/b;->x:Lk/f/e/b;

    return-object v0

    .line 10
    :cond_1
    iget-object v0, p0, Lk/f/e/d;->B:Lk/f/d/a;

    if-nez v0, :cond_2

    .line 11
    new-instance v0, Lk/f/d/a;

    iget-object v1, p0, Lk/f/e/d;->C:Ljava/util/Queue;

    invoke-direct {v0, p0, v1}, Lk/f/d/a;-><init>(Lk/f/e/d;Ljava/util/Queue;)V

    iput-object v0, p0, Lk/f/e/d;->B:Lk/f/d/a;

    .line 12
    :cond_2
    iget-object v0, p0, Lk/f/e/d;->B:Lk/f/d/a;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lk/f/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lk/f/b;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lk/f/b;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lk/f/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lk/f/b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lk/f/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lk/f/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0}, Lk/f/b;->d()Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lk/f/b;->e(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lk/f/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0}, Lk/f/b;->e()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lk/f/e/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lk/f/e/d;

    .line 3
    iget-object v2, p0, Lk/f/e/d;->x:Ljava/lang/String;

    iget-object p1, p1, Lk/f/e/d;->x:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public f()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/f/e/d;->c()Lk/f/b;

    move-result-object v0

    invoke-interface {v0}, Lk/f/b;->f()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lk/f/e/d;->z:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lk/f/e/d;->y:Lk/f/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "log"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lk/f/d/c;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lk/f/e/d;->A:Ljava/lang/reflect/Method;

    .line 4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lk/f/e/d;->z:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lk/f/e/d;->z:Ljava/lang/Boolean;

    .line 6
    :goto_0
    iget-object v0, p0, Lk/f/e/d;->z:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/f/e/d;->x:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/f/e/d;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
