.class public Lk/b/a/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/b/a/q;


# instance fields
.field public x:Lk/b/a/z;


# direct methods
.method public constructor <init>(Lk/b/a/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/b/a/i0;->x:Lk/b/a/z;

    return-void
.end method


# virtual methods
.method public a()Lk/b/a/t;
    .locals 7

    new-instance v0, Lk/b/a/h0;

    invoke-virtual {p0}, Lk/b/a/i0;->b()Ljava/io/InputStream;

    move-result-object v1

    .line 1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x1000

    new-array v4, v3, [B

    :goto_0
    const/4 v5, 0x0

    .line 2
    invoke-virtual {v1, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-ltz v6, :cond_0

    invoke-virtual {v2, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 4
    invoke-direct {v0, v1}, Lk/b/a/h0;-><init>([B)V

    return-object v0
.end method

.method public b()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Lk/b/a/p0;

    iget-object v1, p0, Lk/b/a/i0;->x:Lk/b/a/z;

    invoke-direct {v0, v1}, Lk/b/a/p0;-><init>(Lk/b/a/z;)V

    return-object v0
.end method

.method public c()Lk/b/a/t;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lk/b/a/i0;->a()Lk/b/a/t;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lk/b/a/s;

    const-string v2, "IOException converting stream to byte array: "

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lk/b/a/s;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
