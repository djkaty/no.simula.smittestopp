.class public Lk/a/b/a/d/g0/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/d/g0/f0;


# static fields
.field public static final h:Ljava/nio/ByteBuffer;


# instance fields
.field public final a:Lk/a/b/a/d/g0/h0;

.field public final b:I

.field public c:Ljava/nio/ByteBuffer;

.field public d:Ljava/nio/ByteBuffer;

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lk/a/b/a/d/g0/g0;->h:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Lk/a/b/a/d/g0/h0;IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lk/a/b/a/d/g0/g0;->c:Ljava/nio/ByteBuffer;

    .line 3
    iput-object v0, p0, Lk/a/b/a/d/g0/g0;->d:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lk/a/b/a/d/g0/g0;->e:Z

    .line 5
    iput-boolean v0, p0, Lk/a/b/a/d/g0/g0;->f:Z

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lk/a/b/a/d/g0/g0;->g:Z

    .line 7
    iput-object p1, p0, Lk/a/b/a/d/g0/g0;->a:Lk/a/b/a/d/g0/h0;

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x4000

    .line 8
    :goto_0
    iput p2, p0, Lk/a/b/a/d/g0/g0;->b:I

    .line 9
    iput-boolean p3, p0, Lk/a/b/a/d/g0/g0;->g:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lk/a/b/a/d/g0/g0;->d:Ljava/nio/ByteBuffer;

    .line 2
    iput-object v0, p0, Lk/a/b/a/d/g0/g0;->c:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public close_head()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lk/a/b/a/d/g0/g0;->f:Z

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/g0;->a:Lk/a/b/a/d/g0/h0;

    check-cast v0, Lk/a/b/a/d/g0/a0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/d/d0;)V

    .line 3
    invoke-virtual {p0}, Lk/a/b/a/d/g0/g0;->a()V

    return-void
.end method

.method public head()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/g0;->pending()I

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/g0;->d:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lk/a/b/a/d/g0/g0;->h:Ljava/nio/ByteBuffer;

    :goto_0
    return-object v0
.end method

