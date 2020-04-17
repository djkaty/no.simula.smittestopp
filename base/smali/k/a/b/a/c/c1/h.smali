.class public Lk/a/b/a/c/c1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/a;
.implements Lk/a/b/a/c/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk/a/b/a/c/a<",
        "Lk/a/b/a/b/n/g;",
        ">;",
        "Lk/a/b/a/c/y<",
        "Lk/a/b/a/b/n/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:[Ljava/lang/Object;

.field public static final c:[B


# instance fields
.field public final a:Lk/a/b/a/c/c1/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/16 v1, 0x15

    .line 1
    invoke-static {v1, v2}, Lk/a/b/a/b/i;->a(J)Lk/a/b/a/b/i;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "amqp:disposition:list"

    .line 2
    invoke-static {v1}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    sput-object v0, Lk/a/b/a/c/c1/h;->b:[Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 4
    fill-array-data v0, :array_0

    sput-object v0, Lk/a/b/a/c/c1/h;->c:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x53t
        0x24t
        0x45t
    .end array-data
.end method

.method public constructor <init>(Lk/a/b/a/c/x;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk/a/b/a/c/c1/e;

    invoke-direct {v0, p1}, Lk/a/b/a/c/c1/e;-><init>(Lk/a/b/a/c/x;)V

    iput-object v0, p0, Lk/a/b/a/c/c1/h;->a:Lk/a/b/a/c/c1/e;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lk/a/b/a/b/n/g;",
            ">;"
        }
    .end annotation

    .line 3
    const-class v0, Lk/a/b/a/b/n/g;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lk/a/b/a/c/r0;
    .locals 1

    .line 1
    check-cast p1, Lk/a/b/a/b/n/g;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/c1/h;->a:Lk/a/b/a/c/c1/e;

    invoke-virtual {v0, p1}, Lk/a/b/a/c/b;->a(Ljava/lang/Object;)Lk/a/b/a/c/r0;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 14

    .line 1
    check-cast p1, Lk/a/b/a/b/n/g;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/c1/h;->a:Lk/a/b/a/c/c1/e;

    .line 3
    iget-object v0, v0, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 4
    iget-object v0, v0, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    .line 5
    iget-boolean v1, p1, Lk/a/b/a/b/n/g;->f:Z

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p1, Lk/a/b/a/b/n/g;->e:Lk/a/b/a/b/n/e;

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    .line 7
    :cond_1
    iget-boolean v1, p1, Lk/a/b/a/b/n/g;->d:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p1, Lk/a/b/a/b/n/g;->c:Lk/a/b/a/b/h;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    .line 9
    :goto_0
    iget-object v6, p1, Lk/a/b/a/b/n/g;->e:Lk/a/b/a/b/n/e;

    const/16 v7, -0x40

    if-nez v6, :cond_4

    goto :goto_1

    .line 10
    :cond_4
    sget-object v8, Lk/a/b/a/b/k/a;->a:Lk/a/b/a/b/k/a;

    if-eq v6, v8, :cond_6

    .line 11
    sget-object v8, Lk/a/b/a/b/k/s;->a:Lk/a/b/a/b/k/s;

    if-ne v6, v8, :cond_5

    goto :goto_1

    :cond_5
    const/16 v6, -0x30

    goto :goto_2

    :cond_6
    :goto_1
    const/16 v6, -0x40

    :goto_2
    const/4 v8, 0x0

    .line 12
    invoke-interface {v0, v8}, Lk/a/b/a/c/y0;->a(B)V

    const/16 v9, 0x53

    .line 13
    invoke-interface {v0, v9}, Lk/a/b/a/c/y0;->a(B)V

    const/16 v9, 0x15

    .line 14
    invoke-interface {v0, v9}, Lk/a/b/a/c/y0;->a(B)V

    .line 15
    invoke-interface {v0, v6}, Lk/a/b/a/c/y0;->a(B)V

    const/4 v9, 0x1

    if-ne v6, v7, :cond_7

    const/4 v6, 0x1

    goto :goto_3

    :cond_7
    const/4 v6, 0x4

    .line 16
    :goto_3
    invoke-interface {v0}, Lk/a/b/a/c/y0;->position()I

    move-result v7

    if-ne v6, v9, :cond_8

    .line 17
    invoke-interface {v0, v8}, Lk/a/b/a/c/y0;->a(B)V

    int-to-byte v10, v1

    .line 18
    invoke-interface {v0, v10}, Lk/a/b/a/c/y0;->a(B)V

    goto :goto_4

    .line 19
    :cond_8
    invoke-interface {v0, v8}, Lk/a/b/a/c/y0;->b(I)V

    .line 20
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->b(I)V

    :goto_4
    const/4 v10, 0x0

    :goto_5
    if-ge v10, v1, :cond_10

    if-eqz v10, :cond_f

    if-eq v10, v9, :cond_e

    if-eq v10, v3, :cond_d

    if-eq v10, v4, :cond_c

    if-eq v10, v5, :cond_a

    if-ne v10, v2, :cond_9

    .line 21
    iget-object v11, p0, Lk/a/b/a/c/c1/h;->a:Lk/a/b/a/c/c1/e;

    .line 22
    iget-object v11, v11, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 23
    iget-boolean v12, p1, Lk/a/b/a/b/n/g;->f:Z

    .line 24
    invoke-virtual {v11, v12}, Lk/a/b/a/c/x;->a(Z)V

    goto :goto_6

    .line 25
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown Disposition value index: "

    invoke-static {v0, v10}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_a
    sget-object v11, Lk/a/b/a/b/k/a;->a:Lk/a/b/a/b/k/a;

    .line 27
    iget-object v12, p1, Lk/a/b/a/b/n/g;->e:Lk/a/b/a/b/n/e;

    .line 28
    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 29
    iget-object v11, p0, Lk/a/b/a/c/c1/h;->a:Lk/a/b/a/c/c1/e;

    .line 30
    iget-object v11, v11, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 31
    iget-object v11, v11, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    .line 32
    sget-object v12, Lk/a/b/a/c/c1/h;->c:[B

    array-length v13, v12

    invoke-interface {v11, v12, v8, v13}, Lk/a/b/a/c/y0;->a([BII)V

    goto :goto_6

    .line 33
    :cond_b
    iget-object v11, p0, Lk/a/b/a/c/c1/h;->a:Lk/a/b/a/c/c1/e;

    .line 34
    iget-object v11, v11, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 35
    iget-object v12, p1, Lk/a/b/a/b/n/g;->e:Lk/a/b/a/b/n/e;

    .line 36
    invoke-virtual {v11, v12}, Lk/a/b/a/c/x;->b(Ljava/lang/Object;)V

    goto :goto_6

    .line 37
    :cond_c
    iget-object v11, p0, Lk/a/b/a/c/c1/h;->a:Lk/a/b/a/c/c1/e;

    .line 38
    iget-object v11, v11, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 39
    iget-boolean v12, p1, Lk/a/b/a/b/n/g;->d:Z

    .line 40
    invoke-virtual {v11, v12}, Lk/a/b/a/c/x;->a(Z)V

    goto :goto_6

    .line 41
    :cond_d
    iget-object v11, p0, Lk/a/b/a/c/c1/h;->a:Lk/a/b/a/c/c1/e;

    .line 42
    iget-object v11, v11, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 43
    iget-object v12, p1, Lk/a/b/a/b/n/g;->c:Lk/a/b/a/b/h;

    .line 44
    invoke-virtual {v11, v12}, Lk/a/b/a/c/x;->a(Lk/a/b/a/b/h;)V

    goto :goto_6

    .line 45
    :cond_e
    iget-object v11, p0, Lk/a/b/a/c/c1/h;->a:Lk/a/b/a/c/c1/e;

    .line 46
    iget-object v11, v11, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 47
    iget-object v12, p1, Lk/a/b/a/b/n/g;->b:Lk/a/b/a/b/h;

    .line 48
    invoke-virtual {v11, v12}, Lk/a/b/a/c/x;->a(Lk/a/b/a/b/h;)V

    goto :goto_6

    .line 49
    :cond_f
    iget-object v11, p0, Lk/a/b/a/c/c1/h;->a:Lk/a/b/a/c/c1/e;

    .line 50
    iget-object v11, v11, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 51
    iget-object v12, p1, Lk/a/b/a/b/n/g;->a:Lk/a/b/a/b/n/o;

    .line 52
    invoke-virtual {v12}, Lk/a/b/a/b/n/o;->getValue()Z

    move-result v12

    invoke-virtual {v11, v12}, Lk/a/b/a/c/x;->a(Z)V

    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 53
    :cond_10
    invoke-interface {v0}, Lk/a/b/a/c/y0;->position()I

    move-result p1

    sub-int v1, p1, v7

    sub-int/2addr v1, v6

    .line 54
    invoke-interface {v0, v7}, Lk/a/b/a/c/y0;->a(I)V

    if-ne v6, v9, :cond_11

    int-to-byte v1, v1

    .line 55
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->a(B)V

    goto :goto_7

    .line 56
    :cond_11
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->b(I)V

    .line 57
    :goto_7
    invoke-interface {v0, p1}, Lk/a/b/a/c/y0;->a(I)V

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Lk/a/b/a/c/r0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk/a/b/a/c/r0<",
            "Lk/a/b/a/b/n/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/c1/h;->a:Lk/a/b/a/c/c1/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    throw v1
.end method

.method public k()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/c1/h;->a:Lk/a/b/a/c/c1/e;

    .line 2
    iget-object v0, v0, Lk/a/b/a/c/b;->a:Lk/a/b/a/c/r;

    .line 3
    iget-object v1, v0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    .line 4
    invoke-interface {v1}, Lk/a/b/a/c/k0;->get()B

    move-result v1

    const/16 v2, -0x40

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/16 v2, -0x30

    if-eq v1, v2, :cond_1

    const/16 v2, 0x45

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lk/a/b/a/c/q;

    const-string v2, "Incorrect type found in Disposition encoding: "

    invoke-static {v2, v1}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lk/a/b/a/c/q;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    iget-object v1, v0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    .line 7
    invoke-interface {v1}, Lk/a/b/a/c/k0;->d()I

    .line 8
    iget-object v1, v0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    .line 9
    invoke-interface {v1}, Lk/a/b/a/c/k0;->d()I

    move-result v1

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, v0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    .line 11
    invoke-interface {v1}, Lk/a/b/a/c/k0;->get()B

    .line 12
    iget-object v1, v0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    .line 13
    invoke-interface {v1}, Lk/a/b/a/c/k0;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 14
    :goto_0
    new-instance v2, Lk/a/b/a/b/n/g;

    invoke-direct {v2}, Lk/a/b/a/b/n/g;-><init>()V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_a

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    const/4 v6, 0x1

    if-eq v4, v6, :cond_7

    const/4 v6, 0x2

    if-eq v4, v6, :cond_6

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 15
    invoke-virtual {v0, v3}, Lk/a/b/a/c/r;->a(Z)Z

    move-result v5

    .line 16
    iput-boolean v5, v2, Lk/a/b/a/b/n/g;->f:Z

    goto :goto_3

    .line 17
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "To many entries in Disposition encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_4
    invoke-virtual {v0}, Lk/a/b/a/c/r;->d()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk/a/b/a/b/n/e;

    .line 19
    iput-object v5, v2, Lk/a/b/a/b/n/g;->e:Lk/a/b/a/b/n/e;

    goto :goto_3

    .line 20
    :cond_5
    invoke-virtual {v0, v3}, Lk/a/b/a/c/r;->a(Z)Z

    move-result v5

    .line 21
    iput-boolean v5, v2, Lk/a/b/a/b/n/g;->d:Z

    goto :goto_3

    .line 22
    :cond_6
    invoke-virtual {v0, v5}, Lk/a/b/a/c/r;->a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object v5

    .line 23
    iput-object v5, v2, Lk/a/b/a/b/n/g;->c:Lk/a/b/a/b/h;

    goto :goto_3

    .line 24
    :cond_7
    invoke-virtual {v0, v5}, Lk/a/b/a/c/r;->a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object v5

    invoke-virtual {v2, v5}, Lk/a/b/a/b/n/g;->a(Lk/a/b/a/b/h;)V

    goto :goto_3

    .line 25
    :cond_8
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 26
    invoke-virtual {v0, v5}, Lk/a/b/a/c/r;->a(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    .line 27
    invoke-virtual {v6, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lk/a/b/a/b/n/o;->RECEIVER:Lk/a/b/a/b/n/o;

    goto :goto_2

    :cond_9
    sget-object v5, Lk/a/b/a/b/n/o;->SENDER:Lk/a/b/a/b/n/o;

    :goto_2
    invoke-virtual {v2, v5}, Lk/a/b/a/b/n/g;->a(Lk/a/b/a/b/n/o;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_a
    return-object v2
.end method
