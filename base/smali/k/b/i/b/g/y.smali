.class public final Lk/b/i/b/g/y;
.super Lk/b/i/b/g/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/b/i/b/g/y$b;
    }
.end annotation


# instance fields
.field public final b:Lk/b/i/b/g/w;

.field public final c:I

.field public final d:[B

.field public final e:[B


# direct methods
.method public synthetic constructor <init>(Lk/b/i/b/g/y$b;Lk/b/i/b/g/y$a;)V
    .locals 4

    .line 1
    iget-object p2, p1, Lk/b/i/b/g/y$b;->a:Lk/b/i/b/g/w;

    .line 2
    iget-object p2, p2, Lk/b/i/b/g/w;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p2}, Lk/b/i/b/g/p;-><init>(ZLjava/lang/String;)V

    .line 4
    iget-object p2, p1, Lk/b/i/b/g/y$b;->a:Lk/b/i/b/g/w;

    .line 5
    iput-object p2, p0, Lk/b/i/b/g/y;->b:Lk/b/i/b/g/w;

    if-eqz p2, :cond_8

    .line 6
    iget v1, p2, Lk/b/i/b/g/w;->g:I

    .line 7
    iget-object v2, p1, Lk/b/i/b/g/y$b;->d:[B

    if-eqz v2, :cond_2

    .line 8
    array-length p1, v2

    add-int p2, v1, v1

    if-ne p1, p2, :cond_0

    iput v0, p0, Lk/b/i/b/g/y;->c:I

    invoke-static {v2, v0, v1}, Lk/b/c/e/a;->b([BII)[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/b/g/y;->d:[B

    add-int/lit8 p1, v1, 0x0

    invoke-static {v2, p1, v1}, Lk/b/c/e/a;->b([BII)[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/b/g/y;->e:[B

    goto :goto_2

    :cond_0
    array-length p1, v2

    add-int/lit8 p2, v1, 0x4

    add-int v3, p2, v1

    if-ne p1, v3, :cond_1

    invoke-static {v2, v0}, Lk/b/c/e/a;->b([BI)I

    move-result p1

    iput p1, p0, Lk/b/i/b/g/y;->c:I

    const/4 p1, 0x4

    invoke-static {v2, p1, v1}, Lk/b/c/e/a;->b([BII)[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/b/g/y;->d:[B

    invoke-static {v2, p2, v1}, Lk/b/c/e/a;->b([BII)[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/b/g/y;->e:[B

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "public key has wrong size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    iget-object p2, p2, Lk/b/i/b/g/w;->a:Lk/b/i/b/g/v;

    if-eqz p2, :cond_3

    .line 10
    invoke-interface {p2}, Lk/b/i/b/g/v;->a()I

    move-result p2

    iput p2, p0, Lk/b/i/b/g/y;->c:I

    goto :goto_0

    :cond_3
    iput v0, p0, Lk/b/i/b/g/y;->c:I

    .line 11
    :goto_0
    iget-object p2, p1, Lk/b/i/b/g/y$b;->b:[B

    if-eqz p2, :cond_5

    .line 12
    array-length v0, p2

    if-ne v0, v1, :cond_4

    iput-object p2, p0, Lk/b/i/b/g/y;->d:[B

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length of root must be equal to length of digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-array p2, v1, [B

    iput-object p2, p0, Lk/b/i/b/g/y;->d:[B

    .line 13
    :goto_1
    iget-object p1, p1, Lk/b/i/b/g/y$b;->c:[B

    if-eqz p1, :cond_7

    .line 14
    array-length p2, p1

    if-ne p2, v1, :cond_6

    iput-object p1, p0, Lk/b/i/b/g/y;->e:[B

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length of publicSeed must be equal to length of digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-array p1, v1, [B

    iput-object p1, p0, Lk/b/i/b/g/y;->e:[B

    :goto_2
    return-void

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "params == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()[B
    .locals 4

    iget-object v0, p0, Lk/b/i/b/g/y;->b:Lk/b/i/b/g/w;

    .line 1
    iget v0, v0, Lk/b/i/b/g/w;->g:I

    const/4 v1, 0x0

    .line 2
    iget v2, p0, Lk/b/i/b/g/y;->c:I

    if-eqz v2, :cond_0

    add-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v0

    new-array v3, v3, [B

    invoke-static {v2, v3, v1}, Lk/b/c/e/a;->b(I[BI)V

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    add-int v2, v0, v0

    new-array v3, v2, [B

    :goto_0
    iget-object v2, p0, Lk/b/i/b/g/y;->d:[B

    invoke-static {v3, v2, v1}, Lk/b/c/e/a;->a([B[BI)V

    add-int/2addr v1, v0

    iget-object v0, p0, Lk/b/i/b/g/y;->e:[B

    invoke-static {v3, v0, v1}, Lk/b/c/e/a;->a([B[BI)V

    return-object v3
.end method
