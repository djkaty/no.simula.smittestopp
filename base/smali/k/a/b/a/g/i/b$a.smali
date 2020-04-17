.class public final Lk/a/b/a/g/i/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/g/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/g/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/a/b/a/g/g;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Lk/a/b/a/g/g;->b()Lk/a/b/a/g/d;

    move-result-object v0

    .line 2
    move-object v1, p1

    check-cast v1, Lk/a/b/a/g/i/j;

    .line 3
    iget-object v1, v1, Lk/a/b/a/g/i/j;->J:Lk/a/b/a/d/c0;

    .line 4
    invoke-interface {v1}, Lk/a/b/a/d/c0;->capacity()I

    move-result v2

    if-lez v2, :cond_1

    .line 5
    invoke-interface {p1}, Lk/a/b/a/g/g;->I()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SocketChannel;

    .line 6
    :try_start_0
    invoke-interface {v1}, Lk/a/b/a/d/c0;->tail()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 7
    invoke-interface {v1}, Lk/a/b/a/d/c0;->close_tail()V

    goto :goto_1

    .line 8
    :cond_0
    invoke-interface {v1}, Lk/a/b/a/d/c0;->process()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lk/a/b/a/d/d0; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 9
    :goto_0
    new-instance v3, Lk/a/b/a/b/n/j;

    invoke-direct {v3}, Lk/a/b/a/b/n/j;-><init>()V

    const-string v4, "proton:io"

    .line 10
    invoke-static {v4}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v4

    invoke-virtual {v3, v4}, Lk/a/b/a/b/n/j;->a(Lk/a/b/a/b/f;)V

    .line 11
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 12
    iput-object v2, v3, Lk/a/b/a/b/n/j;->b:Ljava/lang/String;

    .line 13
    invoke-interface {v1, v3}, Lk/a/b/a/d/f;->a(Lk/a/b/a/b/n/j;)V

    .line 14
    invoke-interface {v1}, Lk/a/b/a/d/c0;->close_tail()V

    .line 15
    :cond_1
    :goto_1
    invoke-static {p1}, Lk/a/b/a/g/i/b;->c(Lk/a/b/a/g/g;)V

    .line 16
    invoke-interface {v0, p1}, Lk/a/b/a/g/d;->a(Lk/a/b/a/g/g;)V

    return-void
.end method
