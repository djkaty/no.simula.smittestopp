.class public Lk/e/a/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final n:Lk/e/a/q;


# instance fields
.field public a:S

.field public b:S

.field public c:[I

.field public d:I

.field public e:[I

.field public f:S

.field public g:S

.field public h:S

.field public i:S

.field public j:Lk/e/a/n;

.field public k:Lk/e/a/q;

.field public l:Lk/e/a/k;

.field public m:Lk/e/a/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk/e/a/q;

    invoke-direct {v0}, Lk/e/a/q;-><init>()V

    sput-object v0, Lk/e/a/q;->n:Lk/e/a/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lk/e/a/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/e/a/q;->j:Lk/e/a/n;

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lk/e/a/n;->a:Lk/e/a/q;

    :goto_0
    return-object v0
.end method

.method public final a(Lk/e/a/q;)Lk/e/a/q;
    .locals 3

    .line 41
    iget-object v0, p0, Lk/e/a/q;->l:Lk/e/a/k;

    :goto_0
    if-eqz v0, :cond_2

    .line 42
    iget-short v1, p0, Lk/e/a/q;->a:S

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    iget-object v1, p0, Lk/e/a/q;->l:Lk/e/a/k;

    iget-object v1, v1, Lk/e/a/k;->c:Lk/e/a/k;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    .line 43
    iget-object v1, v0, Lk/e/a/k;->b:Lk/e/a/q;

    iget-object v2, v1, Lk/e/a/q;->m:Lk/e/a/q;

    if-nez v2, :cond_1

    .line 44
    iput-object p1, v1, Lk/e/a/q;->m:Lk/e/a/q;

    move-object p1, v1

    .line 45
    :cond_1
    iget-object v0, v0, Lk/e/a/k;->c:Lk/e/a/k;

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final a(III)V
    .locals 6

    .line 9
    iget-object v0, p0, Lk/e/a/q;->e:[I

    const/4 v1, 0x6

    if-nez v0, :cond_0

    new-array v0, v1, [I

    .line 10
    iput-object v0, p0, Lk/e/a/q;->e:[I

    .line 11
    :cond_0
    iget-object v0, p0, Lk/e/a/q;->e:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    add-int/lit8 v4, v3, 0x2

    .line 12
    array-length v5, v0

    if-lt v4, v5, :cond_1

    .line 13
    array-length v4, v0

    add-int/2addr v4, v1

    new-array v1, v4, [I

    .line 14
    array-length v4, v0

    invoke-static {v0, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iput-object v1, p0, Lk/e/a/q;->e:[I

    .line 16
    :cond_1
    iget-object v0, p0, Lk/e/a/q;->e:[I

    add-int/lit8 v3, v3, 0x1

    aput p1, v0, v3

    add-int/lit8 v3, v3, 0x1

    or-int p1, p2, p3

    .line 17
    aput p1, v0, v3

    .line 18
    aput v3, v0, v2

    return-void
.end method

.method public final a(Lk/e/a/c;IZ)V
    .locals 2

    .line 2
    iget-short v0, p0, Lk/e/a/q;->a:S

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-eqz p3, :cond_0

    const/high16 p3, 0x20000000

    .line 3
    iget v1, p1, Lk/e/a/c;->b:I

    invoke-virtual {p0, p2, p3, v1}, Lk/e/a/q;->a(III)V

    .line 4
    invoke-virtual {p1, v0}, Lk/e/a/c;->c(I)Lk/e/a/c;

    goto :goto_0

    :cond_0
    const/high16 p3, 0x10000000

    .line 5
    iget v1, p1, Lk/e/a/c;->b:I

    invoke-virtual {p0, p2, p3, v1}, Lk/e/a/q;->a(III)V

    .line 6
    invoke-virtual {p1, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 7
    iget p3, p0, Lk/e/a/q;->d:I

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lk/e/a/c;->c(I)Lk/e/a/c;

    goto :goto_0

    .line 8
    :cond_2
    iget p3, p0, Lk/e/a/q;->d:I

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lk/e/a/c;->d(I)Lk/e/a/c;

    :goto_0
    return-void
.end method

.method public final a(S)V
    .locals 3

    .line 34
    sget-object v0, Lk/e/a/q;->n:Lk/e/a/q;

    iput-object v0, p0, Lk/e/a/q;->m:Lk/e/a/q;

    move-object v0, p0

    .line 35
    :goto_0
    sget-object v1, Lk/e/a/q;->n:Lk/e/a/q;

    if-eq v0, v1, :cond_1

    .line 36
    iget-object v1, v0, Lk/e/a/q;->m:Lk/e/a/q;

    const/4 v2, 0x0

    .line 37
    iput-object v2, v0, Lk/e/a/q;->m:Lk/e/a/q;

    .line 38
    iget-short v2, v0, Lk/e/a/q;->i:S

    if-nez v2, :cond_0

    .line 39
    iput-short p1, v0, Lk/e/a/q;->i:S

    .line 40
    invoke-virtual {v0, v1}, Lk/e/a/q;->a(Lk/e/a/q;)Lk/e/a/q;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a([BI)Z
    .locals 7

    .line 19
    iget-short v0, p0, Lk/e/a/q;->a:S

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Lk/e/a/q;->a:S

    .line 20
    iput p2, p0, Lk/e/a/q;->d:I

    .line 21
    iget-object v0, p0, Lk/e/a/q;->e:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 22
    :cond_0
    aget v0, v0, v1

    :goto_0
    if-lez v0, :cond_5

    .line 23
    iget-object v2, p0, Lk/e/a/q;->e:[I

    add-int/lit8 v3, v0, -0x1

    aget v3, v2, v3

    .line 24
    aget v2, v2, v0

    sub-int v4, p2, v3

    const v5, 0xfffffff

    and-int/2addr v5, v2

    const/high16 v6, -0x10000000

    and-int/2addr v2, v6

    const/high16 v6, 0x10000000

    if-ne v2, v6, :cond_4

    const/16 v2, -0x8000

    if-lt v4, v2, :cond_1

    const/16 v2, 0x7fff

    if-le v4, v2, :cond_3

    .line 25
    :cond_1
    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xc6

    if-ge v1, v2, :cond_2

    add-int/lit8 v1, v1, 0x31

    int-to-byte v1, v1

    .line 26
    aput-byte v1, p1, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x14

    int-to-byte v1, v1

    .line 27
    aput-byte v1, p1, v3

    :goto_1
    const/4 v1, 0x1

    :cond_3
    add-int/lit8 v2, v5, 0x1

    ushr-int/lit8 v3, v4, 0x8

    int-to-byte v3, v3

    .line 28
    aput-byte v3, p1, v5

    int-to-byte v3, v4

    .line 29
    aput-byte v3, p1, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v5, 0x1

    ushr-int/lit8 v3, v4, 0x18

    int-to-byte v3, v3

    .line 30
    aput-byte v3, p1, v5

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v5, v4, 0x10

    int-to-byte v5, v5

    .line 31
    aput-byte v5, p1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v5, v4, 0x8

    int-to-byte v5, v5

    .line 32
    aput-byte v5, p1, v3

    int-to-byte v3, v4

    .line 33
    aput-byte v3, p1, v2

    :goto_2
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_5
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "L"

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
