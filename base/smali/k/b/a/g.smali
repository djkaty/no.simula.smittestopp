.class public Lk/b/a/g;
.super Lk/b/a/t;
.source "SourceFile"


# static fields
.field public static y:[Lk/b/a/g;


# instance fields
.field public final x:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [Lk/b/a/g;

    sput-object v0, Lk/b/a/g;->y:[Lk/b/a/g;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lk/b/a/t;-><init>()V

    invoke-static {p1}, Lk/b/a/l;->b([B)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    invoke-static {p1}, Lk/b/c/e/a;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Lk/b/a/g;->x:[B

    invoke-static {p1}, Lk/b/a/l;->c([B)I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enumerated must be non-negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "malformed enumerated"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lk/b/a/r;Z)V
    .locals 2

    iget-object v0, p0, Lk/b/a/g;->x:[B

    const/16 v1, 0xa

    invoke-virtual {p1, p2, v1, v0}, Lk/b/a/r;->a(ZI[B)V

    return-void
.end method

.method public a(Lk/b/a/t;)Z
    .locals 1

    instance-of v0, p1, Lk/b/a/g;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lk/b/a/g;

    iget-object v0, p0, Lk/b/a/g;->x:[B

    iget-object p1, p1, Lk/b/a/g;->x:[B

    .line 1
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Lk/b/a/g;->x:[B

    array-length v0, v0

    invoke-static {v0}, Lk/b/a/d2;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lk/b/a/g;->x:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lk/b/a/g;->x:[B

    invoke-static {v0}, Lk/b/c/e/a;->d([B)I

    move-result v0

    return v0
.end method
