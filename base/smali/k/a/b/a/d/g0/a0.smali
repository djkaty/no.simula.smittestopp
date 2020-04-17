.class public Lk/a/b/a/d/g0/a0;
.super Lk/a/b/a/d/g0/f;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/d/s;
.implements Lk/a/b/a/b/n/l$a;
.implements Lk/a/b/a/d/g0/h;
.implements Lk/a/b/a/d/g0/h0;
.implements Lk/a/b/a/d/g0/c0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/d/g0/f;",
        "Lk/a/b/a/d/s;",
        "Lk/a/b/a/b/n/l$a<",
        "Ljava/lang/Integer;",
        ">;",
        "Lk/a/b/a/d/g0/h;",
        "Lk/a/b/a/d/g0/h0;",
        "Lk/a/b/a/d/g0/c0;"
    }
.end annotation


# static fields
.field public static final B0:I

.field public static final C0:Z

.field public static final D0:I

.field public static E0:Ljava/lang/String;

.field public static F0:Ljava/lang/String;


# instance fields
.field public final A0:Lk/a/b/a/b/n/s;

.field public H:I

.field public I:Lk/a/b/a/d/g0/i;

.field public J:Lk/a/b/a/d/g0/d;

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lk/a/b/a/d/g0/k0;",
            ">;"
        }
    .end annotation
.end field

.field public O:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lk/a/b/a/d/g0/k0;",
            ">;"
        }
    .end annotation
.end field

.field public P:Lk/a/b/a/d/g0/b0;

.field public Q:Lk/a/b/a/d/g0/f0;

.field public R:Lk/a/b/a/c/r;

.field public S:Lk/a/b/a/c/x;

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public final X:Lk/a/b/a/d/g0/j;

.field public Y:Z

.field public Z:Lk/a/b/a/b/n/m;

.field public a0:Lk/a/b/a/d/g0/v;

.field public b0:Lk/a/b/a/d/g0/m0/g;

.field public final c0:Lk/a/b/a/d/g0/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a/b/a/d/g0/s<",
            "Lk/a/b/a/d/g0/p;",
            ">;"
        }
    .end annotation
.end field

.field public d0:Z

.field public e0:Z

.field public f0:Z

.field public g0:Z

.field public h0:Lk/a/b/a/d/g0/h;

.field public i0:Z

.field public j0:Z

.field public k0:Z

.field public l0:Z

.field public m0:Z

.field public n0:I

.field public o0:I

.field public p0:J

.field public q0:J

.field public r0:J

.field public s0:J

.field public t0:J

.field public u0:J

.field public v0:Lk/a/b/a/g/g;

.field public w0:Lk/a/b/a/g/d;

.field public x0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk/a/b/a/d/g0/d0;",
            ">;"
        }
    .end annotation
.end field

.field public final y0:Lk/a/b/a/b/n/g;

