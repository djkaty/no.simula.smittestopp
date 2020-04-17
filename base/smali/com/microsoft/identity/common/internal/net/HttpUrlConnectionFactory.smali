.class public final Lcom/microsoft/identity/common/internal/net/HttpUrlConnectionFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static sMockedConnectionQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/net/HttpURLConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/internal/net/HttpUrlConnectionFactory;->sMockedConnectionQueue:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMockedConnection(Ljava/net/HttpURLConnection;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/net/HttpUrlConnectionFactory;->sMockedConnectionQueue:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static clearMockedConnectionQueue()V
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/net/HttpUrlConnectionFactory;->sMockedConnectionQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public static createHttpURLConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/net/HttpUrlConnectionFactory;->sMockedConnectionQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/microsoft/identity/common/internal/net/HttpUrlConnectionFactory;->sMockedConnectionQueue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    return-object p0
.end method

.method public static getMockedConnectionCountInQueue()I
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/net/HttpUrlConnectionFactory;->sMockedConnectionQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method
