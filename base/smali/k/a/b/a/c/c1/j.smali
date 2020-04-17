.class public Lk/a/b/a/c/c1/j;
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
        "Lk/a/b/a/b/n/s;",
        ">;",
        "Lk/a/b/a/c/y<",
        "Lk/a/b/a/b/n/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:[Ljava/lang/Object;


# instance fields
.field public final a:Lk/a/b/a/c/c1/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/16 v1, 0x14

    .line 1
    invoke-static {v1, v2}, Lk/a/b/a/b/i;->a(J)Lk/a/b/a/b/i;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "amqp:transfer:list"

    .line 2
    invoke-static {v1}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    sput-object v0, Lk/a/b/a/c/c1/j;->b:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lk/a/b/a/c/x;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk/a/b/a/c/c1/m;

    invoke-direct {v0, p1}, Lk/a/b/a/c/c1/m;-><init>(Lk/a/b/a/c/x;)V

    iput-object v0, p0, Lk/a/b/a/c/c1/j;->a:Lk/a/b/a/c/c1/m;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lk/a/b/a/b/n/s;",
            ">;"
        }
    .end annotation

    .line 3
    const-class v0, Lk/a/b/a/b/n/s;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lk/a/b/a/c/r0;
    .locals 1

    .line 1
    check-cast p1, Lk/a/b/a/b/n/s;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/c1/j;->a:Lk/a/b/a/c/c1/m;

    invoke-virtual {v0, p1}, Lk/a/b/a/c/b;->a(Ljava/lang/Object;)Lk/a/b/a/c/r0;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lk/a/b/a/b/n/s;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/c1/j;->a:Lk/a/b/a/c/c1/m;

    .line 3
    iget-object v0, v0, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 4
    iget-object v0, v0, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    .line 5
    iget-boolean v1, p1, Lk/a/b/a/b/n/s;->k:Z

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v1, p1, Lk/a/b/a/b/n/s;->j:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    goto :goto_0

    .line 7
    :cond_1
    iget-boolean v1, p1, Lk/a/b/a/b/n/s;->i:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x9

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p1, Lk/a/b/a/b/n/s;->h:Lk/a/b/a/b/n/e;

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    goto :goto_0

    .line 9
    :cond_3
    iget-object v1, p1, Lk/a/b/a/b/n/s;->g:Lk/a/b/a/b/n/n;

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    goto :goto_0

    .line 10
    :cond_4
    iget-boolean v1, p1, Lk/a/b/a/b/n/s;->f:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    goto :goto_0

    .line 11
    :cond_5
    iget-object v1, p1, Lk/a/b/a/b/n/s;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    goto :goto_0

    .line 12
    :cond_6
    iget-object v1, p1, Lk/a/b/a/b/n/s;->d:Lk/a/b/a/b/h;

    if-eqz v1, :cond_7

    const/4 v1, 0x4

    goto :goto_0

    .line 13
    :cond_7
    iget-object v1, p1, Lk/a/b/a/b/n/s;->c:Lk/a/b/a/b/a;

    if-eqz v1, :cond_8

    const/4 v1, 0x3

    goto :goto_0

    .line 14
    :cond_8
    iget-object v1, p1, Lk/a/b/a/b/n/s;->b:Lk/a/b/a/b/h;

    if-eqz v1, :cond_9

    const/4 v1, 0x2

    goto :goto_0

    :cond_9
    const/4 v1, 0x1

    .line 15
    :goto_0
    iget-object v4, p1, Lk/a/b/a/b/n/s;->h:Lk/a/b/a/b/n/e;

    const/16 v5, -0x30

    const/16 v6, -0x40

    if-eqz v4, :cond_a

    goto :goto_1

    .line 16
    :cond_a
    iget-object v4, p1, Lk/a/b/a/b/n/s;->c:Lk/a/b/a/b/a;

    if-eqz v4, :cond_b

    .line 17
    iget v4, v4, Lk/a/b/a/b/a;->c:I

    const/16 v7, 0xc8

    if-le v4, v7, :cond_b

    goto :goto_1

    :cond_b
    const/16 v5, -0x40

    :goto_1
    const/4 v4, 0x0

    .line 18
    invoke-interface {v0, v4}, Lk/a/b/a/c/y0;->a(B)V

    const/16 v7, 0x53

    .line 19
    invoke-interface {v0, v7}, Lk/a/b/a/c/y0;->a(B)V

    const/16 v7, 0x14

    .line 20
    invoke-interface {v0, v7}, Lk/a/b/a/c/y0;->a(B)V

    .line 21
    invoke-interface {v0, v5}, Lk/a/b/a/c/y0;->a(B)V

    if-ne v5, v6, :cond_c

    const/4 v2, 0x1

    .line 22
    :cond_c
    invoke-interface {v0}, Lk/a/b/a/c/y0;->position()I

    move-result v5

    if-ne v2, v3, :cond_d

    .line 23
    invoke-interface {v0, v4}, Lk/a/b/a/c/y0;->a(B)V

    int-to-byte v6, v1

    .line 24
    invoke-interface {v0, v6}, Lk/a/b/a/c/y0;->a(B)V

    goto :goto_2

    .line 25
    :cond_d
    invoke-interface {v0, v4}, Lk/a/b/a/c/y0;->b(I)V

    .line 26
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->b(I)V

    :goto_2
    if-ge v4, v1, :cond_f

    packed-switch v4, :pswitch_data_0

    .line 27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown Transfer value index: "

    invoke-static {v0, v4}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :pswitch_0
    iget-object v6, p0, Lk/a/b/a/c/c1/j;->a:Lk/a/b/a/c/c1/m;

    .line 29
    iget-object v6, v6, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 30
    iget-boolean v7, p1, Lk/a/b/a/b/n/s;->k:Z

    .line 31
    invoke-virtual {v6, v7}, Lk/a/b/a/c/x;->a(Z)V

    goto/16 :goto_4

    .line 32
    :pswitch_1
    iget-object v6, p0, Lk/a/b/a/c/c1/j;->a:Lk/a/b/a/c/c1/m;

    .line 33
    iget-object v6, v6, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 34
    iget-boolean v7, p1, Lk/a/b/a/b/n/s;->j:Z

    .line 35
    invoke-virtual {v6, v7}, Lk/a/b/a/c/x;->a(Z)V

    goto :goto_4

    .line 36
    :pswitch_2
    iget-object v6, p0, Lk/a/b/a/c/c1/j;->a:Lk/a/b/a/c/c1/m;

    .line 37
    iget-object v6, v6, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 38
    iget-boolean v7, p1, Lk/a/b/a/b/n/s;->i:Z

    .line 39
    invoke-virtual {v6, v7}, Lk/a/b/a/c/x;->a(Z)V

    goto :goto_4

    .line 40
    :pswitch_3
    iget-object v6, p0, Lk/a/b/a/c/c1/j;->a:Lk/a/b/a/c/c1/m;

    .line 41
    iget-object v6, v6, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 42
    iget-object v7, p1, Lk/a/b/a/b/n/s;->h:Lk/a/b/a/b/n/e;

    .line 43
    invoke-virtual {v6, v7}, Lk/a/b/a/c/x;->b(Ljava/lang/Object;)V

    goto :goto_4

    .line 44
    :pswitch_4
    iget-object v6, p1, Lk/a/b/a/b/n/s;->g:Lk/a/b/a/b/n/n;

    .line 45
    iget-object v7, p0, Lk/a/b/a/c/c1/j;->a:Lk/a/b/a/c/c1/m;

    .line 46
    iget-object v7, v7, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    if-nez v6, :cond_e

    const/4 v6, 0x0

    goto :goto_3

    .line 47
    :cond_e
    invoke-virtual {v6}, Lk/a/b/a/b/n/n;->getValue()Lk/a/b/a/b/g;

    move-result-object v6

    :goto_3
    invoke-virtual {v7, v6}, Lk/a/b/a/c/x;->b(Ljava/lang/Object;)V

    goto :goto_4

    .line 48
    :pswitch_5
    iget-object v6, p0, Lk/a/b/a/c/c1/j;->a:Lk/a/b/a/c/c1/m;

    .line 49
    iget-object v6, v6, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 50
    iget-boolean v7, p1, Lk/a/b/a/b/n/s;->f:Z

    .line 51
    invoke-virtual {v6, v7}, Lk/a/b/a/c/x;->a(Z)V

    goto :goto_4

    .line 52
    :pswitch_6
    iget-object v6, p0, Lk/a/b/a/c/c1/j;->a:Lk/a/b/a/c/c1/m;

    .line 53
    iget-object v6, v6, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 54
    iget-object v7, p1, Lk/a/b/a/b/n/s;->e:Ljava/lang/Boolean;

    .line 55
    invoke-virtual {v6, v7}, Lk/a/b/a/c/x;->a(Ljava/lang/Boolean;)V

    goto :goto_4

    .line 56
    :pswitch_7
    iget-object v6, p0, Lk/a/b/a/c/c1/j;->a:Lk/a/b/a/c/c1/m;

    .line 57
    iget-object v6, v6, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 58
    iget-object v7, p1, Lk/a/b/a/b/n/s;->d:Lk/a/b/a/b/h;

    .line 59
    invoke-virtual {v6, v7}, Lk/a/b/a/c/x;->a(Lk/a/b/a/b/h;)V

    goto :goto_4

    .line 60
    :pswitch_8
    iget-object v6, p0, Lk/a/b/a/c/c1/j;->a:Lk/a/b/a/c/c1/m;

    .line 61
    iget-object v6, v6, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 62
    iget-object v7, p1, Lk/a/b/a/b/n/s;->c:Lk/a/b/a/b/a;

    .line 63
    invoke-virtual {v6, v7}, Lk/a/b/a/c/x;->a(Lk/a/b/a/b/a;)V

    goto :goto_4

    .line 64
    :pswitch_9
    iget-object v6, p0, Lk/a/b/a/c/c1/j;->a:Lk/a/b/a/c/c1/m;

    .line 65
    iget-object v6, v6, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 66
    iget-object v7, p1, Lk/a/b/a/b/n/s;->b:Lk/a/b/a/b/h;

    .line 67
    invoke-virtual {v6, v7}, Lk/a/b/a/c/x;->a(Lk/a/b/a/b/h;)V

    goto :goto_4

    .line 68
    :pswitch_a
    iget-object v6, p0, Lk/a/b/a/c/c1/j;->a:Lk/a/b/a/c/c1/m;

    .line 69
    iget-object v6, v6, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 70
    iget-object v7, p1, Lk/a/b/a/b/n/s;->a:Lk/a/b/a/b/h;

    .line 71
    invoke-virtual {v6, v7}, Lk/a/b/a/c/x;->a(Lk/a/b/a/b/h;)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 72
    :cond_f
    invoke-interface {v0}, Lk/a/b/a/c/y0;->position()I

    move-result p1

    sub-int v1, p1, v5

    sub-int/2addr v1, v2

    .line 73
    invoke-interface {v0, v5}, Lk/a/b/a/c/y0;->a(I)V

    if-ne v2, v3, :cond_10

    int-to-byte v1, v1

    .line 74
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->a(B)V

    goto :goto_5

    .line 75
    :cond_10
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->b(I)V

    .line 76
    :goto_5
    invoke-interface {v0, p1}, Lk/a/b/a/c/y0;->a(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
            "Lk/a/b/a/b/n/s;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/c1/j;->a:Lk/a/b/a/c/c1/m;

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
    iget-object v0, p0, Lk/a/b/a/c/c1/j;->a:Lk/a/b/a/c/c1/m;

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

    const-string v2, "Incorrect type found in Transfer encoding: "

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
    new-instance v2, Lk/a/b/a/b/n/s;

    invoke-direct {v2}, Lk/a/b/a/b/n/s;-><init>()V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_4

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    .line 15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "To many entries in Transfer encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :pswitch_0
    invoke-virtual {v0, v3}, Lk/a/b/a/c/r;->a(Z)Z

    move-result v5

    .line 17
    iput-boolean v5, v2, Lk/a/b/a/b/n/s;->k:Z

    goto :goto_3

    .line 18
    :pswitch_1
    invoke-virtual {v0, v3}, Lk/a/b/a/c/r;->a(Z)Z

    move-result v5

    .line 19
    iput-boolean v5, v2, Lk/a/b/a/b/n/s;->j:Z

    goto :goto_3

    .line 20
    :pswitch_2
    invoke-virtual {v0, v3}, Lk/a/b/a/c/r;->a(Z)Z

    move-result v5

    .line 21
    iput-boolean v5, v2, Lk/a/b/a/b/n/s;->i:Z

    goto :goto_3

    .line 22
    :pswitch_3
    invoke-virtual {v0}, Lk/a/b/a/c/r;->d()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk/a/b/a/b/n/e;

    .line 23
    iput-object v5, v2, Lk/a/b/a/b/n/s;->h:Lk/a/b/a/b/n/e;

    goto :goto_3

    .line 24
    :pswitch_4
    invoke-virtual {v0, v5}, Lk/a/b/a/c/r;->a(Lk/a/b/a/b/g;)Lk/a/b/a/b/g;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_2

    .line 25
    :cond_3
    invoke-static {}, Lk/a/b/a/b/n/n;->values()[Lk/a/b/a/b/n/n;

    move-result-object v5

    .line 26
    iget-byte v6, v6, Lk/a/b/a/b/g;->x:B

    and-int/lit16 v6, v6, 0xff

    .line 27
    aget-object v5, v5, v6

    .line 28
    :goto_2
    iput-object v5, v2, Lk/a/b/a/b/n/s;->g:Lk/a/b/a/b/n/n;

    goto :goto_3

    .line 29
    :pswitch_5
    invoke-virtual {v0, v3}, Lk/a/b/a/c/r;->a(Z)Z

    move-result v5

    .line 30
    iput-boolean v5, v2, Lk/a/b/a/b/n/s;->f:Z

    goto :goto_3

    .line 31
    :pswitch_6
    invoke-virtual {v0, v5}, Lk/a/b/a/c/r;->a(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    .line 32
    iput-object v5, v2, Lk/a/b/a/b/n/s;->e:Ljava/lang/Boolean;

    goto :goto_3

    .line 33
    :pswitch_7
    invoke-virtual {v0, v5}, Lk/a/b/a/c/r;->a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object v5

    .line 34
    iput-object v5, v2, Lk/a/b/a/b/n/s;->d:Lk/a/b/a/b/h;

    goto :goto_3

    .line 35
    :pswitch_8
    invoke-virtual {v0, v5}, Lk/a/b/a/c/r;->a(Lk/a/b/a/b/a;)Lk/a/b/a/b/a;

    move-result-object v5

    .line 36
    iput-object v5, v2, Lk/a/b/a/b/n/s;->c:Lk/a/b/a/b/a;

    goto :goto_3

    .line 37
    :pswitch_9
    invoke-virtual {v0, v5}, Lk/a/b/a/c/r;->a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object v5

    .line 38
    iput-object v5, v2, Lk/a/b/a/b/n/s;->b:Lk/a/b/a/b/h;

    goto :goto_3

    .line 39
    :pswitch_a
    invoke-virtual {v0, v5}, Lk/a/b/a/c/r;->a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object v5

    invoke-virtual {v2, v5}, Lk/a/b/a/b/n/s;->a(Lk/a/b/a/b/h;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
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
