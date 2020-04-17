.class public Lk/a/b/a/d/g0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/d/e;


# static fields
.field public static final V:Lk/a/b/a/c/k0;


# instance fields
.field public A:Lk/a/b/a/d/g0/e;

.field public B:Z

.field public C:Lk/a/b/a/d/g0/e;

.field public D:Lk/a/b/a/d/g0/e;

.field public E:Z

.field public F:Lk/a/b/a/d/u;

.field public final G:[B

.field public final H:Lk/a/b/a/d/g0/m;

.field public I:Lk/a/b/a/b/n/e;

.field public J:Z

.field public K:Z

.field public L:Lk/a/b/a/b/n/e;

.field public M:Lk/a/b/a/b/n/e;

.field public N:I

.field public O:I

.field public P:Lk/a/b/a/d/g0/z;

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Lk/a/b/a/c/l;

.field public U:Lk/a/b/a/c/k0;

.field public x:Lk/a/b/a/d/g0/e;

.field public y:Lk/a/b/a/d/g0/e;

.field public z:Lk/a/b/a/d/g0/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    new-instance v1, Lk/a/b/a/c/k0$a;

    invoke-direct {v1, v0}, Lk/a/b/a/c/k0$a;-><init>(Ljava/nio/ByteBuffer;)V

    .line 3
    sput-object v1, Lk/a/b/a/d/g0/e;->V:Lk/a/b/a/c/k0;

    return-void
.end method

.method public constructor <init>([BLk/a/b/a/d/g0/m;Lk/a/b/a/d/g0/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lk/a/b/a/d/g0/e;->M:Lk/a/b/a/b/n/e;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lk/a/b/a/d/g0/e;->N:I

    .line 4
    iput v0, p0, Lk/a/b/a/d/g0/e;->O:I

    .line 5
    iput-object p1, p0, Lk/a/b/a/d/g0/e;->G:[B

    .line 6
    iput-object p2, p0, Lk/a/b/a/d/g0/e;->H:Lk/a/b/a/d/g0/m;

    .line 7
    iget p1, p2, Lk/a/b/a/d/g0/m;->S:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p2, Lk/a/b/a/d/g0/m;->S:I

    .line 8
    iput-object p3, p0, Lk/a/b/a/d/g0/e;->x:Lk/a/b/a/d/g0/e;

    if-eqz p3, :cond_0

    .line 9
    iput-object p0, p3, Lk/a/b/a/d/g0/e;->y:Lk/a/b/a/d/g0/e;

    :cond_0
    return-void
.end method


# virtual methods
.method public G()Lk/a/b/a/d/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/e;->H:Lk/a/b/a/d/g0/m;

    return-object v0
.end method

.method public K()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk/a/b/a/d/g0/e;->J:Z

    return v0
.end method

.method public O()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk/a/b/a/d/g0/e;->Q:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public R()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lk/a/b/a/d/g0/e;->J:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lk/a/b/a/d/g0/e;->J:Z

    .line 3
    iget-object v0, p0, Lk/a/b/a/d/g0/e;->H:Lk/a/b/a/d/g0/m;

    .line 4
    iget v1, v0, Lk/a/b/a/d/g0/m;->S:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lk/a/b/a/d/g0/m;->S:I

    .line 5
    iget-boolean v0, p0, Lk/a/b/a/d/g0/e;->K:Z

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lk/a/b/a/d/g0/e;->h()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lk/a/b/a/d/g0/e;->P:Lk/a/b/a/d/g0/z;

    invoke-virtual {v0}, Lk/a/b/a/d/g0/z;->a()V

    .line 8
    :goto_0
    iget-object v0, p0, Lk/a/b/a/d/g0/e;->H:Lk/a/b/a/d/g0/m;

    .line 9
    iget-object v1, v0, Lk/a/b/a/d/g0/m;->K:Lk/a/b/a/d/g0/e;

    if-ne v1, p0, :cond_2

    .line 10
    invoke-virtual {v0}, Lk/a/b/a/d/g0/m;->d()Z

    .line 11
    :cond_2
    iget-object v0, p0, Lk/a/b/a/d/g0/e;->H:Lk/a/b/a/d/g0/m;

    .line 12
    iget-object v1, v0, Lk/a/b/a/d/g0/m;->I:Lk/a/b/a/d/g0/e;

    if-ne v1, p0, :cond_3

    .line 13
    iget-object v1, p0, Lk/a/b/a/d/g0/e;->y:Lk/a/b/a/d/g0/e;

    .line 14
    iput-object v1, v0, Lk/a/b/a/d/g0/m;->I:Lk/a/b/a/d/g0/e;

    .line 15
    :cond_3
    iget-object v1, v0, Lk/a/b/a/d/g0/m;->J:Lk/a/b/a/d/g0/e;

    if-ne v1, p0, :cond_4

    .line 16
    iget-object v1, p0, Lk/a/b/a/d/g0/e;->x:Lk/a/b/a/d/g0/e;

    .line 17
    iput-object v1, v0, Lk/a/b/a/d/g0/m;->J:Lk/a/b/a/d/g0/e;

    .line 18
    :cond_4
    iget-object v0, p0, Lk/a/b/a/d/g0/e;->x:Lk/a/b/a/d/g0/e;

    if-eqz v0, :cond_5

    .line 19
    iget-object v1, p0, Lk/a/b/a/d/g0/e;->y:Lk/a/b/a/d/g0/e;

    iput-object v1, v0, Lk/a/b/a/d/g0/e;->y:Lk/a/b/a/d/g0/e;

    .line 20
    :cond_5
    iget-object v0, p0, Lk/a/b/a/d/g0/e;->y:Lk/a/b/a/d/g0/e;

    if-eqz v0, :cond_6

    .line 21
    iget-object v1, p0, Lk/a/b/a/d/g0/e;->x:Lk/a/b/a/d/g0/e;

    iput-object v1, v0, Lk/a/b/a/d/g0/e;->x:Lk/a/b/a/d/g0/e;

    .line 22
    :cond_6
    invoke-virtual {p0}, Lk/a/b/a/d/g0/e;->n()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lk/a/b/a/d/g0/e;->y:Lk/a/b/a/d/g0/e;

    .line 24
    iput-object v0, p0, Lk/a/b/a/d/g0/e;->x:Lk/a/b/a/d/g0/e;

    return-void
.end method

.method public a()V
    .locals 0

    .line 4
    invoke-virtual {p0}, Lk/a/b/a/d/g0/e;->R()V

    return-void
.end method

.method public a(Lk/a/b/a/b/n/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/b/a/d/g0/e;->I:Lk/a/b/a/b/n/e;

    .line 2
    iget-boolean p1, p0, Lk/a/b/a/d/g0/e;->K:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lk/a/b/a/d/g0/e;->J:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lk/a/b/a/d/g0/e;->h()V

    :cond_0
    return-void
.end method

.method public e()Lk/a/b/a/b/n/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/e;->L:Lk/a/b/a/b/n/e;

    return-object v0
.end method

.method public getTag()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/e;->G:[B

    return-object v0
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/e;->H:Lk/a/b/a/d/g0/m;

    .line 2
    iget-object v0, v0, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    .line 3
    iget-object v0, v0, Lk/a/b/a/d/g0/y;->H:Lk/a/b/a/d/g0/d;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lk/a/b/a/d/g0/f;->c(Z)V

    .line 5
    iget-boolean v2, p0, Lk/a/b/a/d/g0/e;->E:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Lk/a/b/a/d/g0/e;->C:Lk/a/b/a/d/g0/e;

    .line 7
    iget-object v2, v0, Lk/a/b/a/d/g0/d;->T:Lk/a/b/a/d/g0/e;

    .line 8
    iput-object v2, p0, Lk/a/b/a/d/g0/e;->D:Lk/a/b/a/d/g0/e;

    if-eqz v2, :cond_1

    .line 9
    iput-object p0, v2, Lk/a/b/a/d/g0/e;->C:Lk/a/b/a/d/g0/e;

    .line 10
    :cond_1
    iput-object p0, v0, Lk/a/b/a/d/g0/d;->T:Lk/a/b/a/d/g0/e;

    .line 11
    iget-object v2, v0, Lk/a/b/a/d/g0/d;->S:Lk/a/b/a/d/g0/e;

    if-nez v2, :cond_2

    .line 12
    iput-object p0, v0, Lk/a/b/a/d/g0/d;->S:Lk/a/b/a/d/g0/e;

    .line 13
    :cond_2
    iput-boolean v1, p0, Lk/a/b/a/d/g0/e;->E:Z

    .line 14
    iget v2, v0, Lk/a/b/a/d/g0/d;->U:I

    add-int/2addr v2, v1

    iput v2, v0, Lk/a/b/a/d/g0/d;->U:I

    :goto_0
    return-void
.end method

.method public i()Lk/a/b/a/d/g0/e;
    .locals 4

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/e;->C:Lk/a/b/a/d/g0/e;

    .line 2
    iget-object v1, p0, Lk/a/b/a/d/g0/e;->H:Lk/a/b/a/d/g0/m;

    .line 3
    iget-object v1, v1, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    .line 4
    iget-object v1, v1, Lk/a/b/a/d/g0/y;->H:Lk/a/b/a/d/g0/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 5
    iget-boolean v3, p0, Lk/a/b/a/d/g0/e;->E:Z

    if-nez v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v3, p0, Lk/a/b/a/d/g0/e;->D:Lk/a/b/a/d/g0/e;

    if-eqz v3, :cond_1

    .line 7
    iput-object v0, v3, Lk/a/b/a/d/g0/e;->C:Lk/a/b/a/d/g0/e;

    :cond_1
    if-eqz v0, :cond_2

    .line 8
    iput-object v3, v0, Lk/a/b/a/d/g0/e;->D:Lk/a/b/a/d/g0/e;

    .line 9
    :cond_2
    iput-object v2, p0, Lk/a/b/a/d/g0/e;->C:Lk/a/b/a/d/g0/e;

    .line 10
    iput-object v2, p0, Lk/a/b/a/d/g0/e;->D:Lk/a/b/a/d/g0/e;

    .line 11
    iget-object v2, v1, Lk/a/b/a/d/g0/d;->S:Lk/a/b/a/d/g0/e;

    if-ne v2, p0, :cond_3

    .line 12
    iput-object v0, v1, Lk/a/b/a/d/g0/d;->S:Lk/a/b/a/d/g0/e;

    .line 13
    :cond_3
    iget-object v2, v1, Lk/a/b/a/d/g0/d;->T:Lk/a/b/a/d/g0/e;

    if-ne v2, p0, :cond_4

    .line 14
    iput-object v3, v1, Lk/a/b/a/d/g0/d;->T:Lk/a/b/a/d/g0/e;

    :cond_4
    const/4 v2, 0x0

    .line 15
    iput-boolean v2, p0, Lk/a/b/a/d/g0/e;->E:Z

    .line 16
    iget v2, v1, Lk/a/b/a/d/g0/d;->U:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lk/a/b/a/d/g0/d;->U:I

    :goto_0
    return-object v0

    .line 17
    :cond_5
    throw v2
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/e;->H:Lk/a/b/a/d/g0/m;

    .line 2
    iget-object v0, v0, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    .line 3
    iget-object v0, v0, Lk/a/b/a/d/g0/y;->H:Lk/a/b/a/d/g0/d;

    .line 4
    invoke-virtual {v0, p0}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/g0/e;)V

    return-void
.end method

.method public pending()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/e;->U:Lk/a/b/a/c/k0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lk/a/b/a/c/k0;->c()I

    move-result v0

    :goto_0
    return v0
.end method

.method public q()Lk/a/b/a/d/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/e;->F:Lk/a/b/a/d/u;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lk/a/b/a/d/g0/r;

    invoke-direct {v0}, Lk/a/b/a/d/g0/r;-><init>()V

    iput-object v0, p0, Lk/a/b/a/d/g0/e;->F:Lk/a/b/a/d/u;

    .line 3
    :cond_0
    iget-object v0, p0, Lk/a/b/a/d/g0/e;->F:Lk/a/b/a/d/u;

    return-object v0
.end method

.method public t()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/e;->H:Lk/a/b/a/d/g0/m;

    .line 2
    instance-of v1, v0, Lk/a/b/a/d/g0/q;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lk/a/b/a/d/g0/m;->K:Lk/a/b/a/d/g0/e;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "DeliveryImpl [_tag="

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lk/a/b/a/d/g0/e;->G:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", _link="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/d/g0/e;->H:Lk/a/b/a/d/g0/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _deliveryState="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/d/g0/e;->I:Lk/a/b/a/b/n/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _settled="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lk/a/b/a/d/g0/e;->J:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", _remoteSettled="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lk/a/b/a/d/g0/e;->K:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", _remoteDeliveryState="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/d/g0/e;->L:Lk/a/b/a/b/n/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _flags="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lk/a/b/a/d/g0/e;->O:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", _defaultDeliveryState="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/d/g0/e;->M:Lk/a/b/a/b/n/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _transportDelivery="

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/d/g0/e;->P:Lk/a/b/a/d/g0/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _data Size="

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v1, p0, Lk/a/b/a/d/g0/e;->U:Lk/a/b/a/c/k0;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lk/a/b/a/c/k0;->c()I

    move-result v1

    .line 13
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", _complete="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lk/a/b/a/d/g0/e;->Q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", _updated="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lk/a/b/a/d/g0/e;->R:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", _done="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lk/a/b/a/d/g0/e;->S:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
