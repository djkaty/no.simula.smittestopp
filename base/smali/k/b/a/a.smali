.class public abstract Lk/b/a/a;
.super Lk/b/a/t;
.source "SourceFile"


# instance fields
.field public final x:Z

.field public final y:I

.field public final z:[B


# direct methods
.method public constructor <init>(ZI[B)V
    .locals 0

    invoke-direct {p0}, Lk/b/a/t;-><init>()V

    iput-boolean p1, p0, Lk/b/a/a;->x:Z

    iput p2, p0, Lk/b/a/a;->y:I

    invoke-static {p3}, Lk/b/c/e/a;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lk/b/a/a;->z:[B

    return-void
.end method


# virtual methods
.method public a(Lk/b/a/r;Z)V
    .locals 3

    iget-boolean v0, p0, Lk/b/a/a;->x:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    iget v1, p0, Lk/b/a/a;->y:I

    iget-object v2, p0, Lk/b/a/a;->z:[B

    invoke-virtual {p1, p2, v0, v1, v2}, Lk/b/a/r;->a(ZII[B)V

    return-void
.end method

.method public a(Lk/b/a/t;)Z
    .locals 3

    instance-of v0, p1, Lk/b/a/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lk/b/a/a;

    iget-boolean v0, p0, Lk/b/a/a;->x:Z

    iget-boolean v2, p1, Lk/b/a/a;->x:Z

    if-ne v0, v2, :cond_1

    iget v0, p0, Lk/b/a/a;->y:I

    iget v2, p1, Lk/b/a/a;->y:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lk/b/a/a;->z:[B

    iget-object p1, p1, Lk/b/a/a;->z:[B

    .line 1
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public f()I
    .locals 2

    iget v0, p0, Lk/b/a/a;->y:I

    invoke-static {v0}, Lk/b/a/d2;->b(I)I

    move-result v0

    iget-object v1, p0, Lk/b/a/a;->z:[B

    array-length v1, v1

    invoke-static {v1}, Lk/b/a/d2;->a(I)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lk/b/a/a;->z:[B

    array-length v0, v0

    add-int/2addr v1, v0

    return v1
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lk/b/a/a;->x:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lk/b/a/a;->x:Z

    iget v1, p0, Lk/b/a/a;->y:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lk/b/a/a;->z:[B

    invoke-static {v1}, Lk/b/c/e/a;->d([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1
    iget-boolean v1, p0, Lk/b/a/a;->x:Z

    if-eqz v1, :cond_0

    const-string v1, "CONSTRUCTED "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v1, "APPLICATION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    iget v1, p0, Lk/b/a/a;->y:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lk/b/a/a;->z:[B

    if-eqz v1, :cond_1

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lk/b/a/a;->z:[B

    invoke-static {v1}, Lk/b/j/g/f;->b([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, " #null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
