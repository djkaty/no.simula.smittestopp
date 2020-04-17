.class public Lk/c/a/a/a/s/r/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/c/a/a/a/v/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "ws"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/net/URI;Lk/c/a/a/a/i;Ljava/lang/String;)Lk/c/a/a/a/s/i;
    .locals 8

    .line 2
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x50

    const/16 v4, 0x50

    goto :goto_0

    :cond_0
    move v4, v0

    .line 4
    :goto_0
    iget-object v0, p2, Lk/c/a/a/a/i;->g:Ljavax/net/SocketFactory;

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    goto :goto_1

    .line 6
    :cond_1
    instance-of v1, v0, Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_2

    :goto_1
    move-object v1, v0

    .line 7
    new-instance v7, Lk/c/a/a/a/s/r/f;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    iget-object v6, p2, Lk/c/a/a/a/i;->q:Ljava/util/Properties;

    move-object v0, v7

    move-object v5, p3

    .line 9
    invoke-direct/range {v0 .. v6}, Lk/c/a/a/a/s/r/f;-><init>(Ljavax/net/SocketFactory;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Properties;)V

    .line 10
    iget p1, p2, Lk/c/a/a/a/i;->l:I

    .line 11
    iput p1, v7, Lk/c/a/a/a/s/n;->f:I

    return-object v7

    :cond_2
    const/16 p1, 0x7d69

    .line 12
    invoke-static {p1}, Lk/b/c/e/a;->a(I)Lk/c/a/a/a/k;

    move-result-object p1

    throw p1
.end method

.method public a(Ljava/net/URI;)V
    .locals 0

    return-void
.end method
