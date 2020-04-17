.class public final Lk/e/a/t;
.super Lk/e/a/s;
.source "SourceFile"


# static fields
.field public static final c0:[I


# instance fields
.field public final A:I

.field public B:Lk/e/a/a;

.field public C:Lk/e/a/a;

.field public D:I

.field public E:[Lk/e/a/a;

.field public F:I

.field public G:[Lk/e/a/a;

.field public H:Lk/e/a/a;

.field public I:Lk/e/a/a;

.field public J:Lk/e/a/c;

.field public K:I

.field public L:Lk/e/a/c;

.field public M:Lk/e/a/b;

.field public final N:I

.field public O:Lk/e/a/q;

.field public P:Lk/e/a/q;

.field public Q:Lk/e/a/q;

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:[I

.field public W:[I

.field public X:Z

.field public Y:Z

.field public Z:I

.field public a0:I

.field public b0:I

.field public final c:Lk/e/a/x;

.field public final d:I

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:Ljava/lang/String;

.field public i:I

.field public j:I

.field public final k:Lk/e/a/c;

.field public l:Lk/e/a/p;

.field public m:Lk/e/a/p;

.field public n:I

.field public o:Lk/e/a/c;

.field public p:I

.field public q:Lk/e/a/c;

.field public r:I

.field public s:Lk/e/a/c;

.field public t:I

.field public u:Lk/e/a/c;

.field public v:Lk/e/a/a;

.field public w:Lk/e/a/a;

.field public x:Lk/e/a/b;

.field public final y:I

.field public final z:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xca

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lk/e/a/t;->c0:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x1
        0x1
        0x1
        0x2
        0x2
        0x1
        0x1
        0x1
        0x0
        0x0
        0x1
        0x2
        0x1
        0x2
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x1
        0x0
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3
        -0x4
        -0x3
        -0x4
        -0x3
        -0x3
        -0x3
        -0x3
        -0x1
        -0x2
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x0
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        0x0
        0x1
        0x0
        0x1
        -0x1
        -0x1
        0x0
        0x0
        0x1
        0x1
        -0x1
        0x0
        -0x1
        0x0
        0x0
        0x0
        -0x3
        -0x1
        -0x1
        -0x3
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        0x0
        0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x1
        0x0
        0x0
        -0x1
        -0x1
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lk/e/a/x;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 1

    const/high16 v0, 0x70000

    .line 1
    invoke-direct {p0, v0}, Lk/e/a/s;-><init>(I)V

    .line 2
    new-instance v0, Lk/e/a/c;

    invoke-direct {v0}, Lk/e/a/c;-><init>()V

    iput-object v0, p0, Lk/e/a/t;->k:Lk/e/a/c;

    .line 3
    iput-object p1, p0, Lk/e/a/t;->c:Lk/e/a/x;

    const-string v0, "<init>"

    .line 4
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40000

    or-int/2addr v0, p2

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iput v0, p0, Lk/e/a/t;->d:I

    .line 5
    invoke-virtual {p1, p3}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lk/e/a/t;->e:I

    .line 6
    iput-object p3, p0, Lk/e/a/t;->f:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, p4}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lk/e/a/t;->g:I

    .line 8
    iput-object p4, p0, Lk/e/a/t;->h:Ljava/lang/String;

    const/4 p3, 0x0

    if-nez p5, :cond_1

    const/4 p5, 0x0

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p1, p5}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result p5

    :goto_1
    iput p5, p0, Lk/e/a/t;->A:I

    if-eqz p6, :cond_2

    .line 10
    array-length p5, p6

    if-lez p5, :cond_2

    .line 11
    array-length p5, p6

    iput p5, p0, Lk/e/a/t;->y:I

    .line 12
    new-array p5, p5, [I

    iput-object p5, p0, Lk/e/a/t;->z:[I

    .line 13
    :goto_2
    iget p5, p0, Lk/e/a/t;->y:I

    if-ge p3, p5, :cond_3

    .line 14
    iget-object p5, p0, Lk/e/a/t;->z:[I

    aget-object v0, p6, p3

    invoke-virtual {p1, v0}, Lk/e/a/x;->a(Ljava/lang/String;)Lk/e/a/w;

    move-result-object v0

    iget v0, v0, Lk/e/a/w;->a:I

    aput v0, p5, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 15
    :cond_2
    iput p3, p0, Lk/e/a/t;->y:I

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lk/e/a/t;->z:[I

    .line 17
    :cond_3
    iput p7, p0, Lk/e/a/t;->N:I

    if-eqz p7, :cond_5

    .line 18
    invoke-static {p4}, Lk/e/a/y;->b(Ljava/lang/String;)I

    move-result p1

    shr-int/lit8 p1, p1, 0x2

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_4

    add-int/lit8 p1, p1, -0x1

    .line 19
    :cond_4
    iput p1, p0, Lk/e/a/t;->j:I

    .line 20
    iput p1, p0, Lk/e/a/t;->T:I

    .line 21
    new-instance p1, Lk/e/a/q;

    invoke-direct {p1}, Lk/e/a/q;-><init>()V

    iput-object p1, p0, Lk/e/a/t;->O:Lk/e/a/q;

    .line 22
    invoke-virtual {p0, p1}, Lk/e/a/t;->a(Lk/e/a/q;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public a(III)I
    .locals 2

    add-int/lit8 v0, p2, 0x3

    add-int/2addr v0, p3

    .line 270
    iget-object v1, p0, Lk/e/a/t;->W:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-ge v1, v0, :cond_1

    .line 271
    :cond_0
    new-array v0, v0, [I

    iput-object v0, p0, Lk/e/a/t;->W:[I

    .line 272
    :cond_1
    iget-object v0, p0, Lk/e/a/t;->W:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 273
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 274
    aput p3, v0, p1

    const/4 p1, 0x3

    return p1
.end method

.method public a(ILk/e/a/z;Ljava/lang/String;Z)Lk/e/a/a;
    .locals 1

    const v0, -0xffff01

    if-eqz p4, :cond_0

    .line 224
    iget-object p4, p0, Lk/e/a/t;->c:Lk/e/a/x;

    and-int/2addr p1, v0

    iget v0, p0, Lk/e/a/t;->Z:I

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    iget-object v0, p0, Lk/e/a/t;->v:Lk/e/a/a;

    .line 225
    invoke-static {p4, p1, p2, p3, v0}, Lk/e/a/a;->a(Lk/e/a/x;ILk/e/a/z;Ljava/lang/String;Lk/e/a/a;)Lk/e/a/a;

    move-result-object p1

    iput-object p1, p0, Lk/e/a/t;->v:Lk/e/a/a;

    return-object p1

    .line 226
    :cond_0
    iget-object p4, p0, Lk/e/a/t;->c:Lk/e/a/x;

    and-int/2addr p1, v0

    iget v0, p0, Lk/e/a/t;->Z:I

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    iget-object v0, p0, Lk/e/a/t;->w:Lk/e/a/a;

    .line 227
    invoke-static {p4, p1, p2, p3, v0}, Lk/e/a/a;->a(Lk/e/a/x;ILk/e/a/z;Ljava/lang/String;Lk/e/a/a;)Lk/e/a/a;

    move-result-object p1

    iput-object p1, p0, Lk/e/a/t;->w:Lk/e/a/a;

    return-object p1
.end method

.method public a(ILk/e/a/z;[Lk/e/a/q;[Lk/e/a/q;[ILjava/lang/String;Z)Lk/e/a/a;
    .locals 4

    .line 250
    new-instance v0, Lk/e/a/c;

    invoke-direct {v0}, Lk/e/a/c;-><init>()V

    ushr-int/lit8 p1, p1, 0x18

    .line 251
    invoke-virtual {v0, p1}, Lk/e/a/c;->b(I)Lk/e/a/c;

    array-length p1, p3

    invoke-virtual {v0, p1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 252
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 253
    aget-object v2, p3, v1

    iget v2, v2, Lk/e/a/q;->d:I

    .line 254
    invoke-virtual {v0, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    aget-object v2, p4, v1

    iget v2, v2, Lk/e/a/q;->d:I

    aget-object v3, p3, v1

    iget v3, v3, Lk/e/a/q;->d:I

    sub-int/2addr v2, v3

    .line 255
    invoke-virtual {v0, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    aget v2, p5, v1

    .line 256
    invoke-virtual {v0, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_0
    invoke-static {p2, v0}, Lk/e/a/z;->a(Lk/e/a/z;Lk/e/a/c;)V

    .line 258
    iget-object p2, p0, Lk/e/a/t;->c:Lk/e/a/x;

    invoke-virtual {p2, p6}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    invoke-virtual {v0, p1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    const/4 p1, 0x1

    if-eqz p7, :cond_1

    .line 259
    new-instance p2, Lk/e/a/a;

    iget-object p3, p0, Lk/e/a/t;->c:Lk/e/a/x;

    iget-object p4, p0, Lk/e/a/t;->v:Lk/e/a/a;

    invoke-direct {p2, p3, p1, v0, p4}, Lk/e/a/a;-><init>(Lk/e/a/x;ZLk/e/a/c;Lk/e/a/a;)V

    iput-object p2, p0, Lk/e/a/t;->v:Lk/e/a/a;

    return-object p2

    .line 260
    :cond_1
    new-instance p2, Lk/e/a/a;

    iget-object p3, p0, Lk/e/a/t;->c:Lk/e/a/x;

    iget-object p4, p0, Lk/e/a/t;->w:Lk/e/a/a;

    invoke-direct {p2, p3, p1, v0, p4}, Lk/e/a/a;-><init>(Lk/e/a/x;ZLk/e/a/c;Lk/e/a/a;)V

    iput-object p2, p0, Lk/e/a/t;->w:Lk/e/a/a;

    return-object p2
.end method

.method public a(Ljava/lang/String;Z)Lk/e/a/a;
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lk/e/a/t;->c:Lk/e/a/x;

    iget-object v0, p0, Lk/e/a/t;->B:Lk/e/a/a;

    .line 2
    invoke-static {p2, p1, v0}, Lk/e/a/a;->a(Lk/e/a/x;Ljava/lang/String;Lk/e/a/a;)Lk/e/a/a;

    move-result-object p1

    iput-object p1, p0, Lk/e/a/t;->B:Lk/e/a/a;

    return-object p1

    .line 3
    :cond_0
    iget-object p2, p0, Lk/e/a/t;->c:Lk/e/a/x;

    iget-object v0, p0, Lk/e/a/t;->C:Lk/e/a/a;

    .line 4
    invoke-static {p2, p1, v0}, Lk/e/a/a;->a(Lk/e/a/x;Ljava/lang/String;Lk/e/a/a;)Lk/e/a/a;

    move-result-object p1

    iput-object p1, p0, Lk/e/a/t;->C:Lk/e/a/a;

    return-object p1
.end method

.method public final a()V
    .locals 4

    .line 261
    iget v0, p0, Lk/e/a/t;->N:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 262
    new-instance v0, Lk/e/a/q;

    invoke-direct {v0}, Lk/e/a/q;-><init>()V

    .line 263
    new-instance v2, Lk/e/a/n;

    invoke-direct {v2, v0}, Lk/e/a/n;-><init>(Lk/e/a/q;)V

    iput-object v2, v0, Lk/e/a/q;->j:Lk/e/a/n;

    .line 264
    iget-object v2, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget-object v3, v2, Lk/e/a/c;->a:[B

    iget v2, v2, Lk/e/a/c;->b:I

    invoke-virtual {v0, v3, v2}, Lk/e/a/q;->a([BI)Z

    .line 265
    iget-object v2, p0, Lk/e/a/t;->P:Lk/e/a/q;

    iput-object v0, v2, Lk/e/a/q;->k:Lk/e/a/q;

    .line 266
    iput-object v0, p0, Lk/e/a/t;->P:Lk/e/a/q;

    .line 267
    iput-object v1, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 268
    iget-object v0, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    iget v2, p0, Lk/e/a/t;->S:I

    int-to-short v2, v2

    iput-short v2, v0, Lk/e/a/q;->h:S

    .line 269
    iput-object v1, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    :cond_1
    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 3

    .line 67
    iget-object v0, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v1, v0, Lk/e/a/c;->b:I

    iput v1, p0, Lk/e/a/t;->Z:I

    .line 68
    invoke-virtual {v0, p1}, Lk/e/a/c;->b(I)Lk/e/a/c;

    .line 69
    iget-object v0, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    if-eqz v0, :cond_5

    .line 70
    iget v0, p0, Lk/e/a/t;->N:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget v0, p0, Lk/e/a/t;->R:I

    sget-object v1, Lk/e/a/t;->c0:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    .line 72
    iget v1, p0, Lk/e/a/t;->S:I

    if-le v0, v1, :cond_1

    .line 73
    iput v0, p0, Lk/e/a/t;->S:I

    .line 74
    :cond_1
    iput v0, p0, Lk/e/a/t;->R:I

    goto :goto_1

    .line 75
    :cond_2
    :goto_0
    iget-object v0, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    iget-object v0, v0, Lk/e/a/q;->j:Lk/e/a/n;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lk/e/a/n;->a(IILk/e/a/w;Lk/e/a/x;)V

    :goto_1
    const/16 v0, 0xac

    if-lt p1, v0, :cond_3

    const/16 v0, 0xb1

    if-le p1, v0, :cond_4

    :cond_3
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_5

    .line 76
    :cond_4
    invoke-virtual {p0}, Lk/e/a/t;->a()V

    :cond_5
    return-void
.end method

.method public a(II)V
    .locals 3

    .line 196
    iget-object v0, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v1, v0, Lk/e/a/c;->b:I

    iput v1, p0, Lk/e/a/t;->Z:I

    const/16 v1, 0x84

    const/16 v2, 0xff

    if-gt p1, v2, :cond_1

    const/16 v2, 0x7f

    if-gt p2, v2, :cond_1

    const/16 v2, -0x80

    if-ge p2, v2, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {v0, v1}, Lk/e/a/c;->b(I)Lk/e/a/c;

    invoke-virtual {v0, p1, p2}, Lk/e/a/c;->a(II)Lk/e/a/c;

    goto :goto_1

    .line 198
    :cond_1
    :goto_0
    iget-object v0, p0, Lk/e/a/t;->k:Lk/e/a/c;

    const/16 v2, 0xc4

    invoke-virtual {v0, v2}, Lk/e/a/c;->b(I)Lk/e/a/c;

    invoke-virtual {v0, v1, p1}, Lk/e/a/c;->b(II)Lk/e/a/c;

    invoke-virtual {v0, p2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 199
    :goto_1
    iget-object p2, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    if-eqz p2, :cond_3

    iget p2, p0, Lk/e/a/t;->N:I

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 200
    :cond_2
    iget-object p2, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    iget-object p2, p2, Lk/e/a/q;->j:Lk/e/a/n;

    const/4 v0, 0x0

    invoke-virtual {p2, v1, p1, v0, v0}, Lk/e/a/n;->a(IILk/e/a/w;Lk/e/a/x;)V

    .line 201
    :cond_3
    iget p2, p0, Lk/e/a/t;->N:I

    if-eqz p2, :cond_4

    add-int/lit8 p1, p1, 0x1

    .line 202
    iget p2, p0, Lk/e/a/t;->j:I

    if-le p1, p2, :cond_4

    .line 203
    iput p1, p0, Lk/e/a/t;->j:I

    :cond_4
    return-void
.end method

.method public varargs a(IILk/e/a/q;[Lk/e/a/q;)V
    .locals 4

    .line 204
    iget-object v0, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v1, v0, Lk/e/a/c;->b:I

    iput v1, p0, Lk/e/a/t;->Z:I

    const/16 v1, 0xaa

    .line 205
    invoke-virtual {v0, v1}, Lk/e/a/c;->b(I)Lk/e/a/c;

    iget-object v1, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v1, v1, Lk/e/a/c;->b:I

    rem-int/lit8 v1, v1, 0x4

    rsub-int/lit8 v1, v1, 0x4

    rem-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v1}, Lk/e/a/c;->a([BII)Lk/e/a/c;

    .line 206
    iget-object v0, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v1, p0, Lk/e/a/t;->Z:I

    const/4 v3, 0x1

    invoke-virtual {p3, v0, v1, v3}, Lk/e/a/q;->a(Lk/e/a/c;IZ)V

    .line 207
    iget-object v0, p0, Lk/e/a/t;->k:Lk/e/a/c;

    invoke-virtual {v0, p1}, Lk/e/a/c;->c(I)Lk/e/a/c;

    invoke-virtual {v0, p2}, Lk/e/a/c;->c(I)Lk/e/a/c;

    .line 208
    array-length p1, p4

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object p2, p4, v2

    .line 209
    iget-object v0, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v1, p0, Lk/e/a/t;->Z:I

    invoke-virtual {p2, v0, v1, v3}, Lk/e/a/q;->a(Lk/e/a/c;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p0, p3, p4}, Lk/e/a/t;->a(Lk/e/a/q;[Lk/e/a/q;)V

    return-void
.end method

.method public a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 10

    .line 5
    iget v0, p0, Lk/e/a/t;->N:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v4, :cond_d

    .line 6
    iget-object v0, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    iget-object v1, v0, Lk/e/a/q;->j:Lk/e/a/n;

    if-nez v1, :cond_1

    .line 7
    new-instance p1, Lk/e/a/j;

    invoke-direct {p1, v0}, Lk/e/a/j;-><init>(Lk/e/a/q;)V

    iput-object p1, v0, Lk/e/a/q;->j:Lk/e/a/n;

    .line 8
    iget-object p1, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    iget-object p1, p1, Lk/e/a/q;->j:Lk/e/a/n;

    iget-object p3, p0, Lk/e/a/t;->c:Lk/e/a/x;

    iget v0, p0, Lk/e/a/t;->d:I

    iget-object v1, p0, Lk/e/a/t;->h:Ljava/lang/String;

    invoke-virtual {p1, p3, v0, v1, p2}, Lk/e/a/n;->a(Lk/e/a/x;ILjava/lang/String;I)V

    .line 9
    iget-object p1, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    iget-object p1, p1, Lk/e/a/q;->j:Lk/e/a/n;

    invoke-virtual {p1, p0}, Lk/e/a/n;->a(Lk/e/a/t;)V

    goto/16 :goto_10

    :cond_1
    if-ne p1, v2, :cond_c

    .line 10
    iget-object p1, p0, Lk/e/a/t;->c:Lk/e/a/x;

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/high16 v4, 0x400000

    if-ge v0, p2, :cond_4

    .line 11
    iget-object v7, v1, Lk/e/a/n;->b:[I

    add-int/lit8 v8, v2, 0x1

    aget-object v9, p3, v0

    invoke-static {p1, v9}, Lk/e/a/n;->a(Lk/e/a/x;Ljava/lang/Object;)I

    move-result v9

    aput v9, v7, v2

    .line 12
    aget-object v2, p3, v0

    sget-object v7, Lk/e/a/v;->e:Ljava/lang/Integer;

    if-eq v2, v7, :cond_3

    aget-object v2, p3, v0

    sget-object v7, Lk/e/a/v;->d:Ljava/lang/Integer;

    if-ne v2, v7, :cond_2

    goto :goto_1

    :cond_2
    move v2, v8

    goto :goto_2

    .line 13
    :cond_3
    :goto_1
    iget-object v2, v1, Lk/e/a/n;->b:[I

    add-int/lit8 v7, v8, 0x1

    aput v4, v2, v8

    move v2, v7

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_4
    :goto_3
    iget-object p2, v1, Lk/e/a/n;->b:[I

    array-length p3, p2

    if-ge v2, p3, :cond_5

    add-int/lit8 p3, v2, 0x1

    .line 15
    aput v4, p2, v2

    move v2, p3

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_4
    if-ge p2, p4, :cond_8

    .line 16
    aget-object v0, p5, p2

    sget-object v2, Lk/e/a/v;->e:Ljava/lang/Integer;

    if-eq v0, v2, :cond_6

    aget-object v0, p5, p2

    sget-object v2, Lk/e/a/v;->d:Ljava/lang/Integer;

    if-ne v0, v2, :cond_7

    :cond_6
    add-int/lit8 p3, p3, 0x1

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_8
    add-int/2addr p3, p4

    .line 17
    new-array p2, p3, [I

    iput-object p2, v1, Lk/e/a/n;->c:[I

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_5
    if-ge p2, p4, :cond_b

    .line 18
    iget-object v0, v1, Lk/e/a/n;->c:[I

    add-int/lit8 v2, p3, 0x1

    aget-object v7, p5, p2

    invoke-static {p1, v7}, Lk/e/a/n;->a(Lk/e/a/x;Ljava/lang/Object;)I

    move-result v7

    aput v7, v0, p3

    .line 19
    aget-object p3, p5, p2

    sget-object v0, Lk/e/a/v;->e:Ljava/lang/Integer;

    if-eq p3, v0, :cond_a

    aget-object p3, p5, p2

    sget-object v0, Lk/e/a/v;->d:Ljava/lang/Integer;

    if-ne p3, v0, :cond_9

    goto :goto_6

    :cond_9
    move p3, v2

    goto :goto_7

    .line 20
    :cond_a
    :goto_6
    iget-object p3, v1, Lk/e/a/n;->c:[I

    add-int/lit8 v0, v2, 0x1

    aput v4, p3, v2

    move p3, v0

    :goto_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 21
    :cond_b
    iput-short v5, v1, Lk/e/a/n;->g:S

    .line 22
    iput v5, v1, Lk/e/a/n;->h:I

    .line 23
    :cond_c
    iget-object p1, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    iget-object p1, p1, Lk/e/a/q;->j:Lk/e/a/n;

    invoke-virtual {p1, p0}, Lk/e/a/n;->a(Lk/e/a/t;)V

    goto/16 :goto_10

    :cond_d
    if-ne p1, v2, :cond_11

    .line 24
    iget-object p1, p0, Lk/e/a/t;->V:[I

    if-nez p1, :cond_e

    .line 25
    iget-object p1, p0, Lk/e/a/t;->h:Ljava/lang/String;

    invoke-static {p1}, Lk/e/a/y;->b(Ljava/lang/String;)I

    move-result p1

    shr-int/2addr p1, v3

    .line 26
    new-instance v0, Lk/e/a/n;

    new-instance v1, Lk/e/a/q;

    invoke-direct {v1}, Lk/e/a/q;-><init>()V

    invoke-direct {v0, v1}, Lk/e/a/n;-><init>(Lk/e/a/q;)V

    .line 27
    iget-object v1, p0, Lk/e/a/t;->c:Lk/e/a/x;

    iget v2, p0, Lk/e/a/t;->d:I

    iget-object v7, p0, Lk/e/a/t;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v7, p1}, Lk/e/a/n;->a(Lk/e/a/x;ILjava/lang/String;I)V

    .line 28
    invoke-virtual {v0, p0}, Lk/e/a/n;->a(Lk/e/a/t;)V

    .line 29
    :cond_e
    iput p2, p0, Lk/e/a/t;->T:I

    .line 30
    iget-object p1, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget p1, p1, Lk/e/a/c;->b:I

    invoke-virtual {p0, p1, p2, p4}, Lk/e/a/t;->a(III)I

    const/4 p1, 0x0

    :goto_8
    if-ge p1, p2, :cond_f

    .line 31
    iget-object v0, p0, Lk/e/a/t;->W:[I

    add-int/lit8 v1, v4, 0x1

    iget-object v2, p0, Lk/e/a/t;->c:Lk/e/a/x;

    aget-object v7, p3, p1

    invoke-static {v2, v7}, Lk/e/a/n;->a(Lk/e/a/x;Ljava/lang/Object;)I

    move-result v2

    aput v2, v0, v4

    add-int/lit8 p1, p1, 0x1

    move v4, v1

    goto :goto_8

    :cond_f
    const/4 p1, 0x0

    :goto_9
    if-ge p1, p4, :cond_10

    .line 32
    iget-object p2, p0, Lk/e/a/t;->W:[I

    add-int/lit8 p3, v4, 0x1

    iget-object v0, p0, Lk/e/a/t;->c:Lk/e/a/x;

    aget-object v1, p5, p1

    invoke-static {v0, v1}, Lk/e/a/n;->a(Lk/e/a/x;Ljava/lang/Object;)I

    move-result v0

    aput v0, p2, v4

    add-int/lit8 p1, p1, 0x1

    move v4, p3

    goto :goto_9

    .line 33
    :cond_10
    invoke-virtual {p0}, Lk/e/a/t;->b()V

    goto/16 :goto_10

    .line 34
    :cond_11
    iget-object v0, p0, Lk/e/a/t;->u:Lk/e/a/c;

    if-nez v0, :cond_12

    .line 35
    new-instance v0, Lk/e/a/c;

    invoke-direct {v0}, Lk/e/a/c;-><init>()V

    iput-object v0, p0, Lk/e/a/t;->u:Lk/e/a/c;

    .line 36
    iget-object v0, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v0, v0, Lk/e/a/c;->b:I

    goto :goto_a

    .line 37
    :cond_12
    iget-object v0, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v0, v0, Lk/e/a/c;->b:I

    iget v2, p0, Lk/e/a/t;->U:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, v6

    if-gez v0, :cond_14

    if-ne p1, v4, :cond_13

    return-void

    .line 38
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_14
    :goto_a
    if-eqz p1, :cond_1b

    if-eq p1, v6, :cond_1a

    const/16 p3, 0xfb

    if-eq p1, v3, :cond_19

    const/16 p2, 0x40

    if-eq p1, v4, :cond_17

    if-ne p1, v1, :cond_16

    if-ge v0, p2, :cond_15

    .line 39
    iget-object p1, p0, Lk/e/a/t;->u:Lk/e/a/c;

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lk/e/a/c;->b(I)Lk/e/a/c;

    goto :goto_b

    .line 40
    :cond_15
    iget-object p1, p0, Lk/e/a/t;->u:Lk/e/a/c;

    const/16 p2, 0xf7

    .line 41
    invoke-virtual {p1, p2}, Lk/e/a/c;->b(I)Lk/e/a/c;

    .line 42
    invoke-virtual {p1, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 43
    :goto_b
    aget-object p1, p5, v5

    invoke-virtual {p0, p1}, Lk/e/a/t;->b(Ljava/lang/Object;)V

    goto :goto_f

    .line 44
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_17
    if-ge v0, p2, :cond_18

    .line 45
    iget-object p1, p0, Lk/e/a/t;->u:Lk/e/a/c;

    invoke-virtual {p1, v0}, Lk/e/a/c;->b(I)Lk/e/a/c;

    goto :goto_f

    .line 46
    :cond_18
    iget-object p1, p0, Lk/e/a/t;->u:Lk/e/a/c;

    invoke-virtual {p1, p3}, Lk/e/a/c;->b(I)Lk/e/a/c;

    invoke-virtual {p1, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    goto :goto_f

    .line 47
    :cond_19
    iget p1, p0, Lk/e/a/t;->T:I

    sub-int/2addr p1, p2

    iput p1, p0, Lk/e/a/t;->T:I

    .line 48
    iget-object p1, p0, Lk/e/a/t;->u:Lk/e/a/c;

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lk/e/a/c;->b(I)Lk/e/a/c;

    invoke-virtual {p1, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    goto :goto_f

    .line 49
    :cond_1a
    iget p1, p0, Lk/e/a/t;->T:I

    add-int/2addr p1, p2

    iput p1, p0, Lk/e/a/t;->T:I

    .line 50
    iget-object p1, p0, Lk/e/a/t;->u:Lk/e/a/c;

    add-int/lit16 v1, p2, 0xfb

    invoke-virtual {p1, v1}, Lk/e/a/c;->b(I)Lk/e/a/c;

    invoke-virtual {p1, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    const/4 p1, 0x0

    :goto_c
    if-ge p1, p2, :cond_1d

    .line 51
    aget-object v0, p3, p1

    invoke-virtual {p0, v0}, Lk/e/a/t;->b(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 52
    :cond_1b
    iput p2, p0, Lk/e/a/t;->T:I

    .line 53
    iget-object p1, p0, Lk/e/a/t;->u:Lk/e/a/c;

    const/16 v1, 0xff

    invoke-virtual {p1, v1}, Lk/e/a/c;->b(I)Lk/e/a/c;

    invoke-virtual {p1, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    invoke-virtual {p1, p2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    const/4 p1, 0x0

    :goto_d
    if-ge p1, p2, :cond_1c

    .line 54
    aget-object v0, p3, p1

    invoke-virtual {p0, v0}, Lk/e/a/t;->b(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    .line 55
    :cond_1c
    iget-object p1, p0, Lk/e/a/t;->u:Lk/e/a/c;

    invoke-virtual {p1, p4}, Lk/e/a/c;->d(I)Lk/e/a/c;

    const/4 p1, 0x0

    :goto_e
    if-ge p1, p4, :cond_1d

    .line 56
    aget-object p2, p5, p1

    invoke-virtual {p0, p2}, Lk/e/a/t;->b(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_e

    .line 57
    :cond_1d
    :goto_f
    iget-object p1, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget p1, p1, Lk/e/a/c;->b:I

    iput p1, p0, Lk/e/a/t;->U:I

    .line 58
    iget p1, p0, Lk/e/a/t;->t:I

    add-int/2addr p1, v6

    iput p1, p0, Lk/e/a/t;->t:I

    .line 59
    :goto_10
    iget p1, p0, Lk/e/a/t;->N:I

    if-ne p1, v3, :cond_21

    .line 60
    iput p4, p0, Lk/e/a/t;->R:I

    :goto_11
    if-ge v5, p4, :cond_20

    .line 61
    aget-object p1, p5, v5

    sget-object p2, Lk/e/a/v;->e:Ljava/lang/Integer;

    if-eq p1, p2, :cond_1e

    aget-object p1, p5, v5

    sget-object p2, Lk/e/a/v;->d:Ljava/lang/Integer;

    if-ne p1, p2, :cond_1f

    .line 62
    :cond_1e
    iget p1, p0, Lk/e/a/t;->R:I

    add-int/2addr p1, v6

    iput p1, p0, Lk/e/a/t;->R:I

    :cond_1f
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 63
    :cond_20
    iget p1, p0, Lk/e/a/t;->R:I

    iget p2, p0, Lk/e/a/t;->S:I

    if-le p1, p2, :cond_21

    .line 64
    iput p1, p0, Lk/e/a/t;->S:I

    .line 65
    :cond_21
    iget p1, p0, Lk/e/a/t;->i:I

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lk/e/a/t;->i:I

    .line 66
    iget p1, p0, Lk/e/a/t;->j:I

    iget p2, p0, Lk/e/a/t;->T:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lk/e/a/t;->j:I

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    .line 77
    iget-object v0, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v0, v0, Lk/e/a/c;->b:I

    iput v0, p0, Lk/e/a/t;->Z:I

    .line 78
    iget-object v0, p0, Lk/e/a/t;->c:Lk/e/a/x;

    const/4 v1, 0x7

    .line 79
    invoke-virtual {v0, v1, p2}, Lk/e/a/x;->a(ILjava/lang/String;)Lk/e/a/w;

    move-result-object p2

    .line 80
    iget-object v0, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v1, p2, Lk/e/a/w;->a:I

    invoke-virtual {v0, p1, v1}, Lk/e/a/c;->b(II)Lk/e/a/c;

    .line 81
    iget-object v0, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    if-eqz v0, :cond_3

    .line 82
    iget v0, p0, Lk/e/a/t;->N:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0xbb

    if-ne p1, p2, :cond_3

    .line 83
    iget p1, p0, Lk/e/a/t;->R:I

    add-int/lit8 p1, p1, 0x1

    .line 84
    iget p2, p0, Lk/e/a/t;->S:I

    if-le p1, p2, :cond_1

    .line 85
    iput p1, p0, Lk/e/a/t;->S:I

    .line 86
    :cond_1
    iput p1, p0, Lk/e/a/t;->R:I

    goto :goto_1

    .line 87
    :cond_2
    :goto_0
    iget-object v0, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    iget-object v0, v0, Lk/e/a/q;->j:Lk/e/a/n;

    iget v1, p0, Lk/e/a/t;->Z:I

    iget-object v2, p0, Lk/e/a/t;->c:Lk/e/a/x;

    invoke-virtual {v0, p1, v1, p2, v2}, Lk/e/a/n;->a(IILk/e/a/w;Lk/e/a/x;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 88
    iget-object v0, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v0, v0, Lk/e/a/c;->b:I

    iput v0, p0, Lk/e/a/t;->Z:I

    .line 89
    iget-object v0, p0, Lk/e/a/t;->c:Lk/e/a/x;

    const/16 v1, 0x9

    .line 90
    invoke-virtual {v0, v1, p2, p3, p4}, Lk/e/a/x;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lk/e/a/x$a;

    move-result-object p2

    .line 91
    iget-object p3, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v0, p2, Lk/e/a/w;->a:I

    invoke-virtual {p3, p1, v0}, Lk/e/a/c;->b(II)Lk/e/a/c;

    .line 92
    iget-object p3, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    if-eqz p3, :cond_a

    .line 93
    iget p3, p0, Lk/e/a/t;->N:I

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p3, v0, :cond_9

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    goto :goto_3

    .line 94
    :cond_0
    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/4 p3, -0x2

    const/16 p4, 0x4a

    const/16 v0, 0x44

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 95
    iget p1, p0, Lk/e/a/t;->R:I

    if-eq p2, v0, :cond_6

    if-ne p2, p4, :cond_7

    goto :goto_0

    .line 96
    :pswitch_0
    iget p1, p0, Lk/e/a/t;->R:I

    if-eq p2, v0, :cond_1

    if-ne p2, p4, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    add-int/2addr p1, v1

    goto :goto_2

    .line 97
    :pswitch_1
    iget p1, p0, Lk/e/a/t;->R:I

    if-eq p2, v0, :cond_7

    if-ne p2, p4, :cond_3

    goto :goto_1

    :cond_3
    const/4 p3, -0x1

    goto :goto_1

    .line 98
    :pswitch_2
    iget p1, p0, Lk/e/a/t;->R:I

    if-eq p2, v0, :cond_4

    if-ne p2, p4, :cond_5

    :cond_4
    const/4 v2, 0x2

    :cond_5
    add-int/2addr p1, v2

    goto :goto_2

    :cond_6
    :goto_0
    const/4 p3, -0x3

    :cond_7
    :goto_1
    add-int/2addr p1, p3

    .line 99
    :goto_2
    iget p2, p0, Lk/e/a/t;->S:I

    if-le p1, p2, :cond_8

    .line 100
    iput p1, p0, Lk/e/a/t;->S:I

    .line 101
    :cond_8
    iput p1, p0, Lk/e/a/t;->R:I

    goto :goto_4

    .line 102
    :cond_9
    :goto_3
    iget-object p3, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    iget-object p3, p3, Lk/e/a/q;->j:Lk/e/a/n;

    iget-object p4, p0, Lk/e/a/t;->c:Lk/e/a/x;

    invoke-virtual {p3, p1, v1, p2, p4}, Lk/e/a/n;->a(IILk/e/a/w;Lk/e/a/x;)V

    :cond_a
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 103
    iget-object v0, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v0, v0, Lk/e/a/c;->b:I

    iput v0, p0, Lk/e/a/t;->Z:I

    .line 104
    iget-object v0, p0, Lk/e/a/t;->c:Lk/e/a/x;

    if-eqz p5, :cond_0

    const/16 p5, 0xb

    goto :goto_0

    :cond_0
    const/16 p5, 0xa

    .line 105
    :goto_0
    invoke-virtual {v0, p5, p2, p3, p4}, Lk/e/a/x;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lk/e/a/x$a;

    move-result-object p2

    const/4 p3, 0x0

    const/16 p4, 0xb9

    if-ne p1, p4, :cond_1

    .line 106
    iget-object p5, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v0, p2, Lk/e/a/w;->a:I

    invoke-virtual {p5, p4, v0}, Lk/e/a/c;->b(II)Lk/e/a/c;

    .line 107
    invoke-virtual {p2}, Lk/e/a/w;->a()I

    move-result p4

    shr-int/lit8 p4, p4, 0x2

    invoke-virtual {p5, p4, p3}, Lk/e/a/c;->a(II)Lk/e/a/c;

    goto :goto_1

    .line 108
    :cond_1
    iget-object p4, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget p5, p2, Lk/e/a/w;->a:I

    invoke-virtual {p4, p1, p5}, Lk/e/a/c;->b(II)Lk/e/a/c;

    .line 109
    :goto_1
    iget-object p4, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    if-eqz p4, :cond_6

    .line 110
    iget p4, p0, Lk/e/a/t;->N:I

    const/4 p5, 0x4

    if-eq p4, p5, :cond_5

    const/4 p5, 0x3

    if-ne p4, p5, :cond_2

    goto :goto_3

    .line 111
    :cond_2
    invoke-virtual {p2}, Lk/e/a/w;->a()I

    move-result p2

    and-int/lit8 p3, p2, 0x3

    shr-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p2

    const/16 p2, 0xb8

    if-ne p1, p2, :cond_3

    .line 112
    iget p1, p0, Lk/e/a/t;->R:I

    add-int/2addr p1, p3

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 113
    :cond_3
    iget p1, p0, Lk/e/a/t;->R:I

    add-int/2addr p1, p3

    .line 114
    :goto_2
    iget p2, p0, Lk/e/a/t;->S:I

    if-le p1, p2, :cond_4

    .line 115
    iput p1, p0, Lk/e/a/t;->S:I

    .line 116
    :cond_4
    iput p1, p0, Lk/e/a/t;->R:I

    goto :goto_4

    .line 117
    :cond_5
    :goto_3
    iget-object p4, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    iget-object p4, p4, Lk/e/a/q;->j:Lk/e/a/n;

    iget-object p5, p0, Lk/e/a/t;->c:Lk/e/a/x;

    invoke-virtual {p4, p1, p3, p2, p5}, Lk/e/a/n;->a(IILk/e/a/w;Lk/e/a/x;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public a(ILk/e/a/q;)V
    .locals 10

    .line 118
    iget-object v0, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v0, v0, Lk/e/a/c;->b:I

    iput v0, p0, Lk/e/a/t;->Z:I

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    add-int/lit8 v1, p1, -0x21

    goto :goto_0

    :cond_0
    move v1, p1

    .line 119
    :goto_0
    iget-short v2, p2, Lk/e/a/q;->a:S

    const/4 v3, 0x4

    and-int/2addr v2, v3

    const/16 v4, 0xa8

    const/16 v5, 0xa7

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_4

    iget v2, p2, Lk/e/a/q;->d:I

    iget-object v8, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v9, v8, Lk/e/a/c;->b:I

    sub-int/2addr v2, v9

    const/16 v9, -0x8000

    if-ge v2, v9, :cond_4

    if-ne v1, v5, :cond_1

    .line 120
    invoke-virtual {v8, v0}, Lk/e/a/c;->b(I)Lk/e/a/c;

    goto :goto_1

    :cond_1
    if-ne v1, v4, :cond_2

    const/16 p1, 0xc9

    .line 121
    invoke-virtual {v8, p1}, Lk/e/a/c;->b(I)Lk/e/a/c;

    :goto_1
    const/4 p1, 0x0

    goto :goto_3

    :cond_2
    const/16 p1, 0xc6

    if-lt v1, p1, :cond_3

    xor-int/lit8 p1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 p1, v1, 0x1

    xor-int/2addr p1, v7

    sub-int/2addr p1, v7

    .line 122
    :goto_2
    invoke-virtual {v8, p1}, Lk/e/a/c;->b(I)Lk/e/a/c;

    .line 123
    iget-object p1, p0, Lk/e/a/t;->k:Lk/e/a/c;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 124
    iget-object p1, p0, Lk/e/a/t;->k:Lk/e/a/c;

    const/16 v0, 0xdc

    invoke-virtual {p1, v0}, Lk/e/a/c;->b(I)Lk/e/a/c;

    .line 125
    iput-boolean v7, p0, Lk/e/a/t;->Y:Z

    const/4 p1, 0x1

    .line 126
    :goto_3
    iget-object v0, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v2, v0, Lk/e/a/c;->b:I

    sub-int/2addr v2, v7

    invoke-virtual {p2, v0, v2, v7}, Lk/e/a/q;->a(Lk/e/a/c;IZ)V

    goto :goto_5

    :cond_4
    if-eq v1, p1, :cond_5

    .line 127
    iget-object v0, p0, Lk/e/a/t;->k:Lk/e/a/c;

    invoke-virtual {v0, p1}, Lk/e/a/c;->b(I)Lk/e/a/c;

    .line 128
    iget-object p1, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v0, p1, Lk/e/a/c;->b:I

    sub-int/2addr v0, v7

    invoke-virtual {p2, p1, v0, v7}, Lk/e/a/q;->a(Lk/e/a/c;IZ)V

    goto :goto_4

    .line 129
    :cond_5
    iget-object p1, p0, Lk/e/a/t;->k:Lk/e/a/c;

    invoke-virtual {p1, v1}, Lk/e/a/c;->b(I)Lk/e/a/c;

    .line 130
    iget-object p1, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v0, p1, Lk/e/a/c;->b:I

    sub-int/2addr v0, v7

    invoke-virtual {p2, p1, v0, v6}, Lk/e/a/q;->a(Lk/e/a/c;IZ)V

    :goto_4
    const/4 p1, 0x0

    .line 131
    :goto_5
    iget-object v0, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    if-eqz v0, :cond_e

    .line 132
    iget v2, p0, Lk/e/a/t;->N:I

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-ne v2, v3, :cond_6

    .line 133
    iget-object v0, v0, Lk/e/a/q;->j:Lk/e/a/n;

    invoke-virtual {v0, v1, v6, v9, v9}, Lk/e/a/n;->a(IILk/e/a/w;Lk/e/a/x;)V

    .line 134
    invoke-virtual {p2}, Lk/e/a/q;->a()Lk/e/a/q;

    move-result-object v0

    iget-short v2, v0, Lk/e/a/q;->a:S

    or-int/2addr v2, v8

    int-to-short v2, v2

    iput-short v2, v0, Lk/e/a/q;->a:S

    .line 135
    invoke-virtual {p0, v6, p2}, Lk/e/a/t;->c(ILk/e/a/q;)V

    if-eq v1, v5, :cond_b

    .line 136
    new-instance v9, Lk/e/a/q;

    invoke-direct {v9}, Lk/e/a/q;-><init>()V

    goto :goto_6

    :cond_6
    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 137
    iget-object p2, v0, Lk/e/a/q;->j:Lk/e/a/n;

    invoke-virtual {p2, v1, v6, v9, v9}, Lk/e/a/n;->a(IILk/e/a/w;Lk/e/a/x;)V

    goto :goto_6

    :cond_7
    if-ne v2, v8, :cond_8

    .line 138
    iget p2, p0, Lk/e/a/t;->R:I

    sget-object v0, Lk/e/a/t;->c0:[I

    aget v0, v0, v1

    add-int/2addr p2, v0

    iput p2, p0, Lk/e/a/t;->R:I

    goto :goto_6

    :cond_8
    if-ne v1, v4, :cond_a

    .line 139
    iget-short v0, p2, Lk/e/a/q;->a:S

    and-int/lit8 v2, v0, 0x20

    if-nez v2, :cond_9

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    .line 140
    iput-short v0, p2, Lk/e/a/q;->a:S

    .line 141
    iput-boolean v7, p0, Lk/e/a/t;->X:Z

    .line 142
    :cond_9
    iget-object v0, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    iget-short v2, v0, Lk/e/a/q;->a:S

    or-int/lit8 v2, v2, 0x10

    int-to-short v2, v2

    iput-short v2, v0, Lk/e/a/q;->a:S

    .line 143
    iget v0, p0, Lk/e/a/t;->R:I

    add-int/2addr v0, v7

    invoke-virtual {p0, v0, p2}, Lk/e/a/t;->c(ILk/e/a/q;)V

    .line 144
    new-instance v9, Lk/e/a/q;

    invoke-direct {v9}, Lk/e/a/q;-><init>()V

    goto :goto_6

    .line 145
    :cond_a
    iget v0, p0, Lk/e/a/t;->R:I

    sget-object v2, Lk/e/a/t;->c0:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    iput v0, p0, Lk/e/a/t;->R:I

    .line 146
    invoke-virtual {p0, v0, p2}, Lk/e/a/t;->c(ILk/e/a/q;)V

    :cond_b
    :goto_6
    if-eqz v9, :cond_d

    if-eqz p1, :cond_c

    .line 147
    iget-short p1, v9, Lk/e/a/q;->a:S

    or-int/2addr p1, v8

    int-to-short p1, p1

    iput-short p1, v9, Lk/e/a/q;->a:S

    .line 148
    :cond_c
    invoke-virtual {p0, v9}, Lk/e/a/t;->a(Lk/e/a/q;)V

    :cond_d
    if-ne v1, v5, :cond_e

    .line 149
    invoke-virtual {p0}, Lk/e/a/t;->a()V

    :cond_e
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 7

    .line 181
    iget-object v0, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v0, v0, Lk/e/a/c;->b:I

    iput v0, p0, Lk/e/a/t;->Z:I

    .line 182
    iget-object v0, p0, Lk/e/a/t;->c:Lk/e/a/x;

    invoke-virtual {v0, p1}, Lk/e/a/x;->a(Ljava/lang/Object;)Lk/e/a/w;

    move-result-object p1

    .line 183
    iget v0, p1, Lk/e/a/w;->a:I

    .line 184
    iget v1, p1, Lk/e/a/w;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1

    const/4 v4, 0x6

    if-eq v1, v4, :cond_1

    const/16 v4, 0x11

    if-ne v1, v4, :cond_0

    iget-object v1, p1, Lk/e/a/w;->e:Ljava/lang/String;

    .line 185
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x4a

    if-eq v1, v4, :cond_1

    const/16 v4, 0x44

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/16 v4, 0x12

    if-eqz v1, :cond_2

    .line 186
    iget-object v5, p0, Lk/e/a/t;->k:Lk/e/a/c;

    const/16 v6, 0x14

    invoke-virtual {v5, v6, v0}, Lk/e/a/c;->b(II)Lk/e/a/c;

    goto :goto_2

    :cond_2
    const/16 v5, 0x100

    if-lt v0, v5, :cond_3

    .line 187
    iget-object v5, p0, Lk/e/a/t;->k:Lk/e/a/c;

    const/16 v6, 0x13

    invoke-virtual {v5, v6, v0}, Lk/e/a/c;->b(II)Lk/e/a/c;

    goto :goto_2

    .line 188
    :cond_3
    iget-object v5, p0, Lk/e/a/t;->k:Lk/e/a/c;

    invoke-virtual {v5, v4, v0}, Lk/e/a/c;->a(II)Lk/e/a/c;

    .line 189
    :goto_2
    iget-object v0, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    if-eqz v0, :cond_8

    .line 190
    iget v0, p0, Lk/e/a/t;->N:I

    const/4 v5, 0x4

    if-eq v0, v5, :cond_7

    const/4 v5, 0x3

    if-ne v0, v5, :cond_4

    goto :goto_3

    .line 191
    :cond_4
    iget p1, p0, Lk/e/a/t;->R:I

    if-eqz v1, :cond_5

    const/4 v2, 0x2

    :cond_5
    add-int/2addr p1, v2

    .line 192
    iget v0, p0, Lk/e/a/t;->S:I

    if-le p1, v0, :cond_6

    .line 193
    iput p1, p0, Lk/e/a/t;->S:I

    .line 194
    :cond_6
    iput p1, p0, Lk/e/a/t;->R:I

    goto :goto_4

    .line 195
    :cond_7
    :goto_3
    iget-object v0, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    iget-object v0, v0, Lk/e/a/q;->j:Lk/e/a/n;

    iget-object v1, p0, Lk/e/a/t;->c:Lk/e/a/x;

    invoke-virtual {v0, v4, v3, p1, v1}, Lk/e/a/n;->a(IILk/e/a/w;Lk/e/a/x;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lk/e/a/q;Lk/e/a/q;I)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 228
    iget-object v1, p0, Lk/e/a/t;->s:Lk/e/a/c;

    if-nez v1, :cond_0

    .line 229
    new-instance v1, Lk/e/a/c;

    invoke-direct {v1}, Lk/e/a/c;-><init>()V

    iput-object v1, p0, Lk/e/a/t;->s:Lk/e/a/c;

    .line 230
    :cond_0
    iget v1, p0, Lk/e/a/t;->r:I

    add-int/2addr v1, v0

    iput v1, p0, Lk/e/a/t;->r:I

    .line 231
    iget-object v1, p0, Lk/e/a/t;->s:Lk/e/a/c;

    iget v2, p4, Lk/e/a/q;->d:I

    .line 232
    invoke-virtual {v1, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget v2, p5, Lk/e/a/q;->d:I

    iget v3, p4, Lk/e/a/q;->d:I

    sub-int/2addr v2, v3

    .line 233
    invoke-virtual {v1, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v2, p0, Lk/e/a/t;->c:Lk/e/a/x;

    .line 234
    invoke-virtual {v2, p1}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v2, p0, Lk/e/a/t;->c:Lk/e/a/x;

    .line 235
    invoke-virtual {v2, p3}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v1, p3}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 236
    invoke-virtual {v1, p6}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 237
    :cond_1
    iget-object p3, p0, Lk/e/a/t;->q:Lk/e/a/c;

    if-nez p3, :cond_2

    .line 238
    new-instance p3, Lk/e/a/c;

    invoke-direct {p3}, Lk/e/a/c;-><init>()V

    iput-object p3, p0, Lk/e/a/t;->q:Lk/e/a/c;

    .line 239
    :cond_2
    iget p3, p0, Lk/e/a/t;->p:I

    add-int/2addr p3, v0

    iput p3, p0, Lk/e/a/t;->p:I

    .line 240
    iget-object p3, p0, Lk/e/a/t;->q:Lk/e/a/c;

    iget v1, p4, Lk/e/a/q;->d:I

    .line 241
    invoke-virtual {p3, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget p5, p5, Lk/e/a/q;->d:I

    iget p4, p4, Lk/e/a/q;->d:I

    sub-int/2addr p5, p4

    .line 242
    invoke-virtual {p3, p5}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object p4, p0, Lk/e/a/t;->c:Lk/e/a/x;

    .line 243
    invoke-virtual {p4, p1}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object p1, p0, Lk/e/a/t;->c:Lk/e/a/x;

    .line 244
    invoke-virtual {p1, p2}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 245
    invoke-virtual {p3, p6}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 246
    iget p1, p0, Lk/e/a/t;->N:I

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 247
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x4a

    if-eq p1, p2, :cond_3

    const/16 p2, 0x44

    if-ne p1, p2, :cond_4

    :cond_3
    const/4 v0, 0x2

    :cond_4
    add-int/2addr p6, v0

    .line 248
    iget p1, p0, Lk/e/a/t;->j:I

    if-le p6, p1, :cond_5

    .line 249
    iput p6, p0, Lk/e/a/t;->j:I

    :cond_5
    return-void
.end method

.method public a(Lk/e/a/q;)V
    .locals 6

    .line 150
    iget-boolean v0, p0, Lk/e/a/t;->Y:Z

    iget-object v1, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget-object v2, v1, Lk/e/a/c;->a:[B

    iget v1, v1, Lk/e/a/c;->b:I

    invoke-virtual {p1, v2, v1}, Lk/e/a/q;->a([BI)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lk/e/a/t;->Y:Z

    .line 151
    iget-short v0, p1, Lk/e/a/q;->a:S

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    return-void

    .line 152
    :cond_0
    iget v1, p0, Lk/e/a/t;->N:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v2, :cond_5

    .line 153
    iget-object v1, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    if-eqz v1, :cond_2

    .line 154
    iget v2, p1, Lk/e/a/q;->d:I

    iget v5, v1, Lk/e/a/q;->d:I

    if-ne v2, v5, :cond_1

    .line 155
    iget-short v2, v1, Lk/e/a/q;->a:S

    and-int/2addr v0, v4

    or-int/2addr v0, v2

    int-to-short v0, v0

    iput-short v0, v1, Lk/e/a/q;->a:S

    .line 156
    iget-object v0, v1, Lk/e/a/q;->j:Lk/e/a/n;

    iput-object v0, p1, Lk/e/a/q;->j:Lk/e/a/n;

    return-void

    .line 157
    :cond_1
    invoke-virtual {p0, v3, p1}, Lk/e/a/t;->c(ILk/e/a/q;)V

    .line 158
    :cond_2
    iget-object v0, p0, Lk/e/a/t;->P:Lk/e/a/q;

    if-eqz v0, :cond_4

    .line 159
    iget v1, p1, Lk/e/a/q;->d:I

    iget v2, v0, Lk/e/a/q;->d:I

    if-ne v1, v2, :cond_3

    .line 160
    iget-short v1, v0, Lk/e/a/q;->a:S

    iget-short v2, p1, Lk/e/a/q;->a:S

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lk/e/a/q;->a:S

    .line 161
    iget-object v1, v0, Lk/e/a/q;->j:Lk/e/a/n;

    iput-object v1, p1, Lk/e/a/q;->j:Lk/e/a/n;

    .line 162
    iput-object v0, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    return-void

    .line 163
    :cond_3
    iput-object p1, v0, Lk/e/a/q;->k:Lk/e/a/q;

    .line 164
    :cond_4
    iput-object p1, p0, Lk/e/a/t;->P:Lk/e/a/q;

    .line 165
    iput-object p1, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    .line 166
    new-instance v0, Lk/e/a/n;

    invoke-direct {v0, p1}, Lk/e/a/n;-><init>(Lk/e/a/q;)V

    iput-object v0, p1, Lk/e/a/q;->j:Lk/e/a/n;

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    if-ne v1, v0, :cond_7

    .line 167
    iget-object v0, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    if-nez v0, :cond_6

    .line 168
    iput-object p1, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    goto :goto_0

    .line 169
    :cond_6
    iget-object v0, v0, Lk/e/a/q;->j:Lk/e/a/n;

    iput-object p1, v0, Lk/e/a/n;->a:Lk/e/a/q;

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    if-ne v1, v0, :cond_a

    .line 170
    iget-object v0, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    if-eqz v0, :cond_8

    .line 171
    iget v1, p0, Lk/e/a/t;->S:I

    int-to-short v1, v1

    iput-short v1, v0, Lk/e/a/q;->h:S

    .line 172
    iget v0, p0, Lk/e/a/t;->R:I

    invoke-virtual {p0, v0, p1}, Lk/e/a/t;->c(ILk/e/a/q;)V

    .line 173
    :cond_8
    iput-object p1, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    .line 174
    iput v3, p0, Lk/e/a/t;->R:I

    .line 175
    iput v3, p0, Lk/e/a/t;->S:I

    .line 176
    iget-object v0, p0, Lk/e/a/t;->P:Lk/e/a/q;

    if-eqz v0, :cond_9

    .line 177
    iput-object p1, v0, Lk/e/a/q;->k:Lk/e/a/q;

    .line 178
    :cond_9
    iput-object p1, p0, Lk/e/a/t;->P:Lk/e/a/q;

    goto :goto_0

    :cond_a
    if-ne v1, v4, :cond_b

    .line 179
    iget-object v0, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    if-nez v0, :cond_b

    .line 180
    iput-object p1, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    :cond_b
    :goto_0
    return-void
.end method

.method public final a(Lk/e/a/q;[Lk/e/a/q;)V
    .locals 4

    .line 211
    iget-object v0, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    if-eqz v0, :cond_2

    .line 212
    iget v1, p0, Lk/e/a/t;->N:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 213
    iget-object v0, v0, Lk/e/a/q;->j:Lk/e/a/n;

    const/16 v1, 0xab

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2, v2}, Lk/e/a/n;->a(IILk/e/a/w;Lk/e/a/x;)V

    .line 214
    invoke-virtual {p0, v3, p1}, Lk/e/a/t;->c(ILk/e/a/q;)V

    .line 215
    invoke-virtual {p1}, Lk/e/a/q;->a()Lk/e/a/q;

    move-result-object p1

    iget-short v0, p1, Lk/e/a/q;->a:S

    or-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iput-short v0, p1, Lk/e/a/q;->a:S

    .line 216
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p2, v0

    .line 217
    invoke-virtual {p0, v3, v1}, Lk/e/a/t;->c(ILk/e/a/q;)V

    .line 218
    invoke-virtual {v1}, Lk/e/a/q;->a()Lk/e/a/q;

    move-result-object v1

    iget-short v2, v1, Lk/e/a/q;->a:S

    or-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    iput-short v2, v1, Lk/e/a/q;->a:S

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 219
    iget v1, p0, Lk/e/a/t;->R:I

    sub-int/2addr v1, v0

    iput v1, p0, Lk/e/a/t;->R:I

    .line 220
    invoke-virtual {p0, v1, p1}, Lk/e/a/t;->c(ILk/e/a/q;)V

    .line 221
    array-length p1, p2

    :goto_1
    if-ge v3, p1, :cond_1

    aget-object v0, p2, v3

    .line 222
    iget v1, p0, Lk/e/a/t;->R:I

    invoke-virtual {p0, v1, v0}, Lk/e/a/t;->c(ILk/e/a/q;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 223
    :cond_1
    invoke-virtual {p0}, Lk/e/a/t;->a()V

    :cond_2
    return-void
.end method

.method public b(ILk/e/a/z;Ljava/lang/String;Z)Lk/e/a/a;
    .locals 1

    if-eqz p4, :cond_0

    .line 1
    iget-object p4, p0, Lk/e/a/t;->c:Lk/e/a/x;

    iget-object v0, p0, Lk/e/a/t;->H:Lk/e/a/a;

    .line 2
    invoke-static {p4, p1, p2, p3, v0}, Lk/e/a/a;->a(Lk/e/a/x;ILk/e/a/z;Ljava/lang/String;Lk/e/a/a;)Lk/e/a/a;

    move-result-object p1

    iput-object p1, p0, Lk/e/a/t;->H:Lk/e/a/a;

    return-object p1

    .line 3
    :cond_0
    iget-object p4, p0, Lk/e/a/t;->c:Lk/e/a/x;

    iget-object v0, p0, Lk/e/a/t;->I:Lk/e/a/a;

    .line 4
    invoke-static {p4, p1, p2, p3, v0}, Lk/e/a/a;->a(Lk/e/a/x;ILk/e/a/z;Ljava/lang/String;Lk/e/a/a;)Lk/e/a/a;

    move-result-object p1

    iput-object p1, p0, Lk/e/a/t;->I:Lk/e/a/a;

    return-object p1
.end method

.method public b()V
    .locals 17

    move-object/from16 v0, p0

    .line 20
    iget-object v1, v0, Lk/e/a/t;->V:[I

    if-eqz v1, :cond_f

    .line 21
    iget-object v1, v0, Lk/e/a/t;->u:Lk/e/a/c;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lk/e/a/c;

    invoke-direct {v1}, Lk/e/a/c;-><init>()V

    iput-object v1, v0, Lk/e/a/t;->u:Lk/e/a/c;

    .line 23
    :cond_0
    iget-object v1, v0, Lk/e/a/t;->W:[I

    const/4 v2, 0x1

    aget v3, v1, v2

    const/4 v4, 0x2

    .line 24
    aget v4, v1, v4

    .line 25
    iget-object v5, v0, Lk/e/a/t;->c:Lk/e/a/x;

    .line 26
    iget v5, v5, Lk/e/a/x;->c:I

    const/16 v6, 0x32

    const/4 v7, 0x0

    const/4 v8, 0x3

    if-ge v5, v6, :cond_1

    .line 27
    iget-object v5, v0, Lk/e/a/t;->u:Lk/e/a/c;

    aget v1, v1, v7

    invoke-virtual {v5, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    invoke-virtual {v5, v3}, Lk/e/a/c;->d(I)Lk/e/a/c;

    add-int/2addr v3, v8

    .line 28
    invoke-virtual {v0, v8, v3}, Lk/e/a/t;->e(II)V

    .line 29
    iget-object v1, v0, Lk/e/a/t;->u:Lk/e/a/c;

    invoke-virtual {v1, v4}, Lk/e/a/c;->d(I)Lk/e/a/c;

    add-int/2addr v4, v3

    .line 30
    invoke-virtual {v0, v3, v4}, Lk/e/a/t;->e(II)V

    goto/16 :goto_5

    .line 31
    :cond_1
    iget v5, v0, Lk/e/a/t;->t:I

    if-nez v5, :cond_2

    aget v1, v1, v7

    goto :goto_0

    :cond_2
    aget v1, v1, v7

    iget-object v5, v0, Lk/e/a/t;->V:[I

    aget v5, v5, v7

    sub-int/2addr v1, v5

    sub-int/2addr v1, v2

    .line 32
    :goto_0
    iget-object v5, v0, Lk/e/a/t;->V:[I

    aget v5, v5, v2

    sub-int v6, v3, v5

    const/16 v9, 0xfb

    const/16 v10, 0x40

    const/16 v11, 0xf7

    const/16 v12, 0xf8

    const/16 v13, 0xfc

    const/16 v14, 0xff

    if-nez v4, :cond_4

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v15, 0xfc

    goto :goto_2

    :pswitch_1
    if-ge v1, v10, :cond_3

    const/4 v15, 0x0

    goto :goto_2

    :cond_3
    const/16 v15, 0xfb

    goto :goto_2

    :pswitch_2
    const/16 v15, 0xf8

    goto :goto_2

    :cond_4
    if-nez v6, :cond_6

    if-ne v4, v2, :cond_6

    const/16 v15, 0x3f

    if-ge v1, v15, :cond_5

    const/16 v15, 0x40

    goto :goto_2

    :cond_5
    const/16 v15, 0xf7

    goto :goto_2

    :cond_6
    :goto_1
    const/16 v15, 0xff

    :goto_2
    if-eq v15, v14, :cond_8

    const/16 v16, 0x3

    :goto_3
    if-ge v7, v5, :cond_8

    if-ge v7, v3, :cond_8

    .line 33
    iget-object v2, v0, Lk/e/a/t;->W:[I

    aget v2, v2, v16

    iget-object v8, v0, Lk/e/a/t;->V:[I

    aget v8, v8, v16

    if-eq v2, v8, :cond_7

    const/16 v15, 0xff

    goto :goto_4

    :cond_7
    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x1

    const/4 v8, 0x3

    goto :goto_3

    :cond_8
    :goto_4
    if-eqz v15, :cond_e

    if-eq v15, v10, :cond_d

    if-eq v15, v11, :cond_c

    if-eq v15, v12, :cond_b

    if-eq v15, v9, :cond_a

    if-eq v15, v13, :cond_9

    .line 34
    iget-object v2, v0, Lk/e/a/t;->u:Lk/e/a/c;

    invoke-virtual {v2, v14}, Lk/e/a/c;->b(I)Lk/e/a/c;

    invoke-virtual {v2, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    invoke-virtual {v2, v3}, Lk/e/a/c;->d(I)Lk/e/a/c;

    const/4 v2, 0x3

    add-int/2addr v3, v2

    .line 35
    invoke-virtual {v0, v2, v3}, Lk/e/a/t;->e(II)V

    .line 36
    iget-object v1, v0, Lk/e/a/t;->u:Lk/e/a/c;

    invoke-virtual {v1, v4}, Lk/e/a/c;->d(I)Lk/e/a/c;

    add-int/2addr v4, v3

    .line 37
    invoke-virtual {v0, v3, v4}, Lk/e/a/t;->e(II)V

    goto :goto_5

    :cond_9
    const/4 v2, 0x3

    .line 38
    iget-object v4, v0, Lk/e/a/t;->u:Lk/e/a/c;

    add-int/2addr v6, v9

    .line 39
    invoke-virtual {v4, v6}, Lk/e/a/c;->b(I)Lk/e/a/c;

    .line 40
    invoke-virtual {v4, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    add-int/2addr v5, v2

    add-int/2addr v3, v2

    .line 41
    invoke-virtual {v0, v5, v3}, Lk/e/a/t;->e(II)V

    goto :goto_5

    .line 42
    :cond_a
    iget-object v2, v0, Lk/e/a/t;->u:Lk/e/a/c;

    invoke-virtual {v2, v9}, Lk/e/a/c;->b(I)Lk/e/a/c;

    invoke-virtual {v2, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    goto :goto_5

    .line 43
    :cond_b
    iget-object v2, v0, Lk/e/a/t;->u:Lk/e/a/c;

    add-int/2addr v6, v9

    .line 44
    invoke-virtual {v2, v6}, Lk/e/a/c;->b(I)Lk/e/a/c;

    .line 45
    invoke-virtual {v2, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    goto :goto_5

    .line 46
    :cond_c
    iget-object v2, v0, Lk/e/a/t;->u:Lk/e/a/c;

    .line 47
    invoke-virtual {v2, v11}, Lk/e/a/c;->b(I)Lk/e/a/c;

    .line 48
    invoke-virtual {v2, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    add-int/lit8 v1, v3, 0x3

    add-int/lit8 v3, v3, 0x4

    .line 49
    invoke-virtual {v0, v1, v3}, Lk/e/a/t;->e(II)V

    goto :goto_5

    .line 50
    :cond_d
    iget-object v2, v0, Lk/e/a/t;->u:Lk/e/a/c;

    add-int/2addr v1, v10

    invoke-virtual {v2, v1}, Lk/e/a/c;->b(I)Lk/e/a/c;

    add-int/lit8 v1, v3, 0x3

    add-int/lit8 v3, v3, 0x4

    .line 51
    invoke-virtual {v0, v1, v3}, Lk/e/a/t;->e(II)V

    goto :goto_5

    .line 52
    :cond_e
    iget-object v2, v0, Lk/e/a/t;->u:Lk/e/a/c;

    invoke-virtual {v2, v1}, Lk/e/a/c;->b(I)Lk/e/a/c;

    .line 53
    :goto_5
    iget v1, v0, Lk/e/a/t;->t:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lk/e/a/t;->t:I

    .line 54
    :cond_f
    iget-object v1, v0, Lk/e/a/t;->W:[I

    iput-object v1, v0, Lk/e/a/t;->V:[I

    const/4 v1, 0x0

    .line 55
    iput-object v1, v0, Lk/e/a/t;->W:[I

    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public b(II)V
    .locals 2

    .line 5
    iget-object v0, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v1, v0, Lk/e/a/c;->b:I

    iput v1, p0, Lk/e/a/t;->Z:I

    const/16 v1, 0x11

    if-ne p1, v1, :cond_0

    .line 6
    invoke-virtual {v0, p1, p2}, Lk/e/a/c;->b(II)Lk/e/a/c;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, p1, p2}, Lk/e/a/c;->a(II)Lk/e/a/c;

    .line 8
    :goto_0
    iget-object v0, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    if-eqz v0, :cond_4

    .line 9
    iget v0, p0, Lk/e/a/t;->N:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 p2, 0xbc

    if-eq p1, p2, :cond_4

    .line 10
    iget p1, p0, Lk/e/a/t;->R:I

    add-int/lit8 p1, p1, 0x1

    .line 11
    iget p2, p0, Lk/e/a/t;->S:I

    if-le p1, p2, :cond_2

    .line 12
    iput p1, p0, Lk/e/a/t;->S:I

    .line 13
    :cond_2
    iput p1, p0, Lk/e/a/t;->R:I

    goto :goto_2

    .line 14
    :cond_3
    :goto_1
    iget-object v0, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    iget-object v0, v0, Lk/e/a/q;->j:Lk/e/a/n;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lk/e/a/n;->a(IILk/e/a/w;Lk/e/a/x;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public b(ILk/e/a/q;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lk/e/a/t;->o:Lk/e/a/c;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lk/e/a/c;

    invoke-direct {v0}, Lk/e/a/c;-><init>()V

    iput-object v0, p0, Lk/e/a/t;->o:Lk/e/a/c;

    .line 17
    :cond_0
    iget v0, p0, Lk/e/a/t;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lk/e/a/t;->n:I

    .line 18
    iget-object v0, p0, Lk/e/a/t;->o:Lk/e/a/c;

    iget p2, p2, Lk/e/a/q;->d:I

    invoke-virtual {v0, p2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 19
    iget-object p2, p0, Lk/e/a/t;->o:Lk/e/a/c;

    invoke-virtual {p2, p1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2

    .line 56
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lk/e/a/t;->u:Lk/e/a/c;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lk/e/a/c;->b(I)Lk/e/a/c;

    goto :goto_0

    .line 58
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lk/e/a/t;->u:Lk/e/a/c;

    const/4 v1, 0x7

    .line 60
    invoke-virtual {v0, v1}, Lk/e/a/c;->b(I)Lk/e/a/c;

    iget-object v1, p0, Lk/e/a/t;->c:Lk/e/a/x;

    check-cast p1, Ljava/lang/String;

    .line 61
    invoke-virtual {v1, p1}, Lk/e/a/x;->a(Ljava/lang/String;)Lk/e/a/w;

    move-result-object p1

    iget p1, p1, Lk/e/a/w;->a:I

    invoke-virtual {v0, p1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lk/e/a/t;->u:Lk/e/a/c;

    const/16 v1, 0x8

    .line 63
    invoke-virtual {v0, v1}, Lk/e/a/c;->b(I)Lk/e/a/c;

    check-cast p1, Lk/e/a/q;

    iget p1, p1, Lk/e/a/q;->d:I

    .line 64
    invoke-virtual {v0, p1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    :goto_0
    return-void
.end method

.method public c(II)V
    .locals 13

    .line 1
    iget v0, p0, Lk/e/a/t;->N:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-ne v0, v4, :cond_c

    .line 2
    iget-object p1, p0, Lk/e/a/t;->l:Lk/e/a/p;

    :goto_0
    const/high16 p2, 0x800000

    const-string v0, "java/lang/Throwable"

    if-eqz p1, :cond_2

    .line 3
    iget-object v4, p1, Lk/e/a/p;->e:Ljava/lang/String;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, v4

    .line 4
    :goto_1
    iget-object v4, p0, Lk/e/a/t;->c:Lk/e/a/x;

    .line 5
    invoke-virtual {v4, v0}, Lk/e/a/x;->d(Ljava/lang/String;)I

    move-result v0

    or-int/2addr p2, v0

    .line 6
    iget-object v0, p1, Lk/e/a/p;->c:Lk/e/a/q;

    invoke-virtual {v0}, Lk/e/a/q;->a()Lk/e/a/q;

    move-result-object v0

    .line 7
    iget-short v4, v0, Lk/e/a/q;->a:S

    or-int/2addr v4, v1

    int-to-short v4, v4

    iput-short v4, v0, Lk/e/a/q;->a:S

    .line 8
    iget-object v4, p1, Lk/e/a/p;->a:Lk/e/a/q;

    invoke-virtual {v4}, Lk/e/a/q;->a()Lk/e/a/q;

    move-result-object v4

    .line 9
    iget-object v5, p1, Lk/e/a/p;->b:Lk/e/a/q;

    invoke-virtual {v5}, Lk/e/a/q;->a()Lk/e/a/q;

    move-result-object v5

    :goto_2
    if-eq v4, v5, :cond_1

    .line 10
    new-instance v6, Lk/e/a/k;

    iget-object v7, v4, Lk/e/a/q;->l:Lk/e/a/k;

    invoke-direct {v6, p2, v0, v7}, Lk/e/a/k;-><init>(ILk/e/a/q;Lk/e/a/k;)V

    iput-object v6, v4, Lk/e/a/q;->l:Lk/e/a/k;

    .line 11
    iget-object v4, v4, Lk/e/a/q;->k:Lk/e/a/q;

    goto :goto_2

    .line 12
    :cond_1
    iget-object p1, p1, Lk/e/a/p;->f:Lk/e/a/p;

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lk/e/a/t;->O:Lk/e/a/q;

    iget-object p1, p1, Lk/e/a/q;->j:Lk/e/a/n;

    .line 14
    iget-object v1, p0, Lk/e/a/t;->c:Lk/e/a/x;

    iget v4, p0, Lk/e/a/t;->d:I

    iget-object v5, p0, Lk/e/a/t;->h:Ljava/lang/String;

    iget v6, p0, Lk/e/a/t;->j:I

    invoke-virtual {p1, v1, v4, v5, v6}, Lk/e/a/n;->a(Lk/e/a/x;ILjava/lang/String;I)V

    .line 15
    invoke-virtual {p1, p0}, Lk/e/a/n;->a(Lk/e/a/t;)V

    .line 16
    iget-object p1, p0, Lk/e/a/t;->O:Lk/e/a/q;

    .line 17
    sget-object v1, Lk/e/a/q;->n:Lk/e/a/q;

    iput-object v1, p1, Lk/e/a/q;->m:Lk/e/a/q;

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 18
    :goto_3
    sget-object v5, Lk/e/a/q;->n:Lk/e/a/q;

    if-eq p1, v5, :cond_6

    .line 19
    iget-object v5, p1, Lk/e/a/q;->m:Lk/e/a/q;

    .line 20
    iput-object v2, p1, Lk/e/a/q;->m:Lk/e/a/q;

    .line 21
    iget-short v6, p1, Lk/e/a/q;->a:S

    or-int/lit8 v6, v6, 0x8

    int-to-short v6, v6

    iput-short v6, p1, Lk/e/a/q;->a:S

    .line 22
    iget-object v6, p1, Lk/e/a/q;->j:Lk/e/a/n;

    .line 23
    iget-object v6, v6, Lk/e/a/n;->c:[I

    array-length v6, v6

    .line 24
    iget-short v7, p1, Lk/e/a/q;->h:S

    add-int/2addr v6, v7

    if-le v6, v4, :cond_3

    move v4, v6

    .line 25
    :cond_3
    iget-object v6, p1, Lk/e/a/q;->l:Lk/e/a/k;

    :goto_4
    if-eqz v6, :cond_5

    .line 26
    iget-object v7, v6, Lk/e/a/k;->b:Lk/e/a/q;

    invoke-virtual {v7}, Lk/e/a/q;->a()Lk/e/a/q;

    move-result-object v7

    .line 27
    iget-object v8, p1, Lk/e/a/q;->j:Lk/e/a/n;

    iget-object v9, p0, Lk/e/a/t;->c:Lk/e/a/x;

    iget-object v10, v7, Lk/e/a/q;->j:Lk/e/a/n;

    iget v11, v6, Lk/e/a/k;->a:I

    .line 28
    invoke-virtual {v8, v9, v10, v11}, Lk/e/a/n;->a(Lk/e/a/x;Lk/e/a/n;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 29
    iget-object v8, v7, Lk/e/a/q;->m:Lk/e/a/q;

    if-nez v8, :cond_4

    .line 30
    iput-object v5, v7, Lk/e/a/q;->m:Lk/e/a/q;

    move-object v5, v7

    .line 31
    :cond_4
    iget-object v6, v6, Lk/e/a/k;->c:Lk/e/a/k;

    goto :goto_4

    :cond_5
    move-object p1, v5

    goto :goto_3

    .line 32
    :cond_6
    iget-object p1, p0, Lk/e/a/t;->O:Lk/e/a/q;

    :goto_5
    if-eqz p1, :cond_b

    .line 33
    iget-short v2, p1, Lk/e/a/q;->a:S

    const/16 v5, 0xa

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_7

    .line 34
    iget-object v2, p1, Lk/e/a/q;->j:Lk/e/a/n;

    invoke-virtual {v2, p0}, Lk/e/a/n;->a(Lk/e/a/t;)V

    .line 35
    :cond_7
    iget-short v2, p1, Lk/e/a/q;->a:S

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_a

    .line 36
    iget-object v2, p1, Lk/e/a/q;->k:Lk/e/a/q;

    .line 37
    iget v5, p1, Lk/e/a/q;->d:I

    if-nez v2, :cond_8

    .line 38
    iget-object v6, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v6, v6, Lk/e/a/c;->b:I

    goto :goto_6

    :cond_8
    iget v6, v2, Lk/e/a/q;->d:I

    :goto_6
    sub-int/2addr v6, v3

    if-lt v6, v5, :cond_a

    move v7, v5

    :goto_7
    if-ge v7, v6, :cond_9

    .line 39
    iget-object v8, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget-object v8, v8, Lk/e/a/c;->a:[B

    aput-byte v1, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 40
    :cond_9
    iget-object v7, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget-object v7, v7, Lk/e/a/c;->a:[B

    const/16 v8, -0x41

    aput-byte v8, v7, v6

    .line 41
    invoke-virtual {p0, v5, v1, v3}, Lk/e/a/t;->a(III)I

    const/4 v5, 0x3

    .line 42
    iget-object v6, p0, Lk/e/a/t;->W:[I

    iget-object v7, p0, Lk/e/a/t;->c:Lk/e/a/x;

    .line 43
    invoke-virtual {v7, v0}, Lk/e/a/x;->d(Ljava/lang/String;)I

    move-result v7

    or-int/2addr v7, p2

    .line 44
    aput v7, v6, v5

    .line 45
    invoke-virtual {p0}, Lk/e/a/t;->b()V

    .line 46
    iget-object v5, p0, Lk/e/a/t;->l:Lk/e/a/p;

    invoke-static {v5, p1, v2}, Lk/e/a/p;->a(Lk/e/a/p;Lk/e/a/q;Lk/e/a/q;)Lk/e/a/p;

    move-result-object v2

    iput-object v2, p0, Lk/e/a/t;->l:Lk/e/a/p;

    .line 47
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v4, v2

    .line 48
    :cond_a
    iget-object p1, p1, Lk/e/a/q;->k:Lk/e/a/q;

    goto :goto_5

    .line 49
    :cond_b
    iput v4, p0, Lk/e/a/t;->i:I

    goto/16 :goto_12

    :cond_c
    if-ne v0, v3, :cond_1d

    .line 50
    iget-object p1, p0, Lk/e/a/t;->l:Lk/e/a/p;

    :goto_8
    const p2, 0x7fffffff

    if-eqz p1, :cond_f

    .line 51
    iget-object v0, p1, Lk/e/a/p;->c:Lk/e/a/q;

    .line 52
    iget-object v1, p1, Lk/e/a/p;->a:Lk/e/a/q;

    .line 53
    iget-object v4, p1, Lk/e/a/p;->b:Lk/e/a/q;

    :goto_9
    if-eq v1, v4, :cond_e

    .line 54
    iget-short v5, v1, Lk/e/a/q;->a:S

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_d

    .line 55
    new-instance v5, Lk/e/a/k;

    iget-object v6, v1, Lk/e/a/q;->l:Lk/e/a/k;

    invoke-direct {v5, p2, v0, v6}, Lk/e/a/k;-><init>(ILk/e/a/q;Lk/e/a/k;)V

    iput-object v5, v1, Lk/e/a/q;->l:Lk/e/a/k;

    goto :goto_a

    .line 56
    :cond_d
    iget-object v5, v1, Lk/e/a/q;->l:Lk/e/a/k;

    iget-object v5, v5, Lk/e/a/k;->c:Lk/e/a/k;

    new-instance v6, Lk/e/a/k;

    iget-object v7, v5, Lk/e/a/k;->c:Lk/e/a/k;

    invoke-direct {v6, p2, v0, v7}, Lk/e/a/k;-><init>(ILk/e/a/q;Lk/e/a/k;)V

    iput-object v6, v5, Lk/e/a/k;->c:Lk/e/a/k;

    .line 57
    :goto_a
    iget-object v1, v1, Lk/e/a/q;->k:Lk/e/a/q;

    goto :goto_9

    .line 58
    :cond_e
    iget-object p1, p1, Lk/e/a/p;->f:Lk/e/a/p;

    goto :goto_8

    .line 59
    :cond_f
    iget-boolean p1, p0, Lk/e/a/t;->X:Z

    if-eqz p1, :cond_16

    .line 60
    iget-object p1, p0, Lk/e/a/t;->O:Lk/e/a/q;

    invoke-virtual {p1, v3}, Lk/e/a/q;->a(S)V

    const/4 p1, 0x1

    const/4 v0, 0x1

    :goto_b
    if-gt p1, v0, :cond_12

    .line 61
    iget-object v1, p0, Lk/e/a/t;->O:Lk/e/a/q;

    :goto_c
    if-eqz v1, :cond_11

    .line 62
    iget-short v4, v1, Lk/e/a/q;->a:S

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_10

    iget-short v4, v1, Lk/e/a/q;->i:S

    if-ne v4, p1, :cond_10

    .line 63
    iget-object v4, v1, Lk/e/a/q;->l:Lk/e/a/k;

    iget-object v4, v4, Lk/e/a/k;->c:Lk/e/a/k;

    iget-object v4, v4, Lk/e/a/k;->b:Lk/e/a/q;

    .line 64
    iget-short v5, v4, Lk/e/a/q;->i:S

    if-nez v5, :cond_10

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    .line 65
    invoke-virtual {v4, v0}, Lk/e/a/q;->a(S)V

    .line 66
    :cond_10
    iget-object v1, v1, Lk/e/a/q;->k:Lk/e/a/q;

    goto :goto_c

    :cond_11
    add-int/lit8 p1, p1, 0x1

    int-to-short p1, p1

    goto :goto_b

    .line 67
    :cond_12
    iget-object p1, p0, Lk/e/a/t;->O:Lk/e/a/q;

    :goto_d
    if-eqz p1, :cond_16

    .line 68
    iget-short v0, p1, Lk/e/a/q;->a:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_15

    .line 69
    iget-object v0, p1, Lk/e/a/q;->l:Lk/e/a/k;

    iget-object v0, v0, Lk/e/a/k;->c:Lk/e/a/k;

    iget-object v0, v0, Lk/e/a/k;->b:Lk/e/a/q;

    .line 70
    sget-object v1, Lk/e/a/q;->n:Lk/e/a/q;

    .line 71
    iput-object v1, v0, Lk/e/a/q;->m:Lk/e/a/q;

    .line 72
    :goto_e
    sget-object v4, Lk/e/a/q;->n:Lk/e/a/q;

    if-eq v0, v4, :cond_14

    .line 73
    iget-object v4, v0, Lk/e/a/q;->m:Lk/e/a/q;

    .line 74
    iput-object v1, v0, Lk/e/a/q;->m:Lk/e/a/q;

    .line 75
    iget-short v1, v0, Lk/e/a/q;->a:S

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_13

    iget-short v1, v0, Lk/e/a/q;->i:S

    iget-short v5, p1, Lk/e/a/q;->i:S

    if-eq v1, v5, :cond_13

    .line 76
    new-instance v1, Lk/e/a/k;

    iget-short v5, v0, Lk/e/a/q;->g:S

    iget-object v6, p1, Lk/e/a/q;->l:Lk/e/a/k;

    iget-object v6, v6, Lk/e/a/k;->b:Lk/e/a/q;

    iget-object v7, v0, Lk/e/a/q;->l:Lk/e/a/k;

    invoke-direct {v1, v5, v6, v7}, Lk/e/a/k;-><init>(ILk/e/a/q;Lk/e/a/k;)V

    iput-object v1, v0, Lk/e/a/q;->l:Lk/e/a/k;

    .line 77
    :cond_13
    invoke-virtual {v0, v4}, Lk/e/a/q;->a(Lk/e/a/q;)Lk/e/a/q;

    move-result-object v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_e

    .line 78
    :cond_14
    :goto_f
    sget-object v0, Lk/e/a/q;->n:Lk/e/a/q;

    if-eq v1, v0, :cond_15

    .line 79
    iget-object v0, v1, Lk/e/a/q;->m:Lk/e/a/q;

    .line 80
    iput-object v2, v1, Lk/e/a/q;->m:Lk/e/a/q;

    move-object v1, v0

    goto :goto_f

    .line 81
    :cond_15
    iget-object p1, p1, Lk/e/a/q;->k:Lk/e/a/q;

    goto :goto_d

    .line 82
    :cond_16
    iget-object p1, p0, Lk/e/a/t;->O:Lk/e/a/q;

    .line 83
    sget-object v0, Lk/e/a/q;->n:Lk/e/a/q;

    iput-object v0, p1, Lk/e/a/q;->m:Lk/e/a/q;

    .line 84
    iget v0, p0, Lk/e/a/t;->i:I

    .line 85
    :cond_17
    sget-object v1, Lk/e/a/q;->n:Lk/e/a/q;

    if-eq p1, v1, :cond_1c

    .line 86
    iget-object v1, p1, Lk/e/a/q;->m:Lk/e/a/q;

    .line 87
    iget-short v2, p1, Lk/e/a/q;->f:S

    .line 88
    iget-short v4, p1, Lk/e/a/q;->h:S

    add-int/2addr v4, v2

    if-le v4, v0, :cond_18

    move v0, v4

    .line 89
    :cond_18
    iget-object v4, p1, Lk/e/a/q;->l:Lk/e/a/k;

    .line 90
    iget-short p1, p1, Lk/e/a/q;->a:S

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_19

    .line 91
    iget-object v4, v4, Lk/e/a/k;->c:Lk/e/a/k;

    :cond_19
    move-object p1, v1

    :goto_10
    if-eqz v4, :cond_17

    .line 92
    iget-object v1, v4, Lk/e/a/k;->b:Lk/e/a/q;

    .line 93
    iget-object v5, v1, Lk/e/a/q;->m:Lk/e/a/q;

    if-nez v5, :cond_1b

    .line 94
    iget v5, v4, Lk/e/a/k;->a:I

    if-ne v5, p2, :cond_1a

    const/4 v5, 0x1

    goto :goto_11

    :cond_1a
    add-int/2addr v5, v2

    :goto_11
    int-to-short v5, v5

    iput-short v5, v1, Lk/e/a/q;->f:S

    .line 95
    iput-object p1, v1, Lk/e/a/q;->m:Lk/e/a/q;

    move-object p1, v1

    .line 96
    :cond_1b
    iget-object v4, v4, Lk/e/a/k;->c:Lk/e/a/k;

    goto :goto_10

    .line 97
    :cond_1c
    iput v0, p0, Lk/e/a/t;->i:I

    goto :goto_12

    :cond_1d
    if-ne v0, v1, :cond_1e

    .line 98
    iget p1, p0, Lk/e/a/t;->S:I

    iput p1, p0, Lk/e/a/t;->i:I

    goto :goto_12

    .line 99
    :cond_1e
    iput p1, p0, Lk/e/a/t;->i:I

    .line 100
    iput p2, p0, Lk/e/a/t;->j:I

    :goto_12
    return-void
.end method

.method public final c(ILk/e/a/q;)V
    .locals 3

    .line 101
    iget-object v0, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    new-instance v1, Lk/e/a/k;

    iget-object v2, v0, Lk/e/a/q;->l:Lk/e/a/k;

    invoke-direct {v1, p1, p2, v2}, Lk/e/a/k;-><init>(ILk/e/a/q;Lk/e/a/k;)V

    iput-object v1, v0, Lk/e/a/q;->l:Lk/e/a/k;

    return-void
.end method

.method public d(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lk/e/a/t;->k:Lk/e/a/c;

    iget v0, v0, Lk/e/a/c;->b:I

    iput v0, p0, Lk/e/a/t;->Z:I

    const/16 v0, 0xa9

    const/16 v1, 0x36

    const/4 v2, 0x4

    if-ge p2, v2, :cond_1

    if-eq p1, v0, :cond_1

    if-ge p1, v1, :cond_0

    add-int/lit8 v3, p1, -0x15

    shl-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1a

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p1, -0x36

    shl-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x3b

    :goto_0
    add-int/2addr v3, p2

    .line 2
    iget-object v4, p0, Lk/e/a/t;->k:Lk/e/a/c;

    invoke-virtual {v4, v3}, Lk/e/a/c;->b(I)Lk/e/a/c;

    goto :goto_1

    :cond_1
    const/16 v3, 0x100

    if-lt p2, v3, :cond_2

    .line 3
    iget-object v3, p0, Lk/e/a/t;->k:Lk/e/a/c;

    const/16 v4, 0xc4

    invoke-virtual {v3, v4}, Lk/e/a/c;->b(I)Lk/e/a/c;

    invoke-virtual {v3, p1, p2}, Lk/e/a/c;->b(II)Lk/e/a/c;

    goto :goto_1

    .line 4
    :cond_2
    iget-object v3, p0, Lk/e/a/t;->k:Lk/e/a/c;

    invoke-virtual {v3, p1, p2}, Lk/e/a/c;->a(II)Lk/e/a/c;

    .line 5
    :goto_1
    iget-object v3, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    if-eqz v3, :cond_7

    .line 6
    iget v4, p0, Lk/e/a/t;->N:I

    if-eq v4, v2, :cond_6

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    goto :goto_2

    :cond_3
    if-ne p1, v0, :cond_4

    .line 7
    iget-short v0, v3, Lk/e/a/q;->a:S

    or-int/lit8 v0, v0, 0x40

    int-to-short v0, v0

    iput-short v0, v3, Lk/e/a/q;->a:S

    .line 8
    iget v0, p0, Lk/e/a/t;->R:I

    int-to-short v0, v0

    iput-short v0, v3, Lk/e/a/q;->g:S

    .line 9
    invoke-virtual {p0}, Lk/e/a/t;->a()V

    goto :goto_3

    .line 10
    :cond_4
    iget v0, p0, Lk/e/a/t;->R:I

    sget-object v3, Lk/e/a/t;->c0:[I

    aget v3, v3, p1

    add-int/2addr v0, v3

    .line 11
    iget v3, p0, Lk/e/a/t;->S:I

    if-le v0, v3, :cond_5

    .line 12
    iput v0, p0, Lk/e/a/t;->S:I

    .line 13
    :cond_5
    iput v0, p0, Lk/e/a/t;->R:I

    goto :goto_3

    .line 14
    :cond_6
    :goto_2
    iget-object v0, p0, Lk/e/a/t;->Q:Lk/e/a/q;

    iget-object v0, v0, Lk/e/a/q;->j:Lk/e/a/n;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, p2, v3, v3}, Lk/e/a/n;->a(IILk/e/a/w;Lk/e/a/x;)V

    .line 15
    :cond_7
    :goto_3
    iget v0, p0, Lk/e/a/t;->N:I

    if-eqz v0, :cond_a

    const/16 v0, 0x16

    if-eq p1, v0, :cond_9

    const/16 v0, 0x18

    if-eq p1, v0, :cond_9

    const/16 v0, 0x37

    if-eq p1, v0, :cond_9

    const/16 v0, 0x39

    if-ne p1, v0, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_9
    :goto_4
    add-int/lit8 p2, p2, 0x2

    .line 16
    :goto_5
    iget v0, p0, Lk/e/a/t;->j:I

    if-le p2, v0, :cond_a

    .line 17
    iput p2, p0, Lk/e/a/t;->j:I

    :cond_a
    if-lt p1, v1, :cond_b

    .line 18
    iget p1, p0, Lk/e/a/t;->N:I

    if-ne p1, v2, :cond_b

    iget-object p1, p0, Lk/e/a/t;->l:Lk/e/a/p;

    if-eqz p1, :cond_b

    .line 19
    new-instance p1, Lk/e/a/q;

    invoke-direct {p1}, Lk/e/a/q;-><init>()V

    invoke-virtual {p0, p1}, Lk/e/a/t;->a(Lk/e/a/q;)V

    :cond_b
    return-void
.end method

.method public final e(II)V
    .locals 10

    :goto_0
    if-ge p1, p2, :cond_a

    .line 1
    iget-object v0, p0, Lk/e/a/t;->c:Lk/e/a/x;

    iget-object v1, p0, Lk/e/a/t;->W:[I

    aget v1, v1, p1

    iget-object v2, p0, Lk/e/a/t;->u:Lk/e/a/c;

    const/high16 v3, -0x4000000

    and-int/2addr v3, v1

    shr-int/lit8 v3, v3, 0x1a

    const/4 v4, 0x7

    const/high16 v5, 0x800000

    const/high16 v6, 0x3c00000

    const v7, 0xfffff

    if-nez v3, :cond_3

    and-int v3, v1, v7

    and-int/2addr v1, v6

    const/high16 v6, 0x400000

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_1

    const/high16 v4, 0xc00000

    if-ne v1, v4, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v2, v1}, Lk/e/a/c;->b(I)Lk/e/a/c;

    .line 3
    iget-object v0, v0, Lk/e/a/x;->l:[Lk/e/a/x$a;

    aget-object v0, v0, v3

    .line 4
    iget-wide v0, v0, Lk/e/a/w;->f:J

    long-to-int v1, v0

    invoke-virtual {v2, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    goto/16 :goto_3

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    invoke-virtual {v2, v4}, Lk/e/a/c;->b(I)Lk/e/a/c;

    .line 7
    iget-object v1, v0, Lk/e/a/x;->l:[Lk/e/a/x$a;

    aget-object v1, v1, v3

    .line 8
    iget-object v1, v1, Lk/e/a/w;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lk/e/a/x;->a(Ljava/lang/String;)Lk/e/a/w;

    move-result-object v0

    iget v0, v0, Lk/e/a/w;->a:I

    invoke-virtual {v2, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    goto/16 :goto_3

    .line 9
    :cond_2
    invoke-virtual {v2, v3}, Lk/e/a/c;->b(I)Lk/e/a/c;

    goto/16 :goto_3

    .line 10
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    add-int/lit8 v9, v3, -0x1

    if-lez v3, :cond_4

    const/16 v3, 0x5b

    .line 11
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v9

    goto :goto_1

    :cond_4
    and-int v3, v1, v6

    if-ne v3, v5, :cond_5

    const/16 v3, 0x4c

    .line 12
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/2addr v1, v7

    .line 13
    iget-object v3, v0, Lk/e/a/x;->l:[Lk/e/a/x$a;

    aget-object v1, v3, v1

    .line 14
    iget-object v1, v1, Lk/e/a/w;->e:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    .line 15
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    and-int/2addr v1, v7

    const/4 v3, 0x1

    if-eq v1, v3, :cond_9

    const/4 v3, 0x2

    if-eq v1, v3, :cond_8

    const/4 v3, 0x3

    if-eq v1, v3, :cond_7

    const/4 v3, 0x4

    if-eq v1, v3, :cond_6

    packed-switch v1, :pswitch_data_0

    .line 16
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :pswitch_0
    const/16 v1, 0x53

    .line 17
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_1
    const/16 v1, 0x43

    .line 18
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_2
    const/16 v1, 0x42

    .line 19
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_3
    const/16 v1, 0x5a

    .line 20
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    const/16 v1, 0x4a

    .line 21
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    const/16 v1, 0x44

    .line 22
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    const/16 v1, 0x46

    .line 23
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    const/16 v1, 0x49

    .line 24
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    :goto_2
    invoke-virtual {v2, v4}, Lk/e/a/c;->b(I)Lk/e/a/c;

    .line 26
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk/e/a/x;->a(Ljava/lang/String;)Lk/e/a/w;

    move-result-object v0

    iget v0, v0, Lk/e/a/w;->a:I

    invoke-virtual {v2, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
