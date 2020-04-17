.class public final Lk/b/i/b/g/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk/b/i/b/g/v;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Lk/b/a/o;


# direct methods
.method public constructor <init>(Lk/b/a/o;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    iput-object p1, p0, Lk/b/i/b/g/m;->g:Lk/b/a/o;

    invoke-static {p1}, Lk/b/i/b/g/f;->a(Lk/b/a/o;)Lk/b/c/a;

    move-result-object p1

    .line 1
    invoke-interface {p1}, Lk/b/c/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHAKE128"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const-string v1, "SHAKE256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x40

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lk/b/c/a;->b()I

    move-result v0

    .line 2
    :goto_0
    iput v0, p0, Lk/b/i/b/g/m;->b:I

    const/16 v1, 0x10

    iput v1, p0, Lk/b/i/b/g/m;->c:I

    mul-int/lit8 v0, v0, 0x8

    int-to-double v2, v0

    invoke-static {v1}, Lk/b/c/e/a;->d(I)I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lk/b/i/b/g/m;->e:I

    iget v1, p0, Lk/b/i/b/g/m;->c:I

    add-int/lit8 v1, v1, -0x1

    mul-int v1, v1, v0

    invoke-static {v1}, Lk/b/c/e/a;->d(I)I

    move-result v0

    iget v1, p0, Lk/b/i/b/g/m;->c:I

    invoke-static {v1}, Lk/b/c/e/a;->d(I)I

    move-result v1

    div-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lk/b/i/b/g/m;->f:I

    iget v1, p0, Lk/b/i/b/g/m;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lk/b/i/b/g/m;->d:I

    invoke-interface {p1}, Lk/b/c/a;->a()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lk/b/i/b/g/m;->b:I

    iget v2, p0, Lk/b/i/b/g/m;->c:I

    iget v3, p0, Lk/b/i/b/g/m;->d:I

    invoke-static {v0, v1, v2, v3}, Lk/b/i/b/g/l;->b(Ljava/lang/String;III)Lk/b/i/b/g/l;

    move-result-object v0

    iput-object v0, p0, Lk/b/i/b/g/m;->a:Lk/b/i/b/g/v;

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot find OID for digest algorithm: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lk/b/c/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "treeDigest == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
