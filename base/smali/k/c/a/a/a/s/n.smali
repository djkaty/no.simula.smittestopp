.class public Lk/c/a/a/a/s/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/c/a/a/a/s/i;


# instance fields
.field public a:Lk/c/a/a/a/t/b;

.field public b:Ljava/net/Socket;

.field public c:Ljavax/net/SocketFactory;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Ljavax/net/SocketFactory;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "k.c.a.a.a.s.n"

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    .line 2
    invoke-static {v1, v0}, Lk/c/a/a/a/t/c;->a(Ljava/lang/String;Ljava/lang/String;)Lk/c/a/a/a/t/b;

    move-result-object v0

    iput-object v0, p0, Lk/c/a/a/a/s/n;->a:Lk/c/a/a/a/t/b;

    .line 3
    invoke-interface {v0, p4}, Lk/c/a/a/a/t/b;->a(Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lk/c/a/a/a/s/n;->c:Ljavax/net/SocketFactory;

    .line 5
    iput-object p2, p0, Lk/c/a/a/a/s/n;->d:Ljava/lang/String;

    .line 6
    iput p3, p0, Lk/c/a/a/a/s/n;->e:I

    return-void
.end method


# virtual methods
.method public a()Ljava/io/OutputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/s/n;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/s/n;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tcp://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lk/c/a/a/a/s/n;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lk/c/a/a/a/s/n;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public start()V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lk/c/a/a/a/s/n;->a:Lk/c/a/a/a/t/b;

    const-string v1, "k.c.a.a.a.s.n"

    const-string v2, "start"

    const-string v3, "252"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lk/c/a/a/a/s/n;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lk/c/a/a/a/s/n;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lk/c/a/a/a/s/n;->f:I

    const/16 v7, 0x3e8

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lk/c/a/a/a/s/n;->d:Ljava/lang/String;

    iget v2, p0, Lk/c/a/a/a/s/n;->e:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 3
    iget-object v1, p0, Lk/c/a/a/a/s/n;->c:Ljavax/net/SocketFactory;

    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lk/c/a/a/a/s/n;->b:Ljava/net/Socket;

    .line 4
    iget v2, p0, Lk/c/a/a/a/s/n;->f:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 5
    iget-object v0, p0, Lk/c/a/a/a/s/n;->b:Ljava/net/Socket;

    invoke-virtual {v0, v7}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lk/c/a/a/a/s/n;->a:Lk/c/a/a/a/t/b;

    const-string v2, "k.c.a.a.a.s.n"

    const/4 v5, 0x0

    const-string v3, "start"

    const-string v4, "250"

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lk/c/a/a/a/t/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 7
    new-instance v1, Lk/c/a/a/a/k;

    const/16 v2, 0x7d67

    invoke-direct {v1, v2, v0}, Lk/c/a/a/a/k;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/s/n;->b:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_0
    return-void
.end method