.method public pending()I
    .locals 14

    .line 1
    iget-boolean v0, p0, Lk/a/b/a/d/g0/g0;->f:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lk/a/b/a/d/g0/g0;->c:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 3
    iget v0, p0, Lk/a/b/a/d/g0/g0;->b:I

    .line 4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lk/a/b/a/d/g0/g0;->c:Ljava/nio/ByteBuffer;

    .line 6
    iget-boolean v3, p0, Lk/a/b/a/d/g0/g0;->g:Z

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lk/a/b/a/d/g0/g0;->d:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lk/a/b/a/d/g0/g0;->d:Ljava/nio/ByteBuffer;

    .line 9
    :goto_0
    iget-object v0, p0, Lk/a/b/a/d/g0/g0;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 10
    :cond_2
    iget-object v0, p0, Lk/a/b/a/d/g0/g0;->a:Lk/a/b/a/d/g0/h0;

    iget-object v3, p0, Lk/a/b/a/d/g0/g0;->c:Ljava/nio/ByteBuffer;

    check-cast v0, Lk/a/b/a/d/g0/a0;

    .line 11
    iget-boolean v4, v0, Lk/a/b/a/d/g0/a0;->M:Z

    const/4 v5, 0x1

    if-nez v4, :cond_4

    .line 12
    invoke-virtual {v0}, Lk/a/b/a/d/g0/a0;->X()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 13
    sget-object v4, Lk/a/b/a/d/g0/a0;->F0:Ljava/lang/String;

    const-string v6, "AMQP"

    invoke-virtual {v0, v4, v6}, Lk/a/b/a/d/g0/a0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lk/a/b/a/d/g0/a0;->V()Lk/a/b/a/d/g0/p;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 15
    invoke-interface {v4}, Lk/a/b/a/d/g0/p;->d()V

    .line 16
    :cond_3
    iget-object v4, v0, Lk/a/b/a/d/g0/a0;->X:Lk/a/b/a/d/g0/j;

    sget-object v6, Lk/a/b/a/d/g0/b;->a:[B

    .line 17
    iget-object v4, v4, Lk/a/b/a/d/g0/j;->c:Lk/a/b/a/d/g0/k;

    array-length v7, v6

    invoke-virtual {v4, v6, v2, v7}, Lk/a/b/a/d/g0/k;->a([BII)V

    .line 18
    iput-boolean v5, v0, Lk/a/b/a/d/g0/a0;->M:Z

    .line 19
    :cond_4
    iget-boolean v4, v0, Lk/a/b/a/d/g0/a0;->K:Z

    const/4 v6, 0x0

    if-nez v4, :cond_b

    iget-boolean v4, v0, Lk/a/b/a/d/g0/a0;->j0:Z

    if-nez v4, :cond_5

    iget-object v4, v0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    if-eqz v4, :cond_b

    .line 20
    iget-object v4, v4, Lk/a/b/a/d/g0/f;->x:Lk/a/b/a/d/g;

    .line 21
    sget-object v7, Lk/a/b/a/d/g;->UNINITIALIZED:Lk/a/b/a/d/g;

    if-eq v4, v7, :cond_b

    .line 22
    :cond_5
    new-instance v4, Lk/a/b/a/b/n/m;

    invoke-direct {v4}, Lk/a/b/a/b/n/m;-><init>()V

    .line 23
    iget-object v7, v0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    const-string v8, ""

    if-eqz v7, :cond_7

    .line 24
    iget-object v7, v7, Lk/a/b/a/d/g0/d;->V:Ljava/lang/String;

    if-nez v7, :cond_6

    goto :goto_1

    :cond_6
    move-object v8, v7

    .line 25
    :goto_1
    invoke-virtual {v4, v8}, Lk/a/b/a/b/n/m;->a(Ljava/lang/String;)V

    .line 26
    iget-object v7, v0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    .line 27
    iget-object v7, v7, Lk/a/b/a/d/g0/d;->W:Ljava/lang/String;

    .line 28
    iput-object v7, v4, Lk/a/b/a/b/n/m;->b:Ljava/lang/String;

    .line 29
    iput-object v6, v4, Lk/a/b/a/b/n/m;->i:[Lk/a/b/a/b/f;

    .line 30
    iput-object v6, v4, Lk/a/b/a/b/n/m;->h:[Lk/a/b/a/b/f;

    .line 31
    iput-object v6, v4, Lk/a/b/a/b/n/m;->j:Ljava/util/Map;

    goto :goto_2

    .line 32
    :cond_7
    invoke-virtual {v4, v8}, Lk/a/b/a/b/n/m;->a(Ljava/lang/String;)V

    .line 33
    :goto_2
    iget v7, v0, Lk/a/b/a/d/g0/a0;->T:I

    if-lez v7, :cond_8

    .line 34
    invoke-static {v7}, Lk/a/b/a/b/h;->a(I)Lk/a/b/a/b/h;

    move-result-object v7

    .line 35
    iput-object v7, v4, Lk/a/b/a/b/n/m;->c:Lk/a/b/a/b/h;

    .line 36
    :cond_8
    iget v7, v0, Lk/a/b/a/d/g0/a0;->W:I

    if-lez v7, :cond_9

    int-to-short v7, v7

    .line 37
    invoke-static {v7}, Lk/a/b/a/b/j;->a(S)Lk/a/b/a/b/j;

    move-result-object v7

    .line 38
    iput-object v7, v4, Lk/a/b/a/b/n/m;->d:Lk/a/b/a/b/j;

    .line 39
    :cond_9
    iget v7, v0, Lk/a/b/a/d/g0/a0;->n0:I

    if-lez v7, :cond_a

    .line 40
    new-instance v7, Lk/a/b/a/b/h;

    iget v8, v0, Lk/a/b/a/d/g0/a0;->n0:I

    div-int/lit8 v8, v8, 0x2

    invoke-direct {v7, v8}, Lk/a/b/a/b/h;-><init>(I)V

    .line 41
    iput-object v7, v4, Lk/a/b/a/b/n/m;->e:Lk/a/b/a/b/h;

    .line 42
    :cond_a
    iput-boolean v5, v0, Lk/a/b/a/d/g0/a0;->K:Z

    .line 43
    iget-object v7, v0, Lk/a/b/a/d/g0/a0;->X:Lk/a/b/a/d/g0/j;

    invoke-virtual {v7, v2, v4, v6, v6}, Lk/a/b/a/d/g0/j;->a(ILjava/lang/Object;Lk/a/b/a/c/k0;Ljava/lang/Runnable;)V

    .line 44
    :cond_b
    iget-object v4, v0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    if-eqz v4, :cond_14

    iget-boolean v7, v0, Lk/a/b/a/d/g0/a0;->K:Z

    if-eqz v7, :cond_14

    iget-boolean v7, v0, Lk/a/b/a/d/g0/a0;->L:Z

    if-nez v7, :cond_14

    .line 45
    iget-object v4, v4, Lk/a/b/a/d/g0/d;->J:Lk/a/b/a/d/g0/f;

    :goto_3
    if-eqz v4, :cond_14

    .line 46
    instance-of v7, v4, Lk/a/b/a/d/g0/y;

    if-eqz v7, :cond_13

    .line 47
    move-object v7, v4

    check-cast v7, Lk/a/b/a/d/g0/y;

    .line 48
    invoke-virtual {v0, v7}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/d/g0/y;)Lk/a/b/a/d/g0/k0;

    move-result-object v8

    .line 49
    iget-object v9, v7, Lk/a/b/a/d/g0/f;->x:Lk/a/b/a/d/g;

    .line 50
    sget-object v10, Lk/a/b/a/d/g;->UNINITIALIZED:Lk/a/b/a/d/g;

    if-eq v9, v10, :cond_13

    .line 51
    iget-boolean v9, v8, Lk/a/b/a/d/g0/k0;->t:Z

    if-nez v9, :cond_13

    const/4 v9, 0x0

    .line 52
    :goto_4
    iget-object v10, v0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    .line 53
    iget v10, v10, Lk/a/b/a/d/g0/d;->K:I

    if-ge v9, v10, :cond_e

    .line 54
    iget-object v10, v0, Lk/a/b/a/d/g0/a0;->O:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 55
    iget-object v10, v0, Lk/a/b/a/d/g0/a0;->O:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {v8}, Lk/a/b/a/d/g0/k0;->a()Z

    move-result v10

    if-nez v10, :cond_c

    .line 57
    iget-object v10, v8, Lk/a/b/a/d/g0/k0;->b:Lk/a/b/a/d/g0/y;

    invoke-virtual {v10}, Lk/a/b/a/d/g0/f;->w()V

    .line 58
    :cond_c
    iput v9, v8, Lk/a/b/a/d/g0/k0;->c:I

    goto :goto_5

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_e
    const/4 v9, -0x1

    .line 59
    :goto_5
    new-instance v10, Lk/a/b/a/b/n/b;

    invoke-direct {v10}, Lk/a/b/a/b/n/b;-><init>()V

    .line 60
    iget-object v7, v7, Lk/a/b/a/d/g0/f;->y:Lk/a/b/a/d/g;

    .line 61
    sget-object v11, Lk/a/b/a/d/g;->UNINITIALIZED:Lk/a/b/a/d/g;

    if-eq v7, v11, :cond_f

    .line 62
    iget v7, v8, Lk/a/b/a/d/g0/k0;->d:I

    int-to-short v7, v7

    .line 63
    invoke-static {v7}, Lk/a/b/a/b/j;->a(S)Lk/a/b/a/b/j;

    move-result-object v7

    .line 64
    iput-object v7, v10, Lk/a/b/a/b/n/b;->a:Lk/a/b/a/b/j;

    .line 65
    :cond_f
    invoke-virtual {v8}, Lk/a/b/a/d/g0/k0;->d()V

    .line 66
    iget-object v7, v8, Lk/a/b/a/d/g0/k0;->e:Lk/a/b/a/b/h;

    .line 67
    iput-object v7, v10, Lk/a/b/a/b/n/b;->e:Lk/a/b/a/b/h;

    .line 68
    iget-object v7, v8, Lk/a/b/a/d/g0/k0;->g:Lk/a/b/a/b/h;

    if-eqz v7, :cond_12

    .line 69
    iput-object v7, v10, Lk/a/b/a/b/n/b;->c:Lk/a/b/a/b/h;

    .line 70
    iget-object v7, v8, Lk/a/b/a/d/g0/k0;->h:Lk/a/b/a/b/h;

    if-eqz v7, :cond_11

    .line 71
    iput-object v7, v10, Lk/a/b/a/b/n/b;->d:Lk/a/b/a/b/h;

    .line 72
    iget-object v7, v8, Lk/a/b/a/d/g0/k0;->i:Lk/a/b/a/b/h;

    if-eqz v7, :cond_10

    .line 73
    iput-object v7, v10, Lk/a/b/a/b/n/b;->b:Lk/a/b/a/b/h;

    .line 74
    iget-object v7, v0, Lk/a/b/a/d/g0/a0;->X:Lk/a/b/a/d/g0/j;

    invoke-virtual {v7, v9, v10, v6, v6}, Lk/a/b/a/d/g0/j;->a(ILjava/lang/Object;Lk/a/b/a/c/k0;Ljava/lang/Runnable;)V

    .line 75
    iput-boolean v5, v8, Lk/a/b/a/d/g0/k0;->t:Z

    goto :goto_6

    .line 76
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the next-outgoing-id field is mandatory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the outgoing-window field is mandatory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the incoming-window field is mandatory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_13
    :goto_6
    iget-object v4, v4, Lk/a/b/a/d/g0/f;->C:Lk/a/b/a/d/g0/f;

    goto/16 :goto_3

    .line 80
    :cond_14
    iget-object v4, v0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    const-string v7, "the handle field is mandatory"

    if-eqz v4, :cond_27

    iget-boolean v8, v0, Lk/a/b/a/d/g0/a0;->K:Z

    if-eqz v8, :cond_27

    iget-boolean v8, v0, Lk/a/b/a/d/g0/a0;->L:Z

    if-nez v8, :cond_27

    .line 81
    iget-object v4, v4, Lk/a/b/a/d/g0/d;->J:Lk/a/b/a/d/g0/f;

    :goto_7
    if-eqz v4, :cond_27

    .line 82
    instance-of v8, v4, Lk/a/b/a/d/g0/m;

    if-eqz v8, :cond_26

    .line 83
    move-object v8, v4

    check-cast v8, Lk/a/b/a/d/g0/m;

    .line 84
    invoke-virtual {v0, v8}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/d/g0/m;)Lk/a/b/a/d/g0/e0;

    move-result-object v9

    .line 85
    iget-object v10, v8, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    .line 86
    invoke-virtual {v0, v10}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/d/g0/y;)Lk/a/b/a/d/g0/k0;

    move-result-object v10

    .line 87
    iget-object v11, v8, Lk/a/b/a/d/g0/f;->x:Lk/a/b/a/d/g;

    .line 88
    sget-object v12, Lk/a/b/a/d/g;->UNINITIALIZED:Lk/a/b/a/d/g;

    if-eq v11, v12, :cond_26

    .line 89
    iget-boolean v11, v9, Lk/a/b/a/d/g0/e0;->i:Z

    if-nez v11, :cond_26

    .line 90
    invoke-virtual {v10}, Lk/a/b/a/d/g0/k0;->a()Z

    move-result v11

    if-eqz v11, :cond_26

    .line 91
    iget-object v11, v8, Lk/a/b/a/d/g0/f;->y:Lk/a/b/a/d/g;

    .line 92
    sget-object v12, Lk/a/b/a/d/g;->ACTIVE:Lk/a/b/a/d/g;

    if-ne v11, v12, :cond_16

    .line 93
    iget-object v11, v9, Lk/a/b/a/d/g0/e0;->a:Lk/a/b/a/b/h;

    if-eqz v11, :cond_15

    const/4 v11, 0x1

    goto :goto_8

    :cond_15
    const/4 v11, 0x0

    :goto_8
    if-eqz v11, :cond_17

    .line 94
    :cond_16
    iget-object v11, v8, Lk/a/b/a/d/g0/f;->y:Lk/a/b/a/d/g;

    .line 95
    sget-object v12, Lk/a/b/a/d/g;->UNINITIALIZED:Lk/a/b/a/d/g;

    if-ne v11, v12, :cond_26

    :cond_17
    const/4 v11, 0x0

    :goto_9
    const v12, 0xffff

    if-gt v11, v12, :cond_25

    .line 96
    invoke-static {v11}, Lk/a/b/a/b/h;->a(I)Lk/a/b/a/b/h;

    move-result-object v12

    .line 97
    iget-object v13, v10, Lk/a/b/a/d/g0/k0;->l:Ljava/util/Map;

    invoke-interface {v13, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_24

    .line 98
    iget-object v11, v10, Lk/a/b/a/d/g0/k0;->l:Ljava/util/Map;

    invoke-interface {v11, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v11, v9, Lk/a/b/a/d/g0/e0;->a:Lk/a/b/a/b/h;

    if-nez v11, :cond_18

    .line 100
    iget-object v11, v9, Lk/a/b/a/d/g0/e0;->f:Lk/a/b/a/d/g0/m;

    invoke-virtual {v11}, Lk/a/b/a/d/g0/f;->w()V

    .line 101
    :cond_18
    iput-object v12, v9, Lk/a/b/a/d/g0/e0;->a:Lk/a/b/a/b/h;

    .line 102
    iget-object v11, v8, Lk/a/b/a/d/g0/f;->y:Lk/a/b/a/d/g;

    .line 103
    sget-object v13, Lk/a/b/a/d/g;->UNINITIALIZED:Lk/a/b/a/d/g;

    if-ne v11, v13, :cond_19

    .line 104
    iget-object v11, v10, Lk/a/b/a/d/g0/k0;->m:Ljava/util/Map;

    .line 105
    iget-object v13, v9, Lk/a/b/a/d/g0/e0;->b:Ljava/lang/String;

    .line 106
    invoke-interface {v11, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_19
    new-instance v11, Lk/a/b/a/b/n/a;

    invoke-direct {v11}, Lk/a/b/a/b/n/a;-><init>()V

    if-eqz v12, :cond_23

    .line 108
    iput-object v12, v11, Lk/a/b/a/b/n/a;->b:Lk/a/b/a/b/h;

    .line 109
    iget-object v12, v9, Lk/a/b/a/d/g0/e0;->b:Ljava/lang/String;

    if-eqz v12, :cond_22

    .line 110
    iput-object v12, v11, Lk/a/b/a/b/n/a;->a:Ljava/lang/String;

    .line 111
    iget-object v12, v8, Lk/a/b/a/d/g0/m;->U:Lk/a/b/a/b/n/p;

    if-eqz v12, :cond_1a

    .line 112
    iput-object v12, v11, Lk/a/b/a/b/n/a;->d:Lk/a/b/a/b/n/p;

    .line 113
    :cond_1a
    iget-object v12, v8, Lk/a/b/a/d/g0/m;->V:Lk/a/b/a/b/n/n;

    if-eqz v12, :cond_1b

    .line 114
    iput-object v12, v11, Lk/a/b/a/b/n/a;->e:Lk/a/b/a/b/n/n;

    .line 115
    :cond_1b
    iget-object v12, v8, Lk/a/b/a/d/g0/m;->M:Lk/a/b/a/b/n/q;

    if-eqz v12, :cond_1c

    .line 116
    iput-object v12, v11, Lk/a/b/a/b/n/a;->f:Lk/a/b/a/b/n/q;

    .line 117
    :cond_1c
    iget-object v12, v8, Lk/a/b/a/d/g0/m;->O:Lk/a/b/a/b/n/r;

    if-eqz v12, :cond_1d

    .line 118
    iput-object v12, v11, Lk/a/b/a/b/n/a;->g:Lk/a/b/a/b/n/r;

    .line 119
    :cond_1d
    iget-object v12, v8, Lk/a/b/a/d/g0/m;->Y:Ljava/util/Map;

    if-eqz v12, :cond_1e

    .line 120
    iput-object v12, v11, Lk/a/b/a/b/n/a;->n:Ljava/util/Map;

    .line 121
    :cond_1e
    instance-of v12, v4, Lk/a/b/a/d/g0/q;

    if-eqz v12, :cond_1f

    sget-object v12, Lk/a/b/a/b/n/o;->RECEIVER:Lk/a/b/a/b/n/o;

    goto :goto_a

    :cond_1f
    sget-object v12, Lk/a/b/a/b/n/o;->SENDER:Lk/a/b/a/b/n/o;

    :goto_a
    if-eqz v12, :cond_21

    .line 122
    iput-object v12, v11, Lk/a/b/a/b/n/a;->c:Lk/a/b/a/b/n/o;

    .line 123
    instance-of v8, v8, Lk/a/b/a/d/g0/x;

    if-eqz v8, :cond_20

    .line 124
    sget-object v8, Lk/a/b/a/b/h;->z:Lk/a/b/a/b/h;

    .line 125
    iput-object v8, v11, Lk/a/b/a/b/n/a;->j:Lk/a/b/a/b/h;

    .line 126
    :cond_20
    iget v8, v10, Lk/a/b/a/d/g0/k0;->c:I

    .line 127
    iget-object v10, v0, Lk/a/b/a/d/g0/a0;->X:Lk/a/b/a/d/g0/j;

    invoke-virtual {v10, v8, v11, v6, v6}, Lk/a/b/a/d/g0/j;->a(ILjava/lang/Object;Lk/a/b/a/c/k0;Ljava/lang/Runnable;)V

    .line 128
    iput-boolean v5, v9, Lk/a/b/a/d/g0/e0;->i:Z

    goto :goto_b

    .line 129
    :cond_21
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Role cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the name field is mandatory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_23
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_9

    .line 132
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no local handle available for allocation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_26
    :goto_b
    iget-object v4, v4, Lk/a/b/a/d/g0/f;->C:Lk/a/b/a/d/g0/f;

    goto/16 :goto_7

    .line 134
    :cond_27
    iget-object v4, v0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    if-eqz v4, :cond_2c

    iget-boolean v8, v0, Lk/a/b/a/d/g0/a0;->K:Z

    if-eqz v8, :cond_2c

    iget-boolean v8, v0, Lk/a/b/a/d/g0/a0;->L:Z

    if-nez v8, :cond_2c

    .line 135
    iget-object v4, v4, Lk/a/b/a/d/g0/d;->J:Lk/a/b/a/d/g0/f;

    :goto_c
    if-eqz v4, :cond_2a

    .line 136
    instance-of v8, v4, Lk/a/b/a/d/g0/q;

    if-eqz v8, :cond_29

    .line 137
    move-object v8, v4

    check-cast v8, Lk/a/b/a/d/g0/q;

    .line 138
    invoke-virtual {v0, v8}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/d/g0/m;)Lk/a/b/a/d/g0/e0;

    move-result-object v9

    .line 139
    iget-object v10, v8, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    .line 140
    invoke-virtual {v0, v10}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/d/g0/y;)Lk/a/b/a/d/g0/k0;

    move-result-object v10

    .line 141
    iget-object v11, v8, Lk/a/b/a/d/g0/f;->x:Lk/a/b/a/d/g;

    .line 142
    sget-object v12, Lk/a/b/a/d/g;->ACTIVE:Lk/a/b/a/d/g;

    if-ne v11, v12, :cond_29

    invoke-virtual {v10}, Lk/a/b/a/d/g0/k0;->a()Z

    move-result v11

    if-eqz v11, :cond_29

    .line 143
    iget v11, v8, Lk/a/b/a/d/g0/q;->b0:I

    .line 144
    iput v2, v8, Lk/a/b/a/d/g0/q;->b0:I

    if-nez v11, :cond_28

    .line 145
    iget-boolean v8, v8, Lk/a/b/a/d/g0/m;->X:Z

    if-nez v8, :cond_28

    .line 146
    iget-object v8, v10, Lk/a/b/a/d/g0/k0;->g:Lk/a/b/a/b/h;

    .line 147
    sget-object v12, Lk/a/b/a/b/h;->z:Lk/a/b/a/b/h;

    invoke-virtual {v8, v12}, Lk/a/b/a/b/h;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 148
    :cond_28
    iget-object v8, v9, Lk/a/b/a/d/g0/e0;->e:Lk/a/b/a/b/h;

    .line 149
    iget v8, v8, Lk/a/b/a/b/h;->x:I

    add-int/2addr v8, v11

    .line 150
    invoke-static {v8}, Lk/a/b/a/b/h;->a(I)Lk/a/b/a/b/h;

    move-result-object v8

    iput-object v8, v9, Lk/a/b/a/d/g0/e0;->e:Lk/a/b/a/b/h;

    .line 151
    invoke-virtual {v0, v10, v9}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/d/g0/k0;Lk/a/b/a/d/g0/e0;)V

    .line 152
    :cond_29
    iget-object v4, v4, Lk/a/b/a/d/g0/f;->C:Lk/a/b/a/d/g0/f;

    goto :goto_c

    .line 153
    :cond_2a
    iget-object v4, v0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    .line 154
    iget-object v4, v4, Lk/a/b/a/d/g0/d;->J:Lk/a/b/a/d/g0/f;

    :goto_d
    if-eqz v4, :cond_2c

    .line 155
    instance-of v8, v4, Lk/a/b/a/d/g0/y;

    if-eqz v8, :cond_2b

    .line 156
    move-object v8, v4

    check-cast v8, Lk/a/b/a/d/g0/y;

    .line 157
    invoke-virtual {v0, v8}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/d/g0/y;)Lk/a/b/a/d/g0/k0;

    move-result-object v9

    .line 158
    iget-object v8, v8, Lk/a/b/a/d/g0/f;->x:Lk/a/b/a/d/g;

    .line 159
    sget-object v10, Lk/a/b/a/d/g;->ACTIVE:Lk/a/b/a/d/g;

    if-ne v8, v10, :cond_2b

    invoke-virtual {v9}, Lk/a/b/a/d/g0/k0;->a()Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 160
    iget-object v8, v9, Lk/a/b/a/d/g0/k0;->g:Lk/a/b/a/b/h;

    .line 161
    sget-object v10, Lk/a/b/a/b/h;->z:Lk/a/b/a/b/h;

    invoke-virtual {v8, v10}, Lk/a/b/a/b/h;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 162
    invoke-virtual {v0, v9, v6}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/d/g0/k0;Lk/a/b/a/d/g0/e0;)V

    .line 163
    :cond_2b
    iget-object v4, v4, Lk/a/b/a/d/g0/f;->C:Lk/a/b/a/d/g0/f;

    goto :goto_d

    .line 164
    :cond_2c
    invoke-virtual {v0}, Lk/a/b/a/d/g0/a0;->b0()V

    .line 165
    invoke-virtual {v0}, Lk/a/b/a/d/g0/a0;->b0()V

    .line 166
    iget-object v4, v0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    if-eqz v4, :cond_2e

    iget-boolean v8, v0, Lk/a/b/a/d/g0/a0;->K:Z

    if-eqz v8, :cond_2e

    iget-boolean v8, v0, Lk/a/b/a/d/g0/a0;->L:Z

    if-nez v8, :cond_2e

    .line 167
    iget-object v4, v4, Lk/a/b/a/d/g0/d;->J:Lk/a/b/a/d/g0/f;

    :goto_e
    if-eqz v4, :cond_2e

    .line 168
    instance-of v8, v4, Lk/a/b/a/d/g0/x;

    if-eqz v8, :cond_2d

    .line 169
    move-object v8, v4

    check-cast v8, Lk/a/b/a/d/g0/x;

    .line 170
    iget-boolean v9, v8, Lk/a/b/a/d/g0/m;->X:Z

    if-eqz v9, :cond_2d

    .line 171
    iget v9, v8, Lk/a/b/a/d/g0/m;->T:I

    if-lez v9, :cond_2d

    .line 172
    iget-object v9, v8, Lk/a/b/a/d/g0/x;->a0:Lk/a/b/a/d/g0/j0;

    .line 173
    iget-object v10, v8, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    .line 174
    iget-object v10, v10, Lk/a/b/a/d/g0/y;->L:Lk/a/b/a/d/g0/k0;

    .line 175
    iget-object v11, v9, Lk/a/b/a/d/g0/e0;->e:Lk/a/b/a/b/h;

    .line 176
    sget-object v12, Lk/a/b/a/b/h;->z:Lk/a/b/a/b/h;

    .line 177
    iput-object v12, v9, Lk/a/b/a/d/g0/e0;->e:Lk/a/b/a/b/h;

    .line 178
    iget-object v12, v9, Lk/a/b/a/d/g0/e0;->d:Lk/a/b/a/b/h;

    .line 179
    invoke-virtual {v12, v11}, Lk/a/b/a/b/h;->a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object v11

    .line 180
    iput-object v11, v9, Lk/a/b/a/d/g0/e0;->d:Lk/a/b/a/b/h;

    .line 181
    iput v2, v8, Lk/a/b/a/d/g0/m;->T:I

    .line 182
    invoke-virtual {v0, v10, v9}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/d/g0/k0;Lk/a/b/a/d/g0/e0;)V

    .line 183
    :cond_2d
    iget-object v4, v4, Lk/a/b/a/d/g0/f;->C:Lk/a/b/a/d/g0/f;

    goto :goto_e

    .line 184
    :cond_2e
    iget-object v4, v0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    if-eqz v4, :cond_37

    iget-boolean v8, v0, Lk/a/b/a/d/g0/a0;->K:Z

    if-eqz v8, :cond_37

    .line 185
    iget-object v4, v4, Lk/a/b/a/d/g0/d;->J:Lk/a/b/a/d/g0/f;

    :goto_f
    if-eqz v4, :cond_37

    .line 186
    instance-of v8, v4, Lk/a/b/a/d/g0/m;

    if-eqz v8, :cond_36

    .line 187
    move-object v8, v4

    check-cast v8, Lk/a/b/a/d/g0/m;

    .line 188
    invoke-virtual {v0, v8}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/d/g0/m;)Lk/a/b/a/d/g0/e0;

    move-result-object v9

    .line 189
    iget-object v10, v8, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    .line 190
    invoke-virtual {v0, v10}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/d/g0/y;)Lk/a/b/a/d/g0/k0;

    move-result-object v10

    .line 191
    iget-object v11, v8, Lk/a/b/a/d/g0/f;->x:Lk/a/b/a/d/g;

    .line 192
    sget-object v12, Lk/a/b/a/d/g;->CLOSED:Lk/a/b/a/d/g;

    if-eq v11, v12, :cond_2f

    goto :goto_11

    .line 193
    :cond_2f
    iget-object v11, v9, Lk/a/b/a/d/g0/e0;->a:Lk/a/b/a/b/h;

    if-eqz v11, :cond_30

    const/4 v11, 0x1

    goto :goto_10

    :cond_30
    const/4 v11, 0x0

    :goto_10
    if-eqz v11, :cond_35

    .line 194
    invoke-virtual {v10}, Lk/a/b/a/d/g0/k0;->a()Z

    move-result v11

    if-eqz v11, :cond_35

    iget-boolean v11, v0, Lk/a/b/a/d/g0/a0;->L:Z

    if-nez v11, :cond_35

    .line 195
    instance-of v11, v8, Lk/a/b/a/d/g0/x;

    if-eqz v11, :cond_31

    .line 196
    iget v11, v8, Lk/a/b/a/d/g0/m;->Q:I

    if-lez v11, :cond_31

    .line 197
    iget-boolean v11, v9, Lk/a/b/a/d/g0/e0;->h:Z

    if-nez v11, :cond_31

    .line 198
    iget-boolean v11, v10, Lk/a/b/a/d/g0/k0;->s:Z

    if-nez v11, :cond_31

    .line 199
    iget-boolean v11, v0, Lk/a/b/a/d/g0/a0;->Y:Z

    if-nez v11, :cond_31

    .line 200
    iget-object v4, v4, Lk/a/b/a/d/g0/f;->C:Lk/a/b/a/d/g0/f;

    goto :goto_f

    .line 201
    :cond_31
    iget-object v11, v9, Lk/a/b/a/d/g0/e0;->a:Lk/a/b/a/b/h;

    if-eqz v11, :cond_32

    .line 202
    iget-object v12, v9, Lk/a/b/a/d/g0/e0;->f:Lk/a/b/a/d/g0/m;

    invoke-virtual {v12}, Lk/a/b/a/d/g0/f;->i()V

    .line 203
    :cond_32
    iput-object v6, v9, Lk/a/b/a/d/g0/e0;->a:Lk/a/b/a/b/h;

    .line 204
    iget-object v9, v10, Lk/a/b/a/d/g0/k0;->l:Ljava/util/Map;

    invoke-interface {v9, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v9, Lk/a/b/a/b/n/f;

    invoke-direct {v9}, Lk/a/b/a/b/n/f;-><init>()V

    if-eqz v11, :cond_34

    .line 206
    iput-object v11, v9, Lk/a/b/a/b/n/f;->a:Lk/a/b/a/b/h;

    .line 207
    iput-boolean v5, v9, Lk/a/b/a/b/n/f;->b:Z

    .line 208
    iget-object v8, v8, Lk/a/b/a/d/g0/f;->z:Lk/a/b/a/b/n/j;

    .line 209
    iget-object v11, v8, Lk/a/b/a/b/n/j;->a:Lk/a/b/a/b/f;

    if-eqz v11, :cond_33

    .line 210
    iput-object v8, v9, Lk/a/b/a/b/n/f;->c:Lk/a/b/a/b/n/j;

    .line 211
    :cond_33
    iget v8, v10, Lk/a/b/a/d/g0/k0;->c:I

    .line 212
    iget-object v10, v0, Lk/a/b/a/d/g0/a0;->X:Lk/a/b/a/d/g0/j;

    invoke-virtual {v10, v8, v9, v6, v6}, Lk/a/b/a/d/g0/j;->a(ILjava/lang/Object;Lk/a/b/a/c/k0;Ljava/lang/Runnable;)V

    goto :goto_11

    .line 213
    :cond_34
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_35
    :goto_11
    invoke-virtual {v4}, Lk/a/b/a/d/g0/f;->h()V

    .line 215
    :cond_36
    iget-object v4, v4, Lk/a/b/a/d/g0/f;->C:Lk/a/b/a/d/g0/f;

    goto :goto_f

    .line 216
    :cond_37
    iget-object v4, v0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    if-eqz v4, :cond_3c

    iget-boolean v7, v0, Lk/a/b/a/d/g0/a0;->K:Z

    if-eqz v7, :cond_3c

    .line 217
    iget-object v4, v4, Lk/a/b/a/d/g0/d;->J:Lk/a/b/a/d/g0/f;

    :goto_12
    if-eqz v4, :cond_3c

    .line 218
    instance-of v7, v4, Lk/a/b/a/d/g0/y;

    if-eqz v7, :cond_3b

    .line 219
    move-object v7, v4

    check-cast v7, Lk/a/b/a/d/g0/y;

    .line 220
    iget-object v8, v7, Lk/a/b/a/d/g0/f;->x:Lk/a/b/a/d/g;

    .line 221
    sget-object v9, Lk/a/b/a/d/g;->CLOSED:Lk/a/b/a/d/g;

    if-ne v8, v9, :cond_3a

    .line 222
    iget-object v8, v7, Lk/a/b/a/d/g0/y;->L:Lk/a/b/a/d/g0/k0;

    .line 223
    invoke-virtual {v8}, Lk/a/b/a/d/g0/k0;->a()Z

    move-result v9

    if-eqz v9, :cond_3a

    iget-boolean v9, v0, Lk/a/b/a/d/g0/a0;->L:Z

    if-nez v9, :cond_3a

    .line 224
    invoke-virtual {v0, v7}, Lk/a/b/a/d/g0/a0;->b(Lk/a/b/a/d/g0/y;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 225
    iget-object v4, v4, Lk/a/b/a/d/g0/f;->C:Lk/a/b/a/d/g0/f;

    goto :goto_12

    .line 226
    :cond_38
    iget v7, v8, Lk/a/b/a/d/g0/k0;->c:I

    .line 227
    iget-object v9, v0, Lk/a/b/a/d/g0/a0;->O:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {v8}, Lk/a/b/a/d/g0/k0;->b()V

    .line 229
    new-instance v8, Lk/a/b/a/b/n/i;

    invoke-direct {v8}, Lk/a/b/a/b/n/i;-><init>()V

    .line 230
    invoke-virtual {v4}, Lk/a/b/a/d/g0/f;->L()Lk/a/b/a/b/n/j;

    move-result-object v9

    .line 231
    iget-object v10, v9, Lk/a/b/a/b/n/j;->a:Lk/a/b/a/b/f;

    if-eqz v10, :cond_39

    .line 232
    iput-object v9, v8, Lk/a/b/a/b/n/i;->a:Lk/a/b/a/b/n/j;

    .line 233
    :cond_39
    iget-object v9, v0, Lk/a/b/a/d/g0/a0;->X:Lk/a/b/a/d/g0/j;

    invoke-virtual {v9, v7, v8, v6, v6}, Lk/a/b/a/d/g0/j;->a(ILjava/lang/Object;Lk/a/b/a/c/k0;Ljava/lang/Runnable;)V

    .line 234
    :cond_3a
    invoke-virtual {v4}, Lk/a/b/a/d/g0/f;->h()V

    .line 235
    :cond_3b
    iget-object v4, v4, Lk/a/b/a/d/g0/f;->C:Lk/a/b/a/d/g0/f;

    goto :goto_12

    .line 236
    :cond_3c
    iget-boolean v4, v0, Lk/a/b/a/d/g0/a0;->j0:Z

    if-nez v4, :cond_3d

    iget-object v4, v0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    if-eqz v4, :cond_40

    .line 237
    iget-object v4, v4, Lk/a/b/a/d/g0/f;->x:Lk/a/b/a/d/g;

    .line 238
    sget-object v7, Lk/a/b/a/d/g;->CLOSED:Lk/a/b/a/d/g;

    if-ne v4, v7, :cond_40

    :cond_3d
    iget-boolean v4, v0, Lk/a/b/a/d/g0/a0;->L:Z

    if-nez v4, :cond_40

    .line 239
    invoke-virtual {v0, v6}, Lk/a/b/a/d/g0/a0;->b(Lk/a/b/a/d/g0/y;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 240
    new-instance v4, Lk/a/b/a/b/n/c;

    invoke-direct {v4}, Lk/a/b/a/b/n/c;-><init>()V

    .line 241
    iget-object v7, v0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    if-nez v7, :cond_3e

    .line 242
    invoke-virtual {v0}, Lk/a/b/a/d/g0/a0;->L()Lk/a/b/a/b/n/j;

    move-result-object v7

    goto :goto_13

    .line 243
    :cond_3e
    iget-object v7, v7, Lk/a/b/a/d/g0/f;->z:Lk/a/b/a/b/n/j;

    :goto_13
    if-eqz v7, :cond_3f

    .line 244
    iget-object v8, v7, Lk/a/b/a/b/n/j;->a:Lk/a/b/a/b/f;

    if-eqz v8, :cond_3f

    .line 245
    iput-object v7, v4, Lk/a/b/a/b/n/c;->a:Lk/a/b/a/b/n/j;

    .line 246
    :cond_3f
    iput-boolean v5, v0, Lk/a/b/a/d/g0/a0;->L:Z

    .line 247
    iget-object v7, v0, Lk/a/b/a/d/g0/a0;->X:Lk/a/b/a/d/g0/j;

    invoke-virtual {v7, v2, v4, v6, v6}, Lk/a/b/a/d/g0/j;->a(ILjava/lang/Object;Lk/a/b/a/c/k0;Ljava/lang/Runnable;)V

    .line 248
    iget-object v4, v0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    if-eqz v4, :cond_40

    .line 249
    invoke-virtual {v4}, Lk/a/b/a/d/g0/f;->h()V

    .line 250
    :cond_40
    iget-object v4, v0, Lk/a/b/a/d/g0/a0;->X:Lk/a/b/a/d/g0/j;

    invoke-virtual {v4, v3}, Lk/a/b/a/d/g0/j;->a(Ljava/nio/ByteBuffer;)I

    .line 251
    iget-boolean v3, v0, Lk/a/b/a/d/g0/a0;->L:Z

    if-nez v3, :cond_42

    iget-boolean v0, v0, Lk/a/b/a/d/g0/a0;->i0:Z

    if-eqz v0, :cond_41

    goto :goto_14

    :cond_41
    const/4 v5, 0x0

    .line 252
    :cond_42
    :goto_14
    iput-boolean v5, p0, Lk/a/b/a/d/g0/g0;->e:Z

    .line 253
    iget-object v0, p0, Lk/a/b/a/d/g0/g0;->d:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lk/a/b/a/d/g0/g0;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 254
    iget-object v0, p0, Lk/a/b/a/d/g0/g0;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lk/a/b/a/d/g0/g0;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    sget v3, Lk/a/b/a/d/g0/a0;->B0:I

    if-le v0, v3, :cond_43

    .line 255
    invoke-virtual {p0}, Lk/a/b/a/d/g0/g0;->a()V

    .line 256
    :cond_43
    iget-boolean v0, p0, Lk/a/b/a/d/g0/g0;->e:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Lk/a/b/a/d/g0/g0;->c:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_45

    :cond_44
    return v1

    .line 257
    :cond_45
    iget-object v0, p0, Lk/a/b/a/d/g0/g0;->c:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_46

    goto :goto_15

    :cond_46
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    :goto_15
    return v2
.end method

.method public pop(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/g0;->c:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 3
    iget-object v0, p0, Lk/a/b/a/d/g0/g0;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    iget-object p1, p0, Lk/a/b/a/d/g0/g0;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 5
    iget-object p1, p0, Lk/a/b/a/d/g0/g0;->d:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 6
    iget-object p1, p0, Lk/a/b/a/d/g0/g0;->d:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lk/a/b/a/d/g0/g0;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 7
    iget-object p1, p0, Lk/a/b/a/d/g0/g0;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lk/a/b/a/d/g0/g0;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    sget v0, Lk/a/b/a/d/g0/a0;->B0:I

    if-le p1, v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lk/a/b/a/d/g0/g0;->a()V

    :cond_0
    return-void
.end method
