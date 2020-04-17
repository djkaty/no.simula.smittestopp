.class public Lk/c/a/a/a/s/s/s;
.super Lk/c/a/a/a/s/s/b;
.source "SourceFile"


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/16 v0, 0xb

    .line 1
    invoke-direct {p0, v0}, Lk/c/a/a/a/s/s/b;-><init>(B)V

    .line 2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lk/c/a/a/a/s/s/u;->b:I

    .line 5
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V

    return-void
.end method


# virtual methods
.method public l()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
