.class public Lk/c/a/a/a/s/s/q;
.super Lk/c/a/a/a/s/s/b;
.source "SourceFile"


# instance fields
.field public g:[I


# direct methods
.method public constructor <init>([B)V
    .locals 3

    const/16 v0, 0x9

    .line 1
    invoke-direct {p0, v0}, Lk/c/a/a/a/s/s/b;-><init>(B)V

    .line 2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lk/c/a/a/a/s/s/u;->b:I

    .line 5
    array-length p1, p1

    add-int/lit8 p1, p1, -0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lk/c/a/a/a/s/s/q;->g:[I

    .line 6
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    return-void

    .line 8
    :cond_0
    iget-object v2, p0, Lk/c/a/a/a/s/s/q;->g:[I

    aput p1, v2, v0

    add-int/lit8 v0, v0, 0x1

    .line 9
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result p1

    goto :goto_0
.end method


# virtual methods
.method public l()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    invoke-super {p0}, Lk/c/a/a/a/s/s/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " granted Qos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    iget-object v1, p0, Lk/c/a/a/a/s/s/q;->g:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    aget v4, v1, v3

    const-string v5, " "

    .line 6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
