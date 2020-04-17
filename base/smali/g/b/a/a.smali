.class public Lg/b/a/a;
.super Ljava/nio/channels/spi/AbstractSelectionKey;
.source "SourceFile"


# instance fields
.field public final a:Lg/b/a/b;

.field public final b:Lg/b/a/g;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Lg/b/a/b;Lg/b/a/g;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractSelectionKey;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lg/b/a/a;->c:I

    .line 3
    iput v0, p0, Lg/b/a/a;->d:I

    .line 4
    iput-object p1, p0, Lg/b/a/a;->a:Lg/b/a/b;

    .line 5
    iput-object p2, p0, Lg/b/a/a;->b:Lg/b/a/g;

    .line 6
    iput p3, p0, Lg/b/a/a;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lg/b/a/a;->b:Lg/b/a/g;

    invoke-interface {v0}, Lg/b/a/g;->getFD()I

    move-result v0

    return v0
.end method

.method public channel()Ljava/nio/channels/SelectableChannel;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/b/a/a;->b:Lg/b/a/g;

    check-cast v0, Ljava/nio/channels/SelectableChannel;

    return-object v0
.end method

.method public interestOps()I
    .locals 1

    .line 1
    iget v0, p0, Lg/b/a/a;->c:I

    return v0
.end method

.method public interestOps(I)Ljava/nio/channels/SelectionKey;
    .locals 0

    .line 2
    iput p1, p0, Lg/b/a/a;->c:I

    .line 3
    iget-object p1, p0, Lg/b/a/a;->a:Lg/b/a/b;

    invoke-virtual {p1, p0}, Lg/b/a/b;->a(Lg/b/a/a;)V

    return-object p0
.end method

.method public readyOps()I
    .locals 1

    .line 1
    iget v0, p0, Lg/b/a/a;->d:I

    return v0
.end method

.method public selector()Ljava/nio/channels/Selector;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/b/a/a;->a:Lg/b/a/b;

    return-object v0
.end method
