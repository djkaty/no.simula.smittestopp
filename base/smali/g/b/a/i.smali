.class public Lg/b/a/i;
.super Ljava/nio/channels/spi/AbstractSelectionKey;
.source "SourceFile"


# instance fields
.field public final a:Lg/b/a/j;

.field public final b:Lg/b/a/g;

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Lg/b/a/j;Lg/b/a/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractSelectionKey;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lg/b/a/i;->c:I

    .line 3
    iput v0, p0, Lg/b/a/i;->d:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lg/b/a/i;->e:I

    .line 5
    iput-object p1, p0, Lg/b/a/i;->a:Lg/b/a/j;

    .line 6
    iput-object p2, p0, Lg/b/a/i;->b:Lg/b/a/g;

    return-void
.end method


# virtual methods
.method public channel()Ljava/nio/channels/SelectableChannel;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/b/a/i;->b:Lg/b/a/g;

    check-cast v0, Ljava/nio/channels/SelectableChannel;

    return-object v0
.end method

.method public interestOps()I
    .locals 1

    .line 1
    iget v0, p0, Lg/b/a/i;->c:I

    return v0
.end method

.method public interestOps(I)Ljava/nio/channels/SelectionKey;
    .locals 2

    .line 2
    iput p1, p0, Lg/b/a/i;->c:I

    .line 3
    iget-object v0, p0, Lg/b/a/i;->a:Lg/b/a/j;

    if-eqz v0, :cond_2

    and-int/lit8 v1, p1, 0x11

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    int-to-short v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 p1, p1, 0xc

    if-eqz p1, :cond_1

    or-int/lit8 p1, v1, 0x4

    int-to-short v1, p1

    .line 4
    :cond_1
    iget p1, p0, Lg/b/a/i;->e:I

    .line 5
    invoke-virtual {v0, p1, v1}, Lg/b/a/j;->a(II)V

    return-object p0

    :cond_2
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public readyOps()I
    .locals 1

    .line 1
    iget v0, p0, Lg/b/a/i;->d:I

    return v0
.end method

.method public selector()Ljava/nio/channels/Selector;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/b/a/i;->a:Lg/b/a/j;

    return-object v0
.end method
