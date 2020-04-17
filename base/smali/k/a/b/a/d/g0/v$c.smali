.class public Lk/a/b/a/d/g0/v$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/d/g0/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/d/g0/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:Lk/a/b/a/d/g0/b0;

.field public final b:Lk/a/b/a/d/g0/f0;

.field public c:Z

.field public final d:Ljava/nio/ByteBuffer;

.field public final e:Ljava/nio/ByteBuffer;

.field public final f:Ljava/nio/ByteBuffer;

.field public final g:Lk/a/b/a/d/g0/v$d;

.field public final synthetic h:Lk/a/b/a/d/g0/v;


# direct methods
.method public synthetic constructor <init>(Lk/a/b/a/d/g0/v;Lk/a/b/a/d/g0/v$d;Lk/a/b/a/d/g0/b0;Lk/a/b/a/d/g0/f0;Lk/a/b/a/d/g0/v$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/b/a/d/g0/v$c;->h:Lk/a/b/a/d/g0/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lk/a/b/a/d/g0/v$c;->a:Lk/a/b/a/d/g0/b0;

    .line 3
    iput-object p4, p0, Lk/a/b/a/d/g0/v$c;->b:Lk/a/b/a/d/g0/f0;

    .line 4
    iget p3, p1, Lk/a/b/a/d/g0/v;->g:I

    .line 5
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 6
    iput-object p3, p0, Lk/a/b/a/d/g0/v$c;->e:Ljava/nio/ByteBuffer;

    .line 7
    iget p3, p1, Lk/a/b/a/d/g0/v;->g:I

    .line 8
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 9
    iput-object p3, p0, Lk/a/b/a/d/g0/v$c;->d:Ljava/nio/ByteBuffer;

    .line 10
    iput-object p2, p0, Lk/a/b/a/d/g0/v$c;->g:Lk/a/b/a/d/g0/v$d;

    .line 11
    iget-object p1, p1, Lk/a/b/a/d/g0/v;->d:Lk/a/b/a/d/g0/a0;

    .line 12
    iget-boolean p1, p1, Lk/a/b/a/d/g0/a0;->g0:Z

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lk/a/b/a/d/g0/v$c;->f:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lk/a/b/a/d/g0/v$c;->f:Ljava/nio/ByteBuffer;

    .line 15
    :goto_0
    iget-object p1, p0, Lk/a/b/a/d/g0/v$c;->f:Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->h:Lk/a/b/a/d/g0/v;

    .line 2
    iget-object v1, v0, Lk/a/b/a/d/g0/v;->v:Lk/a/b/a/d/g0/v$b;

    if-eqz v1, :cond_2

    .line 3
    sget-object v2, Lk/a/b/a/d/g0/v$b;->CLIENT:Lk/a/b/a/d/g0/v$b;

    if-ne v1, v2, :cond_0

    .line 4
    iget-boolean v0, v0, Lk/a/b/a/d/g0/v;->s:Z

    if-eqz v0, :cond_2

    .line 5
    :cond_0
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->h:Lk/a/b/a/d/g0/v;

    .line 6
    iget-object v1, v0, Lk/a/b/a/d/g0/v;->v:Lk/a/b/a/d/g0/v$b;

    .line 7
    sget-object v2, Lk/a/b/a/d/g0/v$b;->SERVER:Lk/a/b/a/d/g0/v$b;

    if-ne v1, v2, :cond_1

    .line 8
    iget-boolean v1, v0, Lk/a/b/a/d/g0/v;->m:Z

    if-eqz v1, :cond_2

    .line 9
    iget-boolean v0, v0, Lk/a/b/a/d/g0/v;->s:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->h:Lk/a/b/a/d/g0/v;

    .line 2
    iget-object v1, v0, Lk/a/b/a/d/g0/v;->v:Lk/a/b/a/d/g0/v$b;

    if-eqz v1, :cond_2

    .line 3
    sget-object v2, Lk/a/b/a/d/g0/v$b;->CLIENT:Lk/a/b/a/d/g0/v$b;

    if-ne v1, v2, :cond_0

    .line 4
    iget-boolean v1, v0, Lk/a/b/a/d/g0/v;->s:Z

    if-eqz v1, :cond_2

    .line 5
    iget-boolean v0, v0, Lk/a/b/a/d/g0/v;->o:Z

    if-eqz v0, :cond_2

    .line 6
    :cond_0
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->h:Lk/a/b/a/d/g0/v;

    .line 7
    iget-object v0, v0, Lk/a/b/a/d/g0/v;->v:Lk/a/b/a/d/g0/v$b;

    .line 8
    sget-object v1, Lk/a/b/a/d/g0/v$b;->SERVER:Lk/a/b/a/d/g0/v$b;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lk/a/b/a/d/g0/v$c;->c:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final c()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lk/a/b/a/d/g0/v$c;->a()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    .line 2
    sget-object v0, Lk/a/b/a/d/g0/v;->y:Ljava/util/logging/Logger;

    .line 3
    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lk/a/b/a/d/g0/v;->y:Ljava/util/logging/Logger;

    .line 5
    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lk/a/b/a/d/g0/v$c;->h:Lk/a/b/a/d/g0/v;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " about to call input."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v0, v1, Lk/a/b/a/d/g0/v$c;->h:Lk/a/b/a/d/g0/v;

    .line 7
    iget-object v3, v0, Lk/a/b/a/d/g0/v;->l:Lk/a/b/a/d/g0/u;

    .line 8
    iget-object v0, v1, Lk/a/b/a/d/g0/v$c;->e:Ljava/nio/ByteBuffer;

    .line 9
    iget v4, v3, Lk/a/b/a/d/g0/u;->c:I

    .line 10
    iget-object v5, v3, Lk/a/b/a/d/g0/u;->b:Lk/a/b/a/d/g0/u$a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v9

    if-eqz v9, :cond_20

    sget-object v9, Lk/a/b/a/d/g0/u$a;->ERROR:Lk/a/b/a/d/g0/u$a;

    if-eq v5, v9, :cond_20

    iget-object v9, v3, Lk/a/b/a/d/g0/u;->a:Lk/a/b/a/d/g0/t;

    check-cast v9, Lk/a/b/a/d/g0/v;

    invoke-virtual {v9}, Lk/a/b/a/d/g0/v;->b()Z

    move-result v9

    if-nez v9, :cond_20

    .line 12
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    const/4 v10, 0x4

    const/16 v11, 0x8

    const-string v12, "AMQP SASL header mismatch value %x, expecting %x. In state: %s"

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x0

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_8

    .line 13
    :pswitch_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 14
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    .line 15
    sget-object v16, Lk/a/b/a/d/g0/b;->b:[B

    aget-byte v6, v16, v15

    if-eq v9, v6, :cond_2

    .line 16
    new-instance v7, Lk/a/b/a/d/d0;

    new-array v6, v13, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v6, v15

    sget-object v9, Lk/a/b/a/d/g0/b;->b:[B

    aget-byte v9, v9, v15

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v6, v2

    aput-object v5, v6, v14

    invoke-direct {v7, v12, v6}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    sget-object v5, Lk/a/b/a/d/g0/u$a;->ERROR:Lk/a/b/a/d/g0/u$a;

    goto :goto_0

    .line 18
    :cond_2
    sget-object v5, Lk/a/b/a/d/g0/u$a;->HEADER1:Lk/a/b/a/d/g0/u$a;

    .line 19
    :pswitch_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 20
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 21
    sget-object v9, Lk/a/b/a/d/g0/b;->b:[B

    aget-byte v9, v9, v2

    if-eq v6, v9, :cond_3

    .line 22
    new-instance v7, Lk/a/b/a/d/d0;

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v9, v15

    sget-object v6, Lk/a/b/a/d/g0/b;->b:[B

    aget-byte v6, v6, v2

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v9, v2

    aput-object v5, v9, v14

    invoke-direct {v7, v12, v9}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    sget-object v5, Lk/a/b/a/d/g0/u$a;->ERROR:Lk/a/b/a/d/g0/u$a;

    goto :goto_0

    .line 24
    :cond_3
    sget-object v5, Lk/a/b/a/d/g0/u$a;->HEADER2:Lk/a/b/a/d/g0/u$a;

    .line 25
    :pswitch_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 27
    sget-object v9, Lk/a/b/a/d/g0/b;->b:[B

    aget-byte v9, v9, v14

    if-eq v6, v9, :cond_4

    .line 28
    new-instance v7, Lk/a/b/a/d/d0;

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v9, v15

    sget-object v6, Lk/a/b/a/d/g0/b;->b:[B

    aget-byte v6, v6, v14

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v9, v2

    aput-object v5, v9, v14

    invoke-direct {v7, v12, v9}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    sget-object v5, Lk/a/b/a/d/g0/u$a;->ERROR:Lk/a/b/a/d/g0/u$a;

    goto/16 :goto_0

    .line 30
    :cond_4
    sget-object v5, Lk/a/b/a/d/g0/u$a;->HEADER3:Lk/a/b/a/d/g0/u$a;

    .line 31
    :pswitch_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 33
    sget-object v9, Lk/a/b/a/d/g0/b;->b:[B

    aget-byte v9, v9, v13

    if-eq v6, v9, :cond_5

    .line 34
    new-instance v7, Lk/a/b/a/d/d0;

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v9, v15

    sget-object v6, Lk/a/b/a/d/g0/b;->b:[B

    aget-byte v6, v6, v13

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v9, v2

    aput-object v5, v9, v14

    invoke-direct {v7, v12, v9}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    sget-object v5, Lk/a/b/a/d/g0/u$a;->ERROR:Lk/a/b/a/d/g0/u$a;

    goto/16 :goto_0

    .line 36
    :cond_5
    sget-object v5, Lk/a/b/a/d/g0/u$a;->HEADER4:Lk/a/b/a/d/g0/u$a;

    .line 37
    :pswitch_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 38
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 39
    sget-object v9, Lk/a/b/a/d/g0/b;->b:[B

    aget-byte v9, v9, v10

    if-eq v6, v9, :cond_6

    .line 40
    new-instance v7, Lk/a/b/a/d/d0;

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v9, v15

    sget-object v6, Lk/a/b/a/d/g0/b;->b:[B

    aget-byte v6, v6, v10

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v9, v2

    aput-object v5, v9, v14

    invoke-direct {v7, v12, v9}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    sget-object v5, Lk/a/b/a/d/g0/u$a;->ERROR:Lk/a/b/a/d/g0/u$a;

    goto/16 :goto_0

    .line 42
    :cond_6
    sget-object v5, Lk/a/b/a/d/g0/u$a;->HEADER5:Lk/a/b/a/d/g0/u$a;

    .line 43
    :pswitch_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 44
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 45
    sget-object v9, Lk/a/b/a/d/g0/b;->b:[B

    const/16 v16, 0x5

    aget-byte v9, v9, v16

    if-eq v6, v9, :cond_7

    .line 46
    new-instance v7, Lk/a/b/a/d/d0;

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v9, v15

    sget-object v6, Lk/a/b/a/d/g0/b;->b:[B

    aget-byte v6, v6, v16

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v9, v2

    aput-object v5, v9, v14

    invoke-direct {v7, v12, v9}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    sget-object v5, Lk/a/b/a/d/g0/u$a;->ERROR:Lk/a/b/a/d/g0/u$a;

    goto/16 :goto_0

    .line 48
    :cond_7
    sget-object v5, Lk/a/b/a/d/g0/u$a;->HEADER6:Lk/a/b/a/d/g0/u$a;

    .line 49
    :pswitch_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 50
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 51
    sget-object v9, Lk/a/b/a/d/g0/b;->b:[B

    const/16 v16, 0x6

    aget-byte v9, v9, v16

    if-eq v6, v9, :cond_8

    .line 52
    new-instance v7, Lk/a/b/a/d/d0;

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v9, v15

    sget-object v6, Lk/a/b/a/d/g0/b;->b:[B

    aget-byte v6, v6, v16

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v9, v2

    aput-object v5, v9, v14

    invoke-direct {v7, v12, v9}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    sget-object v5, Lk/a/b/a/d/g0/u$a;->ERROR:Lk/a/b/a/d/g0/u$a;

    goto/16 :goto_0

    .line 54
    :cond_8
    sget-object v5, Lk/a/b/a/d/g0/u$a;->HEADER7:Lk/a/b/a/d/g0/u$a;

    .line 55
    :pswitch_7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 56
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 57
    sget-object v9, Lk/a/b/a/d/g0/b;->b:[B

    const/16 v16, 0x7

    aget-byte v9, v9, v16

    if-eq v6, v9, :cond_9

    .line 58
    new-instance v7, Lk/a/b/a/d/d0;

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v9, v15

    sget-object v6, Lk/a/b/a/d/g0/b;->b:[B

    aget-byte v6, v6, v16

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v9, v2

    aput-object v5, v9, v14

    invoke-direct {v7, v12, v9}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    sget-object v5, Lk/a/b/a/d/g0/u$a;->ERROR:Lk/a/b/a/d/g0/u$a;

    goto/16 :goto_0

    .line 60
    :cond_9
    iget-object v5, v3, Lk/a/b/a/d/g0/u;->g:Lk/a/b/a/d/g0/a0;

    invoke-virtual {v5}, Lk/a/b/a/d/g0/a0;->X()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 61
    iget-object v5, v3, Lk/a/b/a/d/g0/u;->g:Lk/a/b/a/d/g0/a0;

    sget-object v6, Lk/a/b/a/d/g0/a0;->E0:Ljava/lang/String;

    const-string v9, "SASL"

    invoke-virtual {v5, v6, v9}, Lk/a/b/a/d/g0/a0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v5, v3, Lk/a/b/a/d/g0/u;->g:Lk/a/b/a/d/g0/a0;

    invoke-virtual {v5}, Lk/a/b/a/d/g0/a0;->V()Lk/a/b/a/d/g0/p;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 63
    invoke-interface {v5}, Lk/a/b/a/d/g0/p;->a()V

    .line 64
    :cond_a
    sget-object v5, Lk/a/b/a/d/g0/u$a;->SIZE_0:Lk/a/b/a/d/g0/u$a;

    .line 65
    :pswitch_8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-nez v6, :cond_b

    goto/16 :goto_0

    .line 66
    :cond_b
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-lt v4, v10, :cond_c

    .line 67
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 68
    sget-object v5, Lk/a/b/a/d/g0/u$a;->PRE_PARSE:Lk/a/b/a/d/g0/u$a;

    goto/16 :goto_0

    .line 69
    :cond_c
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    shl-int/lit8 v4, v4, 0x18

    const/high16 v5, -0x1000000

    and-int/2addr v4, v5

    .line 70
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_d

    .line 71
    sget-object v5, Lk/a/b/a/d/g0/u$a;->SIZE_1:Lk/a/b/a/d/g0/u$a;

    goto/16 :goto_0

    .line 72
    :cond_d
    :pswitch_9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    shl-int/lit8 v5, v5, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    .line 73
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_e

    .line 74
    sget-object v5, Lk/a/b/a/d/g0/u$a;->SIZE_2:Lk/a/b/a/d/g0/u$a;

    goto/16 :goto_0

    .line 75
    :cond_e
    :pswitch_a
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    shl-int/2addr v5, v11

    const v6, 0xff00

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    .line 76
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_f

    .line 77
    sget-object v5, Lk/a/b/a/d/g0/u$a;->SIZE_3:Lk/a/b/a/d/g0/u$a;

    goto/16 :goto_0

    .line 78
    :cond_f
    :pswitch_b
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 79
    sget-object v5, Lk/a/b/a/d/g0/u$a;->PRE_PARSE:Lk/a/b/a/d/g0/u$a;

    :pswitch_c
    if-ge v4, v11, :cond_10

    .line 80
    new-instance v7, Lk/a/b/a/d/d0;

    new-array v5, v2, [Ljava/lang/Object;

    .line 81
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v15

    const-string v6, "specified frame size %d smaller than minimum SASL frame header size 8"

    invoke-direct {v7, v6, v5}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    sget-object v5, Lk/a/b/a/d/g0/u$a;->ERROR:Lk/a/b/a/d/g0/u$a;

    goto/16 :goto_0

    .line 83
    :cond_10
    iget v6, v3, Lk/a/b/a/d/g0/u;->f:I

    if-le v4, v6, :cond_11

    .line 84
    new-instance v7, Lk/a/b/a/d/d0;

    new-array v5, v14, [Ljava/lang/Object;

    .line 85
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v15

    iget v6, v3, Lk/a/b/a/d/g0/u;->f:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "specified frame size %d larger than maximum SASL frame size %d"

    invoke-direct {v7, v6, v5}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    sget-object v5, Lk/a/b/a/d/g0/u$a;->ERROR:Lk/a/b/a/d/g0/u$a;

    goto/16 :goto_0

    .line 87
    :cond_11
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    add-int/lit8 v9, v4, -0x4

    if-ge v6, v9, :cond_12

    .line 88
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, v3, Lk/a/b/a/d/g0/u;->d:Ljava/nio/ByteBuffer;

    .line 89
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 90
    sget-object v5, Lk/a/b/a/d/g0/u$a;->BUFFERING:Lk/a/b/a/d/g0/u$a;

    goto/16 :goto_0

    .line 91
    :cond_12
    :pswitch_d
    iget-object v6, v3, Lk/a/b/a/d/g0/u;->d:Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_14

    .line 92
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    iget-object v9, v3, Lk/a/b/a/d/g0/u;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    if-ge v6, v9, :cond_13

    .line 93
    iget-object v6, v3, Lk/a/b/a/d/g0/u;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    .line 94
    :cond_13
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 95
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iget-object v8, v3, Lk/a/b/a/d/g0/u;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 96
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iget-object v8, v3, Lk/a/b/a/d/g0/u;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 97
    iget-object v6, v3, Lk/a/b/a/d/g0/u;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 98
    iget-object v5, v3, Lk/a/b/a/d/g0/u;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 99
    iget-object v5, v3, Lk/a/b/a/d/g0/u;->d:Ljava/nio/ByteBuffer;

    .line 100
    sget-object v6, Lk/a/b/a/d/g0/u$a;->PARSING:Lk/a/b/a/d/g0/u$a;

    move-object v8, v0

    move-object v0, v5

    .line 101
    :cond_14
    :pswitch_e
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    shl-int/2addr v5, v14

    and-int/lit16 v5, v5, 0x3ff

    if-ge v5, v11, :cond_15

    .line 102
    new-instance v7, Lk/a/b/a/d/d0;

    new-array v6, v14, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v15

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v2

    const-string v5, "specified frame data offset %d smaller than minimum frame header size %d"

    invoke-direct {v7, v5, v6}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    sget-object v5, Lk/a/b/a/d/g0/u$a;->ERROR:Lk/a/b/a/d/g0/u$a;

    goto/16 :goto_0

    :cond_15
    if-le v5, v4, :cond_16

    .line 104
    new-instance v7, Lk/a/b/a/d/d0;

    new-array v6, v14, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v2

    const-string v5, "specified frame data offset %d larger than the frame size %d"

    invoke-direct {v7, v5, v6}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    sget-object v5, Lk/a/b/a/d/g0/u$a;->ERROR:Lk/a/b/a/d/g0/u$a;

    goto/16 :goto_0

    .line 106
    :cond_16
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    .line 107
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 108
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    if-eq v6, v2, :cond_17

    .line 109
    new-instance v7, Lk/a/b/a/d/d0;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v15

    const-string v6, "unknown frame type: %d"

    invoke-direct {v7, v6, v5}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    sget-object v5, Lk/a/b/a/d/g0/u$a;->ERROR:Lk/a/b/a/d/g0/u$a;

    goto/16 :goto_0

    :cond_17
    if-eq v5, v11, :cond_18

    .line 111
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v5

    sub-int/2addr v6, v11

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_18
    if-nez v8, :cond_19

    .line 112
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 113
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v4

    sub-int/2addr v8, v5

    .line 114
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 115
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v8, v0

    goto :goto_1

    :cond_19
    move-object v6, v0

    .line 116
    :goto_1
    :try_start_0
    iget-object v0, v3, Lk/a/b/a/d/g0/u;->e:Lk/a/b/a/c/i;
    :try_end_0
    .catch Lk/a/b/a/c/q; {:try_start_0 .. :try_end_0} :catch_2

    check-cast v0, Lk/a/b/a/c/r;

    :try_start_1
    invoke-virtual {v0, v6}, Lk/a/b/a/c/r;->a(Ljava/nio/ByteBuffer;)V

    .line 117
    iget-object v0, v3, Lk/a/b/a/d/g0/u;->e:Lk/a/b/a/c/i;
    :try_end_1
    .catch Lk/a/b/a/c/q; {:try_start_1 .. :try_end_1} :catch_2

    check-cast v0, Lk/a/b/a/c/r;

    :try_start_2
    invoke-virtual {v0}, Lk/a/b/a/c/r;->d()Ljava/lang/Object;

    move-result-object v0

    .line 118
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 119
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    new-array v5, v5, [B

    .line 120
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 121
    new-instance v9, Lk/a/b/a/b/a;

    invoke-direct {v9, v5}, Lk/a/b/a/b/a;-><init>([B)V

    goto :goto_2

    :cond_1a
    const/4 v9, 0x0

    .line 122
    :goto_2
    instance-of v5, v0, Lk/a/b/a/b/l/c;

    if-eqz v5, :cond_1d

    .line 123
    check-cast v0, Lk/a/b/a/b/l/c;

    .line 124
    iget-object v5, v3, Lk/a/b/a/d/g0/u;->a:Lk/a/b/a/d/g0/t;

    check-cast v5, Lk/a/b/a/d/g0/v;

    .line 125
    iget-object v10, v5, Lk/a/b/a/d/g0/v;->d:Lk/a/b/a/d/g0/a0;

    sget-object v11, Lk/a/b/a/d/g0/a0;->E0:Ljava/lang/String;

    .line 126
    invoke-virtual {v10}, Lk/a/b/a/d/g0/a0;->Z()Z

    move-result v12

    if-eqz v12, :cond_1b

    const/4 v12, 0x0

    .line 127
    invoke-virtual {v10, v11, v15, v0, v12}, Lk/a/b/a/d/g0/a0;->a(Ljava/lang/String;ILjava/lang/Object;Lk/a/b/a/b/a;)V

    goto :goto_4

    :goto_3
    const/4 v10, 0x0

    goto :goto_6

    .line 128
    :cond_1b
    :goto_4
    iget-object v10, v5, Lk/a/b/a/d/g0/v;->d:Lk/a/b/a/d/g0/a0;

    invoke-virtual {v10}, Lk/a/b/a/d/g0/a0;->V()Lk/a/b/a/d/g0/p;

    move-result-object v10

    if-eqz v10, :cond_1c

    .line 129
    invoke-interface {v10}, Lk/a/b/a/d/g0/p;->c()V
    :try_end_2
    .catch Lk/a/b/a/c/q; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1c
    const/4 v10, 0x0

    .line 130
    :try_start_3
    invoke-interface {v0, v5, v9, v10}, Lk/a/b/a/b/l/c;->a(Lk/a/b/a/b/l/c$a;Lk/a/b/a/b/a;Ljava/lang/Object;)V

    .line 131
    iput v15, v3, Lk/a/b/a/d/g0/u;->c:I

    .line 132
    sget-object v0, Lk/a/b/a/d/g0/u$a;->SIZE_0:Lk/a/b/a/d/g0/u$a;

    iput-object v0, v3, Lk/a/b/a/d/g0/u;->b:Lk/a/b/a/d/g0/u$a;
    :try_end_3
    .catch Lk/a/b/a/c/q; {:try_start_3 .. :try_end_3} :catch_1

    .line 133
    :try_start_4
    iput-object v10, v3, Lk/a/b/a/d/g0/u;->d:Ljava/nio/ByteBuffer;

    .line 134
    sget-object v5, Lk/a/b/a/d/g0/u$a;->SIZE_0:Lk/a/b/a/d/g0/u$a;
    :try_end_4
    .catch Lk/a/b/a/c/q; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v8

    move-object v8, v10

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v6, v8

    move-object v8, v10

    goto :goto_6

    :cond_1d
    const/4 v10, 0x0

    .line 135
    :try_start_5
    sget-object v5, Lk/a/b/a/d/g0/u$a;->ERROR:Lk/a/b/a/d/g0/u$a;

    .line 136
    new-instance v7, Lk/a/b/a/d/d0;

    const-string v9, "Unexpected frame type encountered. Found a %s which does not implement %s"

    new-array v11, v14, [Ljava/lang/Object;

    if-nez v0, :cond_1e

    const-string v0, "null"

    goto :goto_5

    .line 137
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_5
    aput-object v0, v11, v15

    const-class v0, Lk/a/b/a/b/l/c;

    aput-object v0, v11, v2

    invoke-direct {v7, v9, v11}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Lk/a/b/a/c/q; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_3

    .line 138
    :goto_6
    sget-object v5, Lk/a/b/a/d/g0/u$a;->ERROR:Lk/a/b/a/d/g0/u$a;

    .line 139
    new-instance v7, Lk/a/b/a/d/d0;

    invoke-direct {v7, v0}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/Throwable;)V

    :goto_7
    move-object v0, v6

    goto/16 :goto_0

    :cond_1f
    :goto_8
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 140
    :cond_20
    iput-object v5, v3, Lk/a/b/a/d/g0/u;->b:Lk/a/b/a/d/g0/u$a;

    .line 141
    iput v4, v3, Lk/a/b/a/d/g0/u;->c:I

    .line 142
    sget-object v0, Lk/a/b/a/d/g0/u$a;->ERROR:Lk/a/b/a/d/g0/u$a;

    if-ne v5, v0, :cond_22

    if-eqz v7, :cond_21

    .line 143
    throw v7

    .line 144
    :cond_21
    new-instance v0, Lk/a/b/a/d/d0;

    const-string v2, "Unable to parse, probably because of a previous error"

    invoke-direct {v0, v2}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lk/a/b/a/d/g0/v$c;->a()Z

    move-result v0

    if-nez v0, :cond_27

    .line 146
    sget-object v0, Lk/a/b/a/d/g0/v;->y:Ljava/util/logging/Logger;

    .line 147
    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 148
    sget-object v0, Lk/a/b/a/d/g0/v;->y:Ljava/util/logging/Logger;

    .line 149
    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lk/a/b/a/d/g0/v$c;->h:Lk/a/b/a/d/g0/v;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " about to call plain input"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 150
    :cond_23
    iget-object v0, v1, Lk/a/b/a/d/g0/v$c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 151
    iget-object v0, v1, Lk/a/b/a/d/g0/v$c;->e:Ljava/nio/ByteBuffer;

    iget-object v3, v1, Lk/a/b/a/d/g0/v$c;->a:Lk/a/b/a/d/g0/b0;

    invoke-static {v0, v3}, Le/c/a/a/b/l/c;->a(Ljava/nio/ByteBuffer;Lk/a/b/a/d/g0/b0;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_24

    .line 152
    iget-object v0, v1, Lk/a/b/a/d/g0/v$c;->h:Lk/a/b/a/d/g0/v;

    .line 153
    iput-boolean v2, v0, Lk/a/b/a/d/g0/v;->e:Z

    .line 154
    :cond_24
    iget-object v0, v1, Lk/a/b/a/d/g0/v$c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_26

    .line 155
    iget-object v0, v1, Lk/a/b/a/d/g0/v$c;->g:Lk/a/b/a/d/g0/v$d;

    .line 156
    iget-object v2, v0, Lk/a/b/a/d/g0/v$d;->a:Lk/a/b/a/d/g0/b0;

    iput-object v2, v0, Lk/a/b/a/d/g0/v$d;->c:Lk/a/b/a/d/g0/b0;

    goto :goto_9

    .line 157
    :cond_25
    iget-object v0, v1, Lk/a/b/a/d/g0/v$c;->g:Lk/a/b/a/d/g0/v$d;

    .line 158
    iget-object v2, v0, Lk/a/b/a/d/g0/v$d;->a:Lk/a/b/a/d/g0/b0;

    iput-object v2, v0, Lk/a/b/a/d/g0/v$d;->c:Lk/a/b/a/d/g0/b0;

    .line 159
    :cond_26
    :goto_9
    iget-object v0, v1, Lk/a/b/a/d/g0/v$c;->a:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->process()V

    :cond_27
    return-void

    nop

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
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->h:Lk/a/b/a/d/g0/v;

    .line 2
    iget-boolean v0, v0, Lk/a/b/a/d/g0/v;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lk/a/b/a/d/g0/v$c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->a:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->capacity()I

    move-result v0

    return v0
.end method

.method public close_head()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->g:Lk/a/b/a/d/g0/v$d;

    .line 2
    iget-object v1, v0, Lk/a/b/a/d/g0/v$d;->b:Lk/a/b/a/d/g0/f0;

    iput-object v1, v0, Lk/a/b/a/d/g0/v$d;->d:Lk/a/b/a/d/g0/f0;

    .line 3
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->b:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->close_head()V

    return-void
.end method

.method public close_tail()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->h:Lk/a/b/a/d/g0/v;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lk/a/b/a/d/g0/v;->e:Z

    .line 3
    invoke-virtual {p0}, Lk/a/b/a/d/g0/v$c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->h:Lk/a/b/a/d/g0/v;

    .line 5
    iput-boolean v1, v0, Lk/a/b/a/d/g0/v;->f:Z

    .line 6
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->a:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->close_tail()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->a:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->close_tail()V

    :goto_0
    return-void
.end method

.method public head()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/v$c;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->g:Lk/a/b/a/d/g0/v$d;

    .line 3
    iget-object v1, v0, Lk/a/b/a/d/g0/v$d;->b:Lk/a/b/a/d/g0/f0;

    iput-object v1, v0, Lk/a/b/a/d/g0/v$d;->d:Lk/a/b/a/d/g0/f0;

    .line 4
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->b:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->head()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lk/a/b/a/d/g0/v$c;->pending()I

    .line 6
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->f:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public pending()I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/v$c;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->g:Lk/a/b/a/d/g0/v$d;

    .line 3
    iget-object v1, v0, Lk/a/b/a/d/g0/v$d;->b:Lk/a/b/a/d/g0/f0;

    iput-object v1, v0, Lk/a/b/a/d/g0/v$d;->d:Lk/a/b/a/d/g0/f0;

    .line 4
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->b:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->pending()I

    move-result v0

    return v0

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lk/a/b/a/d/g0/v$c;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 6
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->h:Lk/a/b/a/d/g0/v;

    .line 7
    iget-boolean v1, v0, Lk/a/b/a/d/g0/v;->j:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    .line 8
    iget-object v1, v0, Lk/a/b/a/d/g0/v;->d:Lk/a/b/a/d/g0/a0;

    invoke-virtual {v1}, Lk/a/b/a/d/g0/a0;->X()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, v0, Lk/a/b/a/d/g0/v;->d:Lk/a/b/a/d/g0/a0;

    sget-object v4, Lk/a/b/a/d/g0/a0;->F0:Ljava/lang/String;

    const-string v5, "SASL"

    invoke-virtual {v1, v4, v5}, Lk/a/b/a/d/g0/a0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v1, v0, Lk/a/b/a/d/g0/v;->d:Lk/a/b/a/d/g0/a0;

    invoke-virtual {v1}, Lk/a/b/a/d/g0/a0;->V()Lk/a/b/a/d/g0/p;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 11
    invoke-interface {v1}, Lk/a/b/a/d/g0/p;->d()V

    .line 12
    :cond_2
    iget-object v1, v0, Lk/a/b/a/d/g0/v;->h:Lk/a/b/a/d/g0/j;

    sget-object v4, Lk/a/b/a/d/g0/b;->b:[B

    .line 13
    iget-object v1, v1, Lk/a/b/a/d/g0/j;->c:Lk/a/b/a/d/g0/k;

    array-length v5, v4

    invoke-virtual {v1, v4, v2, v5}, Lk/a/b/a/d/g0/k;->a([BII)V

    .line 14
    iput-boolean v3, v0, Lk/a/b/a/d/g0/v;->j:Z

    .line 15
    sget-object v1, Lk/a/b/a/d/g0/b;->b:[B

    array-length v1, v1

    .line 16
    :cond_3
    iget-object v1, v0, Lk/a/b/a/d/g0/v;->v:Lk/a/b/a/d/g0/v$b;

    sget-object v4, Lk/a/b/a/d/g0/v$b;->SERVER:Lk/a/b/a/d/g0/v$b;

    const/4 v5, 0x0

    if-ne v1, v4, :cond_9

    .line 17
    iget-boolean v1, v0, Lk/a/b/a/d/g0/v;->n:Z

    if-nez v1, :cond_4

    iget-object v1, v0, Lk/a/b/a/d/g0/v;->t:[Lk/a/b/a/b/f;

    if-eqz v1, :cond_4

    .line 18
    new-instance v1, Lk/a/b/a/b/l/e;

    invoke-direct {v1}, Lk/a/b/a/b/l/e;-><init>()V

    .line 19
    iget-object v4, v0, Lk/a/b/a/d/g0/v;->t:[Lk/a/b/a/b/f;

    invoke-virtual {v1, v4}, Lk/a/b/a/b/l/e;->a([Lk/a/b/a/b/f;)V

    .line 20
    iget-object v4, v0, Lk/a/b/a/d/g0/v;->h:Lk/a/b/a/d/g0/j;

    .line 21
    invoke-virtual {v4, v2, v1, v5, v5}, Lk/a/b/a/d/g0/j;->a(ILjava/lang/Object;Lk/a/b/a/c/k0;Ljava/lang/Runnable;)V

    .line 22
    iput-boolean v3, v0, Lk/a/b/a/d/g0/v;->n:Z

    .line 23
    sget-object v1, Lk/a/b/a/d/v$b;->PN_SASL_STEP:Lk/a/b/a/d/v$b;

    iput-object v1, v0, Lk/a/b/a/d/g0/v;->q:Lk/a/b/a/d/v$b;

    .line 24
    :cond_4
    iget-object v1, v0, Lk/a/b/a/d/g0/v;->q:Lk/a/b/a/d/v$b;

    .line 25
    sget-object v4, Lk/a/b/a/d/v$b;->PN_SASL_STEP:Lk/a/b/a/d/v$b;

    if-ne v1, v4, :cond_6

    .line 26
    iget-object v1, v0, Lk/a/b/a/d/g0/v;->k:Lk/a/b/a/b/a;

    if-eqz v1, :cond_6

    .line 27
    new-instance v1, Lk/a/b/a/b/l/a;

    invoke-direct {v1}, Lk/a/b/a/b/l/a;-><init>()V

    .line 28
    iget-object v4, v0, Lk/a/b/a/d/g0/v;->k:Lk/a/b/a/b/a;

    if-eqz v4, :cond_5

    .line 29
    iput-object v4, v1, Lk/a/b/a/b/l/a;->a:Lk/a/b/a/b/a;

    .line 30
    iget-object v4, v0, Lk/a/b/a/d/g0/v;->h:Lk/a/b/a/d/g0/j;

    .line 31
    invoke-virtual {v4, v2, v1, v5, v5}, Lk/a/b/a/d/g0/j;->a(ILjava/lang/Object;Lk/a/b/a/c/k0;Ljava/lang/Runnable;)V

    .line 32
    iput-object v5, v0, Lk/a/b/a/d/g0/v;->k:Lk/a/b/a/b/a;

    goto :goto_1

    .line 33
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the challenge field is mandatory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_6
    :goto_1
    iget-boolean v1, v0, Lk/a/b/a/d/g0/v;->s:Z

    if-eqz v1, :cond_f

    .line 35
    new-instance v1, Lk/a/b/a/b/l/f;

    invoke-direct {v1}, Lk/a/b/a/b/l/f;-><init>()V

    .line 36
    invoke-static {}, Lk/a/b/a/b/l/b;->values()[Lk/a/b/a/b/l/b;

    move-result-object v4

    iget-object v6, v0, Lk/a/b/a/d/g0/v;->p:Lk/a/b/a/d/v$a;

    invoke-virtual {v6}, Lk/a/b/a/d/v$a;->getCode()B

    move-result v6

    aget-object v4, v4, v6

    if-eqz v4, :cond_8

    .line 37
    iput-object v4, v1, Lk/a/b/a/b/l/f;->a:Lk/a/b/a/b/l/b;

    .line 38
    iget-object v4, v0, Lk/a/b/a/d/g0/v;->p:Lk/a/b/a/d/v$a;

    sget-object v6, Lk/a/b/a/d/v;->a:Lk/a/b/a/d/v$a;

    if-ne v4, v6, :cond_7

    .line 39
    iget-object v4, v0, Lk/a/b/a/d/g0/v;->k:Lk/a/b/a/b/a;

    .line 40
    iput-object v4, v1, Lk/a/b/a/b/l/f;->b:Lk/a/b/a/b/a;

    .line 41
    :cond_7
    iget-object v4, v0, Lk/a/b/a/d/g0/v;->h:Lk/a/b/a/d/g0/j;

    .line 42
    invoke-virtual {v4, v2, v1, v5, v5}, Lk/a/b/a/d/g0/j;->a(ILjava/lang/Object;Lk/a/b/a/c/k0;Ljava/lang/Runnable;)V

    .line 43
    iput-object v5, v0, Lk/a/b/a/d/g0/v;->k:Lk/a/b/a/b/a;

    goto/16 :goto_4

    .line 44
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the code field is mandatory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_9
    sget-object v4, Lk/a/b/a/d/g0/v$b;->CLIENT:Lk/a/b/a/d/g0/v$b;

    if-ne v1, v4, :cond_f

    .line 46
    iget-object v1, v0, Lk/a/b/a/d/g0/v;->q:Lk/a/b/a/d/v$b;

    .line 47
    sget-object v4, Lk/a/b/a/d/v$b;->PN_SASL_IDLE:Lk/a/b/a/d/v$b;

    if-ne v1, v4, :cond_d

    iget-object v1, v0, Lk/a/b/a/d/g0/v;->u:Lk/a/b/a/b/f;

    if-eqz v1, :cond_d

    .line 48
    new-instance v1, Lk/a/b/a/b/l/d;

    invoke-direct {v1}, Lk/a/b/a/b/l/d;-><init>()V

    .line 49
    iget-object v4, v0, Lk/a/b/a/d/g0/v;->r:Ljava/lang/String;

    .line 50
    iput-object v4, v1, Lk/a/b/a/b/l/d;->c:Ljava/lang/String;

    .line 51
    iget-object v4, v0, Lk/a/b/a/d/g0/v;->u:Lk/a/b/a/b/f;

    if-eqz v4, :cond_c

    .line 52
    iput-object v4, v1, Lk/a/b/a/b/l/d;->a:Lk/a/b/a/b/f;

    .line 53
    iget-object v4, v0, Lk/a/b/a/d/g0/v;->k:Lk/a/b/a/b/a;

    if-eqz v4, :cond_a

    .line 54
    iput-object v4, v1, Lk/a/b/a/b/l/d;->b:Lk/a/b/a/b/a;

    .line 55
    iput-object v5, v0, Lk/a/b/a/d/g0/v;->k:Lk/a/b/a/b/a;

    .line 56
    :cond_a
    iput-boolean v3, v0, Lk/a/b/a/d/g0/v;->o:Z

    .line 57
    iget-object v4, v0, Lk/a/b/a/d/g0/v;->h:Lk/a/b/a/d/g0/j;

    .line 58
    invoke-virtual {v4, v2, v1, v5, v5}, Lk/a/b/a/d/g0/j;->a(ILjava/lang/Object;Lk/a/b/a/c/k0;Ljava/lang/Runnable;)V

    .line 59
    sget-object v1, Lk/a/b/a/d/v$b;->PN_SASL_STEP:Lk/a/b/a/d/v$b;

    iput-object v1, v0, Lk/a/b/a/d/g0/v;->q:Lk/a/b/a/d/v$b;

    .line 60
    iget-object v1, v0, Lk/a/b/a/d/g0/v;->p:Lk/a/b/a/d/v$a;

    sget-object v4, Lk/a/b/a/d/v$a;->PN_SASL_NONE:Lk/a/b/a/d/v$a;

    if-eq v1, v4, :cond_d

    .line 61
    sget-object v4, Lk/a/b/a/d/v$a;->PN_SASL_OK:Lk/a/b/a/d/v$a;

    if-ne v1, v4, :cond_b

    sget-object v1, Lk/a/b/a/d/v$b;->PN_SASL_PASS:Lk/a/b/a/d/v$b;

    goto :goto_2

    :cond_b
    sget-object v1, Lk/a/b/a/d/v$b;->PN_SASL_FAIL:Lk/a/b/a/d/v$b;

    .line 62
    :goto_2
    iput-object v1, v0, Lk/a/b/a/d/g0/v;->q:Lk/a/b/a/d/v$b;

    goto :goto_3

    .line 63
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the mechanism field is mandatory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_d
    :goto_3
    iget-object v1, v0, Lk/a/b/a/d/g0/v;->q:Lk/a/b/a/d/v$b;

    .line 65
    sget-object v4, Lk/a/b/a/d/v$b;->PN_SASL_STEP:Lk/a/b/a/d/v$b;

    if-ne v1, v4, :cond_f

    .line 66
    iget-object v1, v0, Lk/a/b/a/d/g0/v;->k:Lk/a/b/a/b/a;

    if-eqz v1, :cond_f

    .line 67
    new-instance v1, Lk/a/b/a/b/l/g;

    invoke-direct {v1}, Lk/a/b/a/b/l/g;-><init>()V

    .line 68
    iget-object v4, v0, Lk/a/b/a/d/g0/v;->k:Lk/a/b/a/b/a;

    if-eqz v4, :cond_e

    .line 69
    iput-object v4, v1, Lk/a/b/a/b/l/g;->a:Lk/a/b/a/b/a;

    .line 70
    iput-object v5, v0, Lk/a/b/a/d/g0/v;->k:Lk/a/b/a/b/a;

    .line 71
    iget-object v0, v0, Lk/a/b/a/d/g0/v;->h:Lk/a/b/a/d/g0/j;

    .line 72
    invoke-virtual {v0, v2, v1, v5, v5}, Lk/a/b/a/d/g0/j;->a(ILjava/lang/Object;Lk/a/b/a/c/k0;Ljava/lang/Runnable;)V

    goto :goto_4

    .line 73
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the response field is mandatory"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_f
    :goto_4
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->h:Lk/a/b/a/d/g0/v;

    .line 75
    iget-object v0, v0, Lk/a/b/a/d/g0/v;->h:Lk/a/b/a/d/g0/j;

    .line 76
    iget-object v1, p0, Lk/a/b/a/d/g0/v$c;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lk/a/b/a/d/g0/j;->a(Ljava/nio/ByteBuffer;)I

    .line 77
    sget-object v0, Lk/a/b/a/d/g0/v;->y:Ljava/util/logging/Logger;

    .line 78
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 79
    sget-object v0, Lk/a/b/a/d/g0/v;->y:Ljava/util/logging/Logger;

    .line 80
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "Finished writing SASL output. Output Buffer : "

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lk/a/b/a/d/g0/v$c;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 81
    :cond_10
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->h:Lk/a/b/a/d/g0/v;

    .line 82
    iget-boolean v0, v0, Lk/a/b/a/d/g0/v;->s:Z

    if-eqz v0, :cond_11

    .line 83
    iput-boolean v3, p0, Lk/a/b/a/d/g0/v$c;->c:Z

    .line 84
    :cond_11
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->f:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lk/a/b/a/d/g0/v$c;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 85
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->h:Lk/a/b/a/d/g0/v;

    .line 86
    iget-boolean v0, v0, Lk/a/b/a/d/g0/v;->f:Z

    if-eqz v0, :cond_12

    .line 87
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, -0x1

    return v0

    .line 88
    :cond_12
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public pop(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/v$c;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->g:Lk/a/b/a/d/g0/v$d;

    .line 3
    iget-object v1, v0, Lk/a/b/a/d/g0/v$d;->b:Lk/a/b/a/d/g0/f0;

    iput-object v1, v0, Lk/a/b/a/d/g0/v$d;->d:Lk/a/b/a/d/g0/f0;

    .line 4
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->b:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0, p1}, Lk/a/b/a/d/g0/f0;->pop(I)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 6
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    iget-object p1, p0, Lk/a/b/a/d/g0/v$c;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 8
    iget-object p1, p0, Lk/a/b/a/d/g0/v$c;->f:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    iget-object p1, p0, Lk/a/b/a/d/g0/v$c;->f:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_1
    return-void
.end method

.method public position()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->h:Lk/a/b/a/d/g0/v;

    .line 2
    iget-boolean v0, v0, Lk/a/b/a/d/g0/v;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lk/a/b/a/d/g0/v$c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->a:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->position()I

    move-result v0

    return v0
.end method

.method public process()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lk/a/b/a/d/g0/v$c;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lk/a/b/a/d/g0/v$c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 4
    throw v0
.end method

.method public tail()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/v$c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->a:Lk/a/b/a/d/g0/b0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/b0;->tail()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lk/a/b/a/d/g0/v$c;->e:Ljava/nio/ByteBuffer;

    return-object v0
.end method
