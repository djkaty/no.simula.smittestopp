.class public Lk/b/f/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/b/f/b/e;


# instance fields
.field public final a:Lk/b/f/b/a;

.field public final b:Lk/b/f/b/c;


# direct methods
.method public constructor <init>(Lk/b/f/b/a;Lk/b/f/b/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/b/f/b/d;->a:Lk/b/f/b/a;

    iput-object p2, p0, Lk/b/f/b/d;->b:Lk/b/f/b/c;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    iget-object v0, p0, Lk/b/f/b/d;->a:Lk/b/f/b/a;

    invoke-interface {v0}, Lk/b/f/b/a;->a()I

    move-result v0

    iget-object v1, p0, Lk/b/f/b/d;->b:Lk/b/f/b/c;

    .line 1
    iget-object v1, v1, Lk/b/f/b/c;->a:[I

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    mul-int v0, v0, v1

    return v0
.end method

.method public b()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lk/b/f/b/d;->a:Lk/b/f/b/a;

    invoke-interface {v0}, Lk/b/f/b/a;->b()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lk/b/f/b/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lk/b/f/b/d;

    iget-object v1, p0, Lk/b/f/b/d;->a:Lk/b/f/b/a;

    iget-object v3, p1, Lk/b/f/b/d;->a:Lk/b/f/b/a;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lk/b/f/b/d;->b:Lk/b/f/b/c;

    iget-object p1, p1, Lk/b/f/b/d;->b:Lk/b/f/b/c;

    invoke-virtual {v1, p1}, Lk/b/f/b/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lk/b/f/b/d;->a:Lk/b/f/b/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lk/b/f/b/d;->b:Lk/b/f/b/c;

    invoke-virtual {v1}, Lk/b/f/b/c;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    .line 1
    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
