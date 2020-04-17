.class public Lk/a/b/a/d/g0/d;
.super Lk/a/b/a/d/g0/f;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/d/o;


# instance fields
.field public H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk/a/b/a/d/g0/y;",
            ">;"
        }
    .end annotation
.end field

.field public I:Lk/a/b/a/d/g0/f;

.field public J:Lk/a/b/a/d/g0/f;

.field public K:I

.field public L:Lk/a/b/a/d/g0/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a/b/a/d/g0/n<",
            "Lk/a/b/a/d/g0/y;",
            ">;"
        }
    .end annotation
.end field

.field public M:Lk/a/b/a/d/g0/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a/b/a/d/g0/n<",
            "Lk/a/b/a/d/g0/y;",
            ">;"
        }
    .end annotation
.end field

.field public N:Lk/a/b/a/d/g0/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a/b/a/d/g0/n<",
            "Lk/a/b/a/d/g0/m;",
            ">;"
        }
    .end annotation
.end field

.field public O:Lk/a/b/a/d/g0/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a/b/a/d/g0/n<",
            "Lk/a/b/a/d/g0/m;",
            ">;"
        }
    .end annotation
.end field

.field public P:Lk/a/b/a/d/g0/e;

.field public Q:Lk/a/b/a/d/g0/e;

.field public R:Lk/a/b/a/d/g0/a0;

.field public S:Lk/a/b/a/d/g0/e;

.field public T:Lk/a/b/a/d/g0/e;

.field public U:I

.field public V:Ljava/lang/String;

.field public W:Ljava/lang/String;

.field public X:Lk/a/b/a/d/g0/c;

.field public Y:Lk/a/b/a/g/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk/a/b/a/d/g0/f;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk/a/b/a/d/g0/d;->H:Ljava/util/List;

    const v0, 0xffff

    .line 3
    iput v0, p0, Lk/a/b/a/d/g0/d;->K:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lk/a/b/a/d/g0/d;->U:I

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lk/a/b/a/d/g0/d;->V:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public B()V
    .locals 1

    .line 1
    sget-object v0, Lk/a/b/a/d/h$b;->CONNECTION_LOCAL_CLOSE:Lk/a/b/a/d/h$b;

    invoke-virtual {p0, v0, p0}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    return-void
.end method

.method public D()Lk/a/b/a/d/y;
    .locals 2

    .line 1
    new-instance v0, Lk/a/b/a/d/g0/y;

    invoke-direct {v0, p0}, Lk/a/b/a/d/g0/y;-><init>(Lk/a/b/a/d/g0/d;)V

    .line 2
    iget-object v1, p0, Lk/a/b/a/d/g0/d;->H:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public F()V
    .locals 1

    .line 1
    sget-object v0, Lk/a/b/a/d/h$b;->CONNECTION_LOCAL_OPEN:Lk/a/b/a/d/h$b;

    invoke-virtual {p0, v0, p0}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    return-void
.end method

.method public S()V
    .locals 1

    .line 1
    sget-object v0, Lk/a/b/a/d/h$b;->CONNECTION_FINAL:Lk/a/b/a/d/h$b;

    invoke-virtual {p0, v0, p0}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    return-void
.end method

