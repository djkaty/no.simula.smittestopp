.class public Lk/a/b/a/g/i/b;
.super Lk/a/b/a/d/a;
.source "SourceFile"


# static fields
.field public static a:Lk/a/b/a/g/g$a;

.field public static b:Lk/a/b/a/g/g$a;

.field public static c:Lk/a/b/a/g/g$a;

.field public static d:Lk/a/b/a/g/g$a;

.field public static e:Lk/a/b/a/g/g$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk/a/b/a/g/i/b$a;

    invoke-direct {v0}, Lk/a/b/a/g/i/b$a;-><init>()V

    sput-object v0, Lk/a/b/a/g/i/b;->a:Lk/a/b/a/g/g$a;

    .line 2
    new-instance v0, Lk/a/b/a/g/i/b$b;

    invoke-direct {v0}, Lk/a/b/a/g/i/b$b;-><init>()V

    sput-object v0, Lk/a/b/a/g/i/b;->b:Lk/a/b/a/g/g$a;

    .line 3
    new-instance v0, Lk/a/b/a/g/i/b$c;

    invoke-direct {v0}, Lk/a/b/a/g/i/b$c;-><init>()V

    sput-object v0, Lk/a/b/a/g/i/b;->c:Lk/a/b/a/g/g$a;

    .line 4
    new-instance v0, Lk/a/b/a/g/i/b$d;

    invoke-direct {v0}, Lk/a/b/a/g/i/b$d;-><init>()V

    sput-object v0, Lk/a/b/a/g/i/b;->d:Lk/a/b/a/g/g$a;

    .line 5
    new-instance v0, Lk/a/b/a/g/i/b$e;

    invoke-direct {v0}, Lk/a/b/a/g/i/b$e;-><init>()V

    sput-object v0, Lk/a/b/a/g/i/b;->e:Lk/a/b/a/g/g$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/a/b/a/d/a;-><init>()V

    return-void
.end method

.method public static a(Lk/a/b/a/g/g;)I
    .locals 2

    .line 124
    move-object v0, p0

    check-cast v0, Lk/a/b/a/g/i/j;

    .line 125
    iget-object v0, v0, Lk/a/b/a/g/i/j;->J:Lk/a/b/a/d/c0;

    .line 126
    invoke-interface {v0}, Lk/a/b/a/d/c0;->capacity()I

    move-result v1

    if-gez v1, :cond_0

    .line 127
    invoke-interface {v0}, Lk/a/b/a/d/c0;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {p0}, Lk/a/b/a/g/g;->p()V

    :cond_0
    return v1
.end method

.method public static b(Lk/a/b/a/g/g;)I
    .locals 2

    .line 39
    move-object v0, p0

    check-cast v0, Lk/a/b/a/g/i/j;

    .line 40
    iget-object v0, v0, Lk/a/b/a/g/i/j;->J:Lk/a/b/a/d/c0;

    .line 41
    invoke-interface {v0}, Lk/a/b/a/d/c0;->pending()I

    move-result v1

    if-gez v1, :cond_0

    .line 42
    invoke-interface {v0}, Lk/a/b/a/d/c0;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {p0}, Lk/a/b/a/g/g;->p()V

    :cond_0
    return v1
.end method

