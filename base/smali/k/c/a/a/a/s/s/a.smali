.class public Lk/c/a/a/a/s/s/a;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public x:Ljava/io/InputStream;

.field public y:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    iput-object p1, p0, Lk/c/a/a/a/s/s/a;->x:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lk/c/a/a/a/s/s/a;->y:I

    return-void
.end method


# virtual methods
.method public read()I
    .locals 2

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/s/s/a;->x:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget v1, p0, Lk/c/a/a/a/s/s/a;->y:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lk/c/a/a/a/s/s/a;->y:I

    :cond_0
    return v0
.end method
