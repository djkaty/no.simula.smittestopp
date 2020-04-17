.class public final Lk/b/i/b/g/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk/b/i/b/g/v;

.field public final b:Lk/b/i/b/g/w;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(IILk/b/c/a;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lk/b/i/b/g/r;->c:I

    iput p2, p0, Lk/b/i/b/g/r;->d:I

    new-instance v0, Lk/b/i/b/g/w;

    const/4 v1, 0x2

    if-lt p1, v1, :cond_2

    .line 1
    rem-int v1, p1, p2

    if-nez v1, :cond_1

    div-int/2addr p1, p2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 2
    invoke-direct {v0, p1, p3}, Lk/b/i/b/g/w;-><init>(ILk/b/c/a;)V

    iput-object v0, p0, Lk/b/i/b/g/r;->b:Lk/b/i/b/g/w;

    .line 3
    iget-object v2, v0, Lk/b/i/b/g/w;->f:Ljava/lang/String;

    .line 4
    iget v3, v0, Lk/b/i/b/g/w;->g:I

    .line 5
    iget v4, v0, Lk/b/i/b/g/w;->e:I

    .line 6
    iget-object p1, v0, Lk/b/i/b/g/w;->h:Lk/b/i/b/g/m;

    .line 7
    iget v5, p1, Lk/b/i/b/g/m;->d:I

    .line 8
    iget v6, p0, Lk/b/i/b/g/r;->c:I

    move v7, p2

    .line 9
    invoke-static/range {v2 .. v7}, Lk/b/i/b/g/d;->b(Ljava/lang/String;IIIII)Lk/b/i/b/g/d;

    move-result-object p1

    iput-object p1, p0, Lk/b/i/b/g/r;->a:Lk/b/i/b/g/v;

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "height / layers must be greater than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "layers must divide totalHeight without remainder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "totalHeight must be > 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
