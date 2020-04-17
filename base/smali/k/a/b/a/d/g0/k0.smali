.class public Lk/a/b/a/d/g0/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final u:Lk/a/b/a/b/h;


# instance fields
.field public final a:Lk/a/b/a/d/g0/a0;

.field public final b:Lk/a/b/a/d/g0/y;

.field public c:I

.field public d:I

.field public final e:Lk/a/b/a/b/h;

.field public f:Lk/a/b/a/b/h;

.field public g:Lk/a/b/a/b/h;

.field public h:Lk/a/b/a/b/h;

.field public i:Lk/a/b/a/b/h;

.field public j:Lk/a/b/a/b/h;

.field public final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lk/a/b/a/b/h;",
            "Lk/a/b/a/d/g0/e0<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lk/a/b/a/b/h;",
            "Lk/a/b/a/d/g0/e0<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lk/a/b/a/d/g0/e0;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lk/a/b/a/b/h;

.field public o:Lk/a/b/a/b/h;

.field public final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lk/a/b/a/b/h;",
            "Lk/a/b/a/d/g0/e;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lk/a/b/a/b/h;",
            "Lk/a/b/a/d/g0/e;",
            ">;"
        }
    .end annotation
.end field

.field public r:I

.field public s:Z

.field public t:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const v0, 0x7fffffff

    .line 1
    invoke-static {v0}, Lk/a/b/a/b/h;->a(I)Lk/a/b/a/b/h;

    move-result-object v0

    sput-object v0, Lk/a/b/a/d/g0/k0;->u:Lk/a/b/a/b/h;

    return-void
.end method

.method public constructor <init>(Lk/a/b/a/d/g0/a0;Lk/a/b/a/d/g0/y;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lk/a/b/a/d/g0/k0;->c:I

    .line 3
    iput v0, p0, Lk/a/b/a/d/g0/k0;->d:I

    const v0, 0xffff

    .line 4
    invoke-static {v0}, Lk/a/b/a/b/h;->a(I)Lk/a/b/a/b/h;

    move-result-object v0

    iput-object v0, p0, Lk/a/b/a/d/g0/k0;->e:Lk/a/b/a/b/h;

    .line 5
    sget-object v0, Lk/a/b/a/b/h;->z:Lk/a/b/a/b/h;

    iput-object v0, p0, Lk/a/b/a/d/g0/k0;->f:Lk/a/b/a/b/h;

    .line 6
    iput-object v0, p0, Lk/a/b/a/d/g0/k0;->g:Lk/a/b/a/b/h;

    .line 7
    iput-object v0, p0, Lk/a/b/a/d/g0/k0;->h:Lk/a/b/a/b/h;

    .line 8
    sget-object v0, Lk/a/b/a/b/h;->A:Lk/a/b/a/b/h;

    iput-object v0, p0, Lk/a/b/a/d/g0/k0;->i:Lk/a/b/a/b/h;

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lk/a/b/a/d/g0/k0;->j:Lk/a/b/a/b/h;

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lk/a/b/a/d/g0/k0;->k:Ljava/util/Map;

    .line 11
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lk/a/b/a/d/g0/k0;->l:Ljava/util/Map;

    .line 12
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lk/a/b/a/d/g0/k0;->m:Ljava/util/Map;

    .line 13
    iput-object v0, p0, Lk/a/b/a/d/g0/k0;->n:Lk/a/b/a/b/h;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lk/a/b/a/d/g0/k0;->p:Ljava/util/Map;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lk/a/b/a/d/g0/k0;->q:Ljava/util/Map;

    .line 16
    iput-object p1, p0, Lk/a/b/a/d/g0/k0;->a:Lk/a/b/a/d/g0/a0;

    .line 17
    iput-object p2, p0, Lk/a/b/a/d/g0/k0;->b:Lk/a/b/a/d/g0/y;

    .line 18
    iget-wide p1, p2, Lk/a/b/a/d/g0/y;->R:J

    .line 19
    invoke-static {p1, p2}, Lk/a/b/a/b/h;->a(J)Lk/a/b/a/b/h;

    move-result-object p1

    iput-object p1, p0, Lk/a/b/a/d/g0/k0;->h:Lk/a/b/a/b/h;

    return-void
.end method


# virtual methods
.method public a(Lk/a/b/a/b/h;)Lk/a/b/a/d/g0/e0;
    .locals 1

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/k0;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk/a/b/a/d/g0/e0;

    return-object p1
.end method

.method public a()Z
    .locals 2

    .line 1
    iget v0, p0, Lk/a/b/a/d/g0/k0;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/k0;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/k0;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/d/g0/e0;

    .line 3
    iget-object v2, v1, Lk/a/b/a/d/g0/e0;->a:Lk/a/b/a/b/h;

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, v1, Lk/a/b/a/d/g0/e0;->f:Lk/a/b/a/d/g0/m;

    invoke-virtual {v2}, Lk/a/b/a/d/g0/f;->i()V

    :cond_0
    const/4 v2, 0x0

    .line 5
    iput-object v2, v1, Lk/a/b/a/d/g0/e0;->a:Lk/a/b/a/b/h;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lk/a/b/a/d/g0/k0;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 7
    iget-object v0, p0, Lk/a/b/a/d/g0/k0;->b:Lk/a/b/a/d/g0/y;

    invoke-virtual {v0}, Lk/a/b/a/d/g0/f;->i()V

    :cond_2
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lk/a/b/a/d/g0/k0;->c:I

    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    iget v0, p0, Lk/a/b/a/d/g0/k0;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/k0;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/a/b/a/d/g0/e0;

    .line 3
    iget-object v3, v2, Lk/a/b/a/d/g0/e0;->c:Lk/a/b/a/b/h;

    if-eqz v3, :cond_1

    .line 4
    iget-object v3, v2, Lk/a/b/a/d/g0/e0;->f:Lk/a/b/a/d/g0/m;

    invoke-virtual {v3}, Lk/a/b/a/d/g0/f;->i()V

    :cond_1
    const/4 v3, 0x0

    .line 5
    iput-object v3, v2, Lk/a/b/a/d/g0/e0;->c:Lk/a/b/a/b/h;

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lk/a/b/a/d/g0/k0;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 7
    iget-object v0, p0, Lk/a/b/a/d/g0/k0;->b:Lk/a/b/a/d/g0/y;

    invoke-virtual {v0}, Lk/a/b/a/d/g0/f;->i()V

    .line 8
    :cond_3
    iput v1, p0, Lk/a/b/a/d/g0/k0;->d:I

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/k0;->b:Lk/a/b/a/d/g0/y;

    .line 2
    iget v1, v0, Lk/a/b/a/d/g0/y;->M:I

    .line 3
    iget-object v2, p0, Lk/a/b/a/d/g0/k0;->a:Lk/a/b/a/d/g0/a0;

    .line 4
    iget v2, v2, Lk/a/b/a/d/g0/a0;->T:I

    if-lez v1, :cond_1

    if-gtz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget v0, v0, Lk/a/b/a/d/g0/y;->N:I

    sub-int/2addr v1, v0

    .line 6
    div-int/2addr v1, v2

    invoke-static {v1}, Lk/a/b/a/b/h;->a(I)Lk/a/b/a/b/h;

    move-result-object v0

    iput-object v0, p0, Lk/a/b/a/d/g0/k0;->g:Lk/a/b/a/b/h;

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lk/a/b/a/d/g0/k0;->u:Lk/a/b/a/b/h;

    iput-object v0, p0, Lk/a/b/a/d/g0/k0;->g:Lk/a/b/a/b/h;

    :goto_1
    return-void
.end method
