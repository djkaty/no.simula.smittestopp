.class public Lk/c/a/a/a/s/m;
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

    const-string v1, "ssl"

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
    .locals 6

    .line 5
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x22b3

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_2
    :goto_0
    iget-object p1, p2, Lk/c/a/a/a/i;->g:Ljavax/net/SocketFactory;

    const/4 v2, 0x0

    if-nez p1, :cond_4

    .line 11
    new-instance p1, Lk/c/a/a/a/s/q/a;

    invoke-direct {p1}, Lk/c/a/a/a/s/q/a;-><init>()V

    .line 12
    iget-object v3, p2, Lk/c/a/a/a/i;->h:Ljava/util/Properties;

    if-eqz v3, :cond_3

    .line 13
    invoke-virtual {p1, v3, v2}, Lk/c/a/a/a/s/q/a;->a(Ljava/util/Properties;Ljava/lang/String;)V

    .line 14
    :cond_3
    invoke-virtual {p1, v2}, Lk/c/a/a/a/s/q/a;->a(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    move-object v5, v3

    move-object v3, p1

    move-object p1, v5

    goto :goto_1

    .line 15
    :cond_4
    instance-of v3, p1, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v3, :cond_6

    move-object v3, v2

    .line 16
    :goto_1
    new-instance v4, Lk/c/a/a/a/s/l;

    check-cast p1, Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {v4, p1, v0, v1, p3}, Lk/c/a/a/a/s/l;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    iget p1, p2, Lk/c/a/a/a/i;->l:I

    .line 18
    iput p1, v4, Lk/c/a/a/a/s/n;->f:I

    .line 19
    iput p1, v4, Lk/c/a/a/a/s/l;->i:I

    .line 20
    iget-object p1, p2, Lk/c/a/a/a/i;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 21
    iput-object p1, v4, Lk/c/a/a/a/s/l;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 22
    iget-boolean p1, p2, Lk/c/a/a/a/i;->i:Z

    .line 23
    iput-boolean p1, v4, Lk/c/a/a/a/s/l;->k:Z

    if-eqz v3, :cond_5

    .line 24
    invoke-virtual {v3, v2}, Lk/c/a/a/a/s/q/a;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 25
    invoke-virtual {v4, p1}, Lk/c/a/a/a/s/l;->a([Ljava/lang/String;)V

    :cond_5
    return-object v4

    :cond_6
    const/16 p1, 0x7d69

    .line 26
    invoke-static {p1}, Lk/b/c/e/a;->a(I)Lk/c/a/a/a/k;

    move-result-object p1

    throw p1
.end method

.method public a(Ljava/net/URI;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
