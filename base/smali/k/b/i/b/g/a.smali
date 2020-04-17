.class public final Lk/b/i/b/g/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public A:I

.field public B:Lk/b/i/b/g/u;

.field public C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk/b/i/b/g/u;",
            ">;"
        }
    .end annotation
.end field

.field public D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList<",
            "Lk/b/i/b/g/u;",
            ">;>;"
        }
    .end annotation
.end field

.field public E:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lk/b/i/b/g/u;",
            ">;"
        }
    .end annotation
.end field

.field public F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lk/b/i/b/g/u;",
            ">;"
        }
    .end annotation
.end field

.field public G:I

.field public H:Z

.field public transient I:I

.field public transient x:Lk/b/i/b/g/k;

.field public final y:I

.field public final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk/b/i/b/g/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk/b/i/b/g/a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk/b/i/b/g/k;

    iget-object v1, p1, Lk/b/i/b/g/a;->x:Lk/b/i/b/g/k;

    .line 1
    iget-object v1, v1, Lk/b/i/b/g/k;->a:Lk/b/i/b/g/m;

    .line 2
    invoke-direct {v0, v1}, Lk/b/i/b/g/k;-><init>(Lk/b/i/b/g/m;)V

    iput-object v0, p0, Lk/b/i/b/g/a;->x:Lk/b/i/b/g/k;

    iget v0, p1, Lk/b/i/b/g/a;->y:I

    iput v0, p0, Lk/b/i/b/g/a;->y:I

    iget v0, p1, Lk/b/i/b/g/a;->A:I

    iput v0, p0, Lk/b/i/b/g/a;->A:I

    iget-object v0, p1, Lk/b/i/b/g/a;->B:Lk/b/i/b/g/u;

    iput-object v0, p0, Lk/b/i/b/g/a;->B:Lk/b/i/b/g/u;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk/b/i/b/g/a;->C:Ljava/util/List;

    iget-object v1, p1, Lk/b/i/b/g/a;->C:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lk/b/i/b/g/a;->D:Ljava/util/Map;

    iget-object v0, p1, Lk/b/i/b/g/a;->D:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lk/b/i/b/g/a;->D:Ljava/util/Map;

    iget-object v3, p1, Lk/b/i/b/g/a;->D:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lk/b/i/b/g/a;->E:Ljava/util/Stack;

    iget-object v1, p1, Lk/b/i/b/g/a;->E:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk/b/i/b/g/a;->z:Ljava/util/List;

    iget-object v0, p1, Lk/b/i/b/g/a;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lk/b/i/b/g/a;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/b/i/b/g/c;

    invoke-virtual {v2}, Lk/b/i/b/g/c;->clone()Lk/b/i/b/g/c;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p1, Lk/b/i/b/g/a;->F:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lk/b/i/b/g/a;->F:Ljava/util/Map;

    iget v0, p1, Lk/b/i/b/g/a;->G:I

    iput v0, p0, Lk/b/i/b/g/a;->G:I

    iget v0, p1, Lk/b/i/b/g/a;->I:I

    iput v0, p0, Lk/b/i/b/g/a;->I:I

    iget-boolean p1, p1, Lk/b/i/b/g/a;->H:Z

    iput-boolean p1, p0, Lk/b/i/b/g/a;->H:Z

    return-void
.end method

