.class public abstract Lk/a/b/a/d/g0/m;
.super Lk/a/b/a/d/g0/f;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/d/n;


# instance fields
.field public final H:Lk/a/b/a/d/g0/y;

.field public I:Lk/a/b/a/d/g0/e;

.field public J:Lk/a/b/a/d/g0/e;

.field public K:Lk/a/b/a/d/g0/e;

.field public L:Ljava/lang/String;

.field public M:Lk/a/b/a/b/n/q;

.field public N:Lk/a/b/a/b/n/q;

.field public O:Lk/a/b/a/b/n/r;

.field public P:Lk/a/b/a/b/n/r;

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:Lk/a/b/a/b/n/p;

.field public V:Lk/a/b/a/b/n/n;

.field public W:Lk/a/b/a/d/g0/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a/b/a/d/g0/n<",
            "Lk/a/b/a/d/g0/m;",
            ">;"
        }
    .end annotation
.end field

.field public X:Z

.field public Y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lk/a/b/a/b/f;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk/a/b/a/d/g0/y;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/a/b/a/d/g0/f;-><init>()V

    .line 2
    iput-object p1, p0, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    .line 3
    invoke-virtual {p1}, Lk/a/b/a/d/g0/f;->w()V

    .line 4
    iput-object p2, p0, Lk/a/b/a/d/g0/m;->L:Ljava/lang/String;

    .line 5
    iget-object p1, p1, Lk/a/b/a/d/g0/y;->H:Lk/a/b/a/d/g0/d;

    .line 6
    iget-object p2, p1, Lk/a/b/a/d/g0/d;->N:Lk/a/b/a/d/g0/n;

    if-nez p2, :cond_0

    .line 7
    new-instance p2, Lk/a/b/a/d/g0/n;

    invoke-direct {p2, p0}, Lk/a/b/a/d/g0/n;-><init>(Ljava/lang/Object;)V

    .line 8
    iput-object p2, p1, Lk/a/b/a/d/g0/d;->O:Lk/a/b/a/d/g0/n;

    iput-object p2, p1, Lk/a/b/a/d/g0/d;->N:Lk/a/b/a/d/g0/n;

    goto :goto_0

    .line 9
    :cond_0
    iget-object p2, p1, Lk/a/b/a/d/g0/d;->O:Lk/a/b/a/d/g0/n;

    invoke-virtual {p2, p0}, Lk/a/b/a/d/g0/n;->a(Ljava/lang/Object;)Lk/a/b/a/d/g0/n;

    move-result-object p2

    iput-object p2, p1, Lk/a/b/a/d/g0/d;->O:Lk/a/b/a/d/g0/n;

    .line 10
    :goto_0
    iput-object p2, p0, Lk/a/b/a/d/g0/m;->W:Lk/a/b/a/d/g0/n;

    .line 11
    sget-object p2, Lk/a/b/a/d/h$b;->LINK_INIT:Lk/a/b/a/d/h$b;

    invoke-virtual {p1, p2, p0}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    return-void
.end method


# virtual methods
.method public A()Lk/a/b/a/b/n/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/m;->M:Lk/a/b/a/b/n/q;

    return-object v0
.end method

.method public B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    .line 2
    iget-object v0, v0, Lk/a/b/a/d/g0/y;->H:Lk/a/b/a/d/g0/d;

    .line 3
    sget-object v1, Lk/a/b/a/d/h$b;->LINK_LOCAL_CLOSE:Lk/a/b/a/d/h$b;

    invoke-virtual {v0, v1, p0}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    return-void
.end method

.method public F()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    .line 2
    iget-object v0, v0, Lk/a/b/a/d/g0/y;->H:Lk/a/b/a/d/g0/d;

    .line 3
    sget-object v1, Lk/a/b/a/d/h$b;->LINK_LOCAL_OPEN:Lk/a/b/a/d/h$b;

    invoke-virtual {v0, v1, p0}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    return-void
.end method

.method public S()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    .line 2
    iget-object v0, v0, Lk/a/b/a/d/g0/y;->H:Lk/a/b/a/d/g0/d;

    .line 3
    sget-object v1, Lk/a/b/a/d/h$b;->LINK_FINAL:Lk/a/b/a/d/h$b;

    invoke-virtual {v0, v1, p0}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    .line 4
    iget-object v0, p0, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    invoke-virtual {v0}, Lk/a/b/a/d/g0/f;->i()V

    return-void