.field public final z0:Lk/a/b/a/b/n/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "proton.transport_buffer_release_threshold"

    const/high16 v1, 0x200000

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lk/a/b/a/d/g0/a0;->B0:I

    const-string v0, "PN_TRACE_FRM"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "yes"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 6
    :goto_1
    sput-boolean v0, Lk/a/b/a/d/g0/a0;->C0:Z

    const/16 v0, 0x400

    const-string v1, "proton.trace_frame_payload_length"

    .line 7
    invoke-static {v1, v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lk/a/b/a/d/g0/a0;->D0:I

    const-string v0, "<-"

    .line 8
    sput-object v0, Lk/a/b/a/d/g0/a0;->E0:Ljava/lang/String;

    const-string v0, "->"

    .line 9
    sput-object v0, Lk/a/b/a/d/g0/a0;->F0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk/a/b/a/d/g0/f;-><init>()V

    .line 2
    sget-boolean v0, Lk/a/b/a/d/g0/a0;->C0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lk/a/b/a/d/g0/a0;->H:I

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lk/a/b/a/d/g0/a0;->N:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lk/a/b/a/d/g0/a0;->O:Ljava/util/Map;

    .line 5
    new-instance v0, Lk/a/b/a/c/r;

    invoke-direct {v0}, Lk/a/b/a/c/r;-><init>()V

    iput-object v0, p0, Lk/a/b/a/d/g0/a0;->R:Lk/a/b/a/c/r;

    .line 6
    new-instance v2, Lk/a/b/a/c/x;

    invoke-direct {v2, v0}, Lk/a/b/a/c/x;-><init>(Lk/a/b/a/c/r;)V

    iput-object v2, p0, Lk/a/b/a/d/g0/a0;->S:Lk/a/b/a/c/x;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lk/a/b/a/d/g0/a0;->T:I

    const/16 v2, 0x200

    .line 8
    iput v2, p0, Lk/a/b/a/d/g0/a0;->U:I

    .line 9
    iput v1, p0, Lk/a/b/a/d/g0/a0;->V:I

    const v2, 0xffff

    .line 10
    iput v2, p0, Lk/a/b/a/d/g0/a0;->W:I

    .line 11
    new-instance v2, Lk/a/b/a/d/g0/s;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lk/a/b/a/d/g0/s;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lk/a/b/a/d/g0/a0;->c0:Lk/a/b/a/d/g0/s;

    .line 12
    sget-object v2, Lk/a/b/a/d/f0;->a:Lk/a/b/a/d/e0;

    const/4 v2, 0x1

    .line 13
    iput-boolean v2, p0, Lk/a/b/a/d/g0/a0;->f0:Z

    .line 14
    iput-boolean v2, p0, Lk/a/b/a/d/g0/a0;->g0:Z

    .line 15
    iput-object p0, p0, Lk/a/b/a/d/g0/a0;->h0:Lk/a/b/a/d/g0/h;

    .line 16
    iput-boolean v1, p0, Lk/a/b/a/d/g0/a0;->i0:Z

    .line 17
    iput-boolean v1, p0, Lk/a/b/a/d/g0/a0;->k0:Z

    .line 18
    iput-boolean v1, p0, Lk/a/b/a/d/g0/a0;->l0:Z

    .line 19
    iput-boolean v1, p0, Lk/a/b/a/d/g0/a0;->m0:Z

    .line 20
    iput v1, p0, Lk/a/b/a/d/g0/a0;->n0:I

    .line 21
    iput v1, p0, Lk/a/b/a/d/g0/a0;->o0:I

    const-wide/16 v2, 0x0

    .line 22
    iput-wide v2, p0, Lk/a/b/a/d/g0/a0;->p0:J

    .line 23
    iput-wide v2, p0, Lk/a/b/a/d/g0/a0;->q0:J

    .line 24
    iput-wide v2, p0, Lk/a/b/a/d/g0/a0;->r0:J

    .line 25
    iput-wide v2, p0, Lk/a/b/a/d/g0/a0;->s0:J

    .line 26
    iput-wide v2, p0, Lk/a/b/a/d/g0/a0;->t0:J

    .line 27
    iput-wide v2, p0, Lk/a/b/a/d/g0/a0;->u0:J

    .line 28
    new-instance v2, Lk/a/b/a/b/n/g;

    invoke-direct {v2}, Lk/a/b/a/b/n/g;-><init>()V

    iput-object v2, p0, Lk/a/b/a/d/g0/a0;->y0:Lk/a/b/a/b/n/g;

    .line 29
    new-instance v2, Lk/a/b/a/b/n/k;

    invoke-direct {v2}, Lk/a/b/a/b/n/k;-><init>()V

    iput-object v2, p0, Lk/a/b/a/d/g0/a0;->z0:Lk/a/b/a/b/n/k;

    .line 30
    new-instance v2, Lk/a/b/a/b/n/s;

    invoke-direct {v2}, Lk/a/b/a/b/n/s;-><init>()V

    iput-object v2, p0, Lk/a/b/a/d/g0/a0;->A0:Lk/a/b/a/b/n/s;

    .line 31
    iget-object v2, p0, Lk/a/b/a/d/g0/a0;->R:Lk/a/b/a/c/r;

    iget-object v3, p0, Lk/a/b/a/d/g0/a0;->S:Lk/a/b/a/c/x;

    invoke-static {v2, v3}, Le/c/a/a/b/l/c;->a(Lk/a/b/a/c/i;Lk/a/b/a/c/x;)V

    .line 32
    iput v0, p0, Lk/a/b/a/d/g0/a0;->T:I

    .line 33
    new-instance v0, Lk/a/b/a/d/g0/j;

    iget-object v2, p0, Lk/a/b/a/d/g0/a0;->S:Lk/a/b/a/c/x;

    iget v3, p0, Lk/a/b/a/d/g0/a0;->U:I

    invoke-direct {v0, v2, v3, v1, p0}, Lk/a/b/a/d/g0/j;-><init>(Lk/a/b/a/c/x;IBLk/a/b/a/d/g0/a0;)V

    iput-object v0, p0, Lk/a/b/a/d/g0/a0;->X:Lk/a/b/a/d/g0/j;

    return-void
.end method


# virtual methods
.method public B()V
    .locals 0

    return-void
.end method

.method public E()Lk/a/b/a/d/v;
    .locals 6

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->a0:Lk/a/b/a/d/g0/v;

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lk/a/b/a/d/g0/a0;->e0:Z

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lk/a/b/a/d/g0/a0;->W()V

    .line 4
    new-instance v0, Lk/a/b/a/d/g0/v;

    iget v1, p0, Lk/a/b/a/d/g0/a0;->U:I

    invoke-direct {v0, p0, v1}, Lk/a/b/a/d/g0/v;-><init>(Lk/a/b/a/d/g0/a0;I)V

    iput-object v0, p0, Lk/a/b/a/d/g0/a0;->a0:Lk/a/b/a/d/g0/v;

    .line 5
    iget-object v1, p0, Lk/a/b/a/d/g0/a0;->P:Lk/a/b/a/d/g0/b0;

    iget-object v2, p0, Lk/a/b/a/d/g0/a0;->Q:Lk/a/b/a/d/g0/f0;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 6
    new-instance v4, Lk/a/b/a/d/g0/v$a;

    new-instance v5, Lk/a/b/a/d/g0/v$d;

    invoke-direct {v5, v0, v1, v2, v3}, Lk/a/b/a/d/g0/v$d;-><init>(Lk/a/b/a/d/g0/v;Lk/a/b/a/d/g0/b0;Lk/a/b/a/d/g0/f0;Lk/a/b/a/d/g0/v$a;)V

    new-instance v3, Lk/a/b/a/d/g0/o;

    invoke-direct {v3, v2, v1}, Lk/a/b/a/d/g0/o;-><init>(Lk/a/b/a/d/g0/f0;Lk/a/b/a/d/g0/b0;)V

    invoke-direct {v4, v0, v5, v3}, Lk/a/b/a/d/g0/v$a;-><init>(Lk/a/b/a/d/g0/v;Lk/a/b/a/d/g0/l0;Lk/a/b/a/d/g0/l0;)V

    .line 7
    iput-object v4, p0, Lk/a/b/a/d/g0/a0;->P:Lk/a/b/a/d/g0/b0;

    .line 8
    iput-object v4, p0, Lk/a/b/a/d/g0/a0;->Q:Lk/a/b/a/d/g0/f0;

    goto :goto_0

    .line 9
    :cond_0
    throw v3

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sasl can\'t be initiated after transport has started processing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_2
    :goto_0
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->a0:Lk/a/b/a/d/g0/v;

    return-object v0
.end method

.method public F()V
    .locals 0

    return-void
.end method

.method public L()Lk/a/b/a/b/n/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/f;->z:Lk/a/b/a/b/n/j;

    .line 2
    iget-object v1, v0, Lk/a/b/a/b/n/j;->a:Lk/a/b/a/b/f;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public S()V
    .locals 0

    return-void
.end method

.method public V()Lk/a/b/a/d/g0/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->c0:Lk/a/b/a/d/g0/s;

    .line 2
    iget-object v0, v0, Lk/a/b/a/d/g0/s;->a:Ljava/lang/Object;

    .line 3
    check-cast v0, Lk/a/b/a/d/g0/p;

    return-object v0
.end method

.method public final W()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lk/a/b/a/d/g0/a0;->d0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lk/a/b/a/d/g0/a0;->d0:Z

    .line 3
    new-instance v0, Lk/a/b/a/d/g0/i;

    iget-object v1, p0, Lk/a/b/a/d/g0/a0;->h0:Lk/a/b/a/d/g0/h;

    iget-object v2, p0, Lk/a/b/a/d/g0/a0;->R:Lk/a/b/a/c/r;

    iget v3, p0, Lk/a/b/a/d/g0/a0;->T:I

    invoke-direct {v0, v1, v2, v3, p0}, Lk/a/b/a/d/g0/i;-><init>(Lk/a/b/a/d/g0/h;Lk/a/b/a/c/i;ILk/a/b/a/d/g0/a0;)V

    iput-object v0, p0, Lk/a/b/a/d/g0/a0;->I:Lk/a/b/a/d/g0/i;

    .line 4
    iput-object v0, p0, Lk/a/b/a/d/g0/a0;->P:Lk/a/b/a/d/g0/b0;

    .line 5
    new-instance v0, Lk/a/b/a/d/g0/g0;

    iget v1, p0, Lk/a/b/a/d/g0/a0;->T:I

    .line 6
    iget-boolean v2, p0, Lk/a/b/a/d/g0/a0;->g0:Z

    .line 7
    invoke-direct {v0, p0, v1, v2}, Lk/a/b/a/d/g0/g0;-><init>(Lk/a/b/a/d/g0/h0;IZ)V

    iput-object v0, p0, Lk/a/b/a/d/g0/a0;->Q:Lk/a/b/a/d/g0/f0;

    :cond_0
    return-void
.end method

.method public X()Z
    .locals 1

    .line 1
    iget v0, p0, Lk/a/b/a/d/g0/a0;->H:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->c0:Lk/a/b/a/d/g0/s;

    .line 2
    iget-object v0, v0, Lk/a/b/a/d/g0/s;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public Y()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/f;->y:Lk/a/b/a/d/g;

    .line 3
    sget-object v1, Lk/a/b/a/d/g;->UNINITIALIZED:Lk/a/b/a/d/g;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public Z()Z
    .locals 1

    .line 1
    iget v0, p0, Lk/a/b/a/d/g0/a0;->H:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(J)J
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 85
    iget v3, v0, Lk/a/b/a/d/g0/a0;->n0:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-lez v3, :cond_8

    .line 86
    iget-wide v8, v0, Lk/a/b/a/d/g0/a0;->r0:J

    cmp-long v10, v8, v6

    if-eqz v10, :cond_6

    iget-wide v10, v0, Lk/a/b/a/d/g0/a0;->s0:J

    iget-wide v12, v0, Lk/a/b/a/d/g0/a0;->p0:J

    cmp-long v14, v10, v12

    if-eqz v14, :cond_0

    goto/16 :goto_2

    :cond_0
    sub-long/2addr v8, v1

    cmp-long v10, v8, v6

    if-gtz v10, :cond_7

    int-to-long v8, v3

    .line 87
    invoke-virtual {v0, v1, v2, v8, v9}, Lk/a/b/a/d/g0/a0;->a(JJ)J

    move-result-wide v8

    iput-wide v8, v0, Lk/a/b/a/d/g0/a0;->r0:J

    .line 88
    iget-object v3, v0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    if-eqz v3, :cond_7

    .line 89
    iget-object v3, v3, Lk/a/b/a/d/g0/f;->x:Lk/a/b/a/d/g;

    .line 90
    sget-object v8, Lk/a/b/a/d/g;->CLOSED:Lk/a/b/a/d/g;

    if-eq v3, v8, :cond_7

    .line 91
    new-instance v3, Lk/a/b/a/b/n/j;

    const-string v8, "amqp:resource-limit-exceeded"

    .line 92
    invoke-static {v8}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v8

    const-string v9, "local-idle-timeout expired"

    invoke-direct {v3, v8, v9}, Lk/a/b/a/b/n/j;-><init>(Lk/a/b/a/b/f;Ljava/lang/String;)V

    .line 93
    iget-object v8, v0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    invoke-virtual {v8, v3}, Lk/a/b/a/d/g0/f;->a(Lk/a/b/a/b/n/j;)V

    .line 94
    iget-object v8, v0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    sget-object v9, Lk/a/b/a/d/g;->CLOSED:Lk/a/b/a/d/g;

    .line 95
    iput-object v9, v8, Lk/a/b/a/d/g0/f;->x:Lk/a/b/a/d/g;

    .line 96
    iget-boolean v8, v0, Lk/a/b/a/d/g0/a0;->K:Z

    const/4 v9, 0x1

    if-nez v8, :cond_4

    .line 97
    iget-object v8, v0, Lk/a/b/a/d/g0/a0;->a0:Lk/a/b/a/d/g0/v;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lk/a/b/a/d/g0/v;->b()Z

    move-result v8

    if-nez v8, :cond_3

    .line 98
    iget-object v8, v0, Lk/a/b/a/d/g0/a0;->a0:Lk/a/b/a/d/g0/v;

    .line 99
    iget-object v10, v8, Lk/a/b/a/d/g0/v;->v:Lk/a/b/a/d/g0/v$b;

    if-eqz v10, :cond_2

    sget-object v11, Lk/a/b/a/d/g0/v$b;->CLIENT:Lk/a/b/a/d/g0/v$b;

    if-ne v10, v11, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    iput-boolean v9, v8, Lk/a/b/a/d/g0/v;->m:Z

    goto :goto_1

    .line 101
    :cond_2
    :goto_0
    sget-object v10, Lk/a/b/a/d/g0/v$b;->CLIENT:Lk/a/b/a/d/g0/v$b;

    iput-object v10, v8, Lk/a/b/a/d/g0/v;->v:Lk/a/b/a/d/g0/v$b;

    .line 102
    iput-boolean v9, v8, Lk/a/b/a/d/g0/v;->o:Z

    .line 103
    :goto_1
    iput-boolean v9, v8, Lk/a/b/a/d/g0/v;->s:Z

    .line 104
    sget-object v10, Lk/a/b/a/d/v$a;->PN_SASL_SYS:Lk/a/b/a/d/v$a;

    iput-object v10, v8, Lk/a/b/a/d/g0/v;->p:Lk/a/b/a/d/v$a;

    .line 105
    :cond_3
    new-instance v8, Lk/a/b/a/b/n/m;

    invoke-direct {v8}, Lk/a/b/a/b/n/m;-><init>()V

    .line 106
    iput-boolean v9, v0, Lk/a/b/a/d/g0/a0;->K:Z

    .line 107
    iget-object v10, v0, Lk/a/b/a/d/g0/a0;->X:Lk/a/b/a/d/g0/j;

    invoke-virtual {v10, v4, v8, v5, v5}, Lk/a/b/a/d/g0/j;->a(ILjava/lang/Object;Lk/a/b/a/c/k0;Ljava/lang/Runnable;)V

    .line 108
    :cond_4
    iget-boolean v8, v0, Lk/a/b/a/d/g0/a0;->L:Z

    if-nez v8, :cond_5

    .line 109
    new-instance v8, Lk/a/b/a/b/n/c;

    invoke-direct {v8}, Lk/a/b/a/b/n/c;-><init>()V

    .line 110
    iput-object v3, v8, Lk/a/b/a/b/n/c;->a:Lk/a/b/a/b/n/j;

    .line 111
    iput-boolean v9, v0, Lk/a/b/a/d/g0/a0;->L:Z

    .line 112
    iget-object v3, v0, Lk/a/b/a/d/g0/a0;->X:Lk/a/b/a/d/g0/j;

    invoke-virtual {v3, v4, v8, v5, v5}, Lk/a/b/a/d/g0/j;->a(ILjava/lang/Object;Lk/a/b/a/c/k0;Ljava/lang/Runnable;)V

    .line 113
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lk/a/b/a/d/g0/a0;->close_tail()V

    goto :goto_3

    .line 114
    :cond_6
    :goto_2
    iget v3, v0, Lk/a/b/a/d/g0/a0;->n0:I

    int-to-long v8, v3

    invoke-virtual {v0, v1, v2, v8, v9}, Lk/a/b/a/d/g0/a0;->a(JJ)J

    move-result-wide v8

    iput-wide v8, v0, Lk/a/b/a/d/g0/a0;->r0:J

    .line 115
    iget-wide v8, v0, Lk/a/b/a/d/g0/a0;->p0:J

    iput-wide v8, v0, Lk/a/b/a/d/g0/a0;->s0:J

    .line 116
    :cond_7
    :goto_3
    iget-wide v8, v0, Lk/a/b/a/d/g0/a0;->r0:J

    goto :goto_4

    :cond_8
    move-wide v8, v6

    .line 117
    :goto_4
    iget v3, v0, Lk/a/b/a/d/g0/a0;->o0:I

    if-eqz v3, :cond_e

    iget-boolean v10, v0, Lk/a/b/a/d/g0/a0;->L:Z

    if-nez v10, :cond_e

    .line 118
    iget-wide v10, v0, Lk/a/b/a/d/g0/a0;->u0:J

    cmp-long v12, v10, v6

    if-eqz v12, :cond_a

    iget-wide v12, v0, Lk/a/b/a/d/g0/a0;->t0:J

    iget-wide v14, v0, Lk/a/b/a/d/g0/a0;->q0:J

    cmp-long v16, v12, v14

    if-eqz v16, :cond_9

    goto :goto_5

    :cond_9
    sub-long/2addr v10, v1

    cmp-long v12, v10, v6

    if-gtz v12, :cond_b

    .line 119
    div-int/lit8 v3, v3, 0x2

    int-to-long v10, v3

    invoke-virtual {v0, v1, v2, v10, v11}, Lk/a/b/a/d/g0/a0;->a(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lk/a/b/a/d/g0/a0;->u0:J

    .line 120
    invoke-virtual/range {p0 .. p0}, Lk/a/b/a/d/g0/a0;->pending()I

    move-result v1

    if-nez v1, :cond_b

    .line 121
    iget-object v1, v0, Lk/a/b/a/d/g0/a0;->X:Lk/a/b/a/d/g0/j;

    invoke-virtual {v1, v4, v5, v5, v5}, Lk/a/b/a/d/g0/j;->a(ILjava/lang/Object;Lk/a/b/a/c/k0;Ljava/lang/Runnable;)V

    .line 122
    iget-wide v1, v0, Lk/a/b/a/d/g0/a0;->t0:J

    invoke-virtual/range {p0 .. p0}, Lk/a/b/a/d/g0/a0;->pending()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lk/a/b/a/d/g0/a0;->t0:J

    goto :goto_6

    .line 123
    :cond_a
    :goto_5
    iget v3, v0, Lk/a/b/a/d/g0/a0;->o0:I

    div-int/lit8 v3, v3, 0x2

    int-to-long v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lk/a/b/a/d/g0/a0;->a(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lk/a/b/a/d/g0/a0;->u0:J

    .line 124
    iget-wide v1, v0, Lk/a/b/a/d/g0/a0;->q0:J

    iput-wide v1, v0, Lk/a/b/a/d/g0/a0;->t0:J

    :cond_b
    :goto_6
    cmp-long v1, v8, v6

    if-nez v1, :cond_c

    .line 125
    iget-wide v8, v0, Lk/a/b/a/d/g0/a0;->u0:J

    goto :goto_7

    .line 126
    :cond_c
    iget-wide v8, v0, Lk/a/b/a/d/g0/a0;->u0:J

    iget-wide v1, v0, Lk/a/b/a/d/g0/a0;->r0:J

    sub-long v3, v8, v1

    cmp-long v5, v3, v6

    if-gtz v5, :cond_d

    goto :goto_7

    :cond_d
    move-wide v8, v1

    :cond_e
    :goto_7
    return-wide v8
.end method

.method public final a(JJ)J
    .locals 1

    add-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x1

    :goto_0
    return-wide p1
.end method

.method public final a(Lk/a/b/a/d/g0/m;)Lk/a/b/a/d/g0/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/a/b/a/d/g0/m;",
            ")",
            "Lk/a/b/a/d/g0/e0<",
            "*>;"
        }
    .end annotation

    .line 44
    invoke-virtual {p1}, Lk/a/b/a/d/g0/m;->V()Lk/a/b/a/d/g0/e0;

    move-result-object v0

    if-nez v0, :cond_1

    .line 45
    instance-of v0, p1, Lk/a/b/a/d/g0/q;

    if-eqz v0, :cond_0

    .line 46
    check-cast p1, Lk/a/b/a/d/g0/q;

    .line 47
    new-instance v0, Lk/a/b/a/d/g0/i0;

    invoke-direct {v0, p1}, Lk/a/b/a/d/g0/i0;-><init>(Lk/a/b/a/d/g0/q;)V

    .line 48
    iput-object v0, p1, Lk/a/b/a/d/g0/q;->a0:Lk/a/b/a/d/g0/i0;

    goto :goto_0

    .line 49
    :cond_0
    check-cast p1, Lk/a/b/a/d/g0/x;

    .line 50
    new-instance v0, Lk/a/b/a/d/g0/j0;

    invoke-direct {v0, p1}, Lk/a/b/a/d/g0/j0;-><init>(Lk/a/b/a/d/g0/x;)V

    .line 51
    iput-object v0, p1, Lk/a/b/a/d/g0/x;->a0:Lk/a/b/a/d/g0/j0;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final a(Lk/a/b/a/d/g0/y;)Lk/a/b/a/d/g0/k0;
    .locals 1

    .line 1
    iget-object v0, p1, Lk/a/b/a/d/g0/y;->L:Lk/a/b/a/d/g0/k0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lk/a/b/a/d/g0/k0;

    invoke-direct {v0, p0, p1}, Lk/a/b/a/d/g0/k0;-><init>(Lk/a/b/a/d/g0/a0;Lk/a/b/a/d/g0/y;)V

    .line 3
    iput-object v0, p1, Lk/a/b/a/d/g0/y;->L:Lk/a/b/a/d/g0/k0;

    :cond_0
    return-object v0
.end method

.method public a(Lk/a/b/a/d/a0;)Lk/a/b/a/d/z;
    .locals 2

    .line 7
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->b0:Lk/a/b/a/d/g0/m0/g;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lk/a/b/a/d/g0/a0;->W()V

    .line 9
    new-instance v0, Lk/a/b/a/d/g0/m0/g;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lk/a/b/a/d/g0/m0/g;-><init>(Lk/a/b/a/d/a0;Lk/a/b/a/d/b0;)V

    iput-object v0, p0, Lk/a/b/a/d/g0/a0;->b0:Lk/a/b/a/d/g0/m0/g;

    .line 10
    iget-object p1, p0, Lk/a/b/a/d/g0/a0;->P:Lk/a/b/a/d/g0/b0;

    iget-object v1, p0, Lk/a/b/a/d/g0/a0;->Q:Lk/a/b/a/d/g0/f0;

    invoke-virtual {v0, p1, v1}, Lk/a/b/a/d/g0/m0/g;->wrap(Lk/a/b/a/d/g0/b0;Lk/a/b/a/d/g0/f0;)Lk/a/b/a/d/g0/l0;

    move-result-object p1

    .line 11
    iput-object p1, p0, Lk/a/b/a/d/g0/a0;->P:Lk/a/b/a/d/g0/b0;

    .line 12
    iput-object p1, p0, Lk/a/b/a/d/g0/a0;->Q:Lk/a/b/a/d/g0/f0;

    .line 13
    :cond_0
    iget-object p1, p0, Lk/a/b/a/d/g0/a0;->b0:Lk/a/b/a/d/g0/m0/g;

    return-object p1
.end method

.method public final a(Ljava/lang/String;ILjava/lang/Object;Lk/a/b/a/b/a;)V
    .locals 9

    const-string v0, "["

    .line 129
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_4

    const-string p1, " ("

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget p1, p4, Lk/a/b/a/b/a;->c:I

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    sget p1, Lk/a/b/a/d/g0/a0;->D0:I

    .line 136
    iget-object p2, p4, Lk/a/b/a/b/a;->a:[B

    .line 137
    iget p3, p4, Lk/a/b/a/b/a;->c:I

    .line 138
    iget p4, p4, Lk/a/b/a/b/a;->b:I

    const-string v1, "\""

    .line 139
    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v4, p3, :cond_2

    add-int v7, p4, v4

    .line 140
    aget-byte v7, p2, v7

    const/16 v8, 0x1f

    if-le v7, v8, :cond_0

    const/16 v8, 0x7f

    if-ge v7, v8, :cond_0

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_0

    add-int/lit8 v5, v5, 0x1

    if-gt v5, p1, :cond_1

    int-to-char v6, v7

    .line 141
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x4

    if-gt v5, p1, :cond_1

    new-array v6, v6, [Ljava/lang/Object;

    .line 142
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "\\x%02x"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    .line 143
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3

    const-string p1, "...(truncated)"

    .line 144
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_4
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 127
    invoke-virtual {p0}, Lk/a/b/a/d/g0/a0;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 128
    invoke-virtual {p0, p1, v0, p2, v1}, Lk/a/b/a/d/g0/a0;->a(Ljava/lang/String;ILjava/lang/Object;Lk/a/b/a/b/a;)V

    :cond_0
    return-void
.end method

.method public a(Lk/a/b/a/b/n/j;)V
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lk/a/b/a/d/g0/f;->a(Lk/a/b/a/b/n/j;)V

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p1, Lk/a/b/a/b/n/j;->a:Lk/a/b/a/b/f;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iput-boolean p1, p0, Lk/a/b/a/d/g0/a0;->j0:Z

    return-void
.end method

.method public a(Lk/a/b/a/d/d0;)V
    .locals 3

    .line 72
    iget-boolean v0, p0, Lk/a/b/a/d/g0/a0;->Y:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    .line 73
    :cond_0
    iget-boolean v0, p0, Lk/a/b/a/d/g0/a0;->j0:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    const-string p1, "connection aborted"

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    .line 75
    :goto_0
    new-instance v0, Lk/a/b/a/b/n/j;

    sget-object v2, Lk/a/b/a/b/n/d;->a:Lk/a/b/a/b/f;

    invoke-direct {v0, v2, p1}, Lk/a/b/a/b/n/j;-><init>(Lk/a/b/a/b/f;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/b/n/j;)V

    .line 76
    :cond_2
    iput-boolean v1, p0, Lk/a/b/a/d/g0/a0;->i0:Z

    .line 77
    :cond_3
    iget-boolean p1, p0, Lk/a/b/a/d/g0/a0;->j0:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lk/a/b/a/d/g0/a0;->m0:Z

    if-nez p1, :cond_4

    .line 78
    sget-object p1, Lk/a/b/a/d/h$b;->TRANSPORT_ERROR:Lk/a/b/a/d/h$b;

    invoke-virtual {p0, p1, p0}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)V

    .line 79
    iput-boolean v1, p0, Lk/a/b/a/d/g0/a0;->m0:Z

    .line 80
    :cond_4
    iget-boolean p1, p0, Lk/a/b/a/d/g0/a0;->l0:Z

    if-nez p1, :cond_5

    .line 81
    sget-object p1, Lk/a/b/a/d/h$b;->TRANSPORT_TAIL_CLOSED:Lk/a/b/a/d/h$b;

    invoke-virtual {p0, p1, p0}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)V

    .line 82
    iput-boolean v1, p0, Lk/a/b/a/d/g0/a0;->l0:Z

    .line 83
    iget-boolean p1, p0, Lk/a/b/a/d/g0/a0;->k0:Z

    if-eqz p1, :cond_5

    .line 84
    sget-object p1, Lk/a/b/a/d/h$b;->TRANSPORT_CLOSED:Lk/a/b/a/d/h$b;

    invoke-virtual {p0, p1, p0}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public a(Lk/a/b/a/d/g0/d0;)V
    .locals 2

    .line 148
    iget-boolean v0, p0, Lk/a/b/a/d/g0/a0;->e0:Z

    if-nez v0, :cond_2

    .line 149
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->x0:Ljava/util/List;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk/a/b/a/d/g0/a0;->x0:Ljava/util/List;

    .line 151
    :cond_0
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->x0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    invoke-virtual {p0}, Lk/a/b/a/d/g0/a0;->W()V

    .line 153
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->P:Lk/a/b/a/d/g0/b0;

    iget-object v1, p0, Lk/a/b/a/d/g0/a0;->Q:Lk/a/b/a/d/g0/f0;

    invoke-interface {p1, v0, v1}, Lk/a/b/a/d/g0/d0;->wrap(Lk/a/b/a/d/g0/b0;Lk/a/b/a/d/g0/f0;)Lk/a/b/a/d/g0/l0;

    move-result-object v0

    .line 154
    iput-object v0, p0, Lk/a/b/a/d/g0/a0;->P:Lk/a/b/a/d/g0/b0;

    .line 155
    iput-object v0, p0, Lk/a/b/a/d/g0/a0;->Q:Lk/a/b/a/d/g0/f0;

    .line 156
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->x0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    .line 157
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Additional layer can\'t be added after transport has started processing"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lk/a/b/a/d/g0/k0;Lk/a/b/a/d/g0/e0;)V
    .locals 3

    .line 14
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->z0:Lk/a/b/a/b/n/k;

    .line 15
    iget-object v1, p1, Lk/a/b/a/d/g0/k0;->j:Lk/a/b/a/b/h;

    .line 16
    iput-object v1, v0, Lk/a/b/a/b/n/k;->a:Lk/a/b/a/b/h;

    .line 17
    iget-object v1, p1, Lk/a/b/a/d/g0/k0;->i:Lk/a/b/a/b/h;

    .line 18
    invoke-virtual {v0, v1}, Lk/a/b/a/b/n/k;->b(Lk/a/b/a/b/h;)V

    .line 19
    invoke-virtual {p1}, Lk/a/b/a/d/g0/k0;->d()V

    .line 20
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->z0:Lk/a/b/a/b/n/k;

    .line 21
    iget-object v1, p1, Lk/a/b/a/d/g0/k0;->g:Lk/a/b/a/b/h;

    .line 22
    invoke-virtual {v0, v1}, Lk/a/b/a/b/n/k;->a(Lk/a/b/a/b/h;)V

    .line 23
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->z0:Lk/a/b/a/b/n/k;

    .line 24
    iget-object v1, p1, Lk/a/b/a/d/g0/k0;->h:Lk/a/b/a/b/h;

    .line 25
    invoke-virtual {v0, v1}, Lk/a/b/a/b/n/k;->c(Lk/a/b/a/b/h;)V

    .line 26
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->z0:Lk/a/b/a/b/n/k;

    const/4 v1, 0x0

    .line 27
    iput-object v1, v0, Lk/a/b/a/b/n/k;->k:Ljava/util/Map;

    if-eqz p2, :cond_0

    .line 28
    iget-object v2, p2, Lk/a/b/a/d/g0/e0;->a:Lk/a/b/a/b/h;

    .line 29
    iput-object v2, v0, Lk/a/b/a/b/n/k;->e:Lk/a/b/a/b/h;

    .line 30
    iget-object v2, p2, Lk/a/b/a/d/g0/e0;->d:Lk/a/b/a/b/h;

    .line 31
    iput-object v2, v0, Lk/a/b/a/b/n/k;->f:Lk/a/b/a/b/h;

    .line 32
    iget-object v2, p2, Lk/a/b/a/d/g0/e0;->e:Lk/a/b/a/b/h;

    .line 33
    iput-object v2, v0, Lk/a/b/a/b/n/k;->g:Lk/a/b/a/b/h;

    .line 34
    iget-object p2, p2, Lk/a/b/a/d/g0/e0;->f:Lk/a/b/a/d/g0/m;

    .line 35
    iget-boolean p2, p2, Lk/a/b/a/d/g0/m;->X:Z

    .line 36
    iput-boolean p2, v0, Lk/a/b/a/b/n/k;->i:Z

    goto :goto_0

    .line 37
    :cond_0
    iput-object v1, v0, Lk/a/b/a/b/n/k;->e:Lk/a/b/a/b/h;

    .line 38
    iput-object v1, v0, Lk/a/b/a/b/n/k;->f:Lk/a/b/a/b/h;

    .line 39
    iput-object v1, v0, Lk/a/b/a/b/n/k;->g:Lk/a/b/a/b/h;

    const/4 p2, 0x0

    .line 40
    iput-boolean p2, v0, Lk/a/b/a/b/n/k;->i:Z

    .line 41
    :goto_0
    iget p1, p1, Lk/a/b/a/d/g0/k0;->c:I

    .line 42
    iget-object p2, p0, Lk/a/b/a/d/g0/a0;->z0:Lk/a/b/a/b/n/k;

    .line 43
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->X:Lk/a/b/a/d/g0/j;

    invoke-virtual {v0, p1, p2, v1, v1}, Lk/a/b/a/d/g0/j;->a(ILjava/lang/Object;Lk/a/b/a/c/k0;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, v0, Lk/a/b/a/d/g0/d;->X:Lk/a/b/a/d/g0/c;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p1, p2}, Lk/a/b/a/d/g0/c;->a(Lk/a/b/a/d/i;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    :cond_0
    return-void
.end method

.method public a(Lk/a/b/a/e/a;)Z
    .locals 4

    .line 52
    invoke-virtual {p0}, Lk/a/b/a/d/g0/a0;->Y()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    sget-object v0, Lk/a/b/a/d/g0/a0;->E0:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lk/a/b/a/d/g0/a0;->Z()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget v1, p1, Lk/a/b/a/e/a;->a:I

    .line 56
    iget-object v2, p1, Lk/a/b/a/e/a;->b:Lk/a/b/a/b/n/l;

    .line 57
    iget-object v3, p1, Lk/a/b/a/e/a;->c:Lk/a/b/a/b/a;

    .line 58
    invoke-virtual {p0, v0, v1, v2, v3}, Lk/a/b/a/d/g0/a0;->a(Ljava/lang/String;ILjava/lang/Object;Lk/a/b/a/b/a;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->c0:Lk/a/b/a/d/g0/s;

    .line 60
    iget-object v0, v0, Lk/a/b/a/d/g0/s;->a:Ljava/lang/Object;

    .line 61
    check-cast v0, Lk/a/b/a/d/g0/p;

    if-eqz v0, :cond_1

    .line 62
    invoke-interface {v0, p1}, Lk/a/b/a/d/g0/p;->b(Lk/a/b/a/e/a;)V

    .line 63
    :cond_1
    iget-object v0, p1, Lk/a/b/a/e/a;->b:Lk/a/b/a/b/n/l;

    .line 64
    iget-object v1, p1, Lk/a/b/a/e/a;->c:Lk/a/b/a/b/a;

    .line 65
    iget p1, p1, Lk/a/b/a/e/a;->a:I

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lk/a/b/a/b/n/l;->a(Lk/a/b/a/b/n/l$a;Lk/a/b/a/b/a;Ljava/lang/Object;)V

    .line 67
    iget-boolean p1, p0, Lk/a/b/a/d/g0/a0;->Y:Z

    return p1

    .line 68
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transport cannot accept frame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic a0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->A0:Lk/a/b/a/b/n/s;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lk/a/b/a/b/n/s;->f:Z

    return-void
.end method

.method public b(Lk/a/b/a/d/c;)V
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lk/a/b/a/d/g0/d;

    iput-object v0, p0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    .line 2
    sget-object v0, Lk/a/b/a/d/h$b;->CONNECTION_BOUND:Lk/a/b/a/d/h$b;

    invoke-virtual {p0, v0, p1}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    .line 4
    iput-object p0, p1, Lk/a/b/a/d/g0/d;->R:Lk/a/b/a/d/g0/a0;

    .line 5
    invoke-virtual {p1}, Lk/a/b/a/d/g0/f;->w()V

    .line 6
    iget-object p1, p0, Lk/a/b/a/d/g0/f;->y:Lk/a/b/a/d/g;

    .line 7
    sget-object v0, Lk/a/b/a/d/g;->UNINITIALIZED:Lk/a/b/a/d/g;

    if-eq p1, v0, :cond_2

    .line 8
    iget-object p1, p0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->Z:Lk/a/b/a/b/n/m;

    if-eqz p1, :cond_1

    .line 9
    sget-object v1, Lk/a/b/a/d/g;->ACTIVE:Lk/a/b/a/d/g;

    .line 10
    iput-object v1, p1, Lk/a/b/a/d/g0/f;->y:Lk/a/b/a/d/g;

    .line 11
    iget-object v0, v0, Lk/a/b/a/b/n/m;->b:Ljava/lang/String;

    .line 12
    sget-object v0, Lk/a/b/a/d/h$b;->CONNECTION_REMOTE_OPEN:Lk/a/b/a/d/h$b;

    invoke-virtual {p1, v0, p1}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    .line 13
    iget-object p1, p0, Lk/a/b/a/d/g0/f;->y:Lk/a/b/a/d/g;

    .line 14
    sget-object v0, Lk/a/b/a/d/g;->CLOSED:Lk/a/b/a/d/g;

    if-ne p1, v0, :cond_0

    .line 15
    iget-object p1, p0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    .line 16
    iput-object v0, p1, Lk/a/b/a/d/g0/f;->y:Lk/a/b/a/d/g;

    .line 17
    :cond_0
    iget-object p1, p0, Lk/a/b/a/d/g0/a0;->I:Lk/a/b/a/d/g0/i;

    .line 18
    invoke-virtual {p1}, Lk/a/b/a/d/g0/i;->a()V

    .line 19
    iget-object v0, p1, Lk/a/b/a/d/g0/i;->l:Lk/a/b/a/e/a;

    if-nez v0, :cond_2

    .line 20
    invoke-virtual {p1}, Lk/a/b/a/d/g0/i;->process()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 21
    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public final b(Lk/a/b/a/d/g0/y;)Z
    .locals 4

    .line 22
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 23
    :cond_0
    iget-boolean v0, p0, Lk/a/b/a/d/g0/a0;->Y:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_1

    .line 24
    iget-object v0, p1, Lk/a/b/a/d/g0/y;->L:Lk/a/b/a/d/g0/k0;

    .line 25
    iget-boolean v0, v0, Lk/a/b/a/d/g0/k0;->s:Z

    if-nez v0, :cond_4

    .line 26
    :cond_1
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    .line 27
    iget-object v0, v0, Lk/a/b/a/d/g0/d;->J:Lk/a/b/a/d/g0/f;

    :goto_0
    if-eqz v0, :cond_4

    .line 28
    instance-of v2, v0, Lk/a/b/a/d/g0/x;

    if-eqz v2, :cond_3

    .line 29
    move-object v2, v0

    check-cast v2, Lk/a/b/a/d/g0/x;

    if-eqz p1, :cond_2

    .line 30
    iget-object v3, v2, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    if-ne v3, p1, :cond_3

    .line 31
    :cond_2
    iget v3, v2, Lk/a/b/a/d/g0/m;->Q:I

    if-eqz v3, :cond_3

    .line 32
    invoke-virtual {p0, v2}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/d/g0/m;)Lk/a/b/a/d/g0/e0;

    move-result-object v2

    .line 33
    iget-boolean v2, v2, Lk/a/b/a/d/g0/e0;->h:Z

    if-nez v2, :cond_3

    const/4 p1, 0x1

    return p1

    .line 34
    :cond_3
    iget-object v0, v0, Lk/a/b/a/d/g0/f;->C:Lk/a/b/a/d/g0/f;

    goto :goto_0

    :cond_4
    return v1
.end method

.method public final b0()V
    .locals 15

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    if-eqz v0, :cond_1f

    iget-boolean v1, p0, Lk/a/b/a/d/g0/a0;->K:Z

    if-eqz v1, :cond_1f

    iget-boolean v1, p0, Lk/a/b/a/d/g0/a0;->L:Z

    if-nez v1, :cond_1f

    .line 2
    iget-object v0, v0, Lk/a/b/a/d/g0/d;->S:Lk/a/b/a/d/g0/e;

    :goto_0
    if-eqz v0, :cond_1f

    .line 3
    iget-object v1, v0, Lk/a/b/a/d/g0/e;->H:Lk/a/b/a/d/g0/m;

    .line 4
    instance-of v2, v1, Lk/a/b/a/d/g0/x;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1a

    .line 5
    check-cast v1, Lk/a/b/a/d/g0/x;

    .line 6
    iget-object v2, v1, Lk/a/b/a/d/g0/x;->a0:Lk/a/b/a/d/g0/j0;

    .line 7
    iget-object v6, v1, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    .line 8
    iget-object v7, v6, Lk/a/b/a/d/g0/y;->L:Lk/a/b/a/d/g0/k0;

    .line 9
    iget-boolean v8, v0, Lk/a/b/a/d/g0/e;->S:Z

    if-nez v8, :cond_11

    .line 10
    iget-object v9, v0, Lk/a/b/a/d/g0/e;->U:Lk/a/b/a/c/k0;

    if-nez v9, :cond_0

    const/4 v9, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v9}, Lk/a/b/a/c/k0;->c()I

    move-result v9

    :goto_1
    if-gtz v9, :cond_1

    .line 11
    iget-object v9, v1, Lk/a/b/a/d/g0/m;->K:Lk/a/b/a/d/g0/e;

    if-eq v0, v9, :cond_11

    .line 12
    :cond_1
    iget-object v9, v7, Lk/a/b/a/d/g0/k0;->o:Lk/a/b/a/b/h;

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    sget-object v10, Lk/a/b/a/b/h;->z:Lk/a/b/a/b/h;

    .line 13
    invoke-virtual {v9, v10}, Lk/a/b/a/b/h;->b(Lk/a/b/a/b/h;)I

    move-result v9

    if-lez v9, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_11

    .line 14
    iget-object v9, v2, Lk/a/b/a/d/g0/e0;->e:Lk/a/b/a/b/h;

    .line 15
    sget-object v10, Lk/a/b/a/b/h;->z:Lk/a/b/a/b/h;

    invoke-virtual {v9, v10}, Lk/a/b/a/b/h;->b(Lk/a/b/a/b/h;)I

    move-result v9

    if-lez v9, :cond_4

    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_11

    .line 16
    invoke-virtual {v7}, Lk/a/b/a/d/g0/k0;->a()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 17
    iget-object v9, v2, Lk/a/b/a/d/g0/e0;->a:Lk/a/b/a/b/h;

    if-eqz v9, :cond_11

    .line 18
    iget-object v9, p0, Lk/a/b/a/d/g0/a0;->X:Lk/a/b/a/d/g0/j;

    .line 19
    iget-object v10, v9, Lk/a/b/a/d/g0/j;->c:Lk/a/b/a/d/g0/k;

    .line 20
    iget v10, v10, Lk/a/b/a/d/g0/k;->b:I

    .line 21
    iget v9, v9, Lk/a/b/a/d/g0/j;->f:I

    if-le v10, v9, :cond_5

    const/4 v9, 0x1

    goto :goto_5

    :cond_5
    const/4 v9, 0x0

    :goto_5
    if-nez v9, :cond_11

    .line 22
    iget-object v9, v2, Lk/a/b/a/d/g0/j0;->j:Lk/a/b/a/d/g0/e;

    if-eqz v9, :cond_6

    if-eq v9, v0, :cond_6

    goto/16 :goto_f

    .line 23
    :cond_6
    iget-object v9, v0, Lk/a/b/a/d/g0/e;->P:Lk/a/b/a/d/g0/z;

    if-eqz v9, :cond_7

    .line 24
    iget-object v9, v9, Lk/a/b/a/d/g0/z;->a:Lk/a/b/a/b/h;

    goto :goto_6

    .line 25
    :cond_7
    iget-object v9, v7, Lk/a/b/a/d/g0/k0;->f:Lk/a/b/a/b/h;

    .line 26
    sget-object v10, Lk/a/b/a/b/h;->A:Lk/a/b/a/b/h;

    invoke-virtual {v9, v10}, Lk/a/b/a/b/h;->a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object v10

    iput-object v10, v7, Lk/a/b/a/d/g0/k0;->f:Lk/a/b/a/b/h;

    .line 27
    :goto_6
    new-instance v10, Lk/a/b/a/d/g0/z;

    invoke-direct {v10, v9, v0, v2}, Lk/a/b/a/d/g0/z;-><init>(Lk/a/b/a/b/h;Lk/a/b/a/d/g0/e;Lk/a/b/a/d/g0/e0;)V

    .line 28
    iput-object v10, v0, Lk/a/b/a/d/g0/e;->P:Lk/a/b/a/d/g0/z;

    .line 29
    iget-object v10, p0, Lk/a/b/a/d/g0/a0;->A0:Lk/a/b/a/b/n/s;

    .line 30
    iput-object v9, v10, Lk/a/b/a/b/n/s;->b:Lk/a/b/a/b/h;

    .line 31
    new-instance v11, Lk/a/b/a/b/a;

    .line 32
    iget-object v12, v0, Lk/a/b/a/d/g0/e;->G:[B

    .line 33
    invoke-direct {v11, v12}, Lk/a/b/a/b/a;-><init>([B)V

    .line 34
    iput-object v11, v10, Lk/a/b/a/b/n/s;->c:Lk/a/b/a/b/a;

    .line 35
    iget-object v10, p0, Lk/a/b/a/d/g0/a0;->A0:Lk/a/b/a/b/n/s;

    .line 36
    iget-object v11, v2, Lk/a/b/a/d/g0/e0;->a:Lk/a/b/a/b/h;

    .line 37
    invoke-virtual {v10, v11}, Lk/a/b/a/b/n/s;->a(Lk/a/b/a/b/h;)V

    .line 38
    iget-object v10, p0, Lk/a/b/a/d/g0/a0;->A0:Lk/a/b/a/b/n/s;

    .line 39
    iput-object v3, v10, Lk/a/b/a/b/n/s;->g:Lk/a/b/a/b/n/n;

    .line 40
    iput-boolean v5, v10, Lk/a/b/a/b/n/s;->i:Z

    .line 41
    iput-boolean v5, v10, Lk/a/b/a/b/n/s;->j:Z

    .line 42
    iput-boolean v5, v10, Lk/a/b/a/b/n/s;->k:Z

    .line 43
    iget-object v11, v0, Lk/a/b/a/d/g0/e;->I:Lk/a/b/a/b/n/e;

    if-eqz v11, :cond_8

    .line 44
    iput-object v11, v10, Lk/a/b/a/b/n/s;->h:Lk/a/b/a/b/n/e;

    goto :goto_7

    .line 45
    :cond_8
    iput-object v3, v10, Lk/a/b/a/b/n/s;->h:Lk/a/b/a/b/n/e;

    .line 46
    :goto_7
    iget-boolean v10, v0, Lk/a/b/a/d/g0/e;->J:Z

    if-eqz v10, :cond_9

    .line 47
    iget-object v9, p0, Lk/a/b/a/d/g0/a0;->A0:Lk/a/b/a/b/n/s;

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 48
    iput-object v10, v9, Lk/a/b/a/b/n/s;->e:Ljava/lang/Boolean;

    goto :goto_8

    .line 49
    :cond_9
    iget-object v10, p0, Lk/a/b/a/d/g0/a0;->A0:Lk/a/b/a/b/n/s;

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 50
    iput-object v11, v10, Lk/a/b/a/b/n/s;->e:Ljava/lang/Boolean;

    .line 51
    iget-object v10, v7, Lk/a/b/a/d/g0/k0;->q:Ljava/util/Map;

    invoke-interface {v10, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :goto_8
    iget-object v9, v1, Lk/a/b/a/d/g0/m;->K:Lk/a/b/a/d/g0/e;

    if-ne v9, v0, :cond_a

    .line 53
    iget-object v9, p0, Lk/a/b/a/d/g0/a0;->A0:Lk/a/b/a/b/n/s;

    .line 54
    iput-boolean v4, v9, Lk/a/b/a/b/n/s;->f:Z

    goto :goto_9

    .line 55
    :cond_a
    iget-object v9, p0, Lk/a/b/a/d/g0/a0;->A0:Lk/a/b/a/b/n/s;

    .line 56
    iput-boolean v5, v9, Lk/a/b/a/b/n/s;->f:Z

    .line 57
    :goto_9
    iget v9, v0, Lk/a/b/a/d/g0/e;->N:I

    if-nez v9, :cond_b

    .line 58
    iget-object v9, p0, Lk/a/b/a/d/g0/a0;->A0:Lk/a/b/a/b/n/s;

    sget-object v10, Lk/a/b/a/b/h;->z:Lk/a/b/a/b/h;

    .line 59
    iput-object v10, v9, Lk/a/b/a/b/n/s;->d:Lk/a/b/a/b/h;

    goto :goto_a

    .line 60
    :cond_b
    iget-object v10, p0, Lk/a/b/a/d/g0/a0;->A0:Lk/a/b/a/b/n/s;

    invoke-static {v9}, Lk/a/b/a/b/h;->a(I)Lk/a/b/a/b/h;

    move-result-object v9

    .line 61
    iput-object v9, v10, Lk/a/b/a/b/n/s;->d:Lk/a/b/a/b/h;

    .line 62
    :goto_a
    iget-object v9, v0, Lk/a/b/a/d/g0/e;->U:Lk/a/b/a/c/k0;

    if-nez v9, :cond_c

    sget-object v9, Lk/a/b/a/d/g0/e;->V:Lk/a/b/a/c/k0;

    .line 63
    :cond_c
    invoke-interface {v9}, Lk/a/b/a/c/k0;->c()I

    move-result v10

    .line 64
    :try_start_0
    iget v11, v7, Lk/a/b/a/d/g0/k0;->c:I

    .line 65
    iget-object v12, p0, Lk/a/b/a/d/g0/a0;->A0:Lk/a/b/a/b/n/s;

    new-instance v13, Lk/a/b/a/d/g0/a;

    invoke-direct {v13, p0}, Lk/a/b/a/d/g0/a;-><init>(Lk/a/b/a/d/g0/a0;)V

    .line 66
    iget-object v14, p0, Lk/a/b/a/d/g0/a0;->X:Lk/a/b/a/d/g0/j;

    invoke-virtual {v14, v11, v12, v9, v13}, Lk/a/b/a/d/g0/j;->a(ILjava/lang/Object;Lk/a/b/a/c/k0;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object v11, v0, Lk/a/b/a/d/g0/e;->U:Lk/a/b/a/c/k0;

    if-eqz v11, :cond_d

    .line 68
    invoke-interface {v11}, Lk/a/b/a/c/k0;->n()Lk/a/b/a/c/k0;

    .line 69
    iget-object v11, v0, Lk/a/b/a/d/g0/e;->U:Lk/a/b/a/c/k0;

    invoke-interface {v11}, Lk/a/b/a/c/k0;->b()Z

    move-result v11

    if-nez v11, :cond_d

    .line 70
    iget-object v11, v0, Lk/a/b/a/d/g0/e;->T:Lk/a/b/a/c/l;

    iput-object v11, v0, Lk/a/b/a/d/g0/e;->U:Lk/a/b/a/c/k0;

    .line 71
    :cond_d
    iget-object v11, v7, Lk/a/b/a/d/g0/k0;->i:Lk/a/b/a/b/h;

    sget-object v12, Lk/a/b/a/b/h;->A:Lk/a/b/a/b/h;

    invoke-virtual {v11, v12}, Lk/a/b/a/b/h;->a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object v11

    iput-object v11, v7, Lk/a/b/a/d/g0/k0;->i:Lk/a/b/a/b/h;

    .line 72
    iget-object v11, v7, Lk/a/b/a/d/g0/k0;->o:Lk/a/b/a/b/h;

    sget-object v12, Lk/a/b/a/b/h;->A:Lk/a/b/a/b/h;

    invoke-virtual {v11, v12}, Lk/a/b/a/b/h;->c(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object v11

    iput-object v11, v7, Lk/a/b/a/d/g0/k0;->o:Lk/a/b/a/b/h;

    .line 73
    invoke-interface {v9}, Lk/a/b/a/c/k0;->b()Z

    move-result v11

    if-nez v11, :cond_e

    neg-int v9, v10

    .line 74
    invoke-virtual {v6, v9}, Lk/a/b/a/d/g0/y;->c(I)V

    .line 75
    iget-object v9, p0, Lk/a/b/a/d/g0/a0;->A0:Lk/a/b/a/b/n/s;

    .line 76
    iget-boolean v9, v9, Lk/a/b/a/b/n/s;->f:Z

    if-nez v9, :cond_f

    .line 77
    iput-object v3, v2, Lk/a/b/a/d/g0/j0;->j:Lk/a/b/a/d/g0/e;

    .line 78
    iput-boolean v4, v0, Lk/a/b/a/d/g0/e;->S:Z

    .line 79
    iget-object v9, v2, Lk/a/b/a/d/g0/e0;->d:Lk/a/b/a/b/h;

    .line 80
    sget-object v10, Lk/a/b/a/b/h;->A:Lk/a/b/a/b/h;

    invoke-virtual {v9, v10}, Lk/a/b/a/b/h;->a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object v9

    .line 81
    iput-object v9, v2, Lk/a/b/a/d/g0/e0;->d:Lk/a/b/a/b/h;

    .line 82
    iget-object v9, v2, Lk/a/b/a/d/g0/e0;->e:Lk/a/b/a/b/h;

    .line 83
    sget-object v10, Lk/a/b/a/b/h;->A:Lk/a/b/a/b/h;

    invoke-virtual {v9, v10}, Lk/a/b/a/b/h;->c(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object v9

    .line 84
    iput-object v9, v2, Lk/a/b/a/d/g0/e0;->e:Lk/a/b/a/b/h;

    .line 85
    iget v2, v6, Lk/a/b/a/d/g0/y;->Q:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v6, Lk/a/b/a/d/g0/y;->Q:I

    .line 86
    iget v2, v1, Lk/a/b/a/d/g0/m;->Q:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lk/a/b/a/d/g0/m;->Q:I

    goto :goto_b

    .line 87
    :cond_e
    invoke-interface {v9}, Lk/a/b/a/c/k0;->c()I

    move-result v9

    sub-int/2addr v10, v9

    neg-int v9, v10

    invoke-virtual {v6, v9}, Lk/a/b/a/d/g0/y;->c(I)V

    .line 88
    iput-object v0, v2, Lk/a/b/a/d/g0/j0;->j:Lk/a/b/a/d/g0/e;

    .line 89
    :cond_f
    :goto_b
    iget-boolean v2, p0, Lk/a/b/a/d/g0/a0;->f0:Z

    if-eqz v2, :cond_11

    .line 90
    iget-object v2, v1, Lk/a/b/a/d/g0/f;->x:Lk/a/b/a/d/g;

    .line 91
    sget-object v6, Lk/a/b/a/d/g;->CLOSED:Lk/a/b/a/d/g;

    if-eq v2, v6, :cond_11

    .line 92
    iget-object v2, p0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    .line 93
    sget-object v6, Lk/a/b/a/d/h$b;->LINK_FLOW:Lk/a/b/a/d/h$b;

    invoke-virtual {v2, v6, v1}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    goto :goto_c

    :catchall_0
    move-exception v1

    .line 94
    iget-object v2, v0, Lk/a/b/a/d/g0/e;->U:Lk/a/b/a/c/k0;

    if-eqz v2, :cond_10

    .line 95
    invoke-interface {v2}, Lk/a/b/a/c/k0;->n()Lk/a/b/a/c/k0;

    .line 96
    iget-object v2, v0, Lk/a/b/a/d/g0/e;->U:Lk/a/b/a/c/k0;

    invoke-interface {v2}, Lk/a/b/a/c/k0;->b()Z

    move-result v2

    if-nez v2, :cond_10

    .line 97
    iget-object v2, v0, Lk/a/b/a/d/g0/e;->T:Lk/a/b/a/c/l;

    iput-object v2, v0, Lk/a/b/a/d/g0/e;->U:Lk/a/b/a/c/k0;

    .line 98
    :cond_10
    throw v1

    :cond_11
    :goto_c
    if-eqz v8, :cond_13

    .line 99
    iget-object v1, v0, Lk/a/b/a/d/g0/e;->I:Lk/a/b/a/b/n/e;

    if-eqz v1, :cond_13

    .line 100
    iget-object v1, v0, Lk/a/b/a/d/g0/e;->P:Lk/a/b/a/d/g0/z;

    .line 101
    iget-object v2, p0, Lk/a/b/a/d/g0/a0;->y0:Lk/a/b/a/b/n/g;

    .line 102
    iget-object v6, v1, Lk/a/b/a/d/g0/z;->a:Lk/a/b/a/b/h;

    .line 103
    invoke-virtual {v2, v6}, Lk/a/b/a/b/n/g;->a(Lk/a/b/a/b/h;)V

    .line 104
    iget-object v2, p0, Lk/a/b/a/d/g0/a0;->y0:Lk/a/b/a/b/n/g;

    .line 105
    iget-object v6, v1, Lk/a/b/a/d/g0/z;->a:Lk/a/b/a/b/h;

    .line 106
    iput-object v6, v2, Lk/a/b/a/b/n/g;->c:Lk/a/b/a/b/h;

    .line 107
    sget-object v6, Lk/a/b/a/b/n/o;->SENDER:Lk/a/b/a/b/n/o;

    invoke-virtual {v2, v6}, Lk/a/b/a/b/n/g;->a(Lk/a/b/a/b/n/o;)V

    .line 108
    iget-object v2, p0, Lk/a/b/a/d/g0/a0;->y0:Lk/a/b/a/b/n/g;

    .line 109
    iget-boolean v6, v0, Lk/a/b/a/d/g0/e;->J:Z

    .line 110
    iput-boolean v6, v2, Lk/a/b/a/b/n/g;->d:Z

    .line 111
    iput-boolean v5, v2, Lk/a/b/a/b/n/g;->f:Z

    if-eqz v6, :cond_12

    .line 112
    invoke-virtual {v1}, Lk/a/b/a/d/g0/z;->a()V

    .line 113
    :cond_12
    iget-object v1, p0, Lk/a/b/a/d/g0/a0;->y0:Lk/a/b/a/b/n/g;

    .line 114
    iget-object v2, v0, Lk/a/b/a/d/g0/e;->I:Lk/a/b/a/b/n/e;

    .line 115
    iput-object v2, v1, Lk/a/b/a/b/n/g;->e:Lk/a/b/a/b/n/e;

    .line 116
    iget v2, v7, Lk/a/b/a/d/g0/k0;->c:I

    .line 117
    iget-object v6, p0, Lk/a/b/a/d/g0/a0;->X:Lk/a/b/a/d/g0/j;

    invoke-virtual {v6, v2, v1, v3, v3}, Lk/a/b/a/d/g0/j;->a(ILjava/lang/Object;Lk/a/b/a/c/k0;Ljava/lang/Runnable;)V

    .line 118
    :cond_13
    iget-boolean v1, v0, Lk/a/b/a/d/g0/e;->K:Z

    if-eqz v1, :cond_14

    goto :goto_e

    .line 119
    :cond_14
    iget-object v1, v0, Lk/a/b/a/d/g0/e;->H:Lk/a/b/a/d/g0/m;

    .line 120
    instance-of v1, v1, Lk/a/b/a/d/g0/x;

    if-eqz v1, :cond_18

    .line 121
    iget-boolean v1, v0, Lk/a/b/a/d/g0/e;->S:Z

    if-eqz v1, :cond_15

    goto :goto_e

    .line 122
    :cond_15
    iget-object v1, v0, Lk/a/b/a/d/g0/e;->U:Lk/a/b/a/c/k0;

    if-eqz v1, :cond_16

    .line 123
    invoke-interface {v1}, Lk/a/b/a/c/k0;->b()Z

    move-result v1

    goto :goto_d

    :cond_16
    const/4 v1, 0x0

    .line 124
    :goto_d
    iget-boolean v2, v0, Lk/a/b/a/d/g0/e;->Q:Z

    if-nez v2, :cond_17

    if-eqz v1, :cond_18

    :cond_17
    const/4 v5, 0x1

    :cond_18
    :goto_e
    xor-int/2addr v5, v4

    :goto_f
    if-eqz v5, :cond_19

    .line 125
    invoke-virtual {v0}, Lk/a/b/a/d/g0/e;->i()Lk/a/b/a/d/g0/e;

    move-result-object v0

    goto/16 :goto_0

    .line 126
    :cond_19
    iget-object v0, v0, Lk/a/b/a/d/g0/e;->C:Lk/a/b/a/d/g0/e;

    goto/16 :goto_0

    .line 127
    :cond_1a
    check-cast v1, Lk/a/b/a/d/g0/q;

    .line 128
    iget-object v2, v0, Lk/a/b/a/d/g0/e;->P:Lk/a/b/a/d/g0/z;

    .line 129
    iget-object v1, v1, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    .line 130
    iget-object v1, v1, Lk/a/b/a/d/g0/y;->L:Lk/a/b/a/d/g0/k0;

    .line 131
    invoke-virtual {v1}, Lk/a/b/a/d/g0/k0;->a()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 132
    iget-boolean v6, v0, Lk/a/b/a/d/g0/e;->J:Z

    .line 133
    iget-object v7, v0, Lk/a/b/a/d/g0/e;->I:Lk/a/b/a/b/n/e;

    .line 134
    iget-object v8, p0, Lk/a/b/a/d/g0/a0;->y0:Lk/a/b/a/b/n/g;

    .line 135
    iget-object v9, v2, Lk/a/b/a/d/g0/z;->a:Lk/a/b/a/b/h;

    .line 136
    invoke-virtual {v8, v9}, Lk/a/b/a/b/n/g;->a(Lk/a/b/a/b/h;)V

    .line 137
    iget-object v8, p0, Lk/a/b/a/d/g0/a0;->y0:Lk/a/b/a/b/n/g;

    .line 138
    iget-object v9, v2, Lk/a/b/a/d/g0/z;->a:Lk/a/b/a/b/h;

    .line 139
    iput-object v9, v8, Lk/a/b/a/b/n/g;->c:Lk/a/b/a/b/h;

    .line 140
    sget-object v9, Lk/a/b/a/b/n/o;->RECEIVER:Lk/a/b/a/b/n/o;

    invoke-virtual {v8, v9}, Lk/a/b/a/b/n/g;->a(Lk/a/b/a/b/n/o;)V

    .line 141
    iget-object v8, p0, Lk/a/b/a/d/g0/a0;->y0:Lk/a/b/a/b/n/g;

    .line 142
    iput-boolean v6, v8, Lk/a/b/a/b/n/g;->d:Z

    .line 143
    iput-object v7, v8, Lk/a/b/a/b/n/g;->e:Lk/a/b/a/b/n/e;

    .line 144
    iput-boolean v5, v8, Lk/a/b/a/b/n/g;->f:Z

    if-nez v7, :cond_1b

    if-eqz v6, :cond_1b

    .line 145
    iget-object v5, v0, Lk/a/b/a/d/g0/e;->M:Lk/a/b/a/b/n/e;

    .line 146
    iput-object v5, v8, Lk/a/b/a/b/n/g;->e:Lk/a/b/a/b/n/e;

    .line 147
    :cond_1b
    iget v1, v1, Lk/a/b/a/d/g0/k0;->c:I

    .line 148
    iget-object v5, p0, Lk/a/b/a/d/g0/a0;->y0:Lk/a/b/a/b/n/g;

    .line 149
    iget-object v7, p0, Lk/a/b/a/d/g0/a0;->X:Lk/a/b/a/d/g0/j;

    invoke-virtual {v7, v1, v5, v3, v3}, Lk/a/b/a/d/g0/j;->a(ILjava/lang/Object;Lk/a/b/a/c/k0;Ljava/lang/Runnable;)V

    if-eqz v6, :cond_1d

    .line 150
    invoke-virtual {v2}, Lk/a/b/a/d/g0/z;->a()V

    goto :goto_10

    :cond_1c
    const/4 v4, 0x0

    :cond_1d
    :goto_10
    if-eqz v4, :cond_1e

    .line 151
    invoke-virtual {v0}, Lk/a/b/a/d/g0/e;->i()Lk/a/b/a/d/g0/e;

    move-result-object v0

    goto/16 :goto_0

    .line 152
    :cond_1e
    iget-object v0, v0, Lk/a/b/a/d/g0/e;->C:Lk/a/b/a/d/g0/e;

    goto/16 :goto_0

    :cond_1f
    return-void
.end method

.method public capacity()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/a0;->W()V

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->P:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->capacity()I

    move-result v0

    return v0
.end method

.method public close_head()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->Q:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->close_head()V

    return-void
.end method

.method public close_tail()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/a0;->W()V

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->P:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->close_tail()V

    return-void
.end method

.method public head()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/a0;->W()V

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->Q:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->head()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/a0;->pending()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lk/a/b/a/d/g0/a0;->capacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public o()Lk/a/b/a/d/g0/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    return-object v0
.end method

.method public pending()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/a0;->W()V

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->Q:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->pending()I

    move-result v0

    return v0
.end method

.method public pop(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/a0;->W()V

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->Q:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0, p1}, Lk/a/b/a/d/g0/f0;->pop(I)V

    .line 3
    iget-wide v0, p0, Lk/a/b/a/d/g0/a0;->q0:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lk/a/b/a/d/g0/a0;->q0:J

    .line 4
    invoke-virtual {p0}, Lk/a/b/a/d/g0/a0;->pending()I

    move-result p1

    if-gez p1, :cond_0

    .line 5
    iget-boolean p1, p0, Lk/a/b/a/d/g0/a0;->k0:Z

    if-nez p1, :cond_0

    .line 6
    sget-object p1, Lk/a/b/a/d/h$b;->TRANSPORT_HEAD_CLOSED:Lk/a/b/a/d/h$b;

    invoke-virtual {p0, p1, p0}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lk/a/b/a/d/g0/a0;->k0:Z

    .line 8
    iget-boolean p1, p0, Lk/a/b/a/d/g0/a0;->l0:Z

    if-eqz p1, :cond_0

    .line 9
    sget-object p1, Lk/a/b/a/d/h$b;->TRANSPORT_CLOSED:Lk/a/b/a/d/h$b;

    invoke-virtual {p0, p1, p0}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public process()V
    .locals 6

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lk/a/b/a/d/g0/a0;->e0:Z

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lk/a/b/a/d/g0/a0;->W()V

    .line 3
    iget-object v1, p0, Lk/a/b/a/d/g0/a0;->P:Lk/a/b/a/d/g0/b0;

    invoke-interface {v1}, Lk/a/b/a/d/g0/b0;->position()I

    move-result v1

    .line 4
    iget-object v2, p0, Lk/a/b/a/d/g0/a0;->P:Lk/a/b/a/d/g0/b0;

    invoke-interface {v2}, Lk/a/b/a/d/g0/b0;->process()V

    .line 5
    iget-wide v2, p0, Lk/a/b/a/d/g0/a0;->p0:J

    iget-object v4, p0, Lk/a/b/a/d/g0/a0;->P:Lk/a/b/a/d/g0/b0;

    invoke-interface {v4}, Lk/a/b/a/d/g0/b0;->position()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lk/a/b/a/d/g0/a0;->p0:J
    :try_end_0
    .catch Lk/a/b/a/d/d0; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 6
    iput-boolean v0, p0, Lk/a/b/a/d/g0/a0;->i0:Z

    .line 7
    throw v1
.end method

.method public tail()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/a0;->W()V

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->P:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->tail()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "TransportImpl [_connectionEndpoint="

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "]"

    invoke-static {v0, v1, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->O:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/d/g0/k0;

    .line 2
    invoke-virtual {v1}, Lk/a/b/a/d/g0/k0;->b()V

    .line 3
    invoke-virtual {v1}, Lk/a/b/a/d/g0/k0;->c()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->N:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/d/g0/k0;

    .line 5
    invoke-virtual {v1}, Lk/a/b/a/d/g0/k0;->b()V

    .line 6
    invoke-virtual {v1}, Lk/a/b/a/d/g0/k0;->c()V

    goto :goto_1

    .line 7
    :cond_1
    sget-object v0, Lk/a/b/a/d/h$b;->CONNECTION_UNBOUND:Lk/a/b/a/d/h$b;

    iget-object v1, p0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    invoke-virtual {p0, v0, v1}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    .line 9
    iget-object v1, v0, Lk/a/b/a/d/g0/d;->H:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/b/a/d/g0/y;

    .line 11
    iget-object v4, v3, Lk/a/b/a/d/g0/y;->I:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk/a/b/a/d/g0/x;

    .line 12
    invoke-virtual {v5, v2}, Lk/a/b/a/d/g0/f;->c(Z)V

    goto :goto_3

    .line 13
    :cond_2
    iget-object v4, v3, Lk/a/b/a/d/g0/y;->J:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk/a/b/a/d/g0/q;

    .line 14
    invoke-virtual {v5, v2}, Lk/a/b/a/d/g0/f;->c(Z)V

    goto :goto_4

    .line 15
    :cond_3
    invoke-virtual {v3, v2}, Lk/a/b/a/d/g0/f;->c(Z)V

    goto :goto_2

    .line 16
    :cond_4
    iget-boolean v1, v0, Lk/a/b/a/d/g0/f;->G:Z

    if-nez v1, :cond_5

    .line 17
    invoke-virtual {v0, v2}, Lk/a/b/a/d/g0/f;->c(Z)V

    .line 18
    :cond_5
    iget-object v0, p0, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    const/4 v1, 0x0

    .line 19
    iput-object v1, v0, Lk/a/b/a/d/g0/d;->R:Lk/a/b/a/d/g0/a0;

    .line 20
    invoke-virtual {v0}, Lk/a/b/a/d/g0/f;->i()V

    return-void
.end method