.method public constructor <init>(Lk/b/i/b/g/a;Lk/b/a/o;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk/b/i/b/g/k;

    new-instance v1, Lk/b/i/b/g/m;

    invoke-direct {v1, p2}, Lk/b/i/b/g/m;-><init>(Lk/b/a/o;)V

    invoke-direct {v0, v1}, Lk/b/i/b/g/k;-><init>(Lk/b/i/b/g/m;)V

    iput-object v0, p0, Lk/b/i/b/g/a;->x:Lk/b/i/b/g/k;

    iget p2, p1, Lk/b/i/b/g/a;->y:I

    iput p2, p0, Lk/b/i/b/g/a;->y:I

    iget p2, p1, Lk/b/i/b/g/a;->A:I

    iput p2, p0, Lk/b/i/b/g/a;->A:I

    iget-object p2, p1, Lk/b/i/b/g/a;->B:Lk/b/i/b/g/u;

    iput-object p2, p0, Lk/b/i/b/g/a;->B:Lk/b/i/b/g/u;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lk/b/i/b/g/a;->C:Ljava/util/List;

    iget-object v0, p1, Lk/b/i/b/g/a;->C:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    iput-object p2, p0, Lk/b/i/b/g/a;->D:Ljava/util/Map;

    iget-object p2, p1, Lk/b/i/b/g/a;->D:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lk/b/i/b/g/a;->D:Ljava/util/Map;

    iget-object v2, p1, Lk/b/i/b/g/a;->D:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/Stack;

    invoke-direct {p2}, Ljava/util/Stack;-><init>()V

    iput-object p2, p0, Lk/b/i/b/g/a;->E:Ljava/util/Stack;

    iget-object v0, p1, Lk/b/i/b/g/a;->E:Ljava/util/Stack;

    invoke-virtual {p2, v0}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lk/b/i/b/g/a;->z:Ljava/util/List;

    iget-object p2, p1, Lk/b/i/b/g/a;->z:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lk/b/i/b/g/a;->z:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/b/i/b/g/c;

    invoke-virtual {v1}, Lk/b/i/b/g/c;->clone()Lk/b/i/b/g/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/util/TreeMap;

    iget-object v0, p1, Lk/b/i/b/g/a;->F:Ljava/util/Map;

    invoke-direct {p2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lk/b/i/b/g/a;->F:Ljava/util/Map;

    iget v0, p1, Lk/b/i/b/g/a;->G:I

    iput v0, p0, Lk/b/i/b/g/a;->G:I

    iget v1, p1, Lk/b/i/b/g/a;->I:I

    iput v1, p0, Lk/b/i/b/g/a;->I:I

    iget-boolean p1, p1, Lk/b/i/b/g/a;->H:Z

    iput-boolean p1, p0, Lk/b/i/b/g/a;->H:Z

    .line 3
    iget-object p1, p0, Lk/b/i/b/g/a;->C:Ljava/util/List;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lk/b/i/b/g/a;->D:Ljava/util/Map;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lk/b/i/b/g/a;->E:Ljava/util/Stack;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lk/b/i/b/g/a;->z:Ljava/util/List;

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    iget p1, p0, Lk/b/i/b/g/a;->y:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lk/b/c/e/a;->a(IJ)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "index in BDS state out of bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "keep == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "treeHashInstances == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "stack == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "retain == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "authenticationPath == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lk/b/i/b/g/a;[B[BLk/b/i/b/g/j;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk/b/i/b/g/k;

    iget-object v1, p1, Lk/b/i/b/g/a;->x:Lk/b/i/b/g/k;

    .line 4
    iget-object v1, v1, Lk/b/i/b/g/k;->a:Lk/b/i/b/g/m;

    .line 5
    invoke-direct {v0, v1}, Lk/b/i/b/g/k;-><init>(Lk/b/i/b/g/m;)V

    iput-object v0, p0, Lk/b/i/b/g/a;->x:Lk/b/i/b/g/k;

    iget v0, p1, Lk/b/i/b/g/a;->y:I

    iput v0, p0, Lk/b/i/b/g/a;->y:I

    iget v0, p1, Lk/b/i/b/g/a;->A:I

    iput v0, p0, Lk/b/i/b/g/a;->A:I

    iget-object v0, p1, Lk/b/i/b/g/a;->B:Lk/b/i/b/g/u;

    iput-object v0, p0, Lk/b/i/b/g/a;->B:Lk/b/i/b/g/u;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk/b/i/b/g/a;->C:Ljava/util/List;

    iget-object v1, p1, Lk/b/i/b/g/a;->C:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lk/b/i/b/g/a;->D:Ljava/util/Map;

    iget-object v0, p1, Lk/b/i/b/g/a;->D:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lk/b/i/b/g/a;->D:Ljava/util/Map;

    iget-object v3, p1, Lk/b/i/b/g/a;->D:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lk/b/i/b/g/a;->E:Ljava/util/Stack;

    iget-object v1, p1, Lk/b/i/b/g/a;->E:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk/b/i/b/g/a;->z:Ljava/util/List;

    iget-object v0, p1, Lk/b/i/b/g/a;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lk/b/i/b/g/a;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/b/i/b/g/c;

    invoke-virtual {v2}, Lk/b/i/b/g/c;->clone()Lk/b/i/b/g/c;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p1, Lk/b/i/b/g/a;->F:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lk/b/i/b/g/a;->F:Ljava/util/Map;

    iget v0, p1, Lk/b/i/b/g/a;->G:I

    iput v0, p0, Lk/b/i/b/g/a;->G:I

    iget p1, p1, Lk/b/i/b/g/a;->I:I

    iput p1, p0, Lk/b/i/b/g/a;->I:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lk/b/i/b/g/a;->H:Z

    invoke-virtual {p0, p2, p3, p4}, Lk/b/i/b/g/a;->b([B[BLk/b/i/b/g/j;)V

    return-void
.end method

.method public constructor <init>(Lk/b/i/b/g/k;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/b/i/b/g/a;->x:Lk/b/i/b/g/k;

    iput p2, p0, Lk/b/i/b/g/a;->y:I

    iput p4, p0, Lk/b/i/b/g/a;->I:I

    iput p3, p0, Lk/b/i/b/g/a;->A:I

    if-gt p3, p2, :cond_1

    const/4 p1, 0x2

    if-lt p3, p1, :cond_1

    sub-int/2addr p2, p3

    rem-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lk/b/i/b/g/a;->C:Ljava/util/List;

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lk/b/i/b/g/a;->D:Ljava/util/Map;

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lk/b/i/b/g/a;->E:Ljava/util/Stack;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lk/b/i/b/g/a;->z:Ljava/util/List;

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    iget-object p4, p0, Lk/b/i/b/g/a;->z:Ljava/util/List;

    new-instance v0, Lk/b/i/b/g/c;

    invoke-direct {v0, p3}, Lk/b/i/b/g/c;-><init>(I)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    iput-object p2, p0, Lk/b/i/b/g/a;->F:Ljava/util/Map;

    iput p1, p0, Lk/b/i/b/g/a;->G:I

    iput-boolean p1, p0, Lk/b/i/b/g/a;->H:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "illegal value for BDS parameter k"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a([B[BLk/b/i/b/g/j;)V
    .locals 10

    if-eqz p3, :cond_6

    new-instance v0, Lk/b/i/b/g/i$b;

    invoke-direct {v0}, Lk/b/i/b/g/i$b;-><init>()V

    .line 1
    iget v1, p3, Lk/b/i/b/g/o;->a:I

    .line 2
    invoke-virtual {v0, v1}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v0

    check-cast v0, Lk/b/i/b/g/i$b;

    .line 3
    iget-wide v1, p3, Lk/b/i/b/g/o;->b:J

    .line 4
    invoke-virtual {v0, v1, v2}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v0

    check-cast v0, Lk/b/i/b/g/i$b;

    invoke-virtual {v0}, Lk/b/i/b/g/i$b;->b()Lk/b/i/b/g/o;

    move-result-object v0

    check-cast v0, Lk/b/i/b/g/i;

    new-instance v1, Lk/b/i/b/g/g$b;

    invoke-direct {v1}, Lk/b/i/b/g/g$b;-><init>()V

    .line 5
    iget v2, p3, Lk/b/i/b/g/o;->a:I

    .line 6
    invoke-virtual {v1, v2}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v1

    check-cast v1, Lk/b/i/b/g/g$b;

    .line 7
    iget-wide v2, p3, Lk/b/i/b/g/o;->b:J

    .line 8
    invoke-virtual {v1, v2, v3}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v1

    check-cast v1, Lk/b/i/b/g/g$b;

    invoke-virtual {v1}, Lk/b/i/b/g/g$b;->b()Lk/b/i/b/g/o;

    move-result-object v1

    check-cast v1, Lk/b/i/b/g/g;

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lk/b/i/b/g/a;->y:I

    const/4 v4, 0x1

    shl-int v3, v4, v3

    if-ge v2, v3, :cond_5

    new-instance v3, Lk/b/i/b/g/j$b;

    invoke-direct {v3}, Lk/b/i/b/g/j$b;-><init>()V

    .line 9
    iget v5, p3, Lk/b/i/b/g/o;->a:I

    .line 10
    invoke-virtual {v3, v5}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v3

    check-cast v3, Lk/b/i/b/g/j$b;

    .line 11
    iget-wide v5, p3, Lk/b/i/b/g/o;->b:J

    .line 12
    invoke-virtual {v3, v5, v6}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v3

    check-cast v3, Lk/b/i/b/g/j$b;

    .line 13
    iput v2, v3, Lk/b/i/b/g/j$b;->e:I

    .line 14
    iget v5, p3, Lk/b/i/b/g/j;->f:I

    .line 15
    iput v5, v3, Lk/b/i/b/g/j$b;->f:I

    .line 16
    iget v5, p3, Lk/b/i/b/g/j;->g:I

    .line 17
    iput v5, v3, Lk/b/i/b/g/j$b;->g:I

    .line 18
    iget p3, p3, Lk/b/i/b/g/o;->d:I

    .line 19
    invoke-virtual {v3, p3}, Lk/b/i/b/g/o$a;->a(I)Lk/b/i/b/g/o$a;

    move-result-object p3

    check-cast p3, Lk/b/i/b/g/j$b;

    invoke-virtual {p3}, Lk/b/i/b/g/j$b;->b()Lk/b/i/b/g/o;

    move-result-object p3

    check-cast p3, Lk/b/i/b/g/j;

    iget-object v3, p0, Lk/b/i/b/g/a;->x:Lk/b/i/b/g/k;

    invoke-virtual {v3, p2, p3}, Lk/b/i/b/g/k;->a([BLk/b/i/b/g/j;)[B

    move-result-object v5

    invoke-virtual {v3, v5, p1}, Lk/b/i/b/g/k;->a([B[B)V

    iget-object v3, p0, Lk/b/i/b/g/a;->x:Lk/b/i/b/g/k;

    invoke-virtual {v3, p3}, Lk/b/i/b/g/k;->a(Lk/b/i/b/g/j;)Lk/b/i/b/g/n;

    move-result-object v3

    new-instance v5, Lk/b/i/b/g/i$b;

    invoke-direct {v5}, Lk/b/i/b/g/i$b;-><init>()V

    .line 20
    iget v6, v0, Lk/b/i/b/g/o;->a:I

    .line 21
    invoke-virtual {v5, v6}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v5

    check-cast v5, Lk/b/i/b/g/i$b;

    .line 22
    iget-wide v6, v0, Lk/b/i/b/g/o;->b:J

    .line 23
    invoke-virtual {v5, v6, v7}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v5

    check-cast v5, Lk/b/i/b/g/i$b;

    .line 24
    iput v2, v5, Lk/b/i/b/g/i$b;->e:I

    .line 25
    iget v6, v0, Lk/b/i/b/g/i;->f:I

    .line 26
    iput v6, v5, Lk/b/i/b/g/i$b;->f:I

    .line 27
    iget v6, v0, Lk/b/i/b/g/i;->g:I

    .line 28
    iput v6, v5, Lk/b/i/b/g/i$b;->g:I

    .line 29
    iget v0, v0, Lk/b/i/b/g/o;->d:I

    .line 30
    invoke-virtual {v5, v0}, Lk/b/i/b/g/o$a;->a(I)Lk/b/i/b/g/o$a;

    move-result-object v0

    check-cast v0, Lk/b/i/b/g/i$b;

    invoke-virtual {v0}, Lk/b/i/b/g/i$b;->b()Lk/b/i/b/g/o;

    move-result-object v0

    check-cast v0, Lk/b/i/b/g/i;

    iget-object v5, p0, Lk/b/i/b/g/a;->x:Lk/b/i/b/g/k;

    invoke-static {v5, v3, v0}, Lk/b/c/e/a;->a(Lk/b/i/b/g/k;Lk/b/i/b/g/n;Lk/b/i/b/g/i;)Lk/b/i/b/g/u;

    move-result-object v3

    new-instance v5, Lk/b/i/b/g/g$b;

    invoke-direct {v5}, Lk/b/i/b/g/g$b;-><init>()V

    .line 31
    iget v6, v1, Lk/b/i/b/g/o;->a:I

    .line 32
    invoke-virtual {v5, v6}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v5

    check-cast v5, Lk/b/i/b/g/g$b;

    .line 33
    iget-wide v6, v1, Lk/b/i/b/g/o;->b:J

    .line 34
    invoke-virtual {v5, v6, v7}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v5

    check-cast v5, Lk/b/i/b/g/g$b;

    .line 35
    iput v2, v5, Lk/b/i/b/g/g$b;->f:I

    .line 36
    iget v1, v1, Lk/b/i/b/g/o;->d:I

    .line 37
    invoke-virtual {v5, v1}, Lk/b/i/b/g/o$a;->a(I)Lk/b/i/b/g/o$a;

    move-result-object v1

    check-cast v1, Lk/b/i/b/g/g$b;

    invoke-virtual {v1}, Lk/b/i/b/g/g$b;->b()Lk/b/i/b/g/o;

    move-result-object v1

    check-cast v1, Lk/b/i/b/g/g;

    :goto_1
    iget-object v5, p0, Lk/b/i/b/g/a;->E:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lk/b/i/b/g/a;->E:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk/b/i/b/g/u;

    .line 38
    iget v5, v5, Lk/b/i/b/g/u;->x:I

    iget v6, v3, Lk/b/i/b/g/u;->x:I

    if-ne v5, v6, :cond_4

    shl-int v5, v4, v6

    .line 39
    div-int v5, v2, v5

    if-ne v5, v4, :cond_0

    iget-object v6, p0, Lk/b/i/b/g/a;->C:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 40
    iget v7, v3, Lk/b/i/b/g/u;->x:I

    .line 41
    iget v8, p0, Lk/b/i/b/g/a;->y:I

    iget v9, p0, Lk/b/i/b/g/a;->A:I

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_1

    iget-object v8, p0, Lk/b/i/b/g/a;->z:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lk/b/i/b/g/c;

    .line 42
    iput-object v3, v7, Lk/b/i/b/g/c;->x:Lk/b/i/b/g/u;

    .line 43
    iget v8, v3, Lk/b/i/b/g/u;->x:I

    .line 44
    iput v8, v7, Lk/b/i/b/g/c;->z:I

    iget v9, v7, Lk/b/i/b/g/c;->y:I

    if-ne v8, v9, :cond_1

    iput-boolean v4, v7, Lk/b/i/b/g/c;->C:Z

    :cond_1
    if-lt v5, v6, :cond_3

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v4, :cond_3

    .line 45
    iget v5, v3, Lk/b/i/b/g/u;->x:I

    .line 46
    iget v6, p0, Lk/b/i/b/g/a;->y:I

    iget v7, p0, Lk/b/i/b/g/a;->A:I

    sub-int v7, v6, v7

    if-lt v5, v7, :cond_3

    add-int/lit8 v6, v6, -0x2

    if-gt v5, v6, :cond_3

    iget-object v6, p0, Lk/b/i/b/g/a;->D:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lk/b/i/b/g/a;->D:Ljava/util/Map;

    .line 47
    iget v7, v3, Lk/b/i/b/g/u;->x:I

    .line 48
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lk/b/i/b/g/a;->D:Ljava/util/Map;

    .line 49
    iget v6, v3, Lk/b/i/b/g/u;->x:I

    .line 50
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    new-instance v5, Lk/b/i/b/g/g$b;

    invoke-direct {v5}, Lk/b/i/b/g/g$b;-><init>()V

    .line 51
    iget v6, v1, Lk/b/i/b/g/o;->a:I

    .line 52
    invoke-virtual {v5, v6}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v5

    check-cast v5, Lk/b/i/b/g/g$b;

    .line 53
    iget-wide v6, v1, Lk/b/i/b/g/o;->b:J

    .line 54
    invoke-virtual {v5, v6, v7}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v5

    check-cast v5, Lk/b/i/b/g/g$b;

    .line 55
    iget v6, v1, Lk/b/i/b/g/g;->f:I

    .line 56
    iput v6, v5, Lk/b/i/b/g/g$b;->e:I

    .line 57
    iget v6, v1, Lk/b/i/b/g/g;->g:I

    sub-int/2addr v6, v4

    .line 58
    div-int/lit8 v6, v6, 0x2

    .line 59
    iput v6, v5, Lk/b/i/b/g/g$b;->f:I

    .line 60
    iget v1, v1, Lk/b/i/b/g/o;->d:I

    .line 61
    invoke-virtual {v5, v1}, Lk/b/i/b/g/o$a;->a(I)Lk/b/i/b/g/o$a;

    move-result-object v1

    check-cast v1, Lk/b/i/b/g/g$b;

    invoke-virtual {v1}, Lk/b/i/b/g/g$b;->b()Lk/b/i/b/g/o;

    move-result-object v1

    check-cast v1, Lk/b/i/b/g/g;

    iget-object v5, p0, Lk/b/i/b/g/a;->x:Lk/b/i/b/g/k;

    iget-object v6, p0, Lk/b/i/b/g/a;->E:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk/b/i/b/g/u;

    invoke-static {v5, v6, v3, v1}, Lk/b/c/e/a;->a(Lk/b/i/b/g/k;Lk/b/i/b/g/u;Lk/b/i/b/g/u;Lk/b/i/b/g/o;)Lk/b/i/b/g/u;

    move-result-object v3

    new-instance v5, Lk/b/i/b/g/u;

    .line 62
    iget v6, v3, Lk/b/i/b/g/u;->x:I

    add-int/2addr v6, v4

    .line 63
    invoke-virtual {v3}, Lk/b/i/b/g/u;->a()[B

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lk/b/i/b/g/u;-><init>(I[B)V

    new-instance v3, Lk/b/i/b/g/g$b;

    invoke-direct {v3}, Lk/b/i/b/g/g$b;-><init>()V

    .line 64
    iget v6, v1, Lk/b/i/b/g/o;->a:I

    .line 65
    invoke-virtual {v3, v6}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v3

    check-cast v3, Lk/b/i/b/g/g$b;

    .line 66
    iget-wide v6, v1, Lk/b/i/b/g/o;->b:J

    .line 67
    invoke-virtual {v3, v6, v7}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v3

    check-cast v3, Lk/b/i/b/g/g$b;

    .line 68
    iget v6, v1, Lk/b/i/b/g/g;->f:I

    add-int/2addr v6, v4

    .line 69
    iput v6, v3, Lk/b/i/b/g/g$b;->e:I

    .line 70
    iget v6, v1, Lk/b/i/b/g/g;->g:I

    .line 71
    iput v6, v3, Lk/b/i/b/g/g$b;->f:I

    .line 72
    iget v1, v1, Lk/b/i/b/g/o;->d:I

    .line 73
    invoke-virtual {v3, v1}, Lk/b/i/b/g/o$a;->a(I)Lk/b/i/b/g/o$a;

    move-result-object v1

    check-cast v1, Lk/b/i/b/g/g$b;

    invoke-virtual {v1}, Lk/b/i/b/g/g$b;->b()Lk/b/i/b/g/o;

    move-result-object v1

    check-cast v1, Lk/b/i/b/g/g;

    move-object v3, v5

    goto/16 :goto_1

    :cond_4
    iget-object v4, p0, Lk/b/i/b/g/a;->E:Ljava/util/Stack;

    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    iget-object p1, p0, Lk/b/i/b/g/a;->E:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk/b/i/b/g/u;

    iput-object p1, p0, Lk/b/i/b/g/a;->B:Lk/b/i/b/g/u;

    return-void

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "otsHashAddress == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b([B[BLk/b/i/b/g/j;)V
    .locals 12

    if-eqz p3, :cond_16

    iget-boolean v0, p0, Lk/b/i/b/g/a;->H:Z

    if-nez v0, :cond_15

    iget v0, p0, Lk/b/i/b/g/a;->G:I

    iget v1, p0, Lk/b/i/b/g/a;->I:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_14

    iget v1, p0, Lk/b/i/b/g/a;->y:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    shr-int v5, v0, v4

    and-int/2addr v5, v2

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget v0, p0, Lk/b/i/b/g/a;->G:I

    add-int/lit8 v1, v4, 0x1

    shr-int/2addr v0, v1

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Lk/b/i/b/g/a;->y:I

    sub-int/2addr v0, v2

    if-ge v4, v0, :cond_2

    iget-object v0, p0, Lk/b/i/b/g/a;->F:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v5, p0, Lk/b/i/b/g/a;->C:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v0, Lk/b/i/b/g/i$b;

    invoke-direct {v0}, Lk/b/i/b/g/i$b;-><init>()V

    .line 1
    iget v1, p3, Lk/b/i/b/g/o;->a:I

    .line 2
    invoke-virtual {v0, v1}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v0

    check-cast v0, Lk/b/i/b/g/i$b;

    .line 3
    iget-wide v5, p3, Lk/b/i/b/g/o;->b:J

    .line 4
    invoke-virtual {v0, v5, v6}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v0

    check-cast v0, Lk/b/i/b/g/i$b;

    invoke-virtual {v0}, Lk/b/i/b/g/i$b;->b()Lk/b/i/b/g/o;

    move-result-object v0

    check-cast v0, Lk/b/i/b/g/i;

    new-instance v1, Lk/b/i/b/g/g$b;

    invoke-direct {v1}, Lk/b/i/b/g/g$b;-><init>()V

    .line 5
    iget v5, p3, Lk/b/i/b/g/o;->a:I

    .line 6
    invoke-virtual {v1, v5}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v1

    check-cast v1, Lk/b/i/b/g/g$b;

    .line 7
    iget-wide v5, p3, Lk/b/i/b/g/o;->b:J

    .line 8
    invoke-virtual {v1, v5, v6}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v1

    check-cast v1, Lk/b/i/b/g/g$b;

    invoke-virtual {v1}, Lk/b/i/b/g/g$b;->b()Lk/b/i/b/g/o;

    move-result-object v1

    check-cast v1, Lk/b/i/b/g/g;

    const/4 v5, 0x0

    if-nez v4, :cond_3

    new-instance v1, Lk/b/i/b/g/j$b;

    invoke-direct {v1}, Lk/b/i/b/g/j$b;-><init>()V

    .line 9
    iget v4, p3, Lk/b/i/b/g/o;->a:I

    .line 10
    invoke-virtual {v1, v4}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v1

    check-cast v1, Lk/b/i/b/g/j$b;

    .line 11
    iget-wide v6, p3, Lk/b/i/b/g/o;->b:J

    .line 12
    invoke-virtual {v1, v6, v7}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v1

    check-cast v1, Lk/b/i/b/g/j$b;

    iget v4, p0, Lk/b/i/b/g/a;->G:I

    .line 13
    iput v4, v1, Lk/b/i/b/g/j$b;->e:I

    .line 14
    iget v4, p3, Lk/b/i/b/g/j;->f:I

    .line 15
    iput v4, v1, Lk/b/i/b/g/j$b;->f:I

    .line 16
    iget v4, p3, Lk/b/i/b/g/j;->g:I

    .line 17
    iput v4, v1, Lk/b/i/b/g/j$b;->g:I

    .line 18
    iget p3, p3, Lk/b/i/b/g/o;->d:I

    .line 19
    invoke-virtual {v1, p3}, Lk/b/i/b/g/o$a;->a(I)Lk/b/i/b/g/o$a;

    move-result-object p3

    check-cast p3, Lk/b/i/b/g/j$b;

    invoke-virtual {p3}, Lk/b/i/b/g/j$b;->b()Lk/b/i/b/g/o;

    move-result-object p3

    check-cast p3, Lk/b/i/b/g/j;

    iget-object v1, p0, Lk/b/i/b/g/a;->x:Lk/b/i/b/g/k;

    invoke-virtual {v1, p2, p3}, Lk/b/i/b/g/k;->a([BLk/b/i/b/g/j;)[B

    move-result-object v4

    invoke-virtual {v1, v4, p1}, Lk/b/i/b/g/k;->a([B[B)V

    iget-object v1, p0, Lk/b/i/b/g/a;->x:Lk/b/i/b/g/k;

    invoke-virtual {v1, p3}, Lk/b/i/b/g/k;->a(Lk/b/i/b/g/j;)Lk/b/i/b/g/n;

    move-result-object v1

    new-instance v4, Lk/b/i/b/g/i$b;

    invoke-direct {v4}, Lk/b/i/b/g/i$b;-><init>()V

    .line 20
    iget v6, v0, Lk/b/i/b/g/o;->a:I

    .line 21
    invoke-virtual {v4, v6}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v4

    check-cast v4, Lk/b/i/b/g/i$b;

    .line 22
    iget-wide v6, v0, Lk/b/i/b/g/o;->b:J

    .line 23
    invoke-virtual {v4, v6, v7}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v4

    check-cast v4, Lk/b/i/b/g/i$b;

    iget v6, p0, Lk/b/i/b/g/a;->G:I

    .line 24
    iput v6, v4, Lk/b/i/b/g/i$b;->e:I

    .line 25
    iget v6, v0, Lk/b/i/b/g/i;->f:I

    .line 26
    iput v6, v4, Lk/b/i/b/g/i$b;->f:I

    .line 27
    iget v6, v0, Lk/b/i/b/g/i;->g:I

    .line 28
    iput v6, v4, Lk/b/i/b/g/i$b;->g:I

    .line 29
    iget v0, v0, Lk/b/i/b/g/o;->d:I

    .line 30
    invoke-virtual {v4, v0}, Lk/b/i/b/g/o$a;->a(I)Lk/b/i/b/g/o$a;

    move-result-object v0

    check-cast v0, Lk/b/i/b/g/i$b;

    invoke-virtual {v0}, Lk/b/i/b/g/i$b;->b()Lk/b/i/b/g/o;

    move-result-object v0

    check-cast v0, Lk/b/i/b/g/i;

    iget-object v4, p0, Lk/b/i/b/g/a;->x:Lk/b/i/b/g/k;

    invoke-static {v4, v1, v0}, Lk/b/c/e/a;->a(Lk/b/i/b/g/k;Lk/b/i/b/g/n;Lk/b/i/b/g/i;)Lk/b/i/b/g/u;

    move-result-object v0

    iget-object v1, p0, Lk/b/i/b/g/a;->C:Ljava/util/List;

    invoke-interface {v1, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_3
    new-instance v0, Lk/b/i/b/g/g$b;

    invoke-direct {v0}, Lk/b/i/b/g/g$b;-><init>()V

    .line 31
    iget v6, v1, Lk/b/i/b/g/o;->a:I

    .line 32
    invoke-virtual {v0, v6}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v0

    check-cast v0, Lk/b/i/b/g/g$b;

    .line 33
    iget-wide v6, v1, Lk/b/i/b/g/o;->b:J

    .line 34
    invoke-virtual {v0, v6, v7}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v0

    check-cast v0, Lk/b/i/b/g/g$b;

    add-int/lit8 v6, v4, -0x1

    .line 35
    iput v6, v0, Lk/b/i/b/g/g$b;->e:I

    .line 36
    iget v7, p0, Lk/b/i/b/g/a;->G:I

    shr-int/2addr v7, v4

    .line 37
    iput v7, v0, Lk/b/i/b/g/g$b;->f:I

    .line 38
    iget v1, v1, Lk/b/i/b/g/o;->d:I

    .line 39
    invoke-virtual {v0, v1}, Lk/b/i/b/g/o$a;->a(I)Lk/b/i/b/g/o$a;

    move-result-object v0

    check-cast v0, Lk/b/i/b/g/g$b;

    invoke-virtual {v0}, Lk/b/i/b/g/g$b;->b()Lk/b/i/b/g/o;

    move-result-object v0

    check-cast v0, Lk/b/i/b/g/g;

    iget-object v1, p0, Lk/b/i/b/g/a;->x:Lk/b/i/b/g/k;

    invoke-virtual {v1, p2, p3}, Lk/b/i/b/g/k;->a([BLk/b/i/b/g/j;)[B

    move-result-object v7

    invoke-virtual {v1, v7, p1}, Lk/b/i/b/g/k;->a([B[B)V

    iget-object v1, p0, Lk/b/i/b/g/a;->x:Lk/b/i/b/g/k;

    iget-object v7, p0, Lk/b/i/b/g/a;->C:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lk/b/i/b/g/u;

    iget-object v8, p0, Lk/b/i/b/g/a;->F:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lk/b/i/b/g/u;

    invoke-static {v1, v7, v8, v0}, Lk/b/c/e/a;->a(Lk/b/i/b/g/k;Lk/b/i/b/g/u;Lk/b/i/b/g/u;Lk/b/i/b/g/o;)Lk/b/i/b/g/u;

    move-result-object v0

    new-instance v1, Lk/b/i/b/g/u;

    .line 40
    iget v7, v0, Lk/b/i/b/g/u;->x:I

    add-int/2addr v7, v2

    .line 41
    invoke-virtual {v0}, Lk/b/i/b/g/u;->a()[B

    move-result-object v0

    invoke-direct {v1, v7, v0}, Lk/b/i/b/g/u;-><init>(I[B)V

    iget-object v0, p0, Lk/b/i/b/g/a;->C:Ljava/util/List;

    invoke-interface {v0, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lk/b/i/b/g/a;->F:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_5

    iget v1, p0, Lk/b/i/b/g/a;->y:I

    iget v6, p0, Lk/b/i/b/g/a;->A:I

    sub-int/2addr v1, v6

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lk/b/i/b/g/a;->C:Ljava/util/List;

    iget-object v6, p0, Lk/b/i/b/g/a;->z:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk/b/i/b/g/c;

    .line 42
    iget-object v6, v6, Lk/b/i/b/g/c;->x:Lk/b/i/b/g/u;

    goto :goto_3

    .line 43
    :cond_4
    iget-object v1, p0, Lk/b/i/b/g/a;->C:Ljava/util/List;

    iget-object v6, p0, Lk/b/i/b/g/a;->D:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    :goto_3
    invoke-interface {v1, v0, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget v0, p0, Lk/b/i/b/g/a;->y:I

    iget v1, p0, Lk/b/i/b/g/a;->A:I

    sub-int/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_7

    iget v4, p0, Lk/b/i/b/g/a;->G:I

    add-int/2addr v4, v2

    shl-int v6, v2, v1

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v6, v4

    iget v4, p0, Lk/b/i/b/g/a;->y:I

    shl-int v4, v2, v4

    if-ge v6, v4, :cond_6

    iget-object v4, p0, Lk/b/i/b/g/a;->z:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/b/i/b/g/c;

    .line 44
    iput-object v5, v4, Lk/b/i/b/g/c;->x:Lk/b/i/b/g/u;

    iget v7, v4, Lk/b/i/b/g/c;->y:I

    iput v7, v4, Lk/b/i/b/g/c;->z:I

    iput v6, v4, Lk/b/i/b/g/c;->A:I

    iput-boolean v2, v4, Lk/b/i/b/g/c;->B:Z

    iput-boolean v3, v4, Lk/b/i/b/g/c;->C:Z

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 45
    :cond_7
    :goto_5
    iget v0, p0, Lk/b/i/b/g/a;->y:I

    iget v1, p0, Lk/b/i/b/g/a;->A:I

    sub-int/2addr v0, v1

    shr-int/2addr v0, v2

    if-ge v3, v0, :cond_13

    .line 46
    iget-object v0, p0, Lk/b/i/b/g/a;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v5

    :cond_8
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/b/i/b/g/c;

    .line 47
    iget-boolean v6, v4, Lk/b/i/b/g/c;->C:Z

    if-nez v6, :cond_8

    .line 48
    iget-boolean v6, v4, Lk/b/i/b/g/c;->B:Z

    if-nez v6, :cond_9

    goto :goto_6

    :cond_9
    if-nez v1, :cond_a

    goto :goto_7

    .line 49
    :cond_a
    invoke-virtual {v4}, Lk/b/i/b/g/c;->a()I

    move-result v6

    invoke-virtual {v1}, Lk/b/i/b/g/c;->a()I

    move-result v7

    if-ge v6, v7, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v4}, Lk/b/i/b/g/c;->a()I

    move-result v6

    invoke-virtual {v1}, Lk/b/i/b/g/c;->a()I

    move-result v7

    if-ne v6, v7, :cond_8

    .line 50
    iget v6, v4, Lk/b/i/b/g/c;->A:I

    iget v7, v1, Lk/b/i/b/g/c;->A:I

    if-ge v6, v7, :cond_8

    :goto_7
    move-object v1, v4

    goto :goto_6

    :cond_c
    if-eqz v1, :cond_12

    .line 51
    iget-object v0, p0, Lk/b/i/b/g/a;->E:Ljava/util/Stack;

    iget-object v4, p0, Lk/b/i/b/g/a;->x:Lk/b/i/b/g/k;

    .line 52
    iget-boolean v6, v1, Lk/b/i/b/g/c;->C:Z

    if-nez v6, :cond_11

    iget-boolean v6, v1, Lk/b/i/b/g/c;->B:Z

    if-eqz v6, :cond_11

    new-instance v6, Lk/b/i/b/g/j$b;

    invoke-direct {v6}, Lk/b/i/b/g/j$b;-><init>()V

    .line 53
    iget v7, p3, Lk/b/i/b/g/o;->a:I

    .line 54
    invoke-virtual {v6, v7}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v6

    check-cast v6, Lk/b/i/b/g/j$b;

    .line 55
    iget-wide v7, p3, Lk/b/i/b/g/o;->b:J

    .line 56
    invoke-virtual {v6, v7, v8}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v6

    check-cast v6, Lk/b/i/b/g/j$b;

    iget v7, v1, Lk/b/i/b/g/c;->A:I

    .line 57
    iput v7, v6, Lk/b/i/b/g/j$b;->e:I

    .line 58
    iget v7, p3, Lk/b/i/b/g/j;->f:I

    .line 59
    iput v7, v6, Lk/b/i/b/g/j$b;->f:I

    .line 60
    iget v7, p3, Lk/b/i/b/g/j;->g:I

    .line 61
    iput v7, v6, Lk/b/i/b/g/j$b;->g:I

    .line 62
    iget v7, p3, Lk/b/i/b/g/o;->d:I

    .line 63
    invoke-virtual {v6, v7}, Lk/b/i/b/g/o$a;->a(I)Lk/b/i/b/g/o$a;

    move-result-object v6

    check-cast v6, Lk/b/i/b/g/j$b;

    invoke-virtual {v6}, Lk/b/i/b/g/j$b;->b()Lk/b/i/b/g/o;

    move-result-object v6

    check-cast v6, Lk/b/i/b/g/j;

    new-instance v7, Lk/b/i/b/g/i$b;

    invoke-direct {v7}, Lk/b/i/b/g/i$b;-><init>()V

    .line 64
    iget v8, v6, Lk/b/i/b/g/o;->a:I

    .line 65
    invoke-virtual {v7, v8}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v7

    check-cast v7, Lk/b/i/b/g/i$b;

    .line 66
    iget-wide v8, v6, Lk/b/i/b/g/o;->b:J

    .line 67
    invoke-virtual {v7, v8, v9}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v7

    check-cast v7, Lk/b/i/b/g/i$b;

    iget v8, v1, Lk/b/i/b/g/c;->A:I

    .line 68
    iput v8, v7, Lk/b/i/b/g/i$b;->e:I

    .line 69
    invoke-virtual {v7}, Lk/b/i/b/g/i$b;->b()Lk/b/i/b/g/o;

    move-result-object v7

    check-cast v7, Lk/b/i/b/g/i;

    new-instance v8, Lk/b/i/b/g/g$b;

    invoke-direct {v8}, Lk/b/i/b/g/g$b;-><init>()V

    .line 70
    iget v9, v6, Lk/b/i/b/g/o;->a:I

    .line 71
    invoke-virtual {v8, v9}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v8

    check-cast v8, Lk/b/i/b/g/g$b;

    .line 72
    iget-wide v9, v6, Lk/b/i/b/g/o;->b:J

    .line 73
    invoke-virtual {v8, v9, v10}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v8

    check-cast v8, Lk/b/i/b/g/g$b;

    iget v9, v1, Lk/b/i/b/g/c;->A:I

    .line 74
    iput v9, v8, Lk/b/i/b/g/g$b;->f:I

    .line 75
    invoke-virtual {v8}, Lk/b/i/b/g/g$b;->b()Lk/b/i/b/g/o;

    move-result-object v8

    check-cast v8, Lk/b/i/b/g/g;

    invoke-virtual {v4, p2, v6}, Lk/b/i/b/g/k;->a([BLk/b/i/b/g/j;)[B

    move-result-object v9

    invoke-virtual {v4, v9, p1}, Lk/b/i/b/g/k;->a([B[B)V

    invoke-virtual {v4, v6}, Lk/b/i/b/g/k;->a(Lk/b/i/b/g/j;)Lk/b/i/b/g/n;

    move-result-object v6

    invoke-static {v4, v6, v7}, Lk/b/c/e/a;->a(Lk/b/i/b/g/k;Lk/b/i/b/g/n;Lk/b/i/b/g/i;)Lk/b/i/b/g/u;

    move-result-object v6

    :goto_8
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lk/b/i/b/g/u;

    .line 76
    iget v7, v7, Lk/b/i/b/g/u;->x:I

    iget v9, v6, Lk/b/i/b/g/u;->x:I

    if-ne v7, v9, :cond_d

    .line 77
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lk/b/i/b/g/u;

    .line 78
    iget v7, v7, Lk/b/i/b/g/u;->x:I

    .line 79
    iget v9, v1, Lk/b/i/b/g/c;->y:I

    if-eq v7, v9, :cond_d

    new-instance v7, Lk/b/i/b/g/g$b;

    invoke-direct {v7}, Lk/b/i/b/g/g$b;-><init>()V

    .line 80
    iget v9, v8, Lk/b/i/b/g/o;->a:I

    .line 81
    invoke-virtual {v7, v9}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v7

    check-cast v7, Lk/b/i/b/g/g$b;

    .line 82
    iget-wide v9, v8, Lk/b/i/b/g/o;->b:J

    .line 83
    invoke-virtual {v7, v9, v10}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v7

    check-cast v7, Lk/b/i/b/g/g$b;

    .line 84
    iget v9, v8, Lk/b/i/b/g/g;->f:I

    .line 85
    iput v9, v7, Lk/b/i/b/g/g$b;->e:I

    .line 86
    iget v9, v8, Lk/b/i/b/g/g;->g:I

    sub-int/2addr v9, v2

    .line 87
    div-int/lit8 v9, v9, 0x2

    .line 88
    iput v9, v7, Lk/b/i/b/g/g$b;->f:I

    .line 89
    iget v8, v8, Lk/b/i/b/g/o;->d:I

    .line 90
    invoke-virtual {v7, v8}, Lk/b/i/b/g/o$a;->a(I)Lk/b/i/b/g/o$a;

    move-result-object v7

    check-cast v7, Lk/b/i/b/g/g$b;

    invoke-virtual {v7}, Lk/b/i/b/g/g$b;->b()Lk/b/i/b/g/o;

    move-result-object v7

    check-cast v7, Lk/b/i/b/g/g;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lk/b/i/b/g/u;

    invoke-static {v4, v8, v6, v7}, Lk/b/c/e/a;->a(Lk/b/i/b/g/k;Lk/b/i/b/g/u;Lk/b/i/b/g/u;Lk/b/i/b/g/o;)Lk/b/i/b/g/u;

    move-result-object v6

    new-instance v8, Lk/b/i/b/g/u;

    .line 91
    iget v9, v6, Lk/b/i/b/g/u;->x:I

    add-int/2addr v9, v2

    .line 92
    invoke-virtual {v6}, Lk/b/i/b/g/u;->a()[B

    move-result-object v6

    invoke-direct {v8, v9, v6}, Lk/b/i/b/g/u;-><init>(I[B)V

    new-instance v6, Lk/b/i/b/g/g$b;

    invoke-direct {v6}, Lk/b/i/b/g/g$b;-><init>()V

    .line 93
    iget v9, v7, Lk/b/i/b/g/o;->a:I

    .line 94
    invoke-virtual {v6, v9}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v6

    check-cast v6, Lk/b/i/b/g/g$b;

    .line 95
    iget-wide v9, v7, Lk/b/i/b/g/o;->b:J

    .line 96
    invoke-virtual {v6, v9, v10}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v6

    check-cast v6, Lk/b/i/b/g/g$b;

    .line 97
    iget v9, v7, Lk/b/i/b/g/g;->f:I

    add-int/2addr v9, v2

    .line 98
    iput v9, v6, Lk/b/i/b/g/g$b;->e:I

    .line 99
    iget v9, v7, Lk/b/i/b/g/g;->g:I

    .line 100
    iput v9, v6, Lk/b/i/b/g/g$b;->f:I

    .line 101
    iget v7, v7, Lk/b/i/b/g/o;->d:I

    .line 102
    invoke-virtual {v6, v7}, Lk/b/i/b/g/o$a;->a(I)Lk/b/i/b/g/o$a;

    move-result-object v6

    check-cast v6, Lk/b/i/b/g/g$b;

    invoke-virtual {v6}, Lk/b/i/b/g/g$b;->b()Lk/b/i/b/g/o;

    move-result-object v6

    check-cast v6, Lk/b/i/b/g/g;

    move-object v11, v8

    move-object v8, v6

    move-object v6, v11

    goto/16 :goto_8

    :cond_d
    iget-object v7, v1, Lk/b/i/b/g/c;->x:Lk/b/i/b/g/u;

    if-nez v7, :cond_e

    iput-object v6, v1, Lk/b/i/b/g/c;->x:Lk/b/i/b/g/u;

    goto/16 :goto_9

    .line 103
    :cond_e
    iget v7, v7, Lk/b/i/b/g/u;->x:I

    iget v9, v6, Lk/b/i/b/g/u;->x:I

    if-ne v7, v9, :cond_f

    .line 104
    new-instance v0, Lk/b/i/b/g/g$b;

    invoke-direct {v0}, Lk/b/i/b/g/g$b;-><init>()V

    .line 105
    iget v7, v8, Lk/b/i/b/g/o;->a:I

    .line 106
    invoke-virtual {v0, v7}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v0

    check-cast v0, Lk/b/i/b/g/g$b;

    .line 107
    iget-wide v9, v8, Lk/b/i/b/g/o;->b:J

    .line 108
    invoke-virtual {v0, v9, v10}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v0

    check-cast v0, Lk/b/i/b/g/g$b;

    .line 109
    iget v7, v8, Lk/b/i/b/g/g;->f:I

    .line 110
    iput v7, v0, Lk/b/i/b/g/g$b;->e:I

    .line 111
    iget v7, v8, Lk/b/i/b/g/g;->g:I

    sub-int/2addr v7, v2

    .line 112
    div-int/lit8 v7, v7, 0x2

    .line 113
    iput v7, v0, Lk/b/i/b/g/g$b;->f:I

    .line 114
    iget v7, v8, Lk/b/i/b/g/o;->d:I

    .line 115
    invoke-virtual {v0, v7}, Lk/b/i/b/g/o$a;->a(I)Lk/b/i/b/g/o$a;

    move-result-object v0

    check-cast v0, Lk/b/i/b/g/g$b;

    invoke-virtual {v0}, Lk/b/i/b/g/g$b;->b()Lk/b/i/b/g/o;

    move-result-object v0

    check-cast v0, Lk/b/i/b/g/g;

    iget-object v7, v1, Lk/b/i/b/g/c;->x:Lk/b/i/b/g/u;

    invoke-static {v4, v7, v6, v0}, Lk/b/c/e/a;->a(Lk/b/i/b/g/k;Lk/b/i/b/g/u;Lk/b/i/b/g/u;Lk/b/i/b/g/o;)Lk/b/i/b/g/u;

    move-result-object v4

    new-instance v6, Lk/b/i/b/g/u;

    iget-object v7, v1, Lk/b/i/b/g/c;->x:Lk/b/i/b/g/u;

    .line 116
    iget v7, v7, Lk/b/i/b/g/u;->x:I

    add-int/2addr v7, v2

    .line 117
    invoke-virtual {v4}, Lk/b/i/b/g/u;->a()[B

    move-result-object v4

    invoke-direct {v6, v7, v4}, Lk/b/i/b/g/u;-><init>(I[B)V

    iput-object v6, v1, Lk/b/i/b/g/c;->x:Lk/b/i/b/g/u;

    new-instance v4, Lk/b/i/b/g/g$b;

    invoke-direct {v4}, Lk/b/i/b/g/g$b;-><init>()V

    .line 118
    iget v7, v0, Lk/b/i/b/g/o;->a:I

    .line 119
    invoke-virtual {v4, v7}, Lk/b/i/b/g/o$a;->b(I)Lk/b/i/b/g/o$a;

    move-result-object v4

    check-cast v4, Lk/b/i/b/g/g$b;

    .line 120
    iget-wide v7, v0, Lk/b/i/b/g/o;->b:J

    .line 121
    invoke-virtual {v4, v7, v8}, Lk/b/i/b/g/o$a;->a(J)Lk/b/i/b/g/o$a;

    move-result-object v4

    check-cast v4, Lk/b/i/b/g/g$b;

    .line 122
    iget v7, v0, Lk/b/i/b/g/g;->f:I

    add-int/2addr v7, v2

    .line 123
    iput v7, v4, Lk/b/i/b/g/g$b;->e:I

    .line 124
    iget v7, v0, Lk/b/i/b/g/g;->g:I

    .line 125
    iput v7, v4, Lk/b/i/b/g/g$b;->f:I

    .line 126
    iget v0, v0, Lk/b/i/b/g/o;->d:I

    .line 127
    invoke-virtual {v4, v0}, Lk/b/i/b/g/o$a;->a(I)Lk/b/i/b/g/o$a;

    move-result-object v0

    check-cast v0, Lk/b/i/b/g/g$b;

    invoke-virtual {v0}, Lk/b/i/b/g/g$b;->b()Lk/b/i/b/g/o;

    move-result-object v0

    check-cast v0, Lk/b/i/b/g/g;

    goto :goto_9

    :cond_f
    invoke-virtual {v0, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    iget-object v0, v1, Lk/b/i/b/g/c;->x:Lk/b/i/b/g/u;

    .line 128
    iget v0, v0, Lk/b/i/b/g/u;->x:I

    .line 129
    iget v4, v1, Lk/b/i/b/g/c;->y:I

    if-ne v0, v4, :cond_10

    iput-boolean v2, v1, Lk/b/i/b/g/c;->C:Z

    goto :goto_a

    .line 130
    :cond_10
    iget v0, v6, Lk/b/i/b/g/u;->x:I

    .line 131
    iput v0, v1, Lk/b/i/b/g/c;->z:I

    iget v0, v1, Lk/b/i/b/g/c;->A:I

    add-int/2addr v0, v2

    iput v0, v1, Lk/b/i/b/g/c;->A:I

    goto :goto_a

    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "finished or not initialized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 132
    :cond_13
    iget p1, p0, Lk/b/i/b/g/a;->G:I

    add-int/2addr p1, v2

    iput p1, p0, Lk/b/i/b/g/a;->G:I

    return-void

    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "index out of bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "index already used"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "otsHashAddress == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
