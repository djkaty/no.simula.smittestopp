.class public Lk/b/a/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/b/a/e;
.implements Lk/b/a/x1;


# instance fields
.field public final x:I

.field public final y:Lk/b/a/z;


# direct methods
.method public constructor <init>(ILk/b/a/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lk/b/a/f0;->x:I

    iput-object p2, p0, Lk/b/a/f0;->y:Lk/b/a/z;

    return-void
.end method


# virtual methods
.method public a()Lk/b/a/t;
    .locals 3

    new-instance v0, Lk/b/a/e0;

    iget v1, p0, Lk/b/a/f0;->x:I

    iget-object v2, p0, Lk/b/a/f0;->y:Lk/b/a/z;

    invoke-virtual {v2}, Lk/b/a/z;->b()Lk/b/a/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lk/b/a/e0;-><init>(ILk/b/a/f;)V

    return-object v0
.end method

.method public c()Lk/b/a/t;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lk/b/a/f0;->a()Lk/b/a/t;

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
