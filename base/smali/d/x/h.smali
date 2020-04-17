.class public abstract Ld/x/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/x/h$c;,
        Ld/x/h$b;,
        Ld/x/h$d;
    }
.end annotation


# static fields
.field public static final c0:[I

.field public static final d0:Ld/x/e;

.field public static e0:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ld/f/a<",
            "Landroid/animation/Animator;",
            "Ld/x/h$b;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public A:Landroid/animation/TimeInterpolator;

.field public B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public I:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public K:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public M:Ld/x/q;

.field public N:Ld/x/q;

.field public O:Ld/x/n;

.field public P:[I

.field public Q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/x/p;",
            ">;"
        }
    .end annotation
.end field

.field public R:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/x/p;",
            ">;"
        }
    .end annotation
.end field

.field public S:Z

.field public T:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public U:I

.field public V:Z

.field public W:Z

.field public X:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/x/h$d;",
            ">;"
        }
    .end annotation
.end field

.field public Y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public Z:Ld/x/m;

.field public a0:Ld/x/h$c;

.field public b0:Ld/x/e;

.field public x:Ljava/lang/String;

.field public y:J

.field public z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Ld/x/h;->c0:[I

    .line 2
    new-instance v0, Ld/x/h$a;

    invoke-direct {v0}, Ld/x/h$a;-><init>()V

    sput-object v0, Ld/x/h;->d0:Ld/x/e;

    .line 3
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ld/x/h;->e0:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld/x/h;->x:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Ld/x/h;->y:J

    .line 4
    iput-wide v0, p0, Ld/x/h;->z:J

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ld/x/h;->A:Landroid/animation/TimeInterpolator;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ld/x/h;->B:Ljava/util/ArrayList;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ld/x/h;->C:Ljava/util/ArrayList;

    .line 8
    iput-object v0, p0, Ld/x/h;->D:Ljava/util/ArrayList;

    .line 9
    iput-object v0, p0, Ld/x/h;->E:Ljava/util/ArrayList;

    .line 10
    iput-object v0, p0, Ld/x/h;->F:Ljava/util/ArrayList;

    .line 11
    iput-object v0, p0, Ld/x/h;->G:Ljava/util/ArrayList;

    .line 12
    iput-object v0, p0, Ld/x/h;->H:Ljava/util/ArrayList;

    .line 13
    iput-object v0, p0, Ld/x/h;->I:Ljava/util/ArrayList;

    .line 14
    iput-object v0, p0, Ld/x/h;->J:Ljava/util/ArrayList;

    .line 15
    iput-object v0, p0, Ld/x/h;->K:Ljava/util/ArrayList;

    .line 16
    iput-object v0, p0, Ld/x/h;->L:Ljava/util/ArrayList;

    .line 17
    new-instance v1, Ld/x/q;

    invoke-direct {v1}, Ld/x/q;-><init>()V

    iput-object v1, p0, Ld/x/h;->M:Ld/x/q;

    .line 18
    new-instance v1, Ld/x/q;

    invoke-direct {v1}, Ld/x/q;-><init>()V

    iput-object v1, p0, Ld/x/h;->N:Ld/x/q;

    .line 19
    iput-object v0, p0, Ld/x/h;->O:Ld/x/n;

    .line 20
    sget-object v1, Ld/x/h;->c0:[I

    iput-object v1, p0, Ld/x/h;->P:[I

    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Ld/x/h;->S:Z

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ld/x/h;->T:Ljava/util/ArrayList;

    .line 23
    iput v1, p0, Ld/x/h;->U:I

    .line 24
    iput-boolean v1, p0, Ld/x/h;->V:Z

    .line 25
    iput-boolean v1, p0, Ld/x/h;->W:Z

    .line 26
    iput-object v0, p0, Ld/x/h;->X:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/x/h;->Y:Ljava/util/ArrayList;

    .line 28
    sget-object v0, Ld/x/h;->d0:Ld/x/e;

    iput-object v0, p0, Ld/x/h;->b0:Ld/x/e;

    return-void
.end method

.method public static a(Ld/x/q;Landroid/view/View;Ld/x/p;)V
    .locals 6

    .line 70
    iget-object v0, p0, Ld/x/q;->a:Ld/f/a;

    invoke-virtual {v0, p1, p2}, Ld/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    .line 72
    iget-object v1, p0, Ld/x/q;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 73
    iget-object v1, p0, Ld/x/q;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v1, p0, Ld/x/q;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    :cond_1
    :goto_0
    invoke-static {p1}, Ld/i/i/n;->n(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    .line 76
    iget-object v3, p0, Ld/x/q;->d:Ld/f/a;

    .line 77
    invoke-virtual {v3, p2}, Ld/f/h;->a(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 78
    iget-object v3, p0, Ld/x/q;->d:Ld/f/a;

    invoke-virtual {v3, p2, v0}, Ld/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 79
    :cond_3
    iget-object v3, p0, Ld/x/q;->d:Ld/f/a;

    invoke-virtual {v3, p2, p1}, Ld/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_7

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 82
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 83
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 84
    invoke-virtual {p2, v3}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v3

    .line 85
    iget-object p2, p0, Ld/x/q;->c:Ld/f/e;

    .line 86
    iget-boolean v5, p2, Ld/f/e;->x:Z

    if-eqz v5, :cond_5

    .line 87
    invoke-virtual {p2}, Ld/f/e;->b()V

    .line 88
    :cond_5
    iget-object v5, p2, Ld/f/e;->y:[J

    iget p2, p2, Ld/f/e;->A:I

    invoke-static {v5, p2, v3, v4}, Ld/f/d;->a([JIJ)I

    move-result p2

    if-ltz p2, :cond_6

    .line 89
    iget-object p1, p0, Ld/x/q;->c:Ld/f/e;

    invoke-virtual {p1, v3, v4}, Ld/f/e;->a(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_7

    .line 90
    invoke-virtual {p1, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 91
    iget-object p0, p0, Ld/x/q;->c:Ld/f/e;

    invoke-virtual {p0, v3, v4, v0}, Ld/f/e;->c(JLjava/lang/Object;)V

    goto :goto_3

    .line 92
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/View;->setHasTransientState(Z)V

    .line 93
    iget-object p0, p0, Ld/x/q;->c:Ld/f/e;

    invoke-virtual {p0, v3, v4, p1}, Ld/f/e;->c(JLjava/lang/Object;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public static a(Ld/x/p;Ld/x/p;Ljava/lang/String;)Z
    .locals 0

    .line 129
    iget-object p0, p0, Ld/x/p;->a:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 130
    iget-object p1, p1, Ld/x/p;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p2, p0

    :cond_2
    :goto_0
    return p2
.end method

.method public static e()Ld/f/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/f/a<",
            "Landroid/animation/Animator;",
            "Ld/x/h$b;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ld/x/h;->e0:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/f/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld/f/a;

    invoke-direct {v0}, Ld/f/a;-><init>()V

    .line 3
    sget-object v1, Ld/x/h;->e0:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Ld/x/p;Ld/x/p;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(J)Ld/x/h;
    .locals 0

    .line 1
    iput-wide p1, p0, Ld/x/h;->z:J

    return-object p0
.end method

.method public a(Landroid/animation/TimeInterpolator;)Ld/x/h;
    .locals 0

    .line 2
    iput-object p1, p0, Ld/x/h;->A:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public a(Landroid/view/View;)Ld/x/h;
    .locals 1

    .line 43
    iget-object v0, p0, Ld/x/h;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ld/x/h$d;)Ld/x/h;
    .locals 1

    .line 145
    iget-object v0, p0, Ld/x/h;->X:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/x/h;->X:Ljava/util/ArrayList;

    .line 147
    :cond_0
    iget-object v0, p0, Ld/x/h;->X:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 152
    invoke-static {p1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 154
    iget-wide v0, p0, Ld/x/h;->z:J

    const-wide/16 v2, -0x1

    const-string v4, ") "

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    const-string v0, "dur("

    .line 155
    invoke-static {p1, v0}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v0, p0, Ld/x/h;->z:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 156
    :cond_0
    iget-wide v0, p0, Ld/x/h;->y:J

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    const-string v0, "dly("

    .line 157
    invoke-static {p1, v0}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v0, p0, Ld/x/h;->y:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 158
    :cond_1
    iget-object v0, p0, Ld/x/h;->A:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_2

    const-string v0, "interp("

    .line 159
    invoke-static {p1, v0}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Ld/x/h;->A:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    :cond_2
    iget-object v0, p0, Ld/x/h;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Ld/x/h;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    :cond_3
    const-string v0, "tgts("

    .line 161
    invoke-static {p1, v0}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 162
    iget-object v0, p0, Ld/x/h;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ", "

    const/4 v2, 0x0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    .line 163
    :goto_0
    iget-object v3, p0, Ld/x/h;->B:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    if-lez v0, :cond_4

    .line 164
    invoke-static {p1, v1}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 165
    :cond_4
    invoke-static {p1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, Ld/x/h;->B:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_5
    iget-object v0, p0, Ld/x/h;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 167
    :goto_1
    iget-object v0, p0, Ld/x/h;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    if-lez v2, :cond_6

    .line 168
    invoke-static {p1, v1}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 169
    :cond_6
    invoke-static {p1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Ld/x/h;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    const-string v0, ")"

    .line 170
    invoke-static {p1, v0}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_8
    return-object p1
.end method

.method public a()V
    .locals 6

    .line 132
    iget v0, p0, Ld/x/h;->U:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ld/x/h;->U:I

    if-nez v0, :cond_5

    .line 133
    iget-object v0, p0, Ld/x/h;->X:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 134
    iget-object v0, p0, Ld/x/h;->X:Ljava/util/ArrayList;

    .line 135
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 136
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 137
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld/x/h$d;

    invoke-interface {v5, p0}, Ld/x/h$d;->d(Ld/x/h;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 138
    :goto_1
    iget-object v3, p0, Ld/x/h;->M:Ld/x/q;

    iget-object v3, v3, Ld/x/q;->c:Ld/f/e;

    invoke-virtual {v3}, Ld/f/e;->c()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 139
    iget-object v3, p0, Ld/x/h;->M:Ld/x/q;

    iget-object v3, v3, Ld/x/q;->c:Ld/f/e;

    invoke-virtual {v3, v0}, Ld/f/e;->a(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 140
    invoke-static {v3, v2}, Ld/i/i/n;->a(Landroid/view/View;Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 141
    :goto_2
    iget-object v3, p0, Ld/x/h;->N:Ld/x/q;

    iget-object v3, v3, Ld/x/q;->c:Ld/f/e;

    invoke-virtual {v3}, Ld/f/e;->c()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 142
    iget-object v3, p0, Ld/x/h;->N:Ld/x/q;

    iget-object v3, v3, Ld/x/q;->c:Ld/f/e;

    invoke-virtual {v3, v0}, Ld/f/e;->a(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_3

    .line 143
    invoke-static {v3, v2}, Ld/i/i/n;->a(Landroid/view/View;Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 144
    :cond_4
    iput-boolean v1, p0, Ld/x/h;->W:Z

    :cond_5
    return-void
.end method

.method public final a(Landroid/view/View;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 101
    iget-object v1, p0, Ld/x/h;->F:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 102
    :cond_1
    iget-object v1, p0, Ld/x/h;->G:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 103
    :cond_2
    iget-object v1, p0, Ld/x/h;->H:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 104
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 105
    iget-object v4, p0, Ld/x/h;->H:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 107
    new-instance v1, Ld/x/p;

    invoke-direct {v1}, Ld/x/p;-><init>()V

    .line 108
    iput-object p1, v1, Ld/x/p;->b:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 109
    invoke-virtual {p0, v1}, Ld/x/h;->c(Ld/x/p;)V

    goto :goto_1

    .line 110
    :cond_5
    invoke-virtual {p0, v1}, Ld/x/h;->a(Ld/x/p;)V

    .line 111
    :goto_1
    iget-object v3, v1, Ld/x/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p0, v1}, Ld/x/h;->b(Ld/x/p;)V

    if-eqz p2, :cond_6

    .line 113
    iget-object v3, p0, Ld/x/h;->M:Ld/x/q;

    invoke-static {v3, p1, v1}, Ld/x/h;->a(Ld/x/q;Landroid/view/View;Ld/x/p;)V

    goto :goto_2

    .line 114
    :cond_6
    iget-object v3, p0, Ld/x/h;->N:Ld/x/q;

    invoke-static {v3, p1, v1}, Ld/x/h;->a(Ld/x/q;Landroid/view/View;Ld/x/p;)V

    .line 115
    :cond_7
    :goto_2
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    .line 116
    iget-object v1, p0, Ld/x/h;->J:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 117
    :cond_8
    iget-object v0, p0, Ld/x/h;->K:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 118
    :cond_9
    iget-object v0, p0, Ld/x/h;->L:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_b

    .line 120
    iget-object v3, p0, Ld/x/h;->L:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    return-void

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 121
    :cond_b
    check-cast p1, Landroid/view/ViewGroup;

    .line 122
    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 123
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ld/x/h;->a(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Ld/x/q;Ld/x/q;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ld/x/q;",
            "Ld/x/q;",
            "Ljava/util/ArrayList<",
            "Ld/x/p;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ld/x/p;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    .line 3
    invoke-static {}, Ld/x/h;->e()Ld/f/a;

    move-result-object v7

    .line 4
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    .line 5
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_d

    move-object/from16 v12, p4

    .line 6
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/x/p;

    move-object/from16 v13, p5

    .line 7
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/x/p;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 8
    iget-object v3, v0, Ld/x/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    :cond_0
    if-eqz v1, :cond_1

    .line 9
    iget-object v3, v1, Ld/x/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v2

    :cond_1
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    :cond_2
    move-object/from16 v14, p1

    :cond_3
    move-object/from16 v15, p3

    move/from16 v17, v9

    goto/16 :goto_7

    :cond_4
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 10
    invoke-virtual {v6, v0, v1}, Ld/x/h;->a(Ld/x/p;Ld/x/p;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_2

    move-object/from16 v14, p1

    .line 11
    invoke-virtual {v6, v14, v0, v1}, Ld/x/h;->a(Landroid/view/ViewGroup;Ld/x/p;Ld/x/p;)Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_b

    .line 12
    iget-object v0, v1, Ld/x/p;->b:Landroid/view/View;

    .line 13
    invoke-virtual/range {p0 .. p0}, Ld/x/h;->b()[Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    .line 14
    array-length v4, v1

    if-lez v4, :cond_a

    .line 15
    new-instance v4, Ld/x/p;

    invoke-direct {v4}, Ld/x/p;-><init>()V

    .line 16
    iput-object v0, v4, Ld/x/p;->b:Landroid/view/View;

    move-object/from16 v15, p3

    .line 17
    iget-object v5, v15, Ld/x/q;->a:Ld/f/a;

    .line 18
    invoke-virtual {v5, v0, v2}, Ld/f/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 19
    check-cast v5, Ld/x/p;

    if-eqz v5, :cond_7

    const/4 v2, 0x0

    .line 20
    :goto_3
    array-length v10, v1

    if-ge v2, v10, :cond_7

    .line 21
    iget-object v10, v4, Ld/x/p;->a:Ljava/util/Map;

    move-object/from16 v16, v3

    aget-object v3, v1, v2

    move/from16 v17, v9

    iget-object v9, v5, Ld/x/p;->a:Ljava/util/Map;

    move-object/from16 v18, v5

    aget-object v5, v1, v2

    .line 22
    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 23
    invoke-interface {v10, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v16

    move/from16 v9, v17

    move-object/from16 v5, v18

    goto :goto_3

    :cond_7
    move-object/from16 v16, v3

    move/from16 v17, v9

    .line 24
    iget v1, v7, Ld/f/h;->z:I

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_9

    .line 25
    invoke-virtual {v7, v2}, Ld/f/h;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 26
    invoke-virtual {v7, v3}, Ld/f/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/x/h$b;

    .line 27
    iget-object v5, v3, Ld/x/h$b;->c:Ld/x/p;

    if-eqz v5, :cond_8

    iget-object v5, v3, Ld/x/h$b;->a:Landroid/view/View;

    if-ne v5, v0, :cond_8

    iget-object v5, v3, Ld/x/h$b;->b:Ljava/lang/String;

    .line 28
    iget-object v9, v6, Ld/x/h;->x:Ljava/lang/String;

    .line 29
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 30
    iget-object v3, v3, Ld/x/h$b;->c:Ld/x/p;

    invoke-virtual {v3, v4}, Ld/x/p;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v2, 0x0

    goto :goto_5

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    move-object/from16 v2, v16

    goto :goto_5

    :cond_a
    move-object/from16 v15, p3

    move-object/from16 v16, v3

    move/from16 v17, v9

    move-object/from16 v2, v16

    const/4 v4, 0x0

    :goto_5
    move-object v1, v0

    move-object v9, v2

    move-object v5, v4

    goto :goto_6

    :cond_b
    move-object/from16 v15, p3

    move-object/from16 v16, v3

    move/from16 v17, v9

    .line 31
    iget-object v0, v0, Ld/x/p;->b:Landroid/view/View;

    move-object v1, v0

    move-object/from16 v9, v16

    const/4 v5, 0x0

    :goto_6
    if-eqz v9, :cond_c

    .line 32
    new-instance v10, Ld/x/h$b;

    .line 33
    iget-object v2, v6, Ld/x/h;->x:Ljava/lang/String;

    .line 34
    invoke-static/range {p1 .. p1}, Ld/x/v;->c(Landroid/view/View;)Ld/x/d0;

    move-result-object v4

    move-object v0, v10

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Ld/x/h$b;-><init>(Landroid/view/View;Ljava/lang/String;Ld/x/h;Ld/x/d0;Ld/x/p;)V

    .line 35
    invoke-virtual {v7, v9, v10}, Ld/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, v6, Ld/x/h;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_7
    add-int/lit8 v11, v11, 0x1

    move/from16 v9, v17

    goto/16 :goto_0

    .line 37
    :cond_d
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v10, 0x0

    .line 38
    :goto_8
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge v10, v0, :cond_e

    .line 39
    invoke-virtual {v8, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 40
    iget-object v1, v6, Ld/x/h;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 41
    invoke-virtual {v8, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0x7fffffffffffffffL

    sub-long/2addr v1, v3

    invoke-virtual {v0}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v3

    add-long/2addr v3, v1

    .line 42
    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_e
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Z)V
    .locals 5

    .line 44
    invoke-virtual {p0, p2}, Ld/x/h;->a(Z)V

    .line 45
    iget-object v0, p0, Ld/x/h;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Ld/x/h;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Ld/x/h;->D:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Ld/x/h;->E:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p0, p1, p2}, Ld/x/h;->a(Landroid/view/View;Z)V

    goto/16 :goto_7

    :cond_3
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    :goto_1
    iget-object v2, p0, Ld/x/h;->B:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 50
    iget-object v2, p0, Ld/x/h;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 51
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 52
    new-instance v3, Ld/x/p;

    invoke-direct {v3}, Ld/x/p;-><init>()V

    .line 53
    iput-object v2, v3, Ld/x/p;->b:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 54
    invoke-virtual {p0, v3}, Ld/x/h;->c(Ld/x/p;)V

    goto :goto_2

    .line 55
    :cond_4
    invoke-virtual {p0, v3}, Ld/x/h;->a(Ld/x/p;)V

    .line 56
    :goto_2
    iget-object v4, v3, Ld/x/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p0, v3}, Ld/x/h;->b(Ld/x/p;)V

    if-eqz p2, :cond_5

    .line 58
    iget-object v4, p0, Ld/x/h;->M:Ld/x/q;

    invoke-static {v4, v2, v3}, Ld/x/h;->a(Ld/x/q;Landroid/view/View;Ld/x/p;)V

    goto :goto_3

    .line 59
    :cond_5
    iget-object v4, p0, Ld/x/h;->N:Ld/x/q;

    invoke-static {v4, v2, v3}, Ld/x/h;->a(Ld/x/q;Landroid/view/View;Ld/x/p;)V

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 60
    :cond_7
    :goto_4
    iget-object p1, p0, Ld/x/h;->C:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_a

    .line 61
    iget-object p1, p0, Ld/x/h;->C:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 62
    new-instance v1, Ld/x/p;

    invoke-direct {v1}, Ld/x/p;-><init>()V

    .line 63
    iput-object p1, v1, Ld/x/p;->b:Landroid/view/View;

    if-eqz p2, :cond_8

    .line 64
    invoke-virtual {p0, v1}, Ld/x/h;->c(Ld/x/p;)V

    goto :goto_5

    .line 65
    :cond_8
    invoke-virtual {p0, v1}, Ld/x/h;->a(Ld/x/p;)V

    .line 66
    :goto_5
    iget-object v2, v1, Ld/x/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p0, v1}, Ld/x/h;->b(Ld/x/p;)V

    if-eqz p2, :cond_9

    .line 68
    iget-object v2, p0, Ld/x/h;->M:Ld/x/q;

    invoke-static {v2, p1, v1}, Ld/x/h;->a(Ld/x/q;Landroid/view/View;Ld/x/p;)V

    goto :goto_6

    .line 69
    :cond_9
    iget-object v2, p0, Ld/x/h;->N:Ld/x/q;

    invoke-static {v2, p1, v1}, Ld/x/h;->a(Ld/x/q;Landroid/view/View;Ld/x/p;)V

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    :goto_7
    return-void
.end method

.method public a(Ld/x/e;)V
    .locals 0

    if-nez p1, :cond_0

    .line 148
    sget-object p1, Ld/x/h;->d0:Ld/x/e;

    iput-object p1, p0, Ld/x/h;->b0:Ld/x/e;

    goto :goto_0

    .line 149
    :cond_0
    iput-object p1, p0, Ld/x/h;->b0:Ld/x/e;

    :goto_0
    return-void
.end method

.method public a(Ld/x/h$c;)V
    .locals 0

    .line 150
    iput-object p1, p0, Ld/x/h;->a0:Ld/x/h$c;

    return-void
.end method

.method public a(Ld/x/m;)V
    .locals 0

    .line 151
    iput-object p1, p0, Ld/x/h;->Z:Ld/x/m;

    return-void
.end method

.method public abstract a(Ld/x/p;)V
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Ld/x/h;->M:Ld/x/q;

    iget-object p1, p1, Ld/x/q;->a:Ld/f/a;

    invoke-virtual {p1}, Ld/f/h;->clear()V

    .line 95
    iget-object p1, p0, Ld/x/h;->M:Ld/x/q;

    iget-object p1, p1, Ld/x/q;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 96
    iget-object p1, p0, Ld/x/h;->M:Ld/x/q;

    iget-object p1, p1, Ld/x/q;->c:Ld/f/e;

    invoke-virtual {p1}, Ld/f/e;->a()V

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Ld/x/h;->N:Ld/x/q;

    iget-object p1, p1, Ld/x/q;->a:Ld/f/a;

    invoke-virtual {p1}, Ld/f/h;->clear()V

    .line 98
    iget-object p1, p0, Ld/x/h;->N:Ld/x/q;

    iget-object p1, p1, Ld/x/q;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 99
    iget-object p1, p0, Ld/x/h;->N:Ld/x/q;

    iget-object p1, p1, Ld/x/q;->c:Ld/f/e;

    invoke-virtual {p1}, Ld/f/e;->a()V

    :goto_0
    return-void
.end method

.method public a(Ld/x/p;Ld/x/p;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 124
    invoke-virtual {p0}, Ld/x/h;->b()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 125
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 126
    invoke-static {p1, p2, v5}, Ld/x/h;->a(Ld/x/p;Ld/x/p;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
    :cond_1
    iget-object v2, p1, Ld/x/p;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 128
    invoke-static {p1, p2, v3}, Ld/x/h;->a(Ld/x/p;Ld/x/p;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public b(J)Ld/x/h;
    .locals 0

    .line 1
    iput-wide p1, p0, Ld/x/h;->y:J

    return-object p0
.end method

.method public b(Ld/x/h$d;)Ld/x/h;
    .locals 1

    .line 29
    iget-object v0, p0, Ld/x/h;->X:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-object p0

    .line 30
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 31
    iget-object p1, p0, Ld/x/h;->X:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Ld/x/h;->X:Ljava/util/ArrayList;

    :cond_1
    return-object p0
.end method

.method public b(Landroid/view/View;Z)Ld/x/p;
    .locals 6

    .line 21
    iget-object v0, p0, Ld/x/h;->O:Ld/x/n;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0, p1, p2}, Ld/x/h;->b(Landroid/view/View;Z)Ld/x/p;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 23
    iget-object v0, p0, Ld/x/h;->Q:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ld/x/h;->R:Ljava/util/ArrayList;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    .line 24
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_5

    .line 25
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld/x/p;

    if-nez v5, :cond_3

    return-object v1

    .line 26
    :cond_3
    iget-object v5, v5, Ld/x/p;->b:Landroid/view/View;

    if-ne v5, p1, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-ltz v3, :cond_7

    if-eqz p2, :cond_6

    .line 27
    iget-object p1, p0, Ld/x/h;->R:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Ld/x/h;->Q:Ljava/util/ArrayList;

    .line 28
    :goto_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ld/x/p;

    :cond_7
    return-object v1
.end method

.method public b(Ld/x/p;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/View;)Z
    .locals 5

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 3
    iget-object v1, p0, Ld/x/h;->F:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 4
    :cond_0
    iget-object v1, p0, Ld/x/h;->G:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 5
    :cond_1
    iget-object v1, p0, Ld/x/h;->H:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 7
    iget-object v4, p0, Ld/x/h;->H:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 8
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_3
    iget-object v1, p0, Ld/x/h;->I:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-static {p1}, Ld/i/i/n;->n(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 10
    iget-object v1, p0, Ld/x/h;->I:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    .line 13
    :cond_4
    iget-object v1, p0, Ld/x/h;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_7

    iget-object v1, p0, Ld/x/h;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Ld/x/h;->E:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    iget-object v1, p0, Ld/x/h;->D:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    return v3

    .line 16
    :cond_7
    iget-object v1, p0, Ld/x/h;->B:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Ld/x/h;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    .line 17
    :cond_8
    iget-object v0, p0, Ld/x/h;->D:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-static {p1}, Ld/i/i/n;->n(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v3

    .line 18
    :cond_9
    iget-object v0, p0, Ld/x/h;->E:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 19
    :goto_1
    iget-object v1, p0, Ld/x/h;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 20
    iget-object v1, p0, Ld/x/h;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    return v3

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return v2

    :cond_c
    :goto_2
    return v3
.end method

.method public b()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Landroid/view/View;Z)Ld/x/p;
    .locals 1

    .line 17
    iget-object v0, p0, Ld/x/h;->O:Ld/x/n;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0, p1, p2}, Ld/x/h;->c(Landroid/view/View;Z)Ld/x/p;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 19
    iget-object p2, p0, Ld/x/h;->M:Ld/x/q;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Ld/x/h;->N:Ld/x/q;

    .line 20
    :goto_0
    iget-object p2, p2, Ld/x/q;->a:Ld/f/a;

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p2, p1, v0}, Ld/f/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 22
    check-cast p1, Ld/x/p;

    return-object p1
.end method

.method public c()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ld/x/h;->d()V

    .line 2
    invoke-static {}, Ld/x/h;->e()Ld/f/a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Ld/x/h;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 4
    invoke-virtual {v0, v2}, Ld/f/h;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p0}, Ld/x/h;->d()V

    if-eqz v2, :cond_0

    .line 6
    new-instance v3, Ld/x/i;

    invoke-direct {v3, p0, v0}, Ld/x/i;-><init>(Ld/x/h;Ld/f/a;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    iget-wide v3, p0, Ld/x/h;->z:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    .line 8
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 9
    :cond_1
    iget-wide v3, p0, Ld/x/h;->y:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    .line 10
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 11
    :cond_2
    iget-object v3, p0, Ld/x/h;->A:Landroid/animation/TimeInterpolator;

    if-eqz v3, :cond_3

    .line 12
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13
    :cond_3
    new-instance v3, Ld/x/j;

    invoke-direct {v3, p0}, Ld/x/j;-><init>(Ld/x/h;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 14
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 15
    :cond_4
    iget-object v0, p0, Ld/x/h;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    invoke-virtual {p0}, Ld/x/h;->a()V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 5

    .line 23
    iget-boolean v0, p0, Ld/x/h;->W:Z

    if-nez v0, :cond_3

    .line 24
    invoke-static {}, Ld/x/h;->e()Ld/f/a;

    move-result-object v0

    .line 25
    iget v1, v0, Ld/f/h;->z:I

    .line 26
    invoke-static {p1}, Ld/x/v;->c(Landroid/view/View;)Ld/x/d0;

    move-result-object p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 27
    invoke-virtual {v0, v1}, Ld/f/h;->e(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/x/h$b;

    .line 28
    iget-object v4, v3, Ld/x/h$b;->a:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v3, v3, Ld/x/h$b;->d:Ld/x/d0;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    invoke-virtual {v0, v1}, Ld/f/h;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 30
    invoke-virtual {v3}, Landroid/animation/Animator;->pause()V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 31
    :cond_1
    iget-object p1, p0, Ld/x/h;->X:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 32
    iget-object p1, p0, Ld/x/h;->X:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 34
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 35
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/x/h$d;

    invoke-interface {v3, p0}, Ld/x/h$d;->a(Ld/x/h;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 36
    :cond_2
    iput-boolean v2, p0, Ld/x/h;->V:Z

    :cond_3
    return-void
.end method

.method public abstract c(Ld/x/p;)V
.end method

.method public clone()Ld/x/h;
    .locals 3

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/x/h;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Ld/x/h;->Y:Ljava/util/ArrayList;

    .line 4
    new-instance v2, Ld/x/q;

    invoke-direct {v2}, Ld/x/q;-><init>()V

    iput-object v2, v1, Ld/x/h;->M:Ld/x/q;

    .line 5
    new-instance v2, Ld/x/q;

    invoke-direct {v2}, Ld/x/q;-><init>()V

    iput-object v2, v1, Ld/x/h;->N:Ld/x/q;

    .line 6
    iput-object v0, v1, Ld/x/h;->Q:Ljava/util/ArrayList;

    .line 7
    iput-object v0, v1, Ld/x/h;->R:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/x/h;->clone()Ld/x/h;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/view/View;)Ld/x/h;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/x/h;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public d()V
    .locals 5

    .line 2
    iget v0, p0, Ld/x/h;->U:I

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Ld/x/h;->X:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Ld/x/h;->X:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/x/h$d;

    invoke-interface {v4, p0}, Ld/x/h$d;->c(Ld/x/h;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iput-boolean v1, p0, Ld/x/h;->W:Z

    .line 9
    :cond_1
    iget v0, p0, Ld/x/h;->U:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/x/h;->U:I

    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 5

    .line 4
    iget-boolean v0, p0, Ld/x/h;->V:Z

    if-eqz v0, :cond_3

    .line 5
    iget-boolean v0, p0, Ld/x/h;->W:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 6
    invoke-static {}, Ld/x/h;->e()Ld/f/a;

    move-result-object v0

    .line 7
    iget v2, v0, Ld/f/h;->z:I

    .line 8
    invoke-static {p1}, Ld/x/v;->c(Landroid/view/View;)Ld/x/d0;

    move-result-object p1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 9
    invoke-virtual {v0, v2}, Ld/f/h;->e(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/x/h$b;

    .line 10
    iget-object v4, v3, Ld/x/h$b;->a:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v3, v3, Ld/x/h$b;->d:Ld/x/d0;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    invoke-virtual {v0, v2}, Ld/f/h;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 12
    invoke-virtual {v3}, Landroid/animation/Animator;->resume()V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Ld/x/h;->X:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 14
    iget-object p1, p0, Ld/x/h;->X:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 17
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/x/h$d;

    invoke-interface {v3, p0}, Ld/x/h$d;->b(Ld/x/h;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 18
    :cond_2
    iput-boolean v1, p0, Ld/x/h;->V:Z

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Ld/x/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
