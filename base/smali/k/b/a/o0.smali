.class public Lk/b/a/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/b/a/c0;


# instance fields
.field public x:Z

.field public y:I

.field public z:Lk/b/a/z;


# direct methods
.method public constructor <init>(ZILk/b/a/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lk/b/a/o0;->x:Z

    iput p2, p0, Lk/b/a/o0;->y:I

    iput-object p3, p0, Lk/b/a/o0;->z:Lk/b/a/z;

    return-void
.end method


# virtual methods
.method public a()Lk/b/a/t;
    .locals 3

    iget-object v0, p0, Lk/b/a/o0;->z:Lk/b/a/z;

    iget-boolean v1, p0, Lk/b/a/o0;->x:Z

    iget v2, p0, Lk/b/a/o0;->y:I

    invoke-virtual {v0, v1, v2}, Lk/b/a/z;->a(ZI)Lk/b/a/t;

    move-result-object v0

    return-object v0
.end method

.method public c()Lk/b/a/t;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lk/b/a/o0;->a()Lk/b/a/t;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lk/b/a/s;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lk/b/a/s;-><init>(Ljava/lang/String;)V

    throw v1
.end method
