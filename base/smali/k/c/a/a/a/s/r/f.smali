.class public Lk/c/a/a/a/s/r/f;
.super Lk/c/a/a/a/s/n;
.source "SourceFile"


# instance fields
.field public g:Lk/c/a/a/a/t/b;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I

.field public k:Ljava/util/Properties;

.field public l:Ljava/io/PipedInputStream;

.field public m:Lk/c/a/a/a/s/r/h;

.field public n:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Ljavax/net/SocketFactory;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Properties;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p3, p4, p5}, Lk/c/a/a/a/s/n;-><init>(Ljavax/net/SocketFactory;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "k.c.a.a.a.s.r.f"

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    .line 2
    invoke-static {v0, p1}, Lk/c/a/a/a/t/c;->a(Ljava/lang/String;Ljava/lang/String;)Lk/c/a/a/a/t/b;

    move-result-object p1

    iput-object p1, p0, Lk/c/a/a/a/s/r/f;->g:Lk/c/a/a/a/t/b;

    .line 3
    new-instance p1, Lk/c/a/a/a/s/r/b;

    invoke-direct {p1, p0}, Lk/c/a/a/a/s/r/b;-><init>(Lk/c/a/a/a/s/r/f;)V

    iput-object p1, p0, Lk/c/a/a/a/s/r/f;->n:Ljava/io/ByteArrayOutputStream;

    .line 4
    iput-object p2, p0, Lk/c/a/a/a/s/r/f;->h:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lk/c/a/a/a/s/r/f;->i:Ljava/lang/String;

    .line 6
    iput p4, p0, Lk/c/a/a/a/s/r/f;->j:I

    .line 7
    iput-object p6, p0, Lk/c/a/a/a/s/r/f;->k:Ljava/util/Properties;

    .line 8
    new-instance p1, Ljava/io/PipedInputStream;

    invoke-direct {p1}, Ljava/io/PipedInputStream;-><init>()V

    iput-object p1, p0, Lk/c/a/a/a/s/r/f;->l:Ljava/io/PipedInputStream;

    .line 9
    iget-object p1, p0, Lk/c/a/a/a/s/r/f;->g:Lk/c/a/a/a/t/b;

    invoke-interface {p1, p5}, Lk/c/a/a/a/t/b;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/OutputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/s/r/f;->n:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public b()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/s/r/f;->l:Ljava/io/PipedInputStream;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ws://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lk/c/a/a/a/s/r/f;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lk/c/a/a/a/s/r/f;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/io/OutputStream;
    .locals 1

    .line 1
    invoke-super {p0}, Lk/c/a/a/a/s/n;->a()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public start()V
    .locals 8

    .line 1
    invoke-super {p0}, Lk/c/a/a/a/s/n;->start()V

    .line 2
    new-instance v7, Lk/c/a/a/a/s/r/e;

    .line 3
    invoke-super {p0}, Lk/c/a/a/a/s/n;->b()Ljava/io/InputStream;

    move-result-object v1

    .line 4
    invoke-super {p0}, Lk/c/a/a/a/s/n;->a()Ljava/io/OutputStream;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lk/c/a/a/a/s/r/f;->h:Ljava/lang/String;

    iget-object v4, p0, Lk/c/a/a/a/s/r/f;->i:Ljava/lang/String;

    iget v5, p0, Lk/c/a/a/a/s/r/f;->j:I

    iget-object v6, p0, Lk/c/a/a/a/s/r/f;->k:Ljava/util/Properties;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lk/c/a/a/a/s/r/e;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;ILjava/util/Properties;)V

    .line 6
    invoke-virtual {v7}, Lk/c/a/a/a/s/r/e;->a()V

    .line 7
    new-instance v0, Lk/c/a/a/a/s/r/h;

    .line 8
    invoke-super {p0}, Lk/c/a/a/a/s/n;->b()Ljava/io/InputStream;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lk/c/a/a/a/s/r/f;->l:Ljava/io/PipedInputStream;

    invoke-direct {v0, v1, v2}, Lk/c/a/a/a/s/r/h;-><init>(Ljava/io/InputStream;Ljava/io/PipedInputStream;)V

    iput-object v0, p0, Lk/c/a/a/a/s/r/f;->m:Lk/c/a/a/a/s/r/h;

    const-string v1, "webSocketReceiver"

    .line 10
    invoke-virtual {v0, v1}, Lk/c/a/a/a/s/r/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 4

    .line 1
    new-instance v0, Lk/c/a/a/a/s/r/d;

    const-string v1, "1000"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lk/c/a/a/a/s/r/d;-><init>(BZ[B)V

    .line 2
    invoke-virtual {v0}, Lk/c/a/a/a/s/r/d;->a()[B

    move-result-object v0

    .line 3
    invoke-super {p0}, Lk/c/a/a/a/s/n;->a()Ljava/io/OutputStream;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 5
    invoke-super {p0}, Lk/c/a/a/a/s/n;->a()Ljava/io/OutputStream;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 7
    iget-object v0, p0, Lk/c/a/a/a/s/r/f;->m:Lk/c/a/a/a/s/r/h;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lk/c/a/a/a/s/r/h;->a()V

    .line 9
    :cond_0
    invoke-super {p0}, Lk/c/a/a/a/s/n;->stop()V

    return-void
.end method