.method public a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;
    .locals 1

    .line 46
    iget-object v0, p0, Lk/a/b/a/d/g0/d;->X:Lk/a/b/a/d/g0/c;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, p1, p2}, Lk/a/b/a/d/g0/c;->a(Lk/a/b/a/d/i;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lk/a/b/a/d/b;)V
    .locals 2

    .line 34
    check-cast p1, Lk/a/b/a/d/g0/c;

    iput-object p1, p0, Lk/a/b/a/d/g0/d;->X:Lk/a/b/a/d/g0/c;

    .line 35
    sget-object p1, Lk/a/b/a/d/h$b;->CONNECTION_INIT:Lk/a/b/a/d/h$b;

    invoke-virtual {p0, p1, p0}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    .line 36
    iget-object p1, p0, Lk/a/b/a/d/g0/d;->L:Lk/a/b/a/d/g0/n;

    :goto_0
    if-eqz p1, :cond_0

    .line 37
    sget-object v0, Lk/a/b/a/d/h$b;->SESSION_INIT:Lk/a/b/a/d/h$b;

    .line 38
    iget-object v1, p1, Lk/a/b/a/d/g0/n;->a:Ljava/lang/Object;

    .line 39
    invoke-virtual {p0, v0, v1}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    .line 40
    iget-object p1, p1, Lk/a/b/a/d/g0/n;->c:Lk/a/b/a/d/g0/n;

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lk/a/b/a/d/g0/d;->N:Lk/a/b/a/d/g0/n;

    :goto_1
    if-eqz p1, :cond_1

    .line 42
    sget-object v0, Lk/a/b/a/d/h$b;->LINK_INIT:Lk/a/b/a/d/h$b;

    .line 43
    iget-object v1, p1, Lk/a/b/a/d/g0/n;->a:Ljava/lang/Object;

    .line 44
    invoke-virtual {p0, v0, v1}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    .line 45
    iget-object p1, p1, Lk/a/b/a/d/g0/n;->c:Lk/a/b/a/d/g0/n;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(Lk/a/b/a/d/g0/e;)V
    .locals 5

    if-eqz p1, :cond_e

    .line 1
    iget-boolean v0, p1, Lk/a/b/a/d/g0/e;->J:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_6

    .line 2
    invoke-virtual {p1}, Lk/a/b/a/d/g0/e;->t()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p1, Lk/a/b/a/d/g0/e;->H:Lk/a/b/a/d/g0/m;

    .line 4
    instance-of v4, v0, Lk/a/b/a/d/g0/x;

    if-eqz v4, :cond_1

    .line 5
    iget-object v4, v0, Lk/a/b/a/d/g0/m;->K:Lk/a/b/a/d/g0/e;

    if-ne v4, p1, :cond_1

    .line 6
    check-cast v0, Lk/a/b/a/d/g0/x;

    .line 7
    iget v0, v0, Lk/a/b/a/d/g0/m;->R:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 8
    iget-boolean v0, p1, Lk/a/b/a/d/g0/e;->R:Z

    if-eqz v0, :cond_6

    .line 9
    :cond_2
    iget-boolean v0, p1, Lk/a/b/a/d/g0/e;->B:Z

    if-eqz v0, :cond_3

    goto :goto_3

    .line 10
    :cond_3
    iput-object v1, p1, Lk/a/b/a/d/g0/e;->z:Lk/a/b/a/d/g0/e;

    .line 11
    iget-object v0, p0, Lk/a/b/a/d/g0/d;->Q:Lk/a/b/a/d/g0/e;

    .line 12
    iput-object v0, p1, Lk/a/b/a/d/g0/e;->A:Lk/a/b/a/d/g0/e;

    if-eqz v0, :cond_4

    .line 13
    iput-object p1, v0, Lk/a/b/a/d/g0/e;->z:Lk/a/b/a/d/g0/e;

    .line 14
    :cond_4
    iput-object p1, p0, Lk/a/b/a/d/g0/d;->Q:Lk/a/b/a/d/g0/e;

    .line 15
    iget-object v0, p0, Lk/a/b/a/d/g0/d;->P:Lk/a/b/a/d/g0/e;

    if-nez v0, :cond_5

    .line 16
    iput-object p1, p0, Lk/a/b/a/d/g0/d;->P:Lk/a/b/a/d/g0/e;

    .line 17
    :cond_5
    iput-boolean v3, p1, Lk/a/b/a/d/g0/e;->B:Z

    goto :goto_3

    .line 18
    :cond_6
    iget-boolean v0, p1, Lk/a/b/a/d/g0/e;->B:Z

    if-nez v0, :cond_7

    goto :goto_3

    .line 19
    :cond_7
    iget-object v3, p1, Lk/a/b/a/d/g0/e;->z:Lk/a/b/a/d/g0/e;

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_8
    if-nez v0, :cond_9

    .line 20
    iget-object v0, p1, Lk/a/b/a/d/g0/e;->H:Lk/a/b/a/d/g0/m;

    .line 21
    iget-object v0, v0, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    .line 22
    iget-object v0, v0, Lk/a/b/a/d/g0/y;->H:Lk/a/b/a/d/g0/d;

    .line 23
    iget-object v3, v0, Lk/a/b/a/d/g0/d;->P:Lk/a/b/a/d/g0/e;

    goto :goto_2

    :cond_9
    move-object v3, v1

    .line 24
    :goto_2
    iget-object v0, p1, Lk/a/b/a/d/g0/e;->A:Lk/a/b/a/d/g0/e;

    if-eqz v0, :cond_a

    .line 25
    iput-object v3, v0, Lk/a/b/a/d/g0/e;->z:Lk/a/b/a/d/g0/e;

    :cond_a
    if-eqz v3, :cond_b

    .line 26
    iput-object v0, v3, Lk/a/b/a/d/g0/e;->A:Lk/a/b/a/d/g0/e;

    .line 27
    :cond_b
    iput-object v1, p1, Lk/a/b/a/d/g0/e;->z:Lk/a/b/a/d/g0/e;

    .line 28
    iput-object v1, p1, Lk/a/b/a/d/g0/e;->A:Lk/a/b/a/d/g0/e;

    .line 29
    iget-object v1, p0, Lk/a/b/a/d/g0/d;->P:Lk/a/b/a/d/g0/e;

    if-ne v1, p1, :cond_c

    .line 30
    iput-object v3, p0, Lk/a/b/a/d/g0/d;->P:Lk/a/b/a/d/g0/e;

    .line 31
    :cond_c
    iget-object v1, p0, Lk/a/b/a/d/g0/d;->Q:Lk/a/b/a/d/g0/e;

    if-ne v1, p1, :cond_d

    .line 32
    iput-object v0, p0, Lk/a/b/a/d/g0/d;->Q:Lk/a/b/a/d/g0/e;

    .line 33
    :cond_d
    iput-boolean v2, p1, Lk/a/b/a/d/g0/e;->B:Z

    :cond_e
    :goto_3
    return-void
.end method

.method public b()Lk/a/b/a/g/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/d;->Y:Lk/a/b/a/g/d;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/b/a/d/g0/d;->W:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/d;->W:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lk/a/b/a/d/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/d;->R:Lk/a/b/a/d/g0/a0;

    return-object v0
.end method

.method public n()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lk/a/b/a/d/g0/d;->H:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/d/y;

    .line 3
    invoke-interface {v1}, Lk/a/b/a/d/f;->a()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lk/a/b/a/d/g0/d;->H:Ljava/util/List;

    return-void
.end method

.method public o()Lk/a/b/a/d/g0/d;
    .locals 0

    return-object p0
.end method
