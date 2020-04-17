.class public Lk/a/b/a/g/i/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/nio/channels/Selector;

.field public final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lk/a/b/a/g/g;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lk/a/b/a/g/g;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lk/a/b/a/g/g;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lk/a/b/a/g/g;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lk/a/b/a/g/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk/a/b/a/g/i/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lk/a/b/a/g/i/k;->b:Ljava/util/HashSet;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lk/a/b/a/g/i/k;->c:Ljava/util/HashSet;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lk/a/b/a/g/i/k;->d:Ljava/util/HashSet;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lk/a/b/a/g/i/k;->e:Ljava/util/HashSet;

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lk/a/b/a/g/i/k;->f:Ljava/util/HashSet;

    if-eqz p1, :cond_0

    .line 7
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object p1

    .line 8
    iput-object p1, p0, Lk/a/b/a/g/i/k;->a:Ljava/nio/channels/Selector;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 9
    throw p1
.end method


# virtual methods
.method public a(Lk/a/b/a/g/g;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lk/a/b/a/g/g;->I()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1}, Lk/a/b/a/g/g;->I()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    instance-of v1, v1, Ljava/nio/channels/SocketChannel;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p1}, Lk/a/b/a/g/g;->I()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->isConnectionPending()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {p1}, Lk/a/b/a/g/g;->M()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {p1}, Lk/a/b/a/g/g;->I()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    instance-of v0, v0, Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 6
    :cond_2
    :goto_0
    invoke-interface {p1}, Lk/a/b/a/g/g;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x4

    .line 7
    :cond_3
    :goto_1
    invoke-interface {p1}, Lk/a/b/a/g/g;->I()Ljava/nio/channels/SelectableChannel;

    move-result-object p1

    iget-object v1, p0, Lk/a/b/a/g/i/k;->a:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v1}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_4
    return-void
.end method
