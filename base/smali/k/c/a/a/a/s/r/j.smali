.class public Lk/c/a/a/a/s/r/j;
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

    const-string v1, "wss"

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
    .locals 10

    .line 2
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1bb

    const/16 v4, 0x1bb

    goto :goto_0

    :cond_0
    move v4, v0

    .line 4
    :goto_0
    iget-object v0, p2, Lk/c/a/a/a/i;->g:Ljavax/net/SocketFactory;

    const/4 v7, 0x0

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Lk/c/a/a/a/s/q/a;

    invoke-direct {v0}, Lk/c/a/a/a/s/q/a;-><init>()V

    .line 6
    iget-object v1, p2, Lk/c/a/a/a/i;->h:Ljava/util/Properties;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0, v1, v7}, Lk/c/a/a/a/s/q/a;->a(Ljava/util/Properties;Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-virtual {v0, v7}, Lk/c/a/a/a/s/q/a;->a(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_1

    .line 9
    :cond_2
    instance-of v1, v0, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_4

    move-object v8, v7

    .line 10
    :goto_1
    new-instance v9, Lk/c/a/a/a/s/r/i;

    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/SSLSocketFactory;

    .line 11
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    iget-object v6, p2, Lk/c/a/a/a/i;->q:Ljava/util/Properties;

    move-object v0, v9

    move-object v5, p3

    .line 13
    invoke-direct/range {v0 .. v6}, Lk/c/a/a/a/s/r/i;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Properties;)V

    .line 14
    iget p1, p2, Lk/c/a/a/a/i;->l:I

    .line 15
    iput p1, v9, Lk/c/a/a/a/s/n;->f:I

    .line 16
    iput p1, v9, Lk/c/a/a/a/s/l;->i:I

    .line 17
    iget-object p1, p2, Lk/c/a/a/a/i;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 18
    iput-object p1, v9, Lk/c/a/a/a/s/l;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 19
    iget-boolean p1, p2, Lk/c/a/a/a/i;->i:Z

    .line 20
    iput-boolean p1, v9, Lk/c/a/a/a/s/l;->k:Z

    if-eqz v8, :cond_3

    .line 21
    invoke-virtual {v8, v7}, Lk/c/a/a/a/s/q/a;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 22
    invoke-virtual {v9, p1}, Lk/c/a/a/a/s/l;->a([Ljava/lang/String;)V

    :cond_3
    return-object v9

    :cond_4
    const/16 p1, 0x7d69

    .line 23
    invoke-static {p1}, Lk/b/c/e/a;->a(I)Lk/c/a/a/a/k;

    move-result-object p1

    throw p1
.end method

.method public a(Ljava/net/URI;)V
    .locals 0

    return-void
.end method
