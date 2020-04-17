.class public Lk/b/a/l2/e;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public A:Lk/b/a/l2/a;

.field public B:Lk/b/a/l;

.field public C:Lk/b/a/l2/c;

.field public D:Lk/b/a/u;

.field public E:Lk/b/a/r0;

.field public F:Lk/b/a/l2/k;

.field public x:Lk/b/a/l;

.field public y:Lk/b/a/l2/n;

.field public z:Lk/b/a/l2/b;


# direct methods
.method public constructor <init>(Lk/b/a/u;)V
    .locals 6

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_10

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v0

    const/16 v2, 0x9

    if-gt v0, v2, :cond_10

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v2

    instance-of v2, v2, Lk/b/a/l;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v2

    invoke-static {v2}, Lk/b/a/l;->a(Ljava/lang/Object;)Lk/b/a/l;

    move-result-object v2

    iput-object v2, p0, Lk/b/a/l2/e;->x:Lk/b/a/l;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lk/b/a/l;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Lk/b/a/l;-><init>(J)V

    iput-object v2, p0, Lk/b/a/l2/e;->x:Lk/b/a/l;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v3

    .line 1
    instance-of v4, v3, Lk/b/a/l2/n;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    check-cast v3, Lk/b/a/l2/n;

    goto :goto_2

    :cond_1
    instance-of v4, v3, Lk/b/a/b0;

    if-eqz v4, :cond_2

    new-instance v4, Lk/b/a/l2/n;

    invoke-static {v3}, Lk/b/a/b0;->a(Ljava/lang/Object;)Lk/b/a/b0;

    move-result-object v3

    invoke-direct {v4, v3}, Lk/b/a/l2/n;-><init>(Lk/b/a/b0;)V

    :goto_1
    move-object v3, v4

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    new-instance v4, Lk/b/a/l2/n;

    invoke-static {v3}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object v3

    invoke-direct {v4, v3}, Lk/b/a/l2/n;-><init>(Lk/b/a/u;)V

    goto :goto_1

    :cond_3
    move-object v3, v5

    .line 2
    :goto_2
    iput-object v3, p0, Lk/b/a/l2/e;->y:Lk/b/a/l2/n;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 3
    instance-of v4, v3, Lk/b/a/l2/b;

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    instance-of v4, v3, Lk/b/a/l2/w;

    if-eqz v4, :cond_5

    new-instance v0, Lk/b/a/l2/b;

    invoke-static {v3}, Lk/b/a/l2/w;->a(Ljava/lang/Object;)Lk/b/a/l2/w;

    move-result-object v3

    invoke-direct {v0, v3}, Lk/b/a/l2/b;-><init>(Lk/b/a/l2/w;)V

    goto :goto_4

    :cond_5
    instance-of v4, v3, Lk/b/a/l2/m;

    if-eqz v4, :cond_6

    new-instance v0, Lk/b/a/l2/b;

    check-cast v3, Lk/b/a/l2/m;

    invoke-direct {v0, v3}, Lk/b/a/l2/b;-><init>(Lk/b/a/l2/m;)V

    goto :goto_4

    :cond_6
    instance-of v4, v3, Lk/b/a/b0;

    if-eqz v4, :cond_7

    new-instance v4, Lk/b/a/l2/b;

    check-cast v3, Lk/b/a/b0;

    .line 4
    invoke-static {v3, v0}, Lk/b/a/u;->a(Lk/b/a/b0;Z)Lk/b/a/u;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/l2/w;->a(Ljava/lang/Object;)Lk/b/a/l2/w;

    move-result-object v0

    .line 5
    invoke-direct {v4, v0}, Lk/b/a/l2/b;-><init>(Lk/b/a/l2/w;)V

    move-object v0, v4

    goto :goto_4

    :cond_7
    instance-of v0, v3, Lk/b/a/u;

    if-eqz v0, :cond_8

    new-instance v0, Lk/b/a/l2/b;

    invoke-static {v3}, Lk/b/a/l2/m;->a(Ljava/lang/Object;)Lk/b/a/l2/m;

    move-result-object v3

    invoke-direct {v0, v3}, Lk/b/a/l2/b;-><init>(Lk/b/a/l2/m;)V

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown object in factory: "

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_3
    move-object v0, v3

    check-cast v0, Lk/b/a/l2/b;

    .line 6
    :goto_4
    iput-object v0, p0, Lk/b/a/l2/e;->z:Lk/b/a/l2/b;

    add-int/lit8 v0, v2, 0x2

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/l2/a;->a(Ljava/lang/Object;)Lk/b/a/l2/a;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/l2/e;->A:Lk/b/a/l2/a;

    add-int/lit8 v0, v2, 0x3

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/l;->a(Ljava/lang/Object;)Lk/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/l2/e;->B:Lk/b/a/l;

    add-int/lit8 v0, v2, 0x4

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    .line 7
    instance-of v3, v0, Lk/b/a/l2/c;

    if-eqz v3, :cond_a

    move-object v5, v0

    check-cast v5, Lk/b/a/l2/c;

    goto :goto_5

    :cond_a
    if-eqz v0, :cond_b

    new-instance v5, Lk/b/a/l2/c;

    invoke-static {v0}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object v0

    invoke-direct {v5, v0}, Lk/b/a/l2/c;-><init>(Lk/b/a/u;)V

    .line 8
    :cond_b
    :goto_5
    iput-object v5, p0, Lk/b/a/l2/e;->C:Lk/b/a/l2/c;

    add-int/lit8 v0, v2, 0x5

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/l2/e;->D:Lk/b/a/u;

    add-int/2addr v2, v1

    :goto_6
    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v0

    if-ge v2, v0, :cond_f

    invoke-virtual {p1, v2}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    instance-of v1, v0, Lk/b/a/r0;

    if-eqz v1, :cond_c

    invoke-virtual {p1, v2}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/r0;->a(Ljava/lang/Object;)Lk/b/a/r0;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/l2/e;->E:Lk/b/a/r0;

    goto :goto_7

    :cond_c
    instance-of v1, v0, Lk/b/a/u;

    if-nez v1, :cond_d

    instance-of v0, v0, Lk/b/a/l2/k;

    if-eqz v0, :cond_e

    :cond_d
    invoke-virtual {p1, v2}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/l2/k;->a(Ljava/lang/Object;)Lk/b/a/l2/k;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/l2/e;->F:Lk/b/a/l2/k;

    :cond_e
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_f
    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad sequence size: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 2

    new-instance v0, Lk/b/a/f;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lk/b/a/f;-><init>(I)V

    iget-object v1, p0, Lk/b/a/l2/e;->x:Lk/b/a/l;

    invoke-virtual {v1}, Lk/b/a/l;->k()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lk/b/a/l2/e;->x:Lk/b/a/l;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    :cond_0
    iget-object v1, p0, Lk/b/a/l2/e;->y:Lk/b/a/l2/n;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/l2/e;->z:Lk/b/a/l2/b;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/l2/e;->A:Lk/b/a/l2/a;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/l2/e;->B:Lk/b/a/l;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/l2/e;->C:Lk/b/a/l2/c;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/l2/e;->D:Lk/b/a/u;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/l2/e;->E:Lk/b/a/r0;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    :cond_1
    iget-object v1, p0, Lk/b/a/l2/e;->F:Lk/b/a/l2/k;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    :cond_2
    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v0}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    return-object v1
.end method
