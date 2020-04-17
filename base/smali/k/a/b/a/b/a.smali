.class public final Lk/a/b/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public final b:I

.field public final c:I

.field public d:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 1
    array-length v0, p1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lk/a/b/a/b/a;->a:[B

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lk/a/b/a/b/a;->b:I

    .line 5
    iput v0, p0, Lk/a/b/a/b/a;->c:I

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lk/a/b/a/b/a;->a:[B

    .line 8
    iput p2, p0, Lk/a/b/a/b/a;->b:I

    .line 9
    iput p3, p0, Lk/a/b/a/b/a;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/b/a/b/a;->a:[B

    iget v1, p0, Lk/a/b/a/b/a;->b:I

    iget v2, p0, Lk/a/b/a/b/a;->c:I

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 1
    const-class v2, Lk/a/b/a/b/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lk/a/b/a/b/a;

    .line 3
    iget v2, p0, Lk/a/b/a/b/a;->c:I

    .line 4
    iget v3, p1, Lk/a/b/a/b/a;->c:I

    if-eq v2, v3, :cond_2

    return v1

    .line 5
    :cond_2
    iget-object v3, p0, Lk/a/b/a/b/a;->a:[B

    .line 6
    iget-object v4, p1, Lk/a/b/a/b/a;->a:[B

    .line 7
    iget v5, p0, Lk/a/b/a/b/a;->b:I

    .line 8
    iget p1, p1, Lk/a/b/a/b/a;->b:I

    add-int/2addr v2, v5

    :goto_0
    if-ge v5, v2, :cond_4

    add-int/lit8 v6, v5, 0x1

    .line 9
    aget-byte v5, v3, v5

    add-int/lit8 v7, p1, 0x1

    aget-byte p1, v4, p1

    if-eq v5, p1, :cond_3

    return v1

    :cond_3
    move v5, v6

    move p1, v7

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lk/a/b/a/b/a;->d:I

    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lk/a/b/a/b/a;->c:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lk/a/b/a/b/a;->a:[B

    iget v3, p0, Lk/a/b/a/b/a;->b:I

    add-int/2addr v3, v1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iput v0, p0, Lk/a/b/a/b/a;->d:I

    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget v3, p0, Lk/a/b/a/b/a;->c:I

    if-ge v2, v3, :cond_1

    .line 3
    iget-object v3, p0, Lk/a/b/a/b/a;->a:[B

    iget v4, p0, Lk/a/b/a/b/a;->b:I

    add-int/2addr v4, v2

    aget-byte v3, v3, v4

    const/16 v4, 0x1f

    if-le v3, v4, :cond_0

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_0

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_0

    int-to-char v3, v3

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v4, v1

    const-string v3, "\\x%02x"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
