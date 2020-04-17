.class public final Lk/b/i/b/c/b;
.super Lk/b/c/d/a;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lk/b/c/d/a;-><init>(Z)V

    array-length v0, p2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    const v1, 0x9620

    goto :goto_0

    .line 1
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown security category: "

    invoke-static {v0, p1}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const/16 v1, 0x3a20

    :goto_0
    if-ne v0, v1, :cond_2

    .line 2
    iput p1, p0, Lk/b/i/b/c/b;->a:I

    invoke-static {p2}, Lk/b/c/e/a;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/b/c/b;->b:[B

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid key size for security category"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, Lk/b/i/b/c/b;->b:[B

    invoke-static {v0}, Lk/b/c/e/a;->a([B)[B

    move-result-object v0

    return-object v0
.end method
