.class public Lk/a/b/a/d/g0/m0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/d/g0/m0/h;


# static fields
.field public static final l:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lk/a/b/a/d/g0/m0/b;

.field public final b:Lk/a/b/a/d/g0/b0;

.field public final c:Lk/a/b/a/d/g0/f0;

.field public d:Z

.field public e:Ljava/nio/ByteBuffer;

.field public f:Z

.field public g:Ljava/nio/ByteBuffer;

.field public h:Ljava/nio/ByteBuffer;

.field public i:Ljava/nio/ByteBuffer;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lk/a/b/a/d/g0/m0/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lk/a/b/a/d/g0/m0/d;->l:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lk/a/b/a/d/g0/m0/b;Lk/a/b/a/d/g0/b0;Lk/a/b/a/d/g0/f0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lk/a/b/a/d/g0/m0/d;->d:Z

    .line 3
    iput-boolean v0, p0, Lk/a/b/a/d/g0/m0/d;->f:Z

    .line 4
    iput-object p2, p0, Lk/a/b/a/d/g0/m0/d;->b:Lk/a/b/a/d/g0/b0;

    .line 5
    iput-object p3, p0, Lk/a/b/a/d/g0/m0/d;->c:Lk/a/b/a/d/g0/f0;

    .line 6
    iput-object p1, p0, Lk/a/b/a/d/g0/m0/d;->a:Lk/a/b/a/d/g0/m0/b;

    .line 7
    check-cast p1, Lk/a/b/a/d/g0/m0/a;

    .line 8
    iget-object p1, p1, Lk/a/b/a/d/g0/m0/a;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result p1

    add-int/lit8 p1, p1, 0x32

    .line 9
    iget-object p2, p0, Lk/a/b/a/d/g0/m0/d;->a:Lk/a/b/a/d/g0/m0/b;

    check-cast p2, Lk/a/b/a/d/g0/m0/a;

    .line 10
    iget-object p2, p2, Lk/a/b/a/d/g0/m0/a;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p2

    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result p2

    .line 11
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 12
    iput-object p3, p0, Lk/a/b/a/d/g0/m0/d;->e:Ljava/nio/ByteBuffer;

    .line 13
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 14
    iput-object p2, p0, Lk/a/b/a/d/g0/m0/d;->g:Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lk/a/b/a/d/g0/m0/d;->h:Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 17
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 18
    iput-object p1, p0, Lk/a/b/a/d/g0/m0/d;->i:Ljava/nio/ByteBuffer;

    .line 19
    sget-object p1, Lk/a/b/a/d/g0/m0/d;->l:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 20
    sget-object p1, Lk/a/b/a/d/g0/m0/d;->l:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Constructed "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    const/4 v0, -0x1

    const/4 v1, -0x1

    .line 1
    :goto_0
    iget-object v2, p0, Lk/a/b/a/d/g0/m0/d;->a:Lk/a/b/a/d/g0/m0/b;

    iget-object v3, p0, Lk/a/b/a/d/g0/m0/d;->e:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lk/a/b/a/d/g0/m0/d;->i:Ljava/nio/ByteBuffer;

    check-cast v2, Lk/a/b/a/d/g0/m0/a;

    .line 2
    iget-object v2, v2, Lk/a/b/a/d/g0/m0/a;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2, v3, v4}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    const-string v3, "input"

    .line 3
    invoke-virtual {p0, v2, v3}, Lk/a/b/a/d/g0/m0/d;->a(Ljavax/net/ssl/SSLEngineResult;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    .line 5
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    .line 6
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    .line 7
    iget-object v5, p0, Lk/a/b/a/d/g0/m0/d;->b:Lk/a/b/a/d/g0/b0;

    invoke-interface {v5}, Lk/a/b/a/d/g0/b0;->capacity()I

    move-result v5

    const-string v6, "bytes left unconsumed"

    const/4 v7, 0x1

    if-eq v5, v0, :cond_6

    if-gtz v5, :cond_0

    goto :goto_2

    .line 8
    :cond_0
    iget-object v8, p0, Lk/a/b/a/d/g0/m0/d;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 9
    :goto_1
    iget-object v8, p0, Lk/a/b/a/d/g0/m0/d;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v8

    if-eqz v8, :cond_2

    if-lez v5, :cond_2

    .line 10
    iget-object v8, p0, Lk/a/b/a/d/g0/m0/d;->b:Lk/a/b/a/d/g0/b0;

    invoke-interface {v8}, Lk/a/b/a/d/g0/b0;->tail()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 11
    iget-object v9, p0, Lk/a/b/a/d/g0/m0/d;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    .line 12
    iget-object v10, p0, Lk/a/b/a/d/g0/m0/d;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    sub-int/2addr v10, v5

    if-lez v10, :cond_1

    .line 13
    iget-object v5, p0, Lk/a/b/a/d/g0/m0/d;->i:Ljava/nio/ByteBuffer;

    sub-int v10, v9, v10

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 14
    :cond_1
    iget-object v5, p0, Lk/a/b/a/d/g0/m0/d;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 15
    iget-object v5, p0, Lk/a/b/a/d/g0/m0/d;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 16
    iget-object v5, p0, Lk/a/b/a/d/g0/m0/d;->b:Lk/a/b/a/d/g0/b0;

    invoke-interface {v5}, Lk/a/b/a/d/g0/b0;->process()V

    .line 17
    iget-object v5, p0, Lk/a/b/a/d/g0/m0/d;->b:Lk/a/b/a/d/g0/b0;

    invoke-interface {v5}, Lk/a/b/a/d/g0/b0;->capacity()I

    move-result v5

    goto :goto_1

    :cond_2
    if-eq v5, v0, :cond_3

    if-gtz v5, :cond_4

    .line 18
    :cond_3
    iput-boolean v7, p0, Lk/a/b/a/d/g0/m0/d;->d:Z

    .line 19
    iget-object v5, p0, Lk/a/b/a/d/g0/m0/d;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_5

    .line 20
    :cond_4
    iget-object v5, p0, Lk/a/b/a/d/g0/m0/d;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 21
    :cond_5
    new-instance v0, Lk/a/b/a/d/d0;

    invoke-direct {v0, v6}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_6
    :goto_2
    iput-boolean v7, p0, Lk/a/b/a/d/g0/m0/d;->d:Z

    .line 23
    iget-object v5, p0, Lk/a/b/a/d/g0/m0/d;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    if-gtz v5, :cond_12

    .line 24
    :goto_3
    sget-object v5, Lk/a/b/a/d/g0/m0/d$a;->a:[I

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x3

    const/4 v8, 0x2

    if-eq v5, v7, :cond_9

    if-eq v5, v8, :cond_8

    if-eq v5, v6, :cond_7

    goto :goto_4

    .line 25
    :cond_7
    iget-boolean v5, p0, Lk/a/b/a/d/g0/m0/d;->d:Z

    if-eqz v5, :cond_a

    .line 26
    iput-boolean v7, p0, Lk/a/b/a/d/g0/m0/d;->f:Z

    goto :goto_4

    .line 27
    :cond_8
    iget-object v2, p0, Lk/a/b/a/d/g0/m0/d;->i:Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    .line 29
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 30
    iput-object v3, p0, Lk/a/b/a/d/g0/m0/d;->i:Ljava/nio/ByteBuffer;

    .line 31
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 32
    iget-object v3, p0, Lk/a/b/a/d/g0/m0/d;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    .line 33
    :cond_9
    iput-boolean v7, p0, Lk/a/b/a/d/g0/m0/d;->d:Z

    .line 34
    :cond_a
    :goto_4
    sget-object v5, Lk/a/b/a/d/g0/m0/d$a;->b:[I

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v9

    aget v5, v5, v9

    if-eq v5, v7, :cond_f

    if-eq v5, v8, :cond_e

    if-eq v5, v6, :cond_b

    const/4 v2, 0x4

    if-eq v5, v2, :cond_c

    const/4 v2, 0x5

    if-eq v5, v2, :cond_c

    goto :goto_5

    .line 35
    :cond_b
    invoke-virtual {p0, v2}, Lk/a/b/a/d/g0/m0/d;->b(Ljavax/net/ssl/SSLEngineResult;)V

    .line 36
    :cond_c
    iget-object v2, p0, Lk/a/b/a/d/g0/m0/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-lez v2, :cond_d

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v3, v2, :cond_d

    goto/16 :goto_0

    .line 37
    :cond_d
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v4, v0, :cond_11

    iget-boolean v0, p0, Lk/a/b/a/d/g0/m0/d;->d:Z

    if-eqz v0, :cond_11

    .line 38
    iput-boolean v7, p0, Lk/a/b/a/d/g0/m0/d;->f:Z

    goto :goto_5

    .line 39
    :cond_e
    invoke-virtual {p0, v2}, Lk/a/b/a/d/g0/m0/d;->a(Ljavax/net/ssl/SSLEngineResult;)V

    goto/16 :goto_0

    .line 40
    :cond_f
    iget-object v2, p0, Lk/a/b/a/d/g0/m0/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_11

    .line 41
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v3, v4, :cond_11

    if-lt v2, v1, :cond_10

    if-gez v1, :cond_11

    .line 42
    :cond_10
    invoke-virtual {p0}, Lk/a/b/a/d/g0/m0/d;->pending()I

    move v1, v2

    goto/16 :goto_0

    :cond_11
    :goto_5
    return-void

    .line 43
    :cond_12
    new-instance v0, Lk/a/b/a/d/d0;

    invoke-direct {v0, v6}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljavax/net/ssl/SSLEngineResult;)V
    .locals 1

    .line 44
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_2

    .line 45
    :goto_0
    iget-object p1, p0, Lk/a/b/a/d/g0/m0/d;->a:Lk/a/b/a/d/g0/m0/b;

    check-cast p1, Lk/a/b/a/d/g0/m0/a;

    .line 46
    iget-object p1, p1, Lk/a/b/a/d/g0/m0/a;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 48
    :cond_0
    iget-object p1, p0, Lk/a/b/a/d/g0/m0/d;->a:Lk/a/b/a/d/g0/m0/b;

    check-cast p1, Lk/a/b/a/d/g0/m0/a;

    .line 49
    iget-object p1, p1, Lk/a/b/a/d/g0/m0/a;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    .line 50
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "handshake shouldn\'t need additional tasks"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(Ljavax/net/ssl/SSLEngineResult;Ljava/lang/String;)V
    .locals 4

    .line 52
    sget-object v0, Lk/a/b/a/d/g0/m0/d;->l:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lk/a/b/a/d/g0/m0/d;->l:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "useClientMode = "

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lk/a/b/a/d/g0/m0/d;->a:Lk/a/b/a/d/g0/m0/b;

    check-cast v3, Lk/a/b/a/d/g0/m0/a;

    .line 54
    iget-object v3, v3, Lk/a/b/a/d/g0/m0/a;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->getUseClientMode()Z

    move-result v3

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " direction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "[SSLEngineResult status = "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " handshakeStatus = "

    .line 57
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " bytesConsumed = "

    .line 58
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytesProduced = "

    .line 59
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    .line 60
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 8

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/d;->c:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->pending()I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_1

    .line 2
    iput-boolean v1, p0, Lk/a/b/a/d/g0/m0/d;->f:Z

    .line 3
    :cond_1
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/d;->c:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->head()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lk/a/b/a/d/g0/m0/d;->a:Lk/a/b/a/d/g0/m0/b;

    iget-object v3, p0, Lk/a/b/a/d/g0/m0/d;->g:Ljava/nio/ByteBuffer;

    check-cast v2, Lk/a/b/a/d/g0/m0/a;

    .line 5
    iget-object v2, v2, Lk/a/b/a/d/g0/m0/a;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2, v0, v3}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    const-string v2, "output"

    .line 6
    invoke-virtual {p0, v0, v2}, Lk/a/b/a/d/g0/m0/d;->a(Ljavax/net/ssl/SSLEngineResult;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v2

    .line 8
    iget-object v3, p0, Lk/a/b/a/d/g0/m0/d;->c:Lk/a/b/a/d/g0/f0;

    invoke-interface {v3, v2}, Lk/a/b/a/d/g0/f0;->pop(I)V

    .line 9
    iget-object v2, p0, Lk/a/b/a/d/g0/m0/d;->c:Lk/a/b/a/d/g0/f0;

    invoke-interface {v2}, Lk/a/b/a/d/g0/f0;->pending()I

    move-result v2

    .line 10
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    .line 11
    sget-object v4, Lk/a/b/a/d/g0/m0/d$a;->a:[I

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v4, v1, :cond_4

    if-eq v4, v6, :cond_3

    if-eq v4, v5, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "app buffer underflow"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_3
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/d;->g:Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 15
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 16
    iput-object v1, p0, Lk/a/b/a/d/g0/m0/d;->g:Ljava/nio/ByteBuffer;

    .line 17
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lk/a/b/a/d/g0/m0/d;->h:Ljava/nio/ByteBuffer;

    .line 18
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 19
    iget-object v1, p0, Lk/a/b/a/d/g0/m0/d;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 20
    :cond_4
    iput-boolean v1, p0, Lk/a/b/a/d/g0/m0/d;->f:Z

    .line 21
    :goto_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    .line 22
    sget-object v7, Lk/a/b/a/d/g0/m0/d$a;->b:[I

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v4

    aget v4, v7, v4

    if-eq v4, v1, :cond_0

    if-eq v4, v6, :cond_9

    if-eq v4, v5, :cond_6

    const/4 v0, 0x4

    if-eq v4, v0, :cond_7

    const/4 v0, 0x5

    if-eq v4, v0, :cond_5

    goto :goto_2

    .line 23
    :cond_5
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lk/a/b/a/d/g0/m0/d;->d:Z

    if-eqz v0, :cond_8

    .line 24
    iput-boolean v1, p0, Lk/a/b/a/d/g0/m0/d;->f:Z

    goto :goto_2

    .line 25
    :cond_6
    invoke-virtual {p0, v0}, Lk/a/b/a/d/g0/m0/d;->b(Ljavax/net/ssl/SSLEngineResult;)V

    :cond_7
    if-lez v2, :cond_8

    .line 26
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v3, v0, :cond_8

    goto/16 :goto_0

    :cond_8
    :goto_2
    return-void

    .line 27
    :cond_9
    invoke-virtual {p0, v0}, Lk/a/b/a/d/g0/m0/d;->a(Ljavax/net/ssl/SSLEngineResult;)V

    goto/16 :goto_0
.end method

.method public final b(Ljavax/net/ssl/SSLEngineResult;)V
    .locals 1

    .line 28
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_0

    .line 29
    iget-object p1, p0, Lk/a/b/a/d/g0/m0/d;->a:Lk/a/b/a/d/g0/m0/b;

    check-cast p1, Lk/a/b/a/d/g0/m0/a;

    .line 30
    iget-object p1, p1, Lk/a/b/a/d/g0/m0/a;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object p1

    .line 31
    iput-object p1, p0, Lk/a/b/a/d/g0/m0/d;->j:Ljava/lang/String;

    .line 32
    iget-object p1, p0, Lk/a/b/a/d/g0/m0/d;->a:Lk/a/b/a/d/g0/m0/b;

    check-cast p1, Lk/a/b/a/d/g0/m0/a;

    .line 33
    iget-object p1, p1, Lk/a/b/a/d/g0/m0/a;->a:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object p1

    .line 34
    iput-object p1, p0, Lk/a/b/a/d/g0/m0/d;->k:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public capacity()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk/a/b/a/d/g0/m0/d;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public close_head()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/d;->c:Lk/a/b/a/d/g0/f0;

    invoke-interface {v0}, Lk/a/b/a/d/g0/f0;->close_head()V

    .line 2
    invoke-virtual {p0}, Lk/a/b/a/d/g0/m0/d;->pending()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lk/a/b/a/d/g0/m0/d;->pop(I)V

    :cond_0
    return-void
.end method

.method public close_tail()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lk/a/b/a/d/g0/m0/d;->b:Lk/a/b/a/d/g0/b0;

    invoke-interface {v1}, Lk/a/b/a/d/g0/b0;->close_tail()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iput-boolean v0, p0, Lk/a/b/a/d/g0/m0/d;->d:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lk/a/b/a/d/g0/m0/d;->d:Z

    .line 3
    throw v1
.end method

.method public head()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a/b/a/d/g0/m0/d;->pending()I

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/d;->h:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public pending()I
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lk/a/b/a/d/g0/m0/d;->b()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lk/a/b/a/d/g0/m0/d;->l:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lk/a/b/a/d/g0/m0/d;->f:Z

    .line 4
    :goto_0
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/d;->h:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lk/a/b/a/d/g0/m0/d;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 5
    iget-boolean v0, p0, Lk/a/b/a/d/g0/m0/d;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk/a/b/a/d/g0/m0/d;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/d;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public pop(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/d;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/d;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3
    iget-object p1, p0, Lk/a/b/a/d/g0/m0/d;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 4
    iget-object p1, p0, Lk/a/b/a/d/g0/m0/d;->h:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    iget-object p1, p0, Lk/a/b/a/d/g0/m0/d;->h:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lk/a/b/a/d/g0/m0/d;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method public position()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk/a/b/a/d/g0/m0/d;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public process()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lk/a/b/a/d/g0/m0/d;->d:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lk/a/b/a/d/g0/m0/d;->a()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 5
    :try_start_1
    sget-object v1, Lk/a/b/a/d/g0/m0/d;->l:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    sget-object v1, Lk/a/b/a/d/g0/m0/d;->l:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Lk/a/b/a/d/g0/m0/d;->l:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 8
    :goto_0
    iget-object v1, p0, Lk/a/b/a/d/g0/m0/d;->e:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lk/a/b/a/d/g0/m0/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lk/a/b/a/d/g0/m0/d;->d:Z

    .line 10
    new-instance v1, Lk/a/b/a/d/d0;

    invoke-direct {v1, v0}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :goto_1
    iget-object v1, p0, Lk/a/b/a/d/g0/m0/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 12
    throw v0

    .line 13
    :cond_1
    new-instance v0, Lk/a/b/a/d/d0;

    const-string v1, "tail closed"

    invoke-direct {v0, v1}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tail()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lk/a/b/a/d/g0/m0/d;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/d;->e:Ljava/nio/ByteBuffer;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lk/a/b/a/d/d0;

    const-string v1, "tail closed"

    invoke-direct {v0, v1}, Lk/a/b/a/d/d0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "SimpleSslTransportWrapper [sslEngine="

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lk/a/b/a/d/g0/m0/d;->a:Lk/a/b/a/d/g0/m0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inputBuffer="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/d/g0/m0/d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputBuffer="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/d/g0/m0/d;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", decodedInputBuffer="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/d/g0/m0/d;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cipherName="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/d/g0/m0/d;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", protocolName="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/d/g0/m0/d;->k:Ljava/lang/String;

    const-string v2, "]"

    invoke-static {v0, v1, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