.method public static c(Lk/a/b/a/g/g;)V
    .locals 5

    .line 1
    move-object v0, p0

    check-cast v0, Lk/a/b/a/g/i/j;

    .line 2
    invoke-static {v0}, Lk/a/b/a/g/i/b;->a(Lk/a/b/a/g/g;)I

    move-result v1

    .line 3
    invoke-static {v0}, Lk/a/b/a/g/i/b;->b(Lk/a/b/a/g/g;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {p0, v1}, Lk/a/b/a/g/g;->a(Z)V

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 5
    :goto_1
    invoke-interface {p0, v3}, Lk/a/b/a/g/g;->b(Z)V

    .line 6
    iget-object v1, v0, Lk/a/b/a/g/i/j;->I:Lk/a/b/a/g/d;

    .line 7
    iget-object v0, v0, Lk/a/b/a/g/i/j;->J:Lk/a/b/a/d/c0;

    .line 8
    invoke-interface {v1}, Lk/a/b/a/g/d;->S()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lk/a/b/a/d/c0;->a(J)J

    move-result-wide v0

    .line 9
    invoke-interface {p0, v0, v1}, Lk/a/b/a/g/g;->c(J)V

    return-void
.end method


# virtual methods
.method public final a(Lk/a/b/a/g/d;Lk/a/b/a/d/h;)V
    .locals 13

    .line 57
    check-cast p2, Lk/a/b/a/d/g0/g;

    invoke-virtual {p2}, Lk/a/b/a/d/g0/g;->U()Lk/a/b/a/d/c;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Lk/a/b/a/d/j;->q()Lk/a/b/a/d/u;

    move-result-object v1

    .line 59
    const-class v2, Lk/a/b/a/g/a;

    check-cast v1, Lk/a/b/a/d/g0/r;

    .line 60
    iget-object v1, v1, Lk/a/b/a/d/g0/r;->a:Ljava/util/Map;

    const-string v3, "pn_reactor_connection_acceptor"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-interface {p1, v0}, Lk/a/b/a/g/d;->a(Lk/a/b/a/d/c;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-interface {v0}, Lk/a/b/a/d/c;->f()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1628

    const-string v3, "Not a valid host: "

    const/16 v4, 0x3a

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v1, :cond_b

    const-string v0, "://"

    .line 63
    invoke-virtual {v1, v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 64
    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move-object v2, v5

    :goto_0
    const-string v7, "/"

    .line 65
    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-ltz v7, :cond_2

    .line 66
    invoke-virtual {v1, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v7, v8

    .line 67
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/16 v7, 0x40

    .line 69
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_3

    .line 70
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/2addr v7, v8

    .line 71
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {v9, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_3

    .line 73
    invoke-virtual {v9, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    add-int/2addr v7, v8

    .line 74
    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    :cond_3
    const-string v7, "["

    .line 75
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x5d

    .line 76
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_5

    .line 77
    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v7, 0x1

    .line 78
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/lit8 v7, v7, 0x2

    .line 79
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_4
    move-object v7, v5

    goto :goto_2

    :cond_5
    move-object v7, v5

    move-object v9, v7

    :goto_2
    if-nez v9, :cond_6

    .line 80
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_7

    .line 81
    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v4, v8

    .line 82
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v12, v7

    move-object v7, v0

    move-object v0, v12

    goto :goto_3

    :cond_6
    move-object v0, v9

    :cond_7
    :goto_3
    const-string v4, "~"

    .line 83
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 84
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_8
    if-nez v7, :cond_a

    :try_start_0
    const-string v4, "amqps"

    .line 85
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v7, "5671"

    goto :goto_4

    :cond_9
    const-string v7, "5672"

    .line 86
    :cond_a
    :goto_4
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 87
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {v3, v1}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_b
    if-eqz v0, :cond_f

    const-string v1, ""

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 89
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_c

    add-int/lit8 v2, v1, 0x1

    .line 90
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :catch_1
    move-exception p1

    .line 92
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {v3, v0}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_c
    :goto_5
    move v1, v2

    .line 93
    :goto_6
    invoke-virtual {p2}, Lk/a/b/a/d/g0/g;->U()Lk/a/b/a/d/c;

    move-result-object p2

    invoke-interface {p2}, Lk/a/b/a/d/c;->l()Lk/a/b/a/d/c0;

    move-result-object p2

    .line 94
    :try_start_2
    move-object v2, p1

    check-cast v2, Lk/a/b/a/g/i/d;

    .line 95
    iget-object v2, v2, Lk/a/b/a/g/i/d;->M:Lk/a/b/a/g/i/c;

    if-eqz v2, :cond_d

    .line 96
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v2

    .line 97
    invoke-virtual {v2, v6}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 98
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 99
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    goto :goto_7

    .line 100
    :cond_d
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    .line 101
    new-instance v1, Lk/a/b/a/b/n/j;

    invoke-direct {v1}, Lk/a/b/a/b/n/j;-><init>()V

    const-string v2, "proton:io"

    .line 102
    invoke-static {v2}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk/a/b/a/b/n/j;->a(Lk/a/b/a/b/f;)V

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 104
    iput-object v0, v1, Lk/a/b/a/b/n/j;->b:Ljava/lang/String;

    .line 105
    invoke-interface {p2, v1}, Lk/a/b/a/d/f;->a(Lk/a/b/a/b/n/j;)V

    .line 106
    invoke-interface {p2}, Lk/a/b/a/d/c0;->close_tail()V

    .line 107
    invoke-interface {p2}, Lk/a/b/a/d/c0;->close_head()V

    .line 108
    invoke-interface {p2}, Lk/a/b/a/d/c0;->pending()I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {p2, v0}, Lk/a/b/a/d/c0;->pop(I)V

    move-object v0, v5

    .line 109
    :goto_7
    invoke-interface {p1}, Lk/a/b/a/g/d;->w()Lk/a/b/a/g/g;

    move-result-object v1

    if-eqz v0, :cond_e

    .line 110
    invoke-virtual {v0}, Ljava/net/Socket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v5

    :cond_e
    invoke-interface {v1, v5}, Lk/a/b/a/g/g;->a(Ljava/nio/channels/SelectableChannel;)V

    .line 111
    sget-object v0, Lk/a/b/a/g/i/b;->a:Lk/a/b/a/g/g$a;

    invoke-interface {v1, v0}, Lk/a/b/a/g/g;->a(Lk/a/b/a/g/g$a;)V

    .line 112
    sget-object v0, Lk/a/b/a/g/i/b;->b:Lk/a/b/a/g/g$a;

    invoke-interface {v1, v0}, Lk/a/b/a/g/g;->b(Lk/a/b/a/g/g$a;)V

    .line 113
    sget-object v0, Lk/a/b/a/g/i/b;->c:Lk/a/b/a/g/g$a;

    invoke-interface {v1, v0}, Lk/a/b/a/g/g;->d(Lk/a/b/a/g/g$a;)V

    .line 114
    sget-object v0, Lk/a/b/a/g/i/b;->d:Lk/a/b/a/g/g$a;

    invoke-interface {v1, v0}, Lk/a/b/a/g/g;->e(Lk/a/b/a/g/g$a;)V

    .line 115
    sget-object v0, Lk/a/b/a/g/i/b;->e:Lk/a/b/a/g/g$a;

    invoke-interface {v1, v0}, Lk/a/b/a/g/g;->c(Lk/a/b/a/g/g$a;)V

    .line 116
    move-object v0, v1

    check-cast v0, Lk/a/b/a/g/i/j;

    .line 117
    iput-object p2, v0, Lk/a/b/a/g/i/j;->J:Lk/a/b/a/d/c0;

    .line 118
    check-cast p2, Lk/a/b/a/d/g0/a0;

    .line 119
    iput-object v1, p2, Lk/a/b/a/d/g0/a0;->v0:Lk/a/b/a/g/g;

    .line 120
    iput-object p1, p2, Lk/a/b/a/d/g0/a0;->w0:Lk/a/b/a/g/d;

    .line 121
    invoke-static {v1}, Lk/a/b/a/g/i/b;->c(Lk/a/b/a/g/g;)V

    .line 122
    invoke-interface {p1, v1}, Lk/a/b/a/g/d;->a(Lk/a/b/a/g/g;)V

    return-void

    .line 123
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No address provided for Connection"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lk/a/b/a/g/d;Lk/a/b/a/g/i/k;)V
    .locals 13

    .line 1
    invoke-interface {p1}, Lk/a/b/a/g/d;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Lk/a/b/a/g/d;->h()J

    move-result-wide v0

    if-eqz p2, :cond_16

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_5

    .line 4
    iget-object v6, p2, Lk/a/b/a/g/i/k;->b:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v7, v4

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lk/a/b/a/g/g;

    .line 5
    invoke-interface {v9}, Lk/a/b/a/g/g;->Q()J

    move-result-wide v9

    cmp-long v11, v9, v4

    if-lez v11, :cond_1

    cmp-long v11, v7, v4

    if-nez v11, :cond_2

    move-wide v7, v9

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    goto :goto_0

    :cond_3
    cmp-long v6, v7, v4

    if-lez v6, :cond_5

    sub-long/2addr v7, v2

    cmp-long v6, v7, v4

    if-gez v6, :cond_4

    move-wide v0, v4

    goto :goto_1

    :cond_4
    cmp-long v6, v7, v0

    if-gez v6, :cond_5

    move-wide v0, v7

    .line 7
    :cond_5
    :goto_1
    iget-object v6, p2, Lk/a/b/a/g/i/k;->f:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    cmp-long v6, v0, v4

    if-lez v6, :cond_a

    move-wide v6, v4

    :goto_2
    cmp-long v8, v0, v4

    if-lez v8, :cond_b

    .line 8
    iget-object v6, p2, Lk/a/b/a/g/i/k;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v6, v0, v1}, Ljava/nio/channels/Selector;->select(J)I

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 10
    iget-object v8, p2, Lk/a/b/a/g/i/k;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v8}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 11
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/channels/SelectionKey;

    .line 12
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 13
    :try_start_0
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v10

    check-cast v10, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v10}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    .line 14
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lk/a/b/a/g/g;

    invoke-virtual {p2, v10}, Lk/a/b/a/g/i/k;->a(Lk/a/b/a/g/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v10

    .line 15
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lk/a/b/a/g/i/j;

    .line 16
    new-instance v11, Lk/a/b/a/b/n/j;

    invoke-direct {v11}, Lk/a/b/a/b/n/j;-><init>()V

    const-string v12, "proton:io"

    .line 17
    invoke-static {v12}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v12

    invoke-virtual {v11, v12}, Lk/a/b/a/b/n/j;->a(Lk/a/b/a/b/f;)V

    .line 18
    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 19
    iput-object v10, v11, Lk/a/b/a/b/n/j;->b:Ljava/lang/String;

    .line 20
    iget-object v10, v9, Lk/a/b/a/g/i/j;->J:Lk/a/b/a/d/c0;

    if-eqz v10, :cond_7

    .line 21
    invoke-interface {v10, v11}, Lk/a/b/a/d/f;->a(Lk/a/b/a/b/n/j;)V

    .line 22
    invoke-interface {v10}, Lk/a/b/a/d/c0;->close_tail()V

    .line 23
    invoke-interface {v10}, Lk/a/b/a/d/c0;->close_head()V

    const/4 v11, 0x0

    .line 24
    invoke-interface {v10}, Lk/a/b/a/d/c0;->pending()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-interface {v10, v11}, Lk/a/b/a/d/c0;->pop(I)V

    .line 25
    :cond_7
    iget-object v10, p2, Lk/a/b/a/g/i/k;->f:Ljava/util/HashSet;

    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 27
    :cond_8
    iget-object v8, p2, Lk/a/b/a/g/i/k;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v8}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_5

    :cond_9
    sub-long v8, v6, v2

    sub-long/2addr v0, v8

    goto/16 :goto_2

    .line 28
    :cond_a
    iget-object v0, p2, Lk/a/b/a/g/i/k;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 30
    :cond_b
    :goto_5
    iget-object v0, p2, Lk/a/b/a/g/i/k;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 31
    iget-object v0, p2, Lk/a/b/a/g/i/k;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 32
    iget-object v0, p2, Lk/a/b/a/g/i/k;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 33
    iget-object v0, p2, Lk/a/b/a/g/i/k;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 34
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/a/b/a/g/g;

    .line 35
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p2, Lk/a/b/a/g/i/k;->c:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_d
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p2, Lk/a/b/a/g/i/k;->c:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_e
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p2, Lk/a/b/a/g/i/k;->d:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 38
    :cond_f
    iget-object v0, p2, Lk/a/b/a/g/i/k;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 39
    iget-object v0, p2, Lk/a/b/a/g/i/k;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/g/g;

    .line 40
    invoke-interface {v1}, Lk/a/b/a/g/g;->Q()J

    move-result-wide v2

    cmp-long v8, v2, v4

    if-lez v8, :cond_10

    cmp-long v8, v6, v2

    if-ltz v8, :cond_10

    .line 41
    iget-object v2, p2, Lk/a/b/a/g/i/k;->e:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 42
    :cond_11
    invoke-interface {p1}, Lk/a/b/a/g/d;->n()J

    .line 43
    iget-object v0, p2, Lk/a/b/a/g/i/k;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 44
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/g/g;

    invoke-interface {v1}, Lk/a/b/a/g/g;->C()V

    goto :goto_8

    .line 46
    :cond_12
    iget-object v0, p2, Lk/a/b/a/g/i/k;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 47
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/g/g;

    invoke-interface {v1}, Lk/a/b/a/g/g;->u()V

    goto :goto_9

    .line 49
    :cond_13
    iget-object v0, p2, Lk/a/b/a/g/i/k;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 50
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/g/g;

    invoke-interface {v1}, Lk/a/b/a/g/g;->y()V

    goto :goto_a

    .line 52
    :cond_14
    iget-object p2, p2, Lk/a/b/a/g/i/k;->f:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 53
    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 54
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/b/a/g/g;

    invoke-interface {v0}, Lk/a/b/a/g/g;->N()V

    goto :goto_b

    .line 55
    :cond_15
    invoke-interface {p1}, Lk/a/b/a/g/d;->i()V

    return-void

    :cond_16
    const/4 p1, 0x0

    .line 56
    throw p1
.end method

.method public final b(Lk/a/b/a/g/d;Lk/a/b/a/d/h;)V
    .locals 9

    .line 1
    check-cast p2, Lk/a/b/a/d/g0/g;

    invoke-virtual {p2}, Lk/a/b/a/d/g0/g;->U()Lk/a/b/a/d/c;

    move-result-object p2

    .line 2
    invoke-interface {p2}, Lk/a/b/a/d/f;->e()Lk/a/b/a/d/g;

    move-result-object v0

    sget-object v1, Lk/a/b/a/d/g;->UNINITIALIZED:Lk/a/b/a/d/g;

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {p2}, Lk/a/b/a/d/c;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 4
    invoke-interface {p1, p2}, Lk/a/b/a/g/d;->a(Lk/a/b/a/d/c;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v2, 0x0

    const-string v3, "://"

    .line 5
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_1

    .line 6
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const-string v4, "/"

    .line 7
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ltz v4, :cond_2

    .line 8
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v4, v5

    .line 9
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    const/16 v0, 0x40

    .line 11
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v4, 0x3a

    if-ltz v0, :cond_3

    .line 12
    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/2addr v0, v5

    .line 13
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 15
    invoke-virtual {v6, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    add-int/2addr v0, v5

    .line 16
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    :cond_3
    const-string v0, "["

    .line 17
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x5d

    .line 18
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_4

    .line 19
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v0, 0x1

    .line 20
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    add-int/lit8 v0, v0, 0x2

    .line 21
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v6, v1

    :cond_5
    :goto_2
    if-nez v6, :cond_6

    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_7

    .line 23
    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v5

    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-object v3, v2

    goto :goto_3

    :cond_6
    move-object v3, v6

    :cond_7
    :goto_3
    const-string v0, "~"

    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 27
    :cond_8
    invoke-interface {p2, v3}, Lk/a/b/a/d/c;->c(Ljava/lang/String;)V

    goto :goto_4

    .line 28
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 29
    invoke-interface {p2, v1}, Lk/a/b/a/d/c;->c(Ljava/lang/String;)V

    .line 30
    :cond_a
    :goto_4
    new-instance v0, Lk/a/b/a/d/g0/a0;

    invoke-direct {v0}, Lk/a/b/a/d/g0/a0;-><init>()V

    .line 31
    invoke-interface {p1}, Lk/a/b/a/g/d;->B()Lk/a/b/a/g/f;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 32
    invoke-interface {p1}, Lk/a/b/a/g/d;->B()Lk/a/b/a/g/f;

    move-result-object p1

    .line 33
    iget-boolean p1, p1, Lk/a/b/a/g/f;->a:Z

    if-eqz p1, :cond_b

    .line 34
    invoke-interface {v0}, Lk/a/b/a/d/c0;->E()Lk/a/b/a/d/v;

    move-result-object p1

    .line 35
    check-cast p1, Lk/a/b/a/d/g0/v;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/v;->a()V

    const-string v1, "ANONYMOUS"

    .line 36
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lk/a/b/a/d/g0/v;->a([Ljava/lang/String;)V

    .line 37
    :cond_b
    invoke-interface {v0, p2}, Lk/a/b/a/d/c0;->b(Lk/a/b/a/d/c;)V

    return-void

    .line 38
    :cond_c
    throw v1
.end method

.method public onUnhandled(Lk/a/b/a/d/h;)V
    .locals 4

    .line 1
    check-cast p1, Lk/a/b/a/d/g0/g;

    :try_start_0
    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->b()Lk/a/b/a/g/d;

    move-result-object v0

    check-cast v0, Lk/a/b/a/g/i/d;

    .line 2
    iget-object v1, v0, Lk/a/b/a/g/i/d;->K:Lk/a/b/a/g/i/k;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lk/a/b/a/g/i/k;

    .line 4
    iget-object v2, v0, Lk/a/b/a/g/i/d;->M:Lk/a/b/a/g/i/c;

    .line 5
    invoke-direct {v1, v2}, Lk/a/b/a/g/i/k;-><init>(Lk/a/b/a/g/i/c;)V

    .line 6
    iput-object v1, v0, Lk/a/b/a/g/i/d;->K:Lk/a/b/a/g/i/k;

    .line 7
    :cond_0
    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->w()Lk/a/b/a/d/h$b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    const/4 v3, 0x5

    if-eq v2, v3, :cond_6

    const/4 v3, 0x7

    if-eq v2, v3, :cond_5

    const/16 v3, 0x1c

    if-eq v2, v3, :cond_4

    const/16 v0, 0x27

    if-eq v2, v0, :cond_2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 8
    :pswitch_0
    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->n()Lk/a/b/a/g/g;

    move-result-object p1

    .line 9
    invoke-virtual {v1, p1}, Lk/a/b/a/g/i/k;->a(Lk/a/b/a/g/g;)V

    goto/16 :goto_0

    .line 10
    :pswitch_1
    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->n()Lk/a/b/a/g/g;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Lk/a/b/a/g/g;->I()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    invoke-interface {p1}, Lk/a/b/a/g/g;->I()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 13
    invoke-interface {p1}, Lk/a/b/a/g/g;->I()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    iget-object v3, v1, Lk/a/b/a/g/i/k;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0, v3, v2}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_1
    iget-object v0, v1, Lk/a/b/a/g/i/k;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v1, p1}, Lk/a/b/a/g/i/k;->a(Lk/a/b/a/g/g;)V

    goto :goto_0

    .line 17
    :pswitch_2
    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->l()Lk/a/b/a/d/c0;

    move-result-object p1

    invoke-interface {p1}, Lk/a/b/a/d/c0;->v()V

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->n()Lk/a/b/a/g/g;

    move-result-object p1

    .line 19
    invoke-interface {p1}, Lk/a/b/a/g/g;->I()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 20
    invoke-interface {p1}, Lk/a/b/a/g/g;->I()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    iget-object v2, v1, Lk/a/b/a/g/i/k;->a:Ljava/nio/channels/Selector;

    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_3
    iget-object v0, v1, Lk/a/b/a/g/i/k;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 24
    invoke-interface {p1}, Lk/a/b/a/g/g;->c()V

    goto :goto_0

    .line 25
    :cond_4
    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->l()Lk/a/b/a/d/c0;

    move-result-object p1

    check-cast p1, Lk/a/b/a/d/g0/a0;

    .line 26
    iget-object p1, p1, Lk/a/b/a/d/g0/a0;->v0:Lk/a/b/a/g/g;

    if-eqz p1, :cond_8

    .line 27
    invoke-interface {p1}, Lk/a/b/a/g/g;->P()Z

    move-result v1

    if-nez v1, :cond_8

    .line 28
    invoke-static {p1}, Lk/a/b/a/g/i/b;->c(Lk/a/b/a/g/g;)V

    .line 29
    invoke-interface {v0, p1}, Lk/a/b/a/g/d;->a(Lk/a/b/a/g/g;)V

    goto :goto_0

    .line 30
    :cond_5
    invoke-virtual {p0, v0, p1}, Lk/a/b/a/g/i/b;->b(Lk/a/b/a/g/d;Lk/a/b/a/d/h;)V

    goto :goto_0

    .line 31
    :cond_6
    invoke-virtual {p0, v0, p1}, Lk/a/b/a/g/i/b;->a(Lk/a/b/a/g/d;Lk/a/b/a/d/h;)V

    goto :goto_0

    .line 32
    :cond_7
    invoke-virtual {p0, v0, v1}, Lk/a/b/a/g/i/b;->a(Lk/a/b/a/g/d;Lk/a/b/a/g/i/k;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 33
    new-instance v0, Lk/a/b/a/g/i/e;

    invoke-direct {v0, p1}, Lk/a/b/a/g/i/e;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
