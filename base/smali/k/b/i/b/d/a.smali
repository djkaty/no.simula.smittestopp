.class public Lk/b/i/b/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:[[[S

.field public e:[[[S

.field public f:[[S

.field public g:[S


# direct methods
.method public constructor <init>(BB[[[S[[[S[[S[S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lk/b/i/b/d/a;->a:I

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Lk/b/i/b/d/a;->b:I

    sub-int/2addr p2, p1

    iput p2, p0, Lk/b/i/b/d/a;->c:I

    iput-object p3, p0, Lk/b/i/b/d/a;->d:[[[S

    iput-object p4, p0, Lk/b/i/b/d/a;->e:[[[S

    iput-object p5, p0, Lk/b/i/b/d/a;->f:[[S

    iput-object p6, p0, Lk/b/i/b/d/a;->g:[S

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    instance-of v0, p1, Lk/b/i/b/d/a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lk/b/i/b/d/a;

    iget v0, p0, Lk/b/i/b/d/a;->a:I

    .line 1
    iget v1, p1, Lk/b/i/b/d/a;->a:I

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Lk/b/i/b/d/a;->b:I

    .line 3
    iget v1, p1, Lk/b/i/b/d/a;->b:I

    if-ne v0, v1, :cond_1

    .line 4
    iget v0, p0, Lk/b/i/b/d/a;->c:I

    .line 5
    iget v1, p1, Lk/b/i/b/d/a;->c:I

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lk/b/i/b/d/a;->d:[[[S

    .line 7
    iget-object v1, p1, Lk/b/i/b/d/a;->d:[[[S

    .line 8
    invoke-static {v0, v1}, Lk/b/c/e/a;->a([[[S[[[S)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lk/b/i/b/d/a;->e:[[[S

    .line 9
    iget-object v1, p1, Lk/b/i/b/d/a;->e:[[[S

    .line 10
    invoke-static {v0, v1}, Lk/b/c/e/a;->a([[[S[[[S)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lk/b/i/b/d/a;->f:[[S

    .line 11
    iget-object v1, p1, Lk/b/i/b/d/a;->f:[[S

    .line 12
    invoke-static {v0, v1}, Lk/b/c/e/a;->a([[S[[S)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lk/b/i/b/d/a;->g:[S

    .line 13
    iget-object p1, p1, Lk/b/i/b/d/a;->g:[S

    .line 14
    invoke-static {v0, p1}, Lk/b/c/e/a;->a([S[S)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lk/b/i/b/d/a;->a:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lk/b/i/b/d/a;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lk/b/i/b/d/a;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lk/b/i/b/d/a;->d:[[[S

    invoke-static {v1}, Lk/b/c/e/a;->b([[[S)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lk/b/i/b/d/a;->e:[[[S

    invoke-static {v0}, Lk/b/c/e/a;->b([[[S)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lk/b/i/b/d/a;->f:[[S

    invoke-static {v1}, Lk/b/c/e/a;->b([[S)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lk/b/i/b/d/a;->g:[S

    invoke-static {v0}, Lk/b/c/e/a;->c([S)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method
