.class public Lk/a/b/a/c/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/y0;


# instance fields
.field public final a:Lk/a/b/a/c/y0;

.field public final b:Lk/a/b/a/c/y0;


# direct methods
.method public constructor <init>(Lk/a/b/a/c/y0;Lk/a/b/a/c/y0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk/a/b/a/c/m;->a:Lk/a/b/a/c/y0;

    .line 3
    iput-object p2, p0, Lk/a/b/a/c/m;->b:Lk/a/b/a/c/y0;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 18
    iget-object v0, p0, Lk/a/b/a/c/m;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0}, Lk/a/b/a/c/y0;->a()I

    move-result v0

    iget-object v1, p0, Lk/a/b/a/c/m;->b:Lk/a/b/a/c/y0;

    invoke-interface {v1}, Lk/a/b/a/c/y0;->a()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public a(B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/m;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0}, Lk/a/b/a/c/y0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk/a/b/a/c/m;->a:Lk/a/b/a/c/y0;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lk/a/b/a/c/m;->b:Lk/a/b/a/c/y0;

    :goto_0
    invoke-interface {v0, p1}, Lk/a/b/a/c/y0;->a(B)V

    return-void
.end method

.method public a(D)V
    .locals 0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lk/a/b/a/c/m;->a(J)V

    return-void
.end method

.method public a(F)V
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lk/a/b/a/c/m;->b(I)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 19
    iget-object v0, p0, Lk/a/b/a/c/m;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0}, Lk/a/b/a/c/y0;->a()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 20
    iget-object v0, p0, Lk/a/b/a/c/m;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0, p1}, Lk/a/b/a/c/y0;->a(I)V

    .line 21
    iget-object p1, p0, Lk/a/b/a/c/m;->b:Lk/a/b/a/c/y0;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lk/a/b/a/c/y0;->a(I)V

    goto :goto_0

    .line 22
    :cond_0
    iget-object v1, p0, Lk/a/b/a/c/m;->a:Lk/a/b/a/c/y0;

    invoke-interface {v1, v0}, Lk/a/b/a/c/y0;->a(I)V

    .line 23
    iget-object v1, p0, Lk/a/b/a/c/m;->b:Lk/a/b/a/c/y0;

    sub-int/2addr p1, v0

    invoke-interface {v1, p1}, Lk/a/b/a/c/y0;->a(I)V

    :goto_0
    return-void
.end method

.method public a(J)V
    .locals 2

    .line 11
    iget-object v0, p0, Lk/a/b/a/c/m;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0}, Lk/a/b/a/c/y0;->c()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 12
    iget-object v0, p0, Lk/a/b/a/c/m;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0, p1, p2}, Lk/a/b/a/c/y0;->a(J)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lk/a/b/a/c/m;->b:Lk/a/b/a/c/y0;

    invoke-interface {v0, p1, p2}, Lk/a/b/a/c/y0;->a(J)V

    goto :goto_0

    :cond_1
    new-array v0, v1, [B

    .line 14
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 17
    invoke-virtual {p0, v0}, Lk/a/b/a/c/m;->a(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lk/a/b/a/c/m;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0}, Lk/a/b/a/c/y0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 38
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lk/a/b/a/c/m;->a([BII)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lk/a/b/a/c/m;->b:Lk/a/b/a/c/y0;

    invoke-interface {v0, p1}, Lk/a/b/a/c/y0;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 28
    iget-object v0, p0, Lk/a/b/a/c/m;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0}, Lk/a/b/a/c/y0;->c()I

    move-result v0

    if-lez v0, :cond_1

    .line 29
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 30
    iget-object v0, p0, Lk/a/b/a/c/m;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0, p1}, Lk/a/b/a/c/y0;->a(Ljava/nio/ByteBuffer;)V

    return-void

    .line 31
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 32
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 33
    iget-object v0, p0, Lk/a/b/a/c/m;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0, p1}, Lk/a/b/a/c/y0;->a(Ljava/nio/ByteBuffer;)V

    .line 34
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 35
    :cond_1
    iget-object v0, p0, Lk/a/b/a/c/m;->b:Lk/a/b/a/c/y0;

    invoke-interface {v0, p1}, Lk/a/b/a/c/y0;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public a(S)V
    .locals 2

    .line 4
    iget-object v0, p0, Lk/a/b/a/c/m;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0}, Lk/a/b/a/c/y0;->c()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lk/a/b/a/c/m;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0, p1}, Lk/a/b/a/c/y0;->a(S)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lk/a/b/a/c/m;->b:Lk/a/b/a/c/y0;

    invoke-interface {v0, p1}, Lk/a/b/a/c/y0;->a(S)V

    goto :goto_0

    :cond_1
    new-array v0, v1, [B

    .line 7
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 10
    invoke-virtual {p0, v0}, Lk/a/b/a/c/m;->a(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method

.method public a([BII)V
    .locals 2

    .line 24
    iget-object v0, p0, Lk/a/b/a/c/m;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0}, Lk/a/b/a/c/y0;->c()I

    move-result v0

    if-lez v0, :cond_1

    if-lt v0, p3, :cond_0

    .line 25
    iget-object v0, p0, Lk/a/b/a/c/m;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0, p1, p2, p3}, Lk/a/b/a/c/y0;->a([BII)V

    return-void

    .line 26
    :cond_0
    iget-object v1, p0, Lk/a/b/a/c/m;->a:Lk/a/b/a/c/y0;

    invoke-interface {v1, p1, p2, v0}, Lk/a/b/a/c/y0;->a([BII)V

    .line 27
    :cond_1
    iget-object v1, p0, Lk/a/b/a/c/m;->b:Lk/a/b/a/c/y0;

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    invoke-interface {v1, p1, p2, p3}, Lk/a/b/a/c/y0;->a([BII)V

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/m;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0}, Lk/a/b/a/c/y0;->c()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/m;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0, p1}, Lk/a/b/a/c/y0;->b(I)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lk/a/b/a/c/m;->b:Lk/a/b/a/c/y0;

    invoke-interface {v0, p1}, Lk/a/b/a/c/y0;->b(I)V

    goto :goto_0

    :cond_1
    new-array v0, v1, [B

    .line 4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 7
    invoke-virtual {p0, v0}, Lk/a/b/a/c/m;->a(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 8
    iget-object v0, p0, Lk/a/b/a/c/m;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0}, Lk/a/b/a/c/y0;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lk/a/b/a/c/m;->b:Lk/a/b/a/c/y0;

    invoke-interface {v0}, Lk/a/b/a/c/y0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public c()I
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/m;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0}, Lk/a/b/a/c/y0;->c()I

    move-result v0

    iget-object v1, p0, Lk/a/b/a/c/m;->b:Lk/a/b/a/c/y0;

    invoke-interface {v1}, Lk/a/b/a/c/y0;->c()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public synthetic c(I)V
    .locals 0

    invoke-static {p0, p1}, Lk/a/b/a/c/x0;->a(Lk/a/b/a/c/y0;I)V

    return-void
.end method

.method public position()I
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/m;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0}, Lk/a/b/a/c/y0;->position()I

    move-result v0

    iget-object v1, p0, Lk/a/b/a/c/m;->b:Lk/a/b/a/c/y0;

    invoke-interface {v1}, Lk/a/b/a/c/y0;->position()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lk/a/b/a/c/m;->a:Lk/a/b/a/c/y0;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/c/m;->b:Lk/a/b/a/c/y0;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
