.class public Lk/c/a/a/a/s/s/o;
.super Lk/c/a/a/a/s/s/h;
.source "SourceFile"


# instance fields
.field public g:Lk/c/a/a/a/l;

.field public h:Ljava/lang/String;

.field public i:[B


# direct methods
.method public constructor <init>(B[B)V
    .locals 3

    const/4 v0, 0x3

    .line 5
    invoke-direct {p0, v0}, Lk/c/a/a/a/s/s/h;-><init>(B)V

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lk/c/a/a/a/s/s/o;->i:[B

    .line 7
    new-instance v1, Lk/c/a/a/a/s/s/p;

    invoke-direct {v1}, Lk/c/a/a/a/s/s/p;-><init>()V

    iput-object v1, p0, Lk/c/a/a/a/s/s/o;->g:Lk/c/a/a/a/l;

    shr-int/lit8 v2, p1, 0x1

    and-int/2addr v0, v2

    .line 8
    invoke-virtual {v1, v0}, Lk/c/a/a/a/l;->a(I)V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lk/c/a/a/a/s/s/o;->g:Lk/c/a/a/a/l;

    .line 10
    invoke-virtual {v0}, Lk/c/a/a/a/l;->a()V

    .line 11
    iput-boolean v1, v0, Lk/c/a/a/a/l;->d:Z

    :cond_0
    const/16 v0, 0x8

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    .line 12
    iget-object p1, p0, Lk/c/a/a/a/s/s/o;->g:Lk/c/a/a/a/l;

    check-cast p1, Lk/c/a/a/a/s/s/p;

    .line 13
    iput-boolean v1, p1, Lk/c/a/a/a/l;->e:Z

    .line 14
    :cond_1
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 15
    new-instance v0, Lk/c/a/a/a/s/s/a;

    invoke-direct {v0, p1}, Lk/c/a/a/a/s/s/a;-><init>(Ljava/io/InputStream;)V

    .line 16
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 17
    invoke-static {p1}, Lk/c/a/a/a/s/s/u;->a(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lk/c/a/a/a/s/s/o;->h:Ljava/lang/String;

    .line 18
    iget-object v1, p0, Lk/c/a/a/a/s/s/o;->g:Lk/c/a/a/a/l;

    .line 19
    iget v1, v1, Lk/c/a/a/a/l;->c:I

    if-lez v1, :cond_2

    .line 20
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lk/c/a/a/a/s/s/u;->b:I

    .line 21
    :cond_2
    array-length p2, p2

    .line 22
    iget v0, v0, Lk/c/a/a/a/s/s/a;->y:I

    sub-int/2addr p2, v0

    .line 23
    new-array p2, p2, [B

    .line 24
    invoke-virtual {p1, p2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 25
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V

    .line 26
    iget-object p1, p0, Lk/c/a/a/a/s/s/o;->g:Lk/c/a/a/a/l;

    invoke-virtual {p1, p2}, Lk/c/a/a/a/l;->a([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lk/c/a/a/a/l;)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lk/c/a/a/a/s/s/h;-><init>(B)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lk/c/a/a/a/s/s/o;->i:[B

    .line 3
    iput-object p1, p0, Lk/c/a/a/a/s/s/o;->h:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lk/c/a/a/a/s/s/o;->g:Lk/c/a/a/a/l;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lk/c/a/a/a/s/s/o;->k()[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Lk/c/a/a/a/k; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(I)V
    .locals 2

    .line 1
    iput p1, p0, Lk/c/a/a/a/s/s/u;->b:I

    .line 2
    iget-object v0, p0, Lk/c/a/a/a/s/s/o;->g:Lk/c/a/a/a/l;

    instance-of v1, v0, Lk/c/a/a/a/s/s/p;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lk/c/a/a/a/s/s/p;

    .line 4
    iput p1, v0, Lk/c/a/a/a/l;->f:I

    :cond_0
    return-void
.end method

.method public j()B
    .locals 2

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/s/s/o;->g:Lk/c/a/a/a/l;

    .line 2
    iget v1, v0, Lk/c/a/a/a/l;->c:I

    shl-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    .line 3
    iget-boolean v0, v0, Lk/c/a/a/a/l;->d:Z

    if-eqz v0, :cond_0

    or-int/lit8 v0, v1, 0x1

    int-to-byte v1, v0

    .line 4
    :cond_0
    iget-object v0, p0, Lk/c/a/a/a/s/s/o;->g:Lk/c/a/a/a/l;

    .line 5
    iget-boolean v0, v0, Lk/c/a/a/a/l;->e:Z

    if-nez v0, :cond_1

    .line 6
    iget-boolean v0, p0, Lk/c/a/a/a/s/s/u;->c:Z

    if-eqz v0, :cond_2

    :cond_1
    or-int/lit8 v0, v1, 0x8

    int-to-byte v1, v0

    :cond_2
    return v1
.end method

.method public k()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/s/s/o;->i:[B

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/c/a/a/a/s/s/o;->g:Lk/c/a/a/a/l;

    .line 3
    iget-object v0, v0, Lk/c/a/a/a/l;->b:[B

    .line 4
    iput-object v0, p0, Lk/c/a/a/a/s/s/o;->i:[B

    .line 5
    :cond_0
    iget-object v0, p0, Lk/c/a/a/a/s/s/o;->i:[B

    return-object v0
.end method

.method public l()[B
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3
    iget-object v2, p0, Lk/c/a/a/a/s/s/o;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lk/c/a/a/a/s/s/u;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lk/c/a/a/a/s/s/o;->g:Lk/c/a/a/a/l;

    .line 5
    iget v2, v2, Lk/c/a/a/a/l;->c:I

    if-lez v2, :cond_0

    .line 6
    iget v2, p0, Lk/c/a/a/a/s/s/u;->b:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 7
    :cond_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Lk/c/a/a/a/k;

    invoke-direct {v1, v0}, Lk/c/a/a/a/k;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    iget-object v1, p0, Lk/c/a/a/a/s/s/o;->g:Lk/c/a/a/a/l;

    .line 3
    iget-object v1, v1, Lk/c/a/a/a/l;->b:[B

    .line 4
    array-length v2, v1

    const/16 v3, 0x14

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v2, :cond_1

    .line 5
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v3, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v4, "?"

    .line 6
    :goto_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 7
    invoke-super {p0}, Lk/c/a/a/a/s/s/u;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " qos:"

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lk/c/a/a/a/s/s/o;->g:Lk/c/a/a/a/l;

    .line 9
    iget v3, v3, Lk/c/a/a/a/l;->c:I

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 11
    iget-object v3, p0, Lk/c/a/a/a/s/s/o;->g:Lk/c/a/a/a/l;

    .line 12
    iget v3, v3, Lk/c/a/a/a/l;->c:I

    if-lez v3, :cond_0

    const-string v3, " msgId:"

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lk/c/a/a/a/s/s/u;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    const-string v3, " retained:"

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lk/c/a/a/a/s/s/o;->g:Lk/c/a/a/a/l;

    .line 15
    iget-boolean v3, v3, Lk/c/a/a/a/l;->d:Z

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v3, " dup:"

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v3, p0, Lk/c/a/a/a/s/s/u;->c:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v3, " topic:\""

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lk/c/a/a/a/s/s/o;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " payload:[hex:"

    .line 19
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v0, " utf8:\""

    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " length:"

    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 23
    :cond_1
    aget-byte v5, v1, v4

    .line 24
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 26
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 27
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method
