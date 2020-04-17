.class public Lk/a/b/a/d/g0/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lk/a/b/a/b/h;

.field public b:Lk/a/b/a/d/g0/e;

.field public c:Lk/a/b/a/d/g0/e0;

.field public d:I


# direct methods
.method public constructor <init>(Lk/a/b/a/b/h;Lk/a/b/a/d/g0/e;Lk/a/b/a/d/g0/e0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lk/a/b/a/d/g0/z;->d:I

    .line 3
    iput-object p1, p0, Lk/a/b/a/d/g0/z;->a:Lk/a/b/a/b/h;

    .line 4
    iput-object p2, p0, Lk/a/b/a/d/g0/z;->b:Lk/a/b/a/d/g0/e;

    .line 5
    iput-object p3, p0, Lk/a/b/a/d/g0/z;->c:Lk/a/b/a/d/g0/e0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/z;->c:Lk/a/b/a/d/g0/e0;

    .line 2
    iget-object v0, v0, Lk/a/b/a/d/g0/e0;->f:Lk/a/b/a/d/g0/m;

    .line 3
    iget-object v1, v0, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    .line 4
    iget-object v1, v1, Lk/a/b/a/d/g0/y;->L:Lk/a/b/a/d/g0/k0;

    if-eqz v1, :cond_1

    .line 5
    instance-of v0, v0, Lk/a/b/a/d/g0/q;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, v1, Lk/a/b/a/d/g0/k0;->p:Ljava/util/Map;

    .line 7
    iget-object v3, p0, Lk/a/b/a/d/g0/z;->a:Lk/a/b/a/b/h;

    .line 8
    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, v1, Lk/a/b/a/d/g0/k0;->b:Lk/a/b/a/d/g0/y;

    .line 10
    invoke-virtual {v0, v2}, Lk/a/b/a/d/g0/f;->c(Z)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, v1, Lk/a/b/a/d/g0/k0;->q:Ljava/util/Map;

    .line 12
    iget-object v3, p0, Lk/a/b/a/d/g0/z;->a:Lk/a/b/a/b/h;

    .line 13
    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, v1, Lk/a/b/a/d/g0/k0;->b:Lk/a/b/a/d/g0/y;

    .line 15
    invoke-virtual {v0, v2}, Lk/a/b/a/d/g0/f;->c(Z)V

    .line 16
    :goto_0
    iget-object v0, p0, Lk/a/b/a/d/g0/z;->b:Lk/a/b/a/d/g0/e;

    invoke-virtual {v0}, Lk/a/b/a/d/g0/e;->n()V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 17
    throw v0
.end method
