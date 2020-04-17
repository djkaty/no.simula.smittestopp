.class public Lk/b/a/m2/d;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public x:Lk/b/f/a/c;


# direct methods
.method public constructor <init>(Lk/b/f/a/c;)V
    .locals 0

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    iput-object p1, p0, Lk/b/a/m2/d;->x:Lk/b/f/a/c;

    return-void
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 5

    iget-object v0, p0, Lk/b/a/m2/d;->x:Lk/b/f/a/c;

    .line 1
    invoke-virtual {v0}, Lk/b/f/a/c;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 2
    iget-object v1, p0, Lk/b/a/m2/d;->x:Lk/b/f/a/c;

    invoke-virtual {v1}, Lk/b/f/a/c;->h()Ljava/math/BigInteger;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    new-array v2, v0, [B

    array-length v4, v1

    sub-int/2addr v4, v0

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    move-object v1, v2

    goto :goto_1

    :cond_0
    array-length v2, v1

    if-le v0, v2, :cond_1

    new-array v2, v0, [B

    array-length v4, v1

    sub-int/2addr v0, v4

    array-length v4, v1

    invoke-static {v1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    new-instance v0, Lk/b/a/a1;

    invoke-direct {v0, v1}, Lk/b/a/a1;-><init>([B)V

    return-object v0
.end method