.end method

.method public T()Lk/a/b/a/d/y;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    return-object v0
.end method

.method public abstract V()Lk/a/b/a/d/g0/e0;
.end method

.method public a([B)Lk/a/b/a/d/e;
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lk/a/b/a/d/g0/m;->c([BII)Lk/a/b/a/d/g0/e;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lk/a/b/a/b/f;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 6
    iput-object p1, p0, Lk/a/b/a/d/g0/m;->Y:Ljava/util/Map;

    return-void
.end method

.method public a(Lk/a/b/a/b/n/n;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lk/a/b/a/d/g0/m;->V:Lk/a/b/a/b/n/n;

    return-void
.end method

.method public a(Lk/a/b/a/b/n/p;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lk/a/b/a/d/g0/m;->U:Lk/a/b/a/b/n/p;

    return-void
.end method

.method public a(Lk/a/b/a/b/n/q;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lk/a/b/a/d/g0/m;->M:Lk/a/b/a/b/n/q;

    return-void
.end method

.method public a(Lk/a/b/a/b/n/r;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lk/a/b/a/d/g0/m;->O:Lk/a/b/a/b/n/r;

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lk/a/b/a/d/g0/m;->R:I

    return-void
.end method

.method public c([BII)Lk/a/b/a/d/g0/e;
    .locals 0

    if-nez p2, :cond_2

    .line 1
    array-length p2, p1

    if-ne p3, p2, :cond_2

    .line 2
    iget p2, p0, Lk/a/b/a/d/g0/m;->Q:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lk/a/b/a/d/g0/m;->Q:I

    .line 3
    :try_start_0
    new-instance p2, Lk/a/b/a/d/g0/e;

    iget-object p3, p0, Lk/a/b/a/d/g0/m;->J:Lk/a/b/a/d/g0/e;

    invoke-direct {p2, p1, p0, p3}, Lk/a/b/a/d/g0/e;-><init>([BLk/a/b/a/d/g0/m;Lk/a/b/a/d/g0/e;)V

    .line 4
    iget-object p1, p0, Lk/a/b/a/d/g0/m;->J:Lk/a/b/a/d/g0/e;

    if-nez p1, :cond_0

    .line 5
    iput-object p2, p0, Lk/a/b/a/d/g0/m;->I:Lk/a/b/a/d/g0/e;

    .line 6
    :cond_0
    iput-object p2, p0, Lk/a/b/a/d/g0/m;->J:Lk/a/b/a/d/g0/e;

    .line 7
    iget-object p1, p0, Lk/a/b/a/d/g0/m;->K:Lk/a/b/a/d/g0/e;

    if-nez p1, :cond_1

    .line 8
    iput-object p2, p0, Lk/a/b/a/d/g0/m;->K:Lk/a/b/a/d/g0/e;

    .line 9
    :cond_1
    iget-object p1, p0, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    .line 10
    iget-object p1, p1, Lk/a/b/a/d/g0/y;->H:Lk/a/b/a/d/g0/d;

    .line 11
    invoke-virtual {p1, p2}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/g0/e;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 13
    throw p1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At present delivery tag must be the whole byte array"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/m;->K:Lk/a/b/a/d/g0/e;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lk/a/b/a/d/g0/e;->y:Lk/a/b/a/d/g0/e;

    .line 3
    iput-object v1, p0, Lk/a/b/a/d/g0/m;->K:Lk/a/b/a/d/g0/e;

    .line 4
    iget-object v1, p0, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    .line 5
    iget-object v1, v1, Lk/a/b/a/d/g0/y;->H:Lk/a/b/a/d/g0/d;

    .line 6
    invoke-virtual {v1, v0}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/g0/e;)V

    .line 7
    iget-object v0, p0, Lk/a/b/a/d/g0/m;->K:Lk/a/b/a/d/g0/e;

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    .line 9
    iget-object v1, v1, Lk/a/b/a/d/g0/y;->H:Lk/a/b/a/d/g0/d;

    .line 10
    invoke-virtual {v1, v0}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/g0/e;)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public g()I
    .locals 3

    .line 1
    instance-of v0, p0, Lk/a/b/a/d/g0/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lk/a/b/a/d/g0/m;->X:Z

    if-eqz v0, :cond_2

    .line 3
    iget v0, p0, Lk/a/b/a/d/g0/m;->R:I

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    iget v0, p0, Lk/a/b/a/d/g0/m;->R:I

    .line 5
    iput v0, p0, Lk/a/b/a/d/g0/m;->T:I

    .line 6
    invoke-virtual {p0, v1}, Lk/a/b/a/d/g0/m;->b(I)V

    .line 7
    invoke-virtual {p0, v2}, Lk/a/b/a/d/g0/f;->c(Z)V

    .line 8
    iget v1, p0, Lk/a/b/a/d/g0/m;->T:I

    goto :goto_1

    .line 9
    :cond_1
    iget v0, p0, Lk/a/b/a/d/g0/m;->T:I

    .line 10
    iput v1, p0, Lk/a/b/a/d/g0/m;->T:I

    move v1, v0

    :cond_2
    :goto_1
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/m;->L:Ljava/lang/String;

    return-object v0
.end method

.method public head()Lk/a/b/a/d/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/m;->I:Lk/a/b/a/d/g0/e;

    return-object v0
.end method

.method public k()Lk/a/b/a/d/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/m;->K:Lk/a/b/a/d/g0/e;

    return-object v0
.end method

.method public n()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/m;->I:Lk/a/b/a/d/g0/e;

    :goto_0
    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lk/a/b/a/d/g0/e;->y:Lk/a/b/a/d/g0/e;

    .line 3
    invoke-virtual {v0}, Lk/a/b/a/d/g0/e;->R()V

    move-object v0, v1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    .line 5
    iget-object v0, v0, Lk/a/b/a/d/g0/y;->H:Lk/a/b/a/d/g0/d;

    .line 6
    iget-object v1, p0, Lk/a/b/a/d/g0/m;->W:Lk/a/b/a/d/g0/n;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 7
    iget-object v3, v1, Lk/a/b/a/d/g0/n;->b:Lk/a/b/a/d/g0/n;

    .line 8
    iget-object v4, v1, Lk/a/b/a/d/g0/n;->c:Lk/a/b/a/d/g0/n;

    .line 9
    iget-object v5, v0, Lk/a/b/a/d/g0/d;->N:Lk/a/b/a/d/g0/n;

    if-ne v5, v1, :cond_1

    .line 10
    iput-object v4, v0, Lk/a/b/a/d/g0/d;->N:Lk/a/b/a/d/g0/n;

    .line 11
    :cond_1
    iget-object v4, v0, Lk/a/b/a/d/g0/d;->O:Lk/a/b/a/d/g0/n;

    if-ne v4, v1, :cond_2

    .line 12
    iput-object v3, v0, Lk/a/b/a/d/g0/d;->O:Lk/a/b/a/d/g0/n;

    .line 13
    :cond_2
    iget-object v0, v1, Lk/a/b/a/d/g0/n;->b:Lk/a/b/a/d/g0/n;

    .line 14
    iget-object v3, v1, Lk/a/b/a/d/g0/n;->c:Lk/a/b/a/d/g0/n;

    if-eqz v0, :cond_3

    .line 15
    iput-object v3, v0, Lk/a/b/a/d/g0/n;->c:Lk/a/b/a/d/g0/n;

    :cond_3
    if-eqz v3, :cond_4

    .line 16
    iput-object v0, v3, Lk/a/b/a/d/g0/n;->b:Lk/a/b/a/d/g0/n;

    .line 17
    :cond_4
    iput-object v2, v1, Lk/a/b/a/d/g0/n;->b:Lk/a/b/a/d/g0/n;

    iput-object v2, v1, Lk/a/b/a/d/g0/n;->c:Lk/a/b/a/d/g0/n;

    .line 18
    iput-object v2, p0, Lk/a/b/a/d/g0/m;->W:Lk/a/b/a/d/g0/n;

    return-void

    .line 19
    :cond_5
    throw v2
.end method

.method public o()Lk/a/b/a/d/g0/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    .line 2
    iget-object v0, v0, Lk/a/b/a/d/g0/y;->H:Lk/a/b/a/d/g0/d;

    return-object v0
.end method

.method public r()Lk/a/b/a/b/n/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/m;->P:Lk/a/b/a/b/n/r;

    return-object v0
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lk/a/b/a/d/g0/m;->R:I

    return v0
.end method

.method public z()Lk/a/b/a/b/n/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/m;->N:Lk/a/b/a/b/n/q;

    return-object v0
.end method
