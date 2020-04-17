.class public abstract Lg/e/k/a;
.super Ljava/nio/channels/SocketChannel;
.source "SourceFile"

# interfaces
.implements Ljava/nio/channels/ByteChannel;
.implements Lg/b/a/g;


# static fields
.field public static final y:I

.field public static final z:I


# instance fields
.field public final x:Lg/e/k/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lg/a/d/f;->SHUT_RD:Lg/a/d/f;

    invoke-virtual {v0}, Lg/a/d/f;->intValue()I

    move-result v0

    sput v0, Lg/e/k/a;->y:I

    .line 2
    sget-object v0, Lg/a/d/f;->SHUT_WR:Lg/a/d/f;

    invoke-virtual {v0}, Lg/a/d/f;->intValue()I

    move-result v0

    sput v0, Lg/e/k/a;->z:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-static {}, Lg/b/a/h;->a()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 3
    new-instance v0, Lg/e/k/b;

    invoke-direct {v0, p1}, Lg/e/k/b;-><init>(I)V

    iput-object v0, p0, Lg/e/k/a;->x:Lg/e/k/b;

    return-void
.end method


# virtual methods
.method public final getFD()I
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/k/a;->x:Lg/e/k/b;

    .line 2
    iget v0, v0, Lg/e/k/b;->a:I

    return v0
.end method

.method public implCloseSelectableChannel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/k/a;->x:Lg/e/k/b;

    .line 2
    iget v0, v0, Lg/e/k/b;->a:I

    .line 3
    invoke-static {v0}, Le/c/a/a/b/l/c;->a(I)I

    return-void
.end method

.method public implConfigureBlocking(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lg/e/k/a;->x:Lg/e/k/b;

    .line 2
    iget v0, v0, Lg/e/k/b;->a:I

    .line 3
    sget-object v1, Lg/b/a/d;->a:Lg/b/a/c;

    .line 4
    sget v2, Lg/b/a/c;->a:I

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lg/b/a/c;->a(III)I

    move-result v1

    if-eqz p1, :cond_0

    .line 5
    sget p1, Lg/b/a/c;->c:I

    not-int p1, p1

    and-int/2addr p1, v1

    goto :goto_0

    .line 6
    :cond_0
    sget p1, Lg/b/a/c;->c:I

    or-int/2addr p1, v1

    .line 7
    :goto_0
    sget-object v1, Lg/b/a/d;->a:Lg/b/a/c;

    .line 8
    sget v2, Lg/b/a/c;->b:I

    invoke-interface {v1, v0, v2, p1}, Lg/b/a/c;->a(III)I

    return-void
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 9

    .line 1
    iget-object v0, p0, Lg/e/k/a;->x:Lg/e/k/b;

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_1

    add-int v4, p2, v3

    .line 2
    aget-object v4, p1, v4

    .line 3
    invoke-virtual {v0, v4}, Lg/e/k/b;->a(Ljava/nio/ByteBuffer;)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    move-wide v1, v4

    goto :goto_1

    :cond_0
    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-wide v1

    :cond_2
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public shutdownInput()Ljava/nio/channels/SocketChannel;
    .locals 3

    .line 1
    iget-object v0, p0, Lg/e/k/a;->x:Lg/e/k/b;

    .line 2
    iget v0, v0, Lg/e/k/b;->a:I

    .line 3
    sget v1, Lg/e/k/a;->y:I

    .line 4
    sget-object v2, Lg/b/a/d;->a:Lg/b/a/c;

    .line 5
    invoke-interface {v2, v0, v1}, Lg/b/a/c;->a(II)I

    move-result v0

    if-ltz v0, :cond_0

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Le/c/a/a/b/l/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shutdownOutput()Ljava/nio/channels/SocketChannel;
    .locals 3

    .line 1
    iget-object v0, p0, Lg/e/k/a;->x:Lg/e/k/b;

    .line 2
    iget v0, v0, Lg/e/k/b;->a:I

    .line 3
    sget v1, Lg/e/k/a;->z:I

    .line 4
    sget-object v2, Lg/b/a/d;->a:Lg/b/a/c;

    .line 5
    invoke-interface {v2, v0, v1}, Lg/b/a/c;->a(II)I

    move-result v0

    if-ltz v0, :cond_0

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Le/c/a/a/b/l/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
