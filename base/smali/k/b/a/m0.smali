.class public Lk/b/a/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/b/a/y;


# instance fields
.field public x:Lk/b/a/z;


# direct methods
.method public constructor <init>(Lk/b/a/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/b/a/m0;->x:Lk/b/a/z;

    return-void
.end method


# virtual methods
.method public a()Lk/b/a/t;
    .locals 2

    new-instance v0, Lk/b/a/l0;

    iget-object v1, p0, Lk/b/a/m0;->x:Lk/b/a/z;

    invoke-virtual {v1}, Lk/b/a/z;->b()Lk/b/a/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lk/b/a/l0;-><init>(Lk/b/a/f;)V

    return-object v0
.end method

.method public c()Lk/b/a/t;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lk/b/a/m0;->a()Lk/b/a/t;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lk/b/a/s;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lk/b/a/s;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
