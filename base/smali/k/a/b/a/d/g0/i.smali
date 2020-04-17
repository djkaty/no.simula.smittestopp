.class public Lk/a/b/a/d/g0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/d/g0/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/b/a/d/g0/i$a;
    }
.end annotation


# static fields
.field public static final m:Ljava/util/logging/Logger;

.field public static final n:Ljava/nio/ByteBuffer;


# instance fields
.field public final a:Lk/a/b/a/d/g0/h;

.field public final b:Lk/a/b/a/c/i;

.field public final c:I

.field public final d:I

.field public final e:Lk/a/b/a/d/g0/a0;

.field public f:Ljava/nio/ByteBuffer;

.field public g:Z

.field public h:Lk/a/b/a/d/g0/i$a;

.field public i:J

.field public j:I

.field public k:Ljava/nio/ByteBuffer;

.field public l:Lk/a/b/a/e/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "proton.trace"

    .line 1
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lk/a/b/a/d/g0/i;->m:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    sput-object v0, Lk/a/b/a/d/g0/i;->n:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Lk/a/b/a/d/g0/h;Lk/a/b/a/c/i;ILk/a/b/a/d/g0/a0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lk/a/b/a/d/g0/i;->f:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lk/a/b/a/d/g0/i;->g:Z

    .line 4
    sget-object v0, Lk/a/b/a/d/g0/i$a;->HEADER0:Lk/a/b/a/d/g0/i$a;

    iput-object v0, p0, Lk/a/b/a/d/g0/i;->h:Lk/a/b/a/d/g0/i$a;

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lk/a/b/a/d/g0/i;->i:J

    .line 6
    iput-object p1, p0, Lk/a/b/a/d/g0/i;->a:Lk/a/b/a/d/g0/h;

    .line 7
    iput-object p2, p0, Lk/a/b/a/d/g0/i;->b:Lk/a/b/a/c/i;

    .line 8
    iput p3, p0, Lk/a/b/a/d/g0/i;->d:I

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0x4000

    .line 9
    :goto_0
    iput p3, p0, Lk/a/b/a/d/g0/i;->c:I

    .line 10
    iput-object p4, p0, Lk/a/b/a/d/g0/i;->e:Lk/a/b/a/d/g0/a0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 148
    iget-object v0, p0, Lk/a/b/a/d/g0/i;->l:Lk/a/b/a/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk/a/b/a/d/g0/i;->a:Lk/a/b/a/d/g0/h;

    check-cast v0, Lk/a/b/a/d/g0/a0;

    invoke-virtual {v0}, Lk/a/b/a/d/g0/a0;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lk/a/b/a/d/g0/i;->a:Lk/a/b/a/d/g0/h;

    iget-object v1, p0, Lk/a/b/a/d/g0/i;->l:Lk/a/b/a/e/a;

    check-cast v0, Lk/a/b/a/d/g0/a0;

    invoke-virtual {v0, v1}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/e/a;)Z

    move-result v0

    iput-boolean v0, p0, Lk/a/b/a/d/g0/i;->g:Z

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lk/a/b/a/d/g0/i;->l:Lk/a/b/a/e/a;

    :cond_0
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lk/a/b/a/d/g0/i;->a()V

    .line 2
    iget-object v0, v1, Lk/a/b/a/d/g0/i;->l:Lk/a/b/a/e/a;

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v0, v1, Lk/a/b/a/d/g0/i;->j:I

    .line 4
    iget-object v2, v1, Lk/a/b/a/d/g0/i;->h:Lk/a/b/a/d/g0/i$a;

    const/4 v3, 0x1

    move-object v5, v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v2, v0

    move-object/from16 v0, p1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v9

    if-eqz v9, :cond_21

    sget-object v9, Lk/a/b/a/d/g0/i$a;->ERROR:Lk/a/b/a/d/g0/i$a;

    if-eq v5, v9, :cond_21

    if-eqz v6, :cond_21

    .line 6
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    const/4 v10, 0x4

    const/16 v11, 0x8

    const-string v12, "AMQP header mismatch value %x, expecting %x. In state: %s"

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x0

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    .line 9
    sget-object v16, Lk/a/b/a/d/g0/b;->a:[B

    aget-byte v4, v16, v15

    if-eq v9, v4, :cond_2

    .line 10
    new-instance v7, Lk/a/b/a/d/d0;

    new-array v4, v13, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v4, v15

    sget-object v9, Lk/a/b/a/d/g0/b;->a:[B

    aget-byte v9, v9, v15

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v4, v3

    aput-object v5, v4, v14

    invoke-direct {v7, v12, v4}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-object v4, Lk/a/b/a/d/g0/i$a;->ERROR:Lk/a/b/a/d/g0/i$a;

    goto/16 :goto_1

    .line 12
    :cond_2
    sget-object v4, Lk/a/b/a/d/g0/i$a;->HEADER1:Lk/a/b/a/d/g0/i$a;

    move-object v5, v4

    .line 13
    :pswitch_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 14
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 15
    sget-object v9, Lk/a/b/a/d/g0/b;->a:[B

    aget-byte v9, v9, v3

    if-eq v4, v9, :cond_3

    .line 16
    new-instance v7, Lk/a/b/a/d/d0;

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v9, v15

    sget-object v4, Lk/a/b/a/d/g0/b;->a:[B

    aget-byte v4, v4, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v9, v3

    aput-object v5, v9, v14

    invoke-direct {v7, v12, v9}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    sget-object v4, Lk/a/b/a/d/g0/i$a;->ERROR:Lk/a/b/a/d/g0/i$a;

    goto/16 :goto_1

    .line 18
    :cond_3
    sget-object v4, Lk/a/b/a/d/g0/i$a;->HEADER2:Lk/a/b/a/d/g0/i$a;

    move-object v5, v4

    .line 19
    :pswitch_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 20
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 21
    sget-object v9, Lk/a/b/a/d/g0/b;->a:[B

    aget-byte v9, v9, v14

    if-eq v4, v9, :cond_4

    .line 22
    new-instance v7, Lk/a/b/a/d/d0;

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v9, v15

    sget-object v4, Lk/a/b/a/d/g0/b;->a:[B

    aget-byte v4, v4, v14

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v9, v3

    aput-object v5, v9, v14

    invoke-direct {v7, v12, v9}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    sget-object v4, Lk/a/b/a/d/g0/i$a;->ERROR:Lk/a/b/a/d/g0/i$a;

    goto/16 :goto_1

    .line 24
    :cond_4
    sget-object v4, Lk/a/b/a/d/g0/i$a;->HEADER3:Lk/a/b/a/d/g0/i$a;

    move-object v5, v4

    .line 25
    :pswitch_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 27
    sget-object v9, Lk/a/b/a/d/g0/b;->a:[B

    aget-byte v9, v9, v13

    if-eq v4, v9, :cond_5

    .line 28
    new-instance v7, Lk/a/b/a/d/d0;

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v9, v15

    sget-object v4, Lk/a/b/a/d/g0/b;->a:[B

    aget-byte v4, v4, v13

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v9, v3

    aput-object v5, v9, v14

    invoke-direct {v7, v12, v9}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    sget-object v4, Lk/a/b/a/d/g0/i$a;->ERROR:Lk/a/b/a/d/g0/i$a;

    goto/16 :goto_1

    .line 30
    :cond_5
    sget-object v4, Lk/a/b/a/d/g0/i$a;->HEADER4:Lk/a/b/a/d/g0/i$a;

    move-object v5, v4

    .line 31
    :pswitch_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 33
    sget-object v9, Lk/a/b/a/d/g0/b;->a:[B

    aget-byte v9, v9, v10

    if-eq v4, v9, :cond_6

    .line 34
    new-instance v7, Lk/a/b/a/d/d0;

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v9, v15

    sget-object v4, Lk/a/b/a/d/g0/b;->a:[B

    aget-byte v4, v4, v10

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v9, v3

    aput-object v5, v9, v14

    invoke-direct {v7, v12, v9}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    sget-object v4, Lk/a/b/a/d/g0/i$a;->ERROR:Lk/a/b/a/d/g0/i$a;

    goto/16 :goto_1

    .line 36
    :cond_6
    sget-object v4, Lk/a/b/a/d/g0/i$a;->HEADER5:Lk/a/b/a/d/g0/i$a;

    move-object v5, v4

    .line 37
    :pswitch_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 38
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 39
    sget-object v9, Lk/a/b/a/d/g0/b;->a:[B

    const/16 v16, 0x5

    aget-byte v9, v9, v16

    if-eq v4, v9, :cond_7

    .line 40
    new-instance v7, Lk/a/b/a/d/d0;

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v9, v15

    sget-object v4, Lk/a/b/a/d/g0/b;->a:[B

    aget-byte v4, v4, v16

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v9, v3

    aput-object v5, v9, v14

    invoke-direct {v7, v12, v9}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    sget-object v4, Lk/a/b/a/d/g0/i$a;->ERROR:Lk/a/b/a/d/g0/i$a;

    goto/16 :goto_1

    .line 42
    :cond_7
    sget-object v4, Lk/a/b/a/d/g0/i$a;->HEADER6:Lk/a/b/a/d/g0/i$a;

    move-object v5, v4

    .line 43
    :pswitch_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 45
    sget-object v9, Lk/a/b/a/d/g0/b;->a:[B

    const/16 v16, 0x6

    aget-byte v9, v9, v16

    if-eq v4, v9, :cond_8

    .line 46
    new-instance v7, Lk/a/b/a/d/d0;

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v9, v15

    sget-object v4, Lk/a/b/a/d/g0/b;->a:[B

    aget-byte v4, v4, v16

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v9, v3

    aput-object v5, v9, v14

    invoke-direct {v7, v12, v9}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    sget-object v4, Lk/a/b/a/d/g0/i$a;->ERROR:Lk/a/b/a/d/g0/i$a;

    goto/16 :goto_1

    .line 48
    :cond_8
    sget-object v4, Lk/a/b/a/d/g0/i$a;->HEADER7:Lk/a/b/a/d/g0/i$a;

    move-object v5, v4

    .line 49
    :pswitch_7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 50
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 51
    sget-object v9, Lk/a/b/a/d/g0/b;->a:[B

    const/16 v16, 0x7

    aget-byte v9, v9, v16

    if-eq v4, v9, :cond_9

    .line 52
    new-instance v7, Lk/a/b/a/d/d0;

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v9, v15

    sget-object v4, Lk/a/b/a/d/g0/b;->a:[B

    aget-byte v4, v4, v16

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v9, v3

    aput-object v5, v9, v14

    invoke-direct {v7, v12, v9}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    sget-object v4, Lk/a/b/a/d/g0/i$a;->ERROR:Lk/a/b/a/d/g0/i$a;

    goto :goto_1

    .line 54
    :cond_9
    iget-object v4, v1, Lk/a/b/a/d/g0/i;->e:Lk/a/b/a/d/g0/a0;

    invoke-virtual {v4}, Lk/a/b/a/d/g0/a0;->X()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 55
    iget-object v4, v1, Lk/a/b/a/d/g0/i;->e:Lk/a/b/a/d/g0/a0;

    sget-object v5, Lk/a/b/a/d/g0/a0;->E0:Ljava/lang/String;

    const-string v9, "AMQP"

    invoke-virtual {v4, v5, v9}, Lk/a/b/a/d/g0/a0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v4, v1, Lk/a/b/a/d/g0/i;->e:Lk/a/b/a/d/g0/a0;

    invoke-virtual {v4}, Lk/a/b/a/d/g0/a0;->V()Lk/a/b/a/d/g0/p;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 57
    invoke-interface {v4}, Lk/a/b/a/d/g0/p;->a()V

    .line 58
    :cond_a
    sget-object v4, Lk/a/b/a/d/g0/i$a;->SIZE_0:Lk/a/b/a/d/g0/i$a;

    move-object v5, v4

    .line 59
    :pswitch_8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_0

    .line 60
    :cond_b
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v10, :cond_c

    .line 61
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 62
    sget-object v4, Lk/a/b/a/d/g0/i$a;->PRE_PARSE:Lk/a/b/a/d/g0/i$a;

    goto :goto_1

    .line 63
    :cond_c
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    const/high16 v4, -0x1000000

    and-int/2addr v2, v4

    .line 64
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_d

    .line 65
    sget-object v4, Lk/a/b/a/d/g0/i$a;->SIZE_1:Lk/a/b/a/d/g0/i$a;

    goto :goto_1

    .line 66
    :cond_d
    :pswitch_9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    .line 67
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_e

    .line 68
    sget-object v4, Lk/a/b/a/d/g0/i$a;->SIZE_2:Lk/a/b/a/d/g0/i$a;

    :goto_1
    move-object v5, v4

    goto/16 :goto_0

    .line 69
    :cond_e
    :pswitch_a
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    shl-int/2addr v4, v11

    const v5, 0xff00

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    .line 70
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_f

    .line 71
    sget-object v4, Lk/a/b/a/d/g0/i$a;->SIZE_3:Lk/a/b/a/d/g0/i$a;

    goto :goto_1

    .line 72
    :cond_f
    :pswitch_b
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    .line 73
    sget-object v5, Lk/a/b/a/d/g0/i$a;->PRE_PARSE:Lk/a/b/a/d/g0/i$a;

    :pswitch_c
    if-ge v2, v11, :cond_10

    .line 74
    new-instance v7, Lk/a/b/a/d/d0;

    new-array v4, v14, [Ljava/lang/Object;

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v15

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "specified frame size %d smaller than minimum frame header size %d"

    invoke-direct {v7, v5, v4}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    sget-object v4, Lk/a/b/a/d/g0/i$a;->ERROR:Lk/a/b/a/d/g0/i$a;

    goto :goto_1

    .line 77
    :cond_10
    iget v4, v1, Lk/a/b/a/d/g0/i;->d:I

    if-lez v4, :cond_11

    if-le v2, v4, :cond_11

    .line 78
    new-instance v7, Lk/a/b/a/d/d0;

    new-array v4, v14, [Ljava/lang/Object;

    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v15

    iget v5, v1, Lk/a/b/a/d/g0/i;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "specified frame size %d greater than maximum valid frame size %d"

    invoke-direct {v7, v5, v4}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    sget-object v4, Lk/a/b/a/d/g0/i$a;->ERROR:Lk/a/b/a/d/g0/i$a;

    goto :goto_1

    .line 81
    :cond_11
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/lit8 v9, v2, -0x4

    if-ge v4, v9, :cond_12

    .line 82
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, v1, Lk/a/b/a/d/g0/i;->k:Ljava/nio/ByteBuffer;

    .line 83
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 84
    sget-object v4, Lk/a/b/a/d/g0/i$a;->BUFFERING:Lk/a/b/a/d/g0/i$a;

    goto :goto_1

    .line 85
    :cond_12
    :pswitch_d
    iget-object v4, v1, Lk/a/b/a/d/g0/i;->k:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_14

    .line 86
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget-object v9, v1, Lk/a/b/a/d/g0/i;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    if-ge v4, v9, :cond_13

    .line 87
    iget-object v4, v1, Lk/a/b/a/d/g0/i;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    .line 88
    :cond_13
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 89
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    iget-object v8, v1, Lk/a/b/a/d/g0/i;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 90
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    iget-object v8, v1, Lk/a/b/a/d/g0/i;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 91
    iget-object v5, v1, Lk/a/b/a/d/g0/i;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 92
    iget-object v4, v1, Lk/a/b/a/d/g0/i;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 93
    iget-object v4, v1, Lk/a/b/a/d/g0/i;->k:Ljava/nio/ByteBuffer;

    .line 94
    sget-object v5, Lk/a/b/a/d/g0/i$a;->PARSING:Lk/a/b/a/d/g0/i$a;

    move-object v8, v0

    move-object v0, v4

    .line 95
    :cond_14
    :pswitch_e
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    shl-int/2addr v4, v14

    and-int/lit16 v4, v4, 0x3ff

    if-ge v4, v11, :cond_15

    .line 96
    new-instance v7, Lk/a/b/a/d/d0;

    new-array v5, v14, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v15

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    const-string v4, "specified frame data offset %d smaller than minimum frame header size %d"

    invoke-direct {v7, v4, v5}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    sget-object v4, Lk/a/b/a/d/g0/i$a;->ERROR:Lk/a/b/a/d/g0/i$a;

    goto/16 :goto_1

    :cond_15
    if-le v4, v2, :cond_16

    .line 98
    new-instance v7, Lk/a/b/a/d/d0;

    new-array v5, v14, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    const-string v4, "specified frame data offset %d larger than the frame size %d"

    invoke-direct {v7, v4, v5}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    sget-object v4, Lk/a/b/a/d/g0/i$a;->ERROR:Lk/a/b/a/d/g0/i$a;

    goto/16 :goto_1

    .line 100
    :cond_16
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 101
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    const v10, 0xffff

    and-int/2addr v9, v10

    if-eqz v5, :cond_17

    .line 102
    new-instance v7, Lk/a/b/a/d/d0;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v15

    const-string v5, "unknown frame type: %d"

    invoke-direct {v7, v5, v4}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    sget-object v4, Lk/a/b/a/d/g0/i$a;->ERROR:Lk/a/b/a/d/g0/i$a;

    goto/16 :goto_1

    :cond_17
    if-eq v4, v11, :cond_18

    .line 104
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v4

    sub-int/2addr v5, v11

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_18
    sub-int v4, v2, v4

    if-nez v8, :cond_19

    .line 105
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 106
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v4

    .line 107
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 108
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v8, v0

    goto :goto_2

    :cond_19
    move-object v5, v0

    .line 109
    :goto_2
    :try_start_0
    iget-wide v10, v1, Lk/a/b/a/d/g0/i;->i:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, v1, Lk/a/b/a/d/g0/i;->i:J

    if-lez v4, :cond_1a

    .line 110
    iget-object v0, v1, Lk/a/b/a/d/g0/i;->b:Lk/a/b/a/c/i;
    :try_end_0
    .catch Lk/a/b/a/c/q; {:try_start_0 .. :try_end_0} :catch_2

    check-cast v0, Lk/a/b/a/c/r;

    :try_start_1
    invoke-virtual {v0, v5}, Lk/a/b/a/c/r;->a(Ljava/nio/ByteBuffer;)V

    .line 111
    iget-object v0, v1, Lk/a/b/a/d/g0/i;->b:Lk/a/b/a/c/i;
    :try_end_1
    .catch Lk/a/b/a/c/q; {:try_start_1 .. :try_end_1} :catch_2

    check-cast v0, Lk/a/b/a/c/r;

    :try_start_2
    invoke-virtual {v0}, Lk/a/b/a/c/r;->d()Ljava/lang/Object;

    move-result-object v0

    .line 112
    iget-object v4, v1, Lk/a/b/a/d/g0/i;->b:Lk/a/b/a/c/i;
    :try_end_2
    .catch Lk/a/b/a/c/q; {:try_start_2 .. :try_end_2} :catch_2

    check-cast v4, Lk/a/b/a/c/r;

    const/4 v10, 0x0

    :try_start_3
    invoke-virtual {v4, v10}, Lk/a/b/a/c/r;->a(Ljava/nio/ByteBuffer;)V

    .line 113
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 114
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v4, v4, [B

    .line 115
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 116
    new-instance v10, Lk/a/b/a/b/a;

    invoke-direct {v10, v4}, Lk/a/b/a/b/a;-><init>([B)V

    goto :goto_3

    .line 117
    :cond_1a
    sget-object v0, Lk/a/b/a/b/n/h;->a:Lk/a/b/a/b/n/h;

    :cond_1b
    const/4 v10, 0x0

    .line 118
    :goto_3
    instance-of v4, v0, Lk/a/b/a/b/n/l;

    if-eqz v4, :cond_1f

    .line 119
    check-cast v0, Lk/a/b/a/b/n/l;

    .line 120
    sget-object v4, Lk/a/b/a/d/g0/i;->m:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v11}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 121
    sget-object v4, Lk/a/b/a/d/g0/i;->m:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IN: CH["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "] : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez v10, :cond_1c

    const-string v13, ""

    goto :goto_4

    :cond_1c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_4
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 122
    :cond_1d
    new-instance v4, Lk/a/b/a/e/a;

    invoke-direct {v4, v9, v0, v10}, Lk/a/b/a/e/a;-><init>(ILk/a/b/a/b/n/l;Lk/a/b/a/b/a;)V

    .line 123
    iget-object v0, v1, Lk/a/b/a/d/g0/i;->a:Lk/a/b/a/d/g0/h;
    :try_end_3
    .catch Lk/a/b/a/c/q; {:try_start_3 .. :try_end_3} :catch_2

    check-cast v0, Lk/a/b/a/d/g0/a0;

    :try_start_4
    invoke-virtual {v0}, Lk/a/b/a/d/g0/a0;->Y()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 124
    iget-object v0, v1, Lk/a/b/a/d/g0/i;->a:Lk/a/b/a/d/g0/h;
    :try_end_4
    .catch Lk/a/b/a/c/q; {:try_start_4 .. :try_end_4} :catch_2

    check-cast v0, Lk/a/b/a/d/g0/a0;

    :try_start_5
    invoke-virtual {v0, v4}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/e/a;)Z

    move-result v0

    iput-boolean v0, v1, Lk/a/b/a/d/g0/i;->g:Z
    :try_end_5
    .catch Lk/a/b/a/c/q; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    .line 125
    :cond_1e
    :try_start_6
    iput-object v4, v1, Lk/a/b/a/d/g0/i;->l:Lk/a/b/a/e/a;
    :try_end_6
    .catch Lk/a/b/a/c/q; {:try_start_6 .. :try_end_6} :catch_1

    const/4 v6, 0x0

    .line 126
    :goto_5
    :try_start_7
    iput v15, v1, Lk/a/b/a/d/g0/i;->j:I

    .line 127
    sget-object v0, Lk/a/b/a/d/g0/i$a;->SIZE_0:Lk/a/b/a/d/g0/i$a;

    iput-object v0, v1, Lk/a/b/a/d/g0/i;->h:Lk/a/b/a/d/g0/i$a;
    :try_end_7
    .catch Lk/a/b/a/c/q; {:try_start_7 .. :try_end_7} :catch_2

    const/4 v4, 0x0

    .line 128
    :try_start_8
    iput-object v4, v1, Lk/a/b/a/d/g0/i;->k:Ljava/nio/ByteBuffer;

    .line 129
    sget-object v5, Lk/a/b/a/d/g0/i$a;->SIZE_0:Lk/a/b/a/d/g0/i$a;
    :try_end_8
    .catch Lk/a/b/a/c/q; {:try_start_8 .. :try_end_8} :catch_0

    move-object v0, v8

    const/4 v8, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v5, v8

    const/4 v8, 0x0

    goto :goto_7

    :catch_1
    move-exception v0

    const/4 v6, 0x0

    goto :goto_7

    .line 130
    :cond_1f
    :try_start_9
    new-instance v4, Lk/a/b/a/d/d0;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Frameparser encountered a "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_20

    const-string v0, "null"

    goto :goto_6

    .line 131
    :cond_20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_6
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " which is not a "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lk/a/b/a/b/n/l;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_9
    .catch Lk/a/b/a/c/q; {:try_start_9 .. :try_end_9} :catch_2

    :catch_2
    move-exception v0

    .line 132
    :goto_7
    sget-object v4, Lk/a/b/a/d/g0/i$a;->ERROR:Lk/a/b/a/d/g0/i$a;

    .line 133
    new-instance v7, Lk/a/b/a/d/d0;

    invoke-direct {v7, v0}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v5

    goto/16 :goto_1

    .line 134
    :cond_21
    iget-boolean v4, v1, Lk/a/b/a/d/g0/i;->g:Z

    if-eqz v4, :cond_24

    .line 135
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 136
    sget-object v5, Lk/a/b/a/d/g0/i$a;->ERROR:Lk/a/b/a/d/g0/i$a;

    .line 137
    new-instance v7, Lk/a/b/a/d/d0;

    const-string v0, "framing error"

    invoke-direct {v7, v0}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;)V

    goto :goto_8

    .line 138
    :cond_22
    sget-object v0, Lk/a/b/a/d/g0/i$a;->SIZE_0:Lk/a/b/a/d/g0/i$a;

    if-eq v5, v0, :cond_23

    .line 139
    sget-object v5, Lk/a/b/a/d/g0/i$a;->ERROR:Lk/a/b/a/d/g0/i$a;

    .line 140
    new-instance v7, Lk/a/b/a/d/d0;

    const-string v0, "connection aborted"

    invoke-direct {v7, v0}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;)V

    goto :goto_8

    .line 141
    :cond_23
    iget-object v0, v1, Lk/a/b/a/d/g0/i;->a:Lk/a/b/a/d/g0/h;

    check-cast v0, Lk/a/b/a/d/g0/a0;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/d/d0;)V

    .line 142
    :cond_24
    :goto_8
    iput-object v5, v1, Lk/a/b/a/d/g0/i;->h:Lk/a/b/a/d/g0/i$a;

    .line 143
    iput v2, v1, Lk/a/b/a/d/g0/i;->j:I

    .line 144
    sget-object v0, Lk/a/b/a/d/g0/i$a;->ERROR:Lk/a/b/a/d/g0/i$a;

    if-ne v5, v0, :cond_26

    .line 145
    iput-boolean v3, v1, Lk/a/b/a/d/g0/i;->g:Z

    if-eqz v7, :cond_25

    .line 146
    iget-object v0, v1, Lk/a/b/a/d/g0/i;->a:Lk/a/b/a/d/g0/h;

    check-cast v0, Lk/a/b/a/d/g0/a0;

    invoke-virtual {v0, v7}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/d/d0;)V

    goto :goto_9

    .line 147
    :cond_25
    new-instance v0, Lk/a/b/a/d/d0;

    const-string v2, "Unable to parse, probably because of a previous error"

    invoke-direct {v0, v2}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public capacity()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk/a/b/a/d/g0/i;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lk/a/b/a/d/g0/i;->f:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0

    .line 4
    :cond_1
    iget v0, p0, Lk/a/b/a/d/g0/i;->c:I

    return v0
.end method

.method public close_tail()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lk/a/b/a/d/g0/i;->g:Z

    .line 2
    invoke-virtual {p0}, Lk/a/b/a/d/g0/i;->process()V

    return-void
.end method

.method public position()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk/a/b/a/d/g0/i;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lk/a/b/a/d/g0/i;->f:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :goto_0
    return v0
.end method

.method public process()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/i;->f:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lk/a/b/a/d/g0/i;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Lk/a/b/a/d/g0/i;->a(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v1, p0, Lk/a/b/a/d/g0/i;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v0, p0, Lk/a/b/a/d/g0/i;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, p0, Lk/a/b/a/d/g0/i;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    sget v2, Lk/a/b/a/d/g0/a0;->B0:I

    if-le v1, v2, :cond_1

    .line 7
    iput-object v0, p0, Lk/a/b/a/d/g0/i;->f:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lk/a/b/a/d/g0/i;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 9
    iget-object v2, p0, Lk/a/b/a/d/g0/i;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_3

    .line 10
    iget-object v2, p0, Lk/a/b/a/d/g0/i;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    sget v3, Lk/a/b/a/d/g0/a0;->B0:I

    if-le v2, v3, :cond_2

    .line 11
    iput-object v0, p0, Lk/a/b/a/d/g0/i;->f:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lk/a/b/a/d/g0/i;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lk/a/b/a/d/g0/i;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 14
    :goto_0
    throw v1

    .line 15
    :cond_4
    sget-object v0, Lk/a/b/a/d/g0/i;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lk/a/b/a/d/g0/i;->a(Ljava/nio/ByteBuffer;)V

    :goto_1
    return-void
.end method

.method public tail()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lk/a/b/a/d/g0/i;->g:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/i;->f:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lk/a/b/a/d/g0/i;->c:I

    .line 4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lk/a/b/a/d/g0/i;->f:Ljava/nio/ByteBuffer;

    .line 6
    :cond_0
    iget-object v0, p0, Lk/a/b/a/d/g0/i;->f:Ljava/nio/ByteBuffer;

    return-object v0

    .line 7
    :cond_1
    new-instance v0, Lk/a/b/a/d/d0;

    const-string v1, "tail closed"

    invoke-direct {v0, v1}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;)V

    throw v0
.end method
