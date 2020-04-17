.class public Lk/a/b/a/c/z0/t;
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
        "Lk/a/b/a/b/k/p;",
        ">;",
        "Lk/a/b/a/c/y<",
        "Lk/a/b/a/b/k/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:[Ljava/lang/Object;


# instance fields
.field public final a:Lk/a/b/a/c/z0/y;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/16 v1, 0x73

    .line 1
    invoke-static {v1, v2}, Lk/a/b/a/b/i;->a(J)Lk/a/b/a/b/i;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "amqp:properties:list"

    .line 2
    invoke-static {v1}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    sput-object v0, Lk/a/b/a/c/z0/t;->b:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lk/a/b/a/c/x;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk/a/b/a/c/z0/y;

    invoke-direct {v0, p1}, Lk/a/b/a/c/z0/y;-><init>(Lk/a/b/a/c/x;)V

    iput-object v0, p0, Lk/a/b/a/c/z0/t;->a:Lk/a/b/a/c/z0/y;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lk/a/b/a/b/k/p;",
            ">;"
        }
    .end annotation

    .line 3
    const-class v0, Lk/a/b/a/b/k/p;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lk/a/b/a/c/r0;
    .locals 1

    .line 1
    check-cast p1, Lk/a/b/a/b/k/p;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/z0/t;->a:Lk/a/b/a/c/z0/y;

    invoke-virtual {v0, p1}, Lk/a/b/a/c/b;->a(Ljava/lang/Object;)Lk/a/b/a/c/r0;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lk/a/b/a/b/k/p;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/z0/t;->a:Lk/a/b/a/c/z0/y;

    .line 3
    iget-object v0, v0, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 4
    iget-object v0, v0, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    .line 5
    iget-object v1, p1, Lk/a/b/a/b/k/p;->m:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p1, Lk/a/b/a/b/k/p;->l:Lk/a/b/a/b/h;

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p1, Lk/a/b/a/b/k/p;->k:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/16 v1, 0xb

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p1, Lk/a/b/a/b/k/p;->j:Ljava/util/Date;

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    goto :goto_0

    .line 9
    :cond_3
    iget-object v1, p1, Lk/a/b/a/b/k/p;->i:Ljava/util/Date;

    if-eqz v1, :cond_4

    const/16 v1, 0x9

    goto :goto_0

    .line 10
    :cond_4
    iget-object v1, p1, Lk/a/b/a/b/k/p;->h:Lk/a/b/a/b/f;

    if-eqz v1, :cond_5

    const/16 v1, 0x8

    goto :goto_0

    .line 11
    :cond_5
    iget-object v1, p1, Lk/a/b/a/b/k/p;->g:Lk/a/b/a/b/f;

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    goto :goto_0

    .line 12
    :cond_6
    iget-object v1, p1, Lk/a/b/a/b/k/p;->f:Ljava/lang/Object;

    if-eqz v1, :cond_7

    const/4 v1, 0x6

    goto :goto_0

    .line 13
    :cond_7
    iget-object v1, p1, Lk/a/b/a/b/k/p;->e:Ljava/lang/String;

    if-eqz v1, :cond_8

    const/4 v1, 0x5

    goto :goto_0

    .line 14
    :cond_8
    iget-object v1, p1, Lk/a/b/a/b/k/p;->d:Ljava/lang/String;

    if-eqz v1, :cond_9

    const/4 v1, 0x4

    goto :goto_0

    .line 15
    :cond_9
    iget-object v1, p1, Lk/a/b/a/b/k/p;->c:Ljava/lang/String;

    if-eqz v1, :cond_a

    const/4 v1, 0x3

    goto :goto_0

    .line 16
    :cond_a
    iget-object v1, p1, Lk/a/b/a/b/k/p;->b:Lk/a/b/a/b/a;

    if-eqz v1, :cond_b

    const/4 v1, 0x2

    goto :goto_0

    .line 17
    :cond_b
    iget-object v1, p1, Lk/a/b/a/b/k/p;->a:Ljava/lang/Object;

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_0

    :cond_c
    const/4 v1, 0x0

    :goto_0
    const/16 v5, 0x45

    if-nez v1, :cond_d

    const/16 v6, 0x45

    goto :goto_1

    :cond_d
    const/16 v6, -0x30

    .line 18
    :goto_1
    invoke-interface {v0, v2}, Lk/a/b/a/c/y0;->a(B)V

    const/16 v7, 0x53

    .line 19
    invoke-interface {v0, v7}, Lk/a/b/a/c/y0;->a(B)V

    const/16 v7, 0x73

    .line 20
    invoke-interface {v0, v7}, Lk/a/b/a/c/y0;->a(B)V

    .line 21
    invoke-interface {v0, v6}, Lk/a/b/a/c/y0;->a(B)V

    if-ne v6, v5, :cond_e

    goto/16 :goto_5

    :cond_e
    const/16 v5, -0x40

    if-ne v6, v5, :cond_f

    const/4 v3, 0x1

    .line 22
    :cond_f
    invoke-interface {v0}, Lk/a/b/a/c/y0;->position()I

    move-result v5

    if-ne v3, v4, :cond_10

    .line 23
    invoke-interface {v0, v2}, Lk/a/b/a/c/y0;->a(B)V

    int-to-byte v6, v1

    .line 24
    invoke-interface {v0, v6}, Lk/a/b/a/c/y0;->a(B)V

    goto :goto_2

    .line 25
    :cond_10
    invoke-interface {v0, v2}, Lk/a/b/a/c/y0;->b(I)V

    .line 26
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->b(I)V

    :goto_2
    if-ge v2, v1, :cond_11

    packed-switch v2, :pswitch_data_0

    .line 27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown Properties value index: "

    invoke-static {v0, v2}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :pswitch_0
    iget-object v6, p0, Lk/a/b/a/c/z0/t;->a:Lk/a/b/a/c/z0/y;

    .line 29
    iget-object v6, v6, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 30
    iget-object v7, p1, Lk/a/b/a/b/k/p;->m:Ljava/lang/String;

    .line 31
    invoke-virtual {v6, v7}, Lk/a/b/a/c/x;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 32
    :pswitch_1
    iget-object v6, p0, Lk/a/b/a/c/z0/t;->a:Lk/a/b/a/c/z0/y;

    .line 33
    iget-object v6, v6, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 34
    iget-object v7, p1, Lk/a/b/a/b/k/p;->l:Lk/a/b/a/b/h;

    .line 35
    invoke-virtual {v6, v7}, Lk/a/b/a/c/x;->a(Lk/a/b/a/b/h;)V

    goto/16 :goto_3

    .line 36
    :pswitch_2
    iget-object v6, p0, Lk/a/b/a/c/z0/t;->a:Lk/a/b/a/c/z0/y;

    .line 37
    iget-object v6, v6, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 38
    iget-object v7, p1, Lk/a/b/a/b/k/p;->k:Ljava/lang/String;

    .line 39
    invoke-virtual {v6, v7}, Lk/a/b/a/c/x;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 40
    :pswitch_3
    iget-object v6, p0, Lk/a/b/a/c/z0/t;->a:Lk/a/b/a/c/z0/y;

    .line 41
    iget-object v6, v6, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 42
    iget-object v7, p1, Lk/a/b/a/b/k/p;->j:Ljava/util/Date;

    .line 43
    invoke-virtual {v6, v7}, Lk/a/b/a/c/x;->a(Ljava/util/Date;)V

    goto :goto_3

    .line 44
    :pswitch_4
    iget-object v6, p0, Lk/a/b/a/c/z0/t;->a:Lk/a/b/a/c/z0/y;

    .line 45
    iget-object v6, v6, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 46
    iget-object v7, p1, Lk/a/b/a/b/k/p;->i:Ljava/util/Date;

    .line 47
    invoke-virtual {v6, v7}, Lk/a/b/a/c/x;->a(Ljava/util/Date;)V

    goto :goto_3

    .line 48
    :pswitch_5
    iget-object v6, p0, Lk/a/b/a/c/z0/t;->a:Lk/a/b/a/c/z0/y;

    .line 49
    iget-object v6, v6, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 50
    iget-object v7, p1, Lk/a/b/a/b/k/p;->h:Lk/a/b/a/b/f;

    .line 51
    invoke-virtual {v6, v7}, Lk/a/b/a/c/x;->a(Lk/a/b/a/b/f;)V

    goto :goto_3

    .line 52
    :pswitch_6
    iget-object v6, p0, Lk/a/b/a/c/z0/t;->a:Lk/a/b/a/c/z0/y;

    .line 53
    iget-object v6, v6, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 54
    iget-object v7, p1, Lk/a/b/a/b/k/p;->g:Lk/a/b/a/b/f;

    .line 55
    invoke-virtual {v6, v7}, Lk/a/b/a/c/x;->a(Lk/a/b/a/b/f;)V

    goto :goto_3

    .line 56
    :pswitch_7
    iget-object v6, p0, Lk/a/b/a/c/z0/t;->a:Lk/a/b/a/c/z0/y;

    .line 57
    iget-object v6, v6, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 58
    iget-object v7, p1, Lk/a/b/a/b/k/p;->f:Ljava/lang/Object;

    .line 59
    invoke-virtual {v6, v7}, Lk/a/b/a/c/x;->b(Ljava/lang/Object;)V

    goto :goto_3

    .line 60
    :pswitch_8
    iget-object v6, p0, Lk/a/b/a/c/z0/t;->a:Lk/a/b/a/c/z0/y;

    .line 61
    iget-object v6, v6, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 62
    iget-object v7, p1, Lk/a/b/a/b/k/p;->e:Ljava/lang/String;

    .line 63
    invoke-virtual {v6, v7}, Lk/a/b/a/c/x;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 64
    :pswitch_9
    iget-object v6, p0, Lk/a/b/a/c/z0/t;->a:Lk/a/b/a/c/z0/y;

    .line 65
    iget-object v6, v6, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 66
    iget-object v7, p1, Lk/a/b/a/b/k/p;->d:Ljava/lang/String;

    .line 67
    invoke-virtual {v6, v7}, Lk/a/b/a/c/x;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 68
    :pswitch_a
    iget-object v6, p0, Lk/a/b/a/c/z0/t;->a:Lk/a/b/a/c/z0/y;

    .line 69
    iget-object v6, v6, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 70
    iget-object v7, p1, Lk/a/b/a/b/k/p;->c:Ljava/lang/String;

    .line 71
    invoke-virtual {v6, v7}, Lk/a/b/a/c/x;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 72
    :pswitch_b
    iget-object v6, p0, Lk/a/b/a/c/z0/t;->a:Lk/a/b/a/c/z0/y;

    .line 73
    iget-object v6, v6, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 74
    iget-object v7, p1, Lk/a/b/a/b/k/p;->b:Lk/a/b/a/b/a;

    .line 75
    invoke-virtual {v6, v7}, Lk/a/b/a/c/x;->a(Lk/a/b/a/b/a;)V

    goto :goto_3

    .line 76
    :pswitch_c
    iget-object v6, p0, Lk/a/b/a/c/z0/t;->a:Lk/a/b/a/c/z0/y;

    .line 77
    iget-object v6, v6, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 78
    iget-object v7, p1, Lk/a/b/a/b/k/p;->a:Ljava/lang/Object;

    .line 79
    invoke-virtual {v6, v7}, Lk/a/b/a/c/x;->b(Ljava/lang/Object;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 80
    :cond_11
    invoke-interface {v0}, Lk/a/b/a/c/y0;->position()I

    move-result p1

    sub-int v1, p1, v5

    sub-int/2addr v1, v3

    .line 81
    invoke-interface {v0, v5}, Lk/a/b/a/c/y0;->a(I)V

    if-ne v3, v4, :cond_12

    int-to-byte v1, v1

    .line 82
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->a(B)V

    goto :goto_4

    .line 83
    :cond_12
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->b(I)V

    .line 84
    :goto_4
    invoke-interface {v0, p1}, Lk/a/b/a/c/y0;->a(I)V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
            "Lk/a/b/a/b/k/p;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/z0/t;->a:Lk/a/b/a/c/z0/y;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    throw v1
.end method

.method public k()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/z0/t;->a:Lk/a/b/a/c/z0/y;

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

    const-string v1, "Incorrect type found in Properties encoding: "

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
    new-instance v2, Lk/a/b/a/b/k/p;

    invoke-direct {v2}, Lk/a/b/a/b/k/p;-><init>()V

    :goto_1
    if-ge v4, v1, :cond_3

    const/4 v3, 0x0

    packed-switch v4, :pswitch_data_0

    .line 11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "To many entries in Properties encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :pswitch_0
    invoke-virtual {v0, v3}, Lk/a/b/a/c/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13
    iput-object v3, v2, Lk/a/b/a/b/k/p;->m:Ljava/lang/String;

    goto :goto_2

    .line 14
    :pswitch_1
    invoke-virtual {v0, v3}, Lk/a/b/a/c/r;->a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object v3

    .line 15
    iput-object v3, v2, Lk/a/b/a/b/k/p;->l:Lk/a/b/a/b/h;

    goto :goto_2

    .line 16
    :pswitch_2
    invoke-virtual {v0, v3}, Lk/a/b/a/c/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17
    iput-object v3, v2, Lk/a/b/a/b/k/p;->k:Ljava/lang/String;

    goto :goto_2

    .line 18
    :pswitch_3
    invoke-virtual {v0, v3}, Lk/a/b/a/c/r;->a(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    .line 19
    iput-object v3, v2, Lk/a/b/a/b/k/p;->j:Ljava/util/Date;

    goto :goto_2

    .line 20
    :pswitch_4
    invoke-virtual {v0, v3}, Lk/a/b/a/c/r;->a(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    .line 21
    iput-object v3, v2, Lk/a/b/a/b/k/p;->i:Ljava/util/Date;

    goto :goto_2

    .line 22
    :pswitch_5
    invoke-virtual {v0, v3}, Lk/a/b/a/c/r;->a(Lk/a/b/a/b/f;)Lk/a/b/a/b/f;

    move-result-object v3

    .line 23
    iput-object v3, v2, Lk/a/b/a/b/k/p;->h:Lk/a/b/a/b/f;

    goto :goto_2

    .line 24
    :pswitch_6
    invoke-virtual {v0, v3}, Lk/a/b/a/c/r;->a(Lk/a/b/a/b/f;)Lk/a/b/a/b/f;

    move-result-object v3

    .line 25
    iput-object v3, v2, Lk/a/b/a/b/k/p;->g:Lk/a/b/a/b/f;

    goto :goto_2

    .line 26
    :pswitch_7
    invoke-virtual {v0}, Lk/a/b/a/c/r;->d()Ljava/lang/Object;

    move-result-object v3

    .line 27
    iput-object v3, v2, Lk/a/b/a/b/k/p;->f:Ljava/lang/Object;

    goto :goto_2

    .line 28
    :pswitch_8
    invoke-virtual {v0, v3}, Lk/a/b/a/c/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    iput-object v3, v2, Lk/a/b/a/b/k/p;->e:Ljava/lang/String;

    goto :goto_2

    .line 30
    :pswitch_9
    invoke-virtual {v0, v3}, Lk/a/b/a/c/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 31
    iput-object v3, v2, Lk/a/b/a/b/k/p;->d:Ljava/lang/String;

    goto :goto_2

    .line 32
    :pswitch_a
    invoke-virtual {v0, v3}, Lk/a/b/a/c/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    iput-object v3, v2, Lk/a/b/a/b/k/p;->c:Ljava/lang/String;

    goto :goto_2

    .line 34
    :pswitch_b
    invoke-virtual {v0, v3}, Lk/a/b/a/c/r;->a(Lk/a/b/a/b/a;)Lk/a/b/a/b/a;

    move-result-object v3

    .line 35
    iput-object v3, v2, Lk/a/b/a/b/k/p;->b:Lk/a/b/a/b/a;

    goto :goto_2

    .line 36
    :pswitch_c
    invoke-virtual {v0}, Lk/a/b/a/c/r;->d()Ljava/lang/Object;

    move-result-object v3

    .line 37
    iput-object v3, v2, Lk/a/b/a/b/k/p;->a:Ljava/lang/Object;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
