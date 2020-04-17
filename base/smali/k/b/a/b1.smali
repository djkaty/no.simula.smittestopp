.class public Lk/b/a/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/b/a/q;


# instance fields
.field public x:Lk/b/a/w1;


# direct methods
.method public constructor <init>(Lk/b/a/w1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/b/a/b1;->x:Lk/b/a/w1;

    return-void
.end method


# virtual methods
.method public a()Lk/b/a/t;
    .locals 2

    new-instance v0, Lk/b/a/a1;

    iget-object v1, p0, Lk/b/a/b1;->x:Lk/b/a/w1;

    invoke-virtual {v1}, Lk/b/a/w1;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lk/b/a/a1;-><init>([B)V

    return-object v0
.end method

.method public b()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lk/b/a/b1;->x:Lk/b/a/w1;

    return-object v0
.end method

.method public c()Lk/b/a/t;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lk/b/a/a1;

    iget-object v1, p0, Lk/b/a/b1;->x:Lk/b/a/w1;

    invoke-virtual {v1}, Lk/b/a/w1;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lk/b/a/a1;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
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
