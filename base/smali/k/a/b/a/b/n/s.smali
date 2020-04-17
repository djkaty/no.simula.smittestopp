.class public final Lk/a/b/a/b/n/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/b/n/l;


# instance fields
.field public a:Lk/a/b/a/b/h;

.field public b:Lk/a/b/a/b/h;

.field public c:Lk/a/b/a/b/a;

.field public d:Lk/a/b/a/b/h;

.field public e:Ljava/lang/Boolean;

.field public f:Z

.field public g:Lk/a/b/a/b/n/n;

.field public h:Lk/a/b/a/b/n/e;

.field public i:Z

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/a/b/a/b/h;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lk/a/b/a/b/n/s;->a:Lk/a/b/a/b/h;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "the handle field is mandatory"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lk/a/b/a/b/n/l$a;Lk/a/b/a/b/a;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lk/a/b/a/b/n/l$a<",
            "TE;>;",
            "Lk/a/b/a/b/a;",
            "TE;)V"
        }
    .end annotation

    .line 3
    check-cast p1, Lk/a/b/a/d/g0/a0;

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 4
    check-cast p3, Ljava/lang/Integer;

    .line 5
    iget-object p1, p1, Lk/a/b/a/d/g0/a0;->N:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk/a/b/a/d/g0/k0;

    if-eqz p1, :cond_12

    .line 6
    iget-object p3, p1, Lk/a/b/a/d/g0/k0;->j:Lk/a/b/a/b/h;

    sget-object v1, Lk/a/b/a/b/h;->A:Lk/a/b/a/b/h;

    invoke-virtual {p3, v1}, Lk/a/b/a/b/h;->a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object p3

    iput-object p3, p1, Lk/a/b/a/d/g0/k0;->j:Lk/a/b/a/b/h;

    .line 7
    iget-object p3, p0, Lk/a/b/a/b/n/s;->a:Lk/a/b/a/b/h;

    .line 8
    invoke-virtual {p1, p3}, Lk/a/b/a/d/g0/k0;->a(Lk/a/b/a/b/h;)Lk/a/b/a/d/g0/e0;

    move-result-object p3

    check-cast p3, Lk/a/b/a/d/g0/i0;

    .line 9
    iget-object v1, p3, Lk/a/b/a/d/g0/i0;->j:Lk/a/b/a/b/h;

    .line 10
    iget-object v2, p0, Lk/a/b/a/b/n/s;->b:Lk/a/b/a/b/h;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v1, v2}, Lk/a/b/a/b/h;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v2, :cond_1

    .line 12
    :cond_0
    iget-object v2, p1, Lk/a/b/a/d/g0/k0;->p:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/d/g0/e;

    .line 13
    iget-object v2, v1, Lk/a/b/a/d/g0/e;->P:Lk/a/b/a/d/g0/z;

    .line 14
    iget v4, v2, Lk/a/b/a/d/g0/z;->d:I

    add-int/2addr v4, v3

    iput v4, v2, Lk/a/b/a/d/g0/z;->d:I

    goto :goto_1

    .line 15
    :cond_1
    iget-object v4, p1, Lk/a/b/a/d/g0/k0;->n:Lk/a/b/a/b/h;

    if-eqz v2, :cond_11

    if-eqz v4, :cond_3

    .line 16
    iget v5, v4, Lk/a/b/a/b/h;->x:I

    add-int/2addr v5, v3

    iget v6, v2, Lk/a/b/a/b/h;->x:I

    if-ne v5, v6, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Expected delivery-id "

    invoke-static {p2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object p3, Lk/a/b/a/b/h;->A:Lk/a/b/a/b/h;

    invoke-virtual {v4, p3}, Lk/a/b/a/b/h;->a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", got "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    if-nez v1, :cond_10

    .line 18
    iput-object v2, p1, Lk/a/b/a/d/g0/k0;->n:Lk/a/b/a/b/h;

    .line 19
    iget-object v1, p3, Lk/a/b/a/d/g0/e0;->f:Lk/a/b/a/d/g0/m;

    .line 20
    check-cast v1, Lk/a/b/a/d/g0/q;

    .line 21
    iget-object v4, p0, Lk/a/b/a/b/n/s;->c:Lk/a/b/a/b/a;

    .line 22
    iget-object v5, v4, Lk/a/b/a/b/a;->a:[B

    .line 23
    iget v6, v4, Lk/a/b/a/b/a;->b:I

    .line 24
    iget v4, v4, Lk/a/b/a/b/a;->c:I

    .line 25
    invoke-virtual {v1, v5, v6, v4}, Lk/a/b/a/d/g0/m;->c([BII)Lk/a/b/a/d/g0/e;

    move-result-object v1

    .line 26
    iget-object v4, p0, Lk/a/b/a/b/n/s;->d:Lk/a/b/a/b/h;

    if-eqz v4, :cond_4

    .line 27
    iget v4, v4, Lk/a/b/a/b/h;->x:I

    .line 28
    iput v4, v1, Lk/a/b/a/d/g0/e;->N:I

    .line 29
    :cond_4
    new-instance v4, Lk/a/b/a/d/g0/z;

    invoke-direct {v4, v2, v1, p3}, Lk/a/b/a/d/g0/z;-><init>(Lk/a/b/a/b/h;Lk/a/b/a/d/g0/e;Lk/a/b/a/d/g0/e0;)V

    .line 30
    iput-object v4, v1, Lk/a/b/a/d/g0/e;->P:Lk/a/b/a/d/g0/z;

    .line 31
    iput-object v2, p3, Lk/a/b/a/d/g0/i0;->j:Lk/a/b/a/b/h;

    .line 32
    iget-object v4, p1, Lk/a/b/a/d/g0/k0;->p:Ljava/util/Map;

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v2, p1, Lk/a/b/a/d/g0/k0;->b:Lk/a/b/a/d/g0/y;

    .line 34
    iget v4, v2, Lk/a/b/a/d/g0/y;->P:I

    add-int/2addr v4, v3

    iput v4, v2, Lk/a/b/a/d/g0/y;->P:I

    .line 35
    :goto_1
    iget-object v2, p0, Lk/a/b/a/b/n/s;->h:Lk/a/b/a/b/n/e;

    if-eqz v2, :cond_5

    .line 36
    iput-object v2, v1, Lk/a/b/a/d/g0/e;->L:Lk/a/b/a/b/n/e;

    .line 37
    iput-boolean v3, v1, Lk/a/b/a/d/g0/e;->R:Z

    .line 38
    :cond_5
    iget v2, p1, Lk/a/b/a/d/g0/k0;->r:I

    add-int/2addr v2, v3

    iput v2, p1, Lk/a/b/a/d/g0/k0;->r:I

    .line 39
    iget-boolean v2, p0, Lk/a/b/a/b/n/s;->j:Z

    const/4 v4, 0x0

    if-eqz p2, :cond_9

    if-nez v2, :cond_9

    .line 40
    iget-object v5, p2, Lk/a/b/a/b/a;->a:[B

    .line 41
    iget v6, p2, Lk/a/b/a/b/a;->b:I

    if-gtz v6, :cond_6

    .line 42
    iget v6, p2, Lk/a/b/a/b/a;->c:I

    .line 43
    array-length v7, v5

    if-ge v6, v7, :cond_7

    .line 44
    :cond_6
    iget v5, p2, Lk/a/b/a/b/a;->c:I

    .line 45
    new-array v6, v5, [B

    .line 46
    iget-object v7, p2, Lk/a/b/a/b/a;->a:[B

    .line 47
    iget v8, p2, Lk/a/b/a/b/a;->b:I

    .line 48
    invoke-static {v7, v8, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v6

    .line 49
    :cond_7
    iget-object v6, v1, Lk/a/b/a/d/g0/e;->T:Lk/a/b/a/c/l;

    if-nez v6, :cond_8

    .line 50
    new-instance v6, Lk/a/b/a/c/l;

    invoke-direct {v6}, Lk/a/b/a/c/l;-><init>()V

    iput-object v6, v1, Lk/a/b/a/d/g0/e;->T:Lk/a/b/a/c/l;

    iput-object v6, v1, Lk/a/b/a/d/g0/e;->U:Lk/a/b/a/c/k0;

    .line 51
    :cond_8
    iget-object v6, v1, Lk/a/b/a/d/g0/e;->T:Lk/a/b/a/c/l;

    .line 52
    invoke-virtual {v6, v5}, Lk/a/b/a/c/l;->b([B)Lk/a/b/a/c/l;

    .line 53
    iget-object v5, p1, Lk/a/b/a/d/g0/k0;->b:Lk/a/b/a/d/g0/y;

    .line 54
    iget p2, p2, Lk/a/b/a/b/a;->c:I

    .line 55
    invoke-virtual {v5, p2}, Lk/a/b/a/d/g0/y;->b(I)V

    .line 56
    :cond_9
    invoke-virtual {v1}, Lk/a/b/a/d/g0/e;->n()V

    .line 57
    iget-boolean p2, p0, Lk/a/b/a/b/n/s;->f:Z

    if-eqz p2, :cond_a

    if-eqz v2, :cond_c

    .line 58
    :cond_a
    iput-object v0, p3, Lk/a/b/a/d/g0/i0;->j:Lk/a/b/a/b/h;

    if-eqz v2, :cond_b

    goto :goto_2

    .line 59
    :cond_b
    iput-boolean v3, v1, Lk/a/b/a/d/g0/e;->Q:Z

    .line 60
    :goto_2
    iget-object p2, v1, Lk/a/b/a/d/g0/e;->H:Lk/a/b/a/d/g0/m;

    .line 61
    invoke-virtual {p2}, Lk/a/b/a/d/g0/m;->V()Lk/a/b/a/d/g0/e0;

    move-result-object p2

    .line 62
    iget-object p3, p2, Lk/a/b/a/d/g0/e0;->e:Lk/a/b/a/b/h;

    sget-object v0, Lk/a/b/a/b/h;->A:Lk/a/b/a/b/h;

    invoke-virtual {p3, v0}, Lk/a/b/a/b/h;->c(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object p3

    iput-object p3, p2, Lk/a/b/a/d/g0/e0;->e:Lk/a/b/a/b/h;

    .line 63
    iget-object p2, v1, Lk/a/b/a/d/g0/e;->H:Lk/a/b/a/d/g0/m;

    .line 64
    invoke-virtual {p2}, Lk/a/b/a/d/g0/m;->V()Lk/a/b/a/d/g0/e0;

    move-result-object p2

    .line 65
    iget-object p3, p2, Lk/a/b/a/d/g0/e0;->d:Lk/a/b/a/b/h;

    sget-object v0, Lk/a/b/a/b/h;->A:Lk/a/b/a/b/h;

    invoke-virtual {p3, v0}, Lk/a/b/a/b/h;->a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object p3

    iput-object p3, p2, Lk/a/b/a/d/g0/e0;->d:Lk/a/b/a/b/h;

    .line 66
    :cond_c
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 67
    iget-object p3, p0, Lk/a/b/a/b/n/s;->e:Ljava/lang/Boolean;

    .line 68
    invoke-virtual {p2, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    if-eqz v2, :cond_e

    .line 69
    :cond_d
    iput-boolean v3, v1, Lk/a/b/a/d/g0/e;->K:Z

    .line 70
    iput-boolean v3, v1, Lk/a/b/a/d/g0/e;->R:Z

    .line 71
    :cond_e
    iget-object p2, p1, Lk/a/b/a/d/g0/k0;->g:Lk/a/b/a/b/h;

    sget-object p3, Lk/a/b/a/b/h;->A:Lk/a/b/a/b/h;

    invoke-virtual {p2, p3}, Lk/a/b/a/b/h;->c(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object p2

    iput-object p2, p1, Lk/a/b/a/d/g0/k0;->g:Lk/a/b/a/b/h;

    .line 72
    sget-object p3, Lk/a/b/a/b/h;->z:Lk/a/b/a/b/h;

    invoke-virtual {p2, p3}, Lk/a/b/a/b/h;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 73
    iget-object p2, v1, Lk/a/b/a/d/g0/e;->H:Lk/a/b/a/d/g0/m;

    .line 74
    invoke-virtual {p2, v4}, Lk/a/b/a/d/g0/f;->c(Z)V

    .line 75
    :cond_f
    iget-object p1, p1, Lk/a/b/a/d/g0/k0;->b:Lk/a/b/a/d/g0/y;

    .line 76
    iget-object p1, p1, Lk/a/b/a/d/g0/y;->H:Lk/a/b/a/d/g0/d;

    .line 77
    sget-object p2, Lk/a/b/a/d/h$b;->DELIVERY:Lk/a/b/a/d/h$b;

    invoke-virtual {p1, p2, v1}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    goto :goto_3

    .line 78
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal multiplex of deliveries on same link with delivery-id "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " and "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No delivery-id specified on first Transfer of new delivery"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    :goto_3
    return-void

    .line 80
    :cond_13
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Transfer{handle="

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/a/b/a/b/n/s;->a:Lk/a/b/a/b/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deliveryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/s;->b:Lk/a/b/a/b/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deliveryTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/s;->c:Lk/a/b/a/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", messageFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/s;->d:Lk/a/b/a/b/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", settled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/s;->e:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", more="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lk/a/b/a/b/n/s;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rcvSettleMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/s;->g:Lk/a/b/a/b/n/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/s;->h:Lk/a/b/a/b/n/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lk/a/b/a/b/n/s;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", aborted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lk/a/b/a/b/n/s;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", batchable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lk/a/b/a/b/n/s;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
