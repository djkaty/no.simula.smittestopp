.class public Lk/a/b/a/c/z0/r;
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
        "Lk/a/b/a/b/k/l;",
        ">;",
        "Lk/a/b/a/c/y<",
        "Lk/a/b/a/b/k/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:[Ljava/lang/Object;


# instance fields
.field public final a:Lk/a/b/a/c/z0/v;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/16 v1, 0x70

    .line 1
    invoke-static {v1, v2}, Lk/a/b/a/b/i;->a(J)Lk/a/b/a/b/i;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "amqp:header:list"

    .line 2
    invoke-static {v1}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    sput-object v0, Lk/a/b/a/c/z0/r;->b:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lk/a/b/a/c/x;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk/a/b/a/c/z0/v;

    invoke-direct {v0, p1}, Lk/a/b/a/c/z0/v;-><init>(Lk/a/b/a/c/x;)V

    iput-object v0, p0, Lk/a/b/a/c/z0/r;->a:Lk/a/b/a/c/z0/v;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lk/a/b/a/b/k/l;",
            ">;"
        }
    .end annotation

    .line 3
    const-class v0, Lk/a/b/a/b/k/l;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lk/a/b/a/c/r0;
    .locals 1

    .line 1
    check-cast p1, Lk/a/b/a/b/k/l;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/z0/r;->a:Lk/a/b/a/c/z0/v;

    invoke-virtual {v0, p1}, Lk/a/b/a/c/b;->a(Ljava/lang/Object;)Lk/a/b/a/c/r0;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 13

    .line 1
    check-cast p1, Lk/a/b/a/b/k/l;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/z0/r;->a:Lk/a/b/a/c/z0/v;

    .line 3
    iget-object v0, v0, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 4
    iget-object v0, v0, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    .line 5
    iget-object v1, p1, Lk/a/b/a/b/k/l;->e:Lk/a/b/a/b/h;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p1, Lk/a/b/a/b/k/l;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p1, Lk/a/b/a/b/k/l;->c:Lk/a/b/a/b/h;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p1, Lk/a/b/a/b/k/l;->b:Lk/a/b/a/b/g;

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    .line 9
    :cond_3
    iget-object v1, p1, Lk/a/b/a/b/k/l;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    const/16 v7, -0x40

    const/16 v8, 0x45

    if-nez v1, :cond_5

    const/16 v9, 0x45

    goto :goto_1

    :cond_5
    const/16 v9, -0x40

    .line 10
    :goto_1
    invoke-interface {v0, v2}, Lk/a/b/a/c/y0;->a(B)V

    const/16 v10, 0x53

    .line 11
    invoke-interface {v0, v10}, Lk/a/b/a/c/y0;->a(B)V

    const/16 v10, 0x70

    .line 12
    invoke-interface {v0, v10}, Lk/a/b/a/c/y0;->a(B)V

    .line 13
    invoke-interface {v0, v9}, Lk/a/b/a/c/y0;->a(B)V

    if-ne v9, v8, :cond_6

    goto/16 :goto_6

    :cond_6
    if-ne v9, v7, :cond_7

    const/4 v7, 0x1

    goto :goto_2

    :cond_7
    const/4 v7, 0x4

    .line 14
    :goto_2
    invoke-interface {v0}, Lk/a/b/a/c/y0;->position()I

    move-result v8

    if-ne v7, v6, :cond_8

    .line 15
    invoke-interface {v0, v2}, Lk/a/b/a/c/y0;->a(B)V

    int-to-byte v9, v1

    .line 16
    invoke-interface {v0, v9}, Lk/a/b/a/c/y0;->a(B)V

    goto :goto_3

    .line 17
    :cond_8
    invoke-interface {v0, v2}, Lk/a/b/a/c/y0;->b(I)V

    .line 18
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->b(I)V

    :goto_3
    if-ge v2, v1, :cond_10

    if-eqz v2, :cond_f

    if-eq v2, v6, :cond_c

    if-eq v2, v4, :cond_b

    if-eq v2, v3, :cond_a

    if-ne v2, v5, :cond_9

    .line 19
    iget-object v9, p0, Lk/a/b/a/c/z0/r;->a:Lk/a/b/a/c/z0/v;

    .line 20
    iget-object v9, v9, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 21
    iget-object v10, p1, Lk/a/b/a/b/k/l;->e:Lk/a/b/a/b/h;

    .line 22
    invoke-virtual {v9, v10}, Lk/a/b/a/c/x;->a(Lk/a/b/a/b/h;)V

    goto :goto_4

    .line 23
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown Header value index: "

    invoke-static {v0, v2}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_a
    iget-object v9, p0, Lk/a/b/a/c/z0/r;->a:Lk/a/b/a/c/z0/v;

    .line 25
    iget-object v9, v9, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 26
    iget-object v10, p1, Lk/a/b/a/b/k/l;->d:Ljava/lang/Boolean;

    .line 27
    invoke-virtual {v9, v10}, Lk/a/b/a/c/x;->a(Ljava/lang/Boolean;)V

    goto :goto_4

    .line 28
    :cond_b
    iget-object v9, p0, Lk/a/b/a/c/z0/r;->a:Lk/a/b/a/c/z0/v;

    .line 29
    iget-object v9, v9, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 30
    iget-object v10, p1, Lk/a/b/a/b/k/l;->c:Lk/a/b/a/b/h;

    .line 31
    invoke-virtual {v9, v10}, Lk/a/b/a/c/x;->a(Lk/a/b/a/b/h;)V

    goto :goto_4

    .line 32
    :cond_c
    iget-object v9, p0, Lk/a/b/a/c/z0/r;->a:Lk/a/b/a/c/z0/v;

    .line 33
    iget-object v9, v9, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 34
    iget-object v10, p1, Lk/a/b/a/b/k/l;->b:Lk/a/b/a/b/g;

    if-nez v10, :cond_d

    .line 35
    invoke-virtual {v9}, Lk/a/b/a/c/x;->a()V

    goto :goto_4

    .line 36
    :cond_d
    iget-object v11, v9, Lk/a/b/a/c/x;->h:Lk/a/b/a/c/t0;

    if-eqz v11, :cond_e

    .line 37
    iget-object v11, v9, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    const/16 v12, 0x50

    invoke-interface {v11, v12}, Lk/a/b/a/c/y0;->a(B)V

    .line 38
    iget-byte v10, v10, Lk/a/b/a/b/g;->x:B

    .line 39
    iget-object v9, v9, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v9, v10}, Lk/a/b/a/c/y0;->a(B)V

    goto :goto_4

    :cond_e
    const/4 p1, 0x0

    .line 40
    throw p1

    .line 41
    :cond_f
    iget-object v9, p0, Lk/a/b/a/c/z0/r;->a:Lk/a/b/a/c/z0/v;

    .line 42
    iget-object v9, v9, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 43
    iget-object v10, p1, Lk/a/b/a/b/k/l;->a:Ljava/lang/Boolean;

    .line 44
    invoke-virtual {v9, v10}, Lk/a/b/a/c/x;->a(Ljava/lang/Boolean;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 45
    :cond_10
    invoke-interface {v0}, Lk/a/b/a/c/y0;->position()I

    move-result p1

    sub-int v1, p1, v8

    sub-int/2addr v1, v7

    .line 46
    invoke-interface {v0, v8}, Lk/a/b/a/c/y0;->a(I)V

    if-ne v7, v6, :cond_11

    int-to-byte v1, v1

    .line 47
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->a(B)V

    goto :goto_5

    .line 48
    :cond_11
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->b(I)V

    .line 49
    :goto_5
    invoke-interface {v0, p1}, Lk/a/b/a/c/y0;->a(I)V

    :goto_6
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
            "Lk/a/b/a/b/k/l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/z0/r;->a:Lk/a/b/a/c/z0/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    throw v1
.end method

.method public k()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/z0/r;->a:Lk/a/b/a/c/z0/v;

    .line 2
    iget-object v0, v0, Lk/a/b/a/c/b;->a:Lk/a/b/a/c/r;

    .line 3
    iget-object v1, v0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    .line 4
    invoke-interface {v1}, Lk/a/b/a/c/k0;->get()B

    move-result v2

    const/16 v3, -0x40

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    const/16 v3, -0x30

    if-eq v2, v3, :cond_1

    const/16 v1, 0x45

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lk/a/b/a/c/q;

    const-string v1, "Incorrect type found in Header encoding: "

    invoke-static {v1, v2}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lk/a/b/a/c/q;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    invoke-interface {v1}, Lk/a/b/a/c/k0;->d()I

    .line 7
    invoke-interface {v1}, Lk/a/b/a/c/k0;->d()I

    move-result v1

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v1}, Lk/a/b/a/c/k0;->get()B

    .line 9
    invoke-interface {v1}, Lk/a/b/a/c/k0;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 10
    :goto_0
    new-instance v2, Lk/a/b/a/b/k/l;

    invoke-direct {v2}, Lk/a/b/a/b/k/l;-><init>()V

    :goto_1
    if-ge v4, v1, :cond_8

    const/4 v3, 0x0

    if-eqz v4, :cond_7

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 11
    invoke-virtual {v0, v3}, Lk/a/b/a/c/r;->a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object v3

    .line 12
    iput-object v3, v2, Lk/a/b/a/b/k/l;->e:Lk/a/b/a/b/h;

    goto :goto_2

    .line 13
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "To many entries in Header encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_4
    invoke-virtual {v0, v3}, Lk/a/b/a/c/r;->a(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    .line 15
    iput-object v3, v2, Lk/a/b/a/b/k/l;->d:Ljava/lang/Boolean;

    goto :goto_2

    .line 16
    :cond_5
    invoke-virtual {v0, v3}, Lk/a/b/a/c/r;->a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object v3

    .line 17
    iput-object v3, v2, Lk/a/b/a/b/k/l;->c:Lk/a/b/a/b/h;

    goto :goto_2

    .line 18
    :cond_6
    invoke-virtual {v0, v3}, Lk/a/b/a/c/r;->a(Lk/a/b/a/b/g;)Lk/a/b/a/b/g;

    move-result-object v3

    .line 19
    iput-object v3, v2, Lk/a/b/a/b/k/l;->b:Lk/a/b/a/b/g;

    goto :goto_2

    .line 20
    :cond_7
    invoke-virtual {v0, v3}, Lk/a/b/a/c/r;->a(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    .line 21
    iput-object v3, v2, Lk/a/b/a/b/k/l;->a:Ljava/lang/Boolean;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    return-object v2
.end method
