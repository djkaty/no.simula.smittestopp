.class public Lk/c/a/a/a/s/s/v;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public A:[B

.field public B:I

.field public C:I

.field public D:I

.field public x:[B

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>([BII[BII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk/c/a/a/a/s/s/v;->D:I

    .line 3
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lk/c/a/a/a/s/s/v;->x:[B

    .line 4
    invoke-virtual {p4}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lk/c/a/a/a/s/s/v;->A:[B

    .line 5
    iput p2, p0, Lk/c/a/a/a/s/s/v;->y:I

    .line 6
    iput p5, p0, Lk/c/a/a/a/s/s/v;->B:I

    .line 7
    iput p3, p0, Lk/c/a/a/a/s/s/v;->z:I

    .line 8
    iput p6, p0, Lk/c/a/a/a/s/s/v;->C:I

    return-void
.end method


# virtual methods
.method public read()I
    .locals 4

    .line 1
    iget v0, p0, Lk/c/a/a/a/s/s/v;->D:I

    iget v1, p0, Lk/c/a/a/a/s/s/v;->z:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lk/c/a/a/a/s/s/v;->x:[B

    iget v2, p0, Lk/c/a/a/a/s/s/v;->y:I

    add-int/2addr v2, v0

    aget-byte v0, v1, v2

    goto :goto_0

    .line 3
    :cond_0
    iget v2, p0, Lk/c/a/a/a/s/s/v;->C:I

    add-int/2addr v2, v1

    if-ge v0, v2, :cond_2

    .line 4
    iget-object v2, p0, Lk/c/a/a/a/s/s/v;->A:[B

    iget v3, p0, Lk/c/a/a/a/s/s/v;->B:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v1

    aget-byte v0, v2, v3

    :goto_0
    if-gez v0, :cond_1

    add-int/lit16 v0, v0, 0x100

    .line 5
    :cond_1
    iget v1, p0, Lk/c/a/a/a/s/s/v;->D:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lk/c/a/a/a/s/s/v;->D:I

    return v0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method
