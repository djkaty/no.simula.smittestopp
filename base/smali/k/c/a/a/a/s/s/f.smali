.class public Lk/c/a/a/a/s/s/f;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public A:Ljava/io/DataInputStream;

.field public B:Ljava/io/ByteArrayOutputStream;

.field public C:I

.field public D:I

.field public E:[B

.field public final x:Ljava/lang/String;

.field public final y:Lk/c/a/a/a/t/b;

.field public z:Lk/c/a/a/a/s/b;


# direct methods
.method public constructor <init>(Lk/c/a/a/a/s/b;Ljava/io/InputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    const-class v0, Lk/c/a/a/a/s/s/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lk/c/a/a/a/s/s/f;->x:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    .line 3
    invoke-static {v1, v0}, Lk/c/a/a/a/t/c;->a(Ljava/lang/String;Ljava/lang/String;)Lk/c/a/a/a/t/b;

    move-result-object v0

    iput-object v0, p0, Lk/c/a/a/a/s/s/f;->y:Lk/c/a/a/a/t/b;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lk/c/a/a/a/s/s/f;->z:Lk/c/a/a/a/s/b;

    .line 5
    iput-object p1, p0, Lk/c/a/a/a/s/s/f;->z:Lk/c/a/a/a/s/b;

    .line 6
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lk/c/a/a/a/s/s/f;->A:Ljava/io/DataInputStream;

    .line 7
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lk/c/a/a/a/s/s/f;->B:Ljava/io/ByteArrayOutputStream;

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lk/c/a/a/a/s/s/f;->C:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/s/s/f;->B:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget v1, p0, Lk/c/a/a/a/s/s/f;->D:I

    add-int/2addr v0, v1

    .line 2
    iget v2, p0, Lk/c/a/a/a/s/s/f;->C:I

    sub-int/2addr v2, v1

    if-ltz v2, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v3, p0, Lk/c/a/a/a/s/s/f;->A:Ljava/io/DataInputStream;

    iget-object v4, p0, Lk/c/a/a/a/s/s/f;->E:[B

    add-int v5, v0, v1

    sub-int v6, v2, v1

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v3, :cond_1

    .line 4
    iget-object v4, p0, Lk/c/a/a/a/s/s/f;->z:Lk/c/a/a/a/s/b;

    invoke-virtual {v4, v3}, Lk/c/a/a/a/s/b;->a(I)V

    add-int/2addr v1, v3

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :catch_0
    move-exception v0

    .line 6
    iget v2, p0, Lk/c/a/a/a/s/s/f;->D:I

    add-int/2addr v2, v1

    iput v2, p0, Lk/c/a/a/a/s/s/f;->D:I

    .line 7
    throw v0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public available()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/s/s/f;->A:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    return v0
.end method

.method public b()Lk/c/a/a/a/s/s/u;
    .locals 7

    .line 1
    :try_start_0
    iget v0, p0, Lk/c/a/a/a/s/s/f;->C:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_1

    .line 2
    iget-object v0, p0, Lk/c/a/a/a/s/s/f;->B:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 3
    iget-object v0, p0, Lk/c/a/a/a/s/s/f;->A:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 4
    iget-object v3, p0, Lk/c/a/a/a/s/s/f;->z:Lk/c/a/a/a/s/b;

    invoke-virtual {v3, v1}, Lk/c/a/a/a/s/b;->a(I)V

    ushr-int/lit8 v3, v0, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    if-lt v3, v1, :cond_0

    const/16 v4, 0xe

    if-gt v3, v4, :cond_0

    .line 5
    iget-object v3, p0, Lk/c/a/a/a/s/s/f;->A:Ljava/io/DataInputStream;

    invoke-static {v3}, Lk/c/a/a/a/s/s/u;->b(Ljava/io/DataInputStream;)Lk/c/a/a/a/s/s/w;

    move-result-object v3

    .line 6
    iget v3, v3, Lk/c/a/a/a/s/s/w;->a:I

    .line 7
    iput v3, p0, Lk/c/a/a/a/s/s/f;->C:I

    .line 8
    iget-object v3, p0, Lk/c/a/a/a/s/s/f;->B:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 9
    iget-object v0, p0, Lk/c/a/a/a/s/s/f;->B:Ljava/io/ByteArrayOutputStream;

    iget v3, p0, Lk/c/a/a/a/s/s/f;->C:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Lk/c/a/a/a/s/s/u;->a(J)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 10
    iget-object v0, p0, Lk/c/a/a/a/s/s/f;->B:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget v3, p0, Lk/c/a/a/a/s/s/f;->C:I

    add-int/2addr v0, v3

    new-array v0, v0, [B

    iput-object v0, p0, Lk/c/a/a/a/s/s/f;->E:[B

    .line 11
    iput v2, p0, Lk/c/a/a/a/s/s/f;->D:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d6c

    .line 12
    invoke-static {v0}, Lk/b/c/e/a;->a(I)Lk/c/a/a/a/k;

    move-result-object v0

    throw v0

    .line 13
    :cond_1
    :goto_0
    iget v0, p0, Lk/c/a/a/a/s/s/f;->C:I

    if-ltz v0, :cond_2

    .line 14
    invoke-virtual {p0}, Lk/c/a/a/a/s/s/f;->a()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lk/c/a/a/a/s/s/f;->C:I

    .line 16
    iget-object v0, p0, Lk/c/a/a/a/s/s/f;->B:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 17
    iget-object v3, p0, Lk/c/a/a/a/s/s/f;->E:[B

    array-length v4, v0

    invoke-static {v0, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    iget-object v0, p0, Lk/c/a/a/a/s/s/f;->E:[B

    invoke-static {v0}, Lk/c/a/a/a/s/s/u;->a([B)Lk/c/a/a/a/s/s/u;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :try_start_1
    iget-object v3, p0, Lk/c/a/a/a/s/s/f;->y:Lk/c/a/a/a/t/b;

    iget-object v4, p0, Lk/c/a/a/a/s/s/f;->x:Ljava/lang/String;

    const-string v5, "readMqttWireMessage"

    const-string v6, "301"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-interface {v3, v4, v5, v6, v1}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    :cond_2
    const/4 v0, 0x0

    :catch_1
    :goto_1
    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/s/s/f;->A:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/s/s/f;->A:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    return v0
.end method
