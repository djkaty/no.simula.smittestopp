.class public final Le/b/a/a/s/c;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field public static final B:[B


# instance fields
.field public A:I

.field public final x:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "[B>;"
        }
    .end annotation
.end field

.field public y:I

.field public z:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1
    sput-object v0, Le/b/a/a/s/c;->B:[B

    return-void
.end method

.method public constructor <init>(Le/b/a/a/s/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Le/b/a/a/s/c;->x:Ljava/util/LinkedList;

    if-nez p1, :cond_0

    const/16 p1, 0x1f4

    new-array p1, p1, [B

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 3
    invoke-virtual {p1, v0}, Le/b/a/a/s/a;->a(I)[B

    move-result-object p1

    :goto_0
    iput-object p1, p0, Le/b/a/a/s/c;->z:[B

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 4
    iget v0, p0, Le/b/a/a/s/c;->y:I

    iget-object v1, p0, Le/b/a/a/s/c;->z:[B

    array-length v1, v1

    add-int/2addr v0, v1

    if-ltz v0, :cond_1

    .line 5
    iput v0, p0, Le/b/a/a/s/c;->y:I

    shr-int/lit8 v0, v0, 0x1

    const/16 v1, 0x3e8

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x40000

    if-le v0, v1, :cond_0

    const/high16 v0, 0x40000

    .line 7
    :cond_0
    iget-object v1, p0, Le/b/a/a/s/c;->x:Ljava/util/LinkedList;

    iget-object v2, p0, Le/b/a/a/s/c;->z:[B

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 8
    new-array v0, v0, [B

    iput-object v0, p0, Le/b/a/a/s/c;->z:[B

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Le/b/a/a/s/c;->A:I

    return-void

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Maximum Java array size (2GB) exceeded by `ByteArrayBuilder`"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(I)V
    .locals 3

    .line 1
    iget v0, p0, Le/b/a/a/s/c;->A:I

    iget-object v1, p0, Le/b/a/a/s/c;->z:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/b/a/a/s/c;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/b/a/a/s/c;->z:[B

    iget v1, p0, Le/b/a/a/s/c;->A:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/b/a/a/s/c;->A:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Le/b/a/a/s/c;->y:I

    .line 2
    iput v0, p0, Le/b/a/a/s/c;->A:I

    .line 3
    iget-object v0, p0, Le/b/a/a/s/c;->x:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Le/b/a/a/s/c;->x:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 4

    .line 5
    iget v0, p0, Le/b/a/a/s/c;->A:I

    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Le/b/a/a/s/c;->z:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 6
    iput v1, p0, Le/b/a/a/s/c;->A:I

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v1, 0x1

    .line 7
    iput v0, p0, Le/b/a/a/s/c;->A:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v0, 0x1

    .line 8
    iput v1, p0, Le/b/a/a/s/c;->A:I

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p1, 0x10

    .line 9
    invoke-virtual {p0, v0}, Le/b/a/a/s/c;->a(I)V

    shr-int/lit8 v0, p1, 0x8

    .line 10
    invoke-virtual {p0, v0}, Le/b/a/a/s/c;->a(I)V

    .line 11
    invoke-virtual {p0, p1}, Le/b/a/a/s/c;->a(I)V

    :goto_0
    return-void
.end method

.method public c(I)V
    .locals 4

    .line 1
    iget v0, p0, Le/b/a/a/s/c;->A:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Le/b/a/a/s/c;->z:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 2
    iput v1, p0, Le/b/a/a/s/c;->A:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v1, 0x1

    .line 3
    iput v0, p0, Le/b/a/a/s/c;->A:I

    int-to-byte p1, p1

    aput-byte p1, v2, v1

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p1, 0x8

    .line 4
    invoke-virtual {p0, v0}, Le/b/a/a/s/c;->a(I)V

    .line 5
    invoke-virtual {p0, p1}, Le/b/a/a/s/c;->a(I)V

    :goto_0
    return-void
.end method

.method public c()[B
    .locals 7

    .line 6
    iget v0, p0, Le/b/a/a/s/c;->y:I

    iget v1, p0, Le/b/a/a/s/c;->A:I

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 7
    sget-object v0, Le/b/a/a/s/c;->B:[B

    return-object v0

    .line 8
    :cond_0
    new-array v1, v0, [B

    .line 9
    iget-object v2, p0, Le/b/a/a/s/c;->x:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 10
    array-length v6, v5

    .line 11
    invoke-static {v5, v3, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    goto :goto_0

    .line 12
    :cond_1
    iget-object v2, p0, Le/b/a/a/s/c;->z:[B

    iget v5, p0, Le/b/a/a/s/c;->A:I

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget v2, p0, Le/b/a/a/s/c;->A:I

    add-int/2addr v4, v2

    if-ne v4, v0, :cond_3

    .line 14
    iget-object v0, p0, Le/b/a/a/s/c;->x:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    invoke-virtual {p0}, Le/b/a/a/s/c;->b()V

    :cond_2
    return-object v1

    .line 16
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal error: total len assumed to be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", copied "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public write(I)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Le/b/a/a/s/c;->a(I)V

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Le/b/a/a/s/c;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3

    .line 2
    :goto_0
    iget-object v0, p0, Le/b/a/a/s/c;->z:[B

    array-length v0, v0

    iget v1, p0, Le/b/a/a/s/c;->A:I

    sub-int/2addr v0, v1

    .line 3
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v1, p0, Le/b/a/a/s/c;->z:[B

    iget v2, p0, Le/b/a/a/s/c;->A:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    .line 5
    iget v1, p0, Le/b/a/a/s/c;->A:I

    add-int/2addr v1, v0

    iput v1, p0, Le/b/a/a/s/c;->A:I

    sub-int/2addr p3, v0

    :cond_0
    if-gtz p3, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Le/b/a/a/s/c;->a()V

    goto :goto_0
.end method
