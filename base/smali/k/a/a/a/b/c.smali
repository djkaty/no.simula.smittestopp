.class public abstract Lk/a/a/a/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/a/a/b/c$a;
    }
.end annotation


# instance fields
.field public final a:B

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(IIIIB)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lk/a/a/a/b/c;->b:I

    .line 3
    iput p2, p0, Lk/a/a/a/b/c;->c:I

    const/4 p1, 0x0

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    div-int/2addr p3, p2

    mul-int p1, p3, p2

    :cond_1
    iput p1, p0, Lk/a/a/a/b/c;->d:I

    .line 5
    iput p4, p0, Lk/a/a/a/b/c;->e:I

    .line 6
    iput-byte p5, p0, Lk/a/a/a/b/c;->a:B

    return-void
.end method


# virtual methods
.method public abstract a([BIILk/a/a/a/b/c$a;)V
.end method

.method public abstract a(B)Z
.end method

.method public a([B)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 10
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-byte v3, p1, v2

    .line 11
    iget-byte v4, p0, Lk/a/a/a/b/c;->a:B

    if-eq v4, v3, :cond_2

    invoke-virtual {p0, v3}, Lk/a/a/a/b/c;->a(B)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method public a(ILk/a/a/a/b/c$a;)[B
    .locals 3

    .line 1
    iget-object v0, p2, Lk/a/a/a/b/c$a;->c:[B

    if-eqz v0, :cond_1

    array-length v1, v0

    iget v2, p2, Lk/a/a/a/b/c$a;->d:I

    add-int/2addr v2, p1

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 2
    :cond_1
    :goto_0
    iget-object p1, p2, Lk/a/a/a/b/c$a;->c:[B

    const/4 v0, 0x0

    if-nez p1, :cond_2

    const/16 p1, 0x2000

    new-array p1, p1, [B

    .line 3
    iput-object p1, p2, Lk/a/a/a/b/c$a;->c:[B

    .line 4
    iput v0, p2, Lk/a/a/a/b/c$a;->d:I

    .line 5
    iput v0, p2, Lk/a/a/a/b/c$a;->e:I

    goto :goto_1

    .line 6
    :cond_2
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 7
    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iput-object v1, p2, Lk/a/a/a/b/c$a;->c:[B

    .line 9
    :goto_1
    iget-object p1, p2, Lk/a/a/a/b/c$a;->c:[B

    return-object p1
.end method

.method public b([B)[B
    .locals 6

    if-eqz p1, :cond_3

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Lk/a/a/a/b/c$a;

    invoke-direct {v0}, Lk/a/a/a/b/c$a;-><init>()V

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1, v0}, Lk/a/a/a/b/c;->a([BIILk/a/a/a/b/c$a;)V

    const/4 v1, -0x1

    .line 4
    invoke-virtual {p0, p1, v2, v1, v0}, Lk/a/a/a/b/c;->a([BIILk/a/a/a/b/c$a;)V

    .line 5
    iget p1, v0, Lk/a/a/a/b/c$a;->d:I

    iget v1, v0, Lk/a/a/a/b/c$a;->e:I

    sub-int v3, p1, v1

    new-array v4, v3, [B

    .line 6
    iget-object v5, v0, Lk/a/a/a/b/c$a;->c:[B

    if-eqz v5, :cond_1

    sub-int/2addr p1, v1

    .line 7
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 8
    iget-object v1, v0, Lk/a/a/a/b/c$a;->c:[B

    iget v3, v0, Lk/a/a/a/b/c$a;->e:I

    invoke-static {v1, v3, v4, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget v1, v0, Lk/a/a/a/b/c$a;->e:I

    add-int/2addr v1, p1

    iput v1, v0, Lk/a/a/a/b/c$a;->e:I

    .line 10
    iget p1, v0, Lk/a/a/a/b/c$a;->d:I

    if-lt v1, p1, :cond_2

    const/4 p1, 0x0

    .line 11
    iput-object p1, v0, Lk/a/a/a/b/c$a;->c:[B

    goto :goto_0

    .line 12
    :cond_1
    iget-boolean p1, v0, Lk/a/a/a/b/c$a;->f:Z

    :cond_2
    :goto_0
    return-object v4

    :cond_3
    :goto_1
    return-object p1
.end method
