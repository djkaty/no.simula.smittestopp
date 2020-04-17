.class public Lk/a/b/a/c/c1/i;
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
        "Lk/a/b/a/b/n/k;",
        ">;",
        "Lk/a/b/a/c/y<",
        "Lk/a/b/a/b/n/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:[Ljava/lang/Object;


# instance fields
.field public final a:Lk/a/b/a/c/c1/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/16 v1, 0x13

    .line 1
    invoke-static {v1, v2}, Lk/a/b/a/b/i;->a(J)Lk/a/b/a/b/i;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "amqp:flow:list"

    .line 2
    invoke-static {v1}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    sput-object v0, Lk/a/b/a/c/c1/i;->b:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lk/a/b/a/c/x;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk/a/b/a/c/c1/k;

    invoke-direct {v0, p1}, Lk/a/b/a/c/c1/k;-><init>(Lk/a/b/a/c/x;)V

    iput-object v0, p0, Lk/a/b/a/c/c1/i;->a:Lk/a/b/a/c/c1/k;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lk/a/b/a/b/n/k;",
            ">;"
        }
    .end annotation

    .line 3
    const-class v0, Lk/a/b/a/b/n/k;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lk/a/b/a/c/r0;
    .locals 1

    .line 1
    check-cast p1, Lk/a/b/a/b/n/k;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/c1/i;->a:Lk/a/b/a/c/c1/k;

    invoke-virtual {v0, p1}, Lk/a/b/a/c/b;->a(Ljava/lang/Object;)Lk/a/b/a/c/r0;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lk/a/b/a/b/n/k;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/c1/i;->a:Lk/a/b/a/c/c1/k;

    .line 3
    iget-object v0, v0, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 4
    iget-object v0, v0, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    .line 5
    iget-object v1, p1, Lk/a/b/a/b/n/k;->k:Ljava/util/Map;

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v1, p1, Lk/a/b/a/b/n/k;->j:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    goto :goto_0

    .line 7
    :cond_1
    iget-boolean v1, p1, Lk/a/b/a/b/n/k;->i:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x9

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p1, Lk/a/b/a/b/n/k;->h:Lk/a/b/a/b/h;

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    goto :goto_0

    .line 9
    :cond_3
    iget-object v1, p1, Lk/a/b/a/b/n/k;->g:Lk/a/b/a/b/h;

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    goto :goto_0

    .line 10
    :cond_4
    iget-object v1, p1, Lk/a/b/a/b/n/k;->f:Lk/a/b/a/b/h;

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    goto :goto_0

    .line 11
    :cond_5
    iget-object v1, p1, Lk/a/b/a/b/n/k;->e:Lk/a/b/a/b/h;

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    goto :goto_0

    :cond_6
    const/4 v1, 0x4

    .line 12
    :goto_0
    iget-object v3, p1, Lk/a/b/a/b/n/k;->k:Ljava/util/Map;

    const/16 v4, -0x40

    if-nez v3, :cond_7

    const/16 v3, -0x40

    goto :goto_1

    :cond_7
    const/16 v3, -0x30

    :goto_1
    const/4 v5, 0x0

    .line 13
    invoke-interface {v0, v5}, Lk/a/b/a/c/y0;->a(B)V

    const/16 v6, 0x53

    .line 14
    invoke-interface {v0, v6}, Lk/a/b/a/c/y0;->a(B)V

    const/16 v6, 0x13

    .line 15
    invoke-interface {v0, v6}, Lk/a/b/a/c/y0;->a(B)V

    .line 16
    invoke-interface {v0, v3}, Lk/a/b/a/c/y0;->a(B)V

    const/4 v6, 0x1

    if-ne v3, v4, :cond_8

    const/4 v2, 0x1

    .line 17
    :cond_8
    invoke-interface {v0}, Lk/a/b/a/c/y0;->position()I

    move-result v3

    if-ne v2, v6, :cond_9

    .line 18
    invoke-interface {v0, v5}, Lk/a/b/a/c/y0;->a(B)V

    int-to-byte v4, v1

    .line 19
    invoke-interface {v0, v4}, Lk/a/b/a/c/y0;->a(B)V

    goto :goto_2

    .line 20
    :cond_9
    invoke-interface {v0, v5}, Lk/a/b/a/c/y0;->b(I)V

    .line 21
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->b(I)V

    :goto_2
    if-ge v5, v1, :cond_b

    packed-switch v5, :pswitch_data_0

    .line 22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown Flow value index: "

    invoke-static {v0, v5}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :pswitch_0
    iget-object v4, p0, Lk/a/b/a/c/c1/i;->a:Lk/a/b/a/c/c1/k;

    .line 24
    iget-object v4, v4, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 25
    iget-object v7, p1, Lk/a/b/a/b/n/k;->k:Ljava/util/Map;

    if-nez v7, :cond_a

    .line 26
    invoke-virtual {v4}, Lk/a/b/a/c/x;->a()V

    goto/16 :goto_3

    .line 27
    :cond_a
    iget-object v4, v4, Lk/a/b/a/c/x;->u:Lk/a/b/a/c/g0;

    .line 28
    invoke-virtual {v4, v7}, Lk/a/b/a/c/g0;->a(Ljava/lang/Object;)Lk/a/b/a/c/j0;

    move-result-object v4

    .line 29
    invoke-interface {v4}, Lk/a/b/a/c/r0;->c()V

    .line 30
    invoke-interface {v4, v7}, Lk/a/b/a/c/r0;->a(Ljava/lang/Object;)V

    goto :goto_3

    .line 31
    :pswitch_1
    iget-object v4, p0, Lk/a/b/a/c/c1/i;->a:Lk/a/b/a/c/c1/k;

    .line 32
    iget-object v4, v4, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 33
    iget-boolean v7, p1, Lk/a/b/a/b/n/k;->j:Z

    .line 34
    invoke-virtual {v4, v7}, Lk/a/b/a/c/x;->a(Z)V

    goto :goto_3

    .line 35
    :pswitch_2
    iget-object v4, p0, Lk/a/b/a/c/c1/i;->a:Lk/a/b/a/c/c1/k;

    .line 36
    iget-object v4, v4, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 37
    iget-boolean v7, p1, Lk/a/b/a/b/n/k;->i:Z

    .line 38
    invoke-virtual {v4, v7}, Lk/a/b/a/c/x;->a(Z)V

    goto :goto_3

    .line 39
    :pswitch_3
    iget-object v4, p0, Lk/a/b/a/c/c1/i;->a:Lk/a/b/a/c/c1/k;

    .line 40
    iget-object v4, v4, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 41
    iget-object v7, p1, Lk/a/b/a/b/n/k;->h:Lk/a/b/a/b/h;

    .line 42
    invoke-virtual {v4, v7}, Lk/a/b/a/c/x;->a(Lk/a/b/a/b/h;)V

    goto :goto_3

    .line 43
    :pswitch_4
    iget-object v4, p0, Lk/a/b/a/c/c1/i;->a:Lk/a/b/a/c/c1/k;

    .line 44
    iget-object v4, v4, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 45
    iget-object v7, p1, Lk/a/b/a/b/n/k;->g:Lk/a/b/a/b/h;

    .line 46
    invoke-virtual {v4, v7}, Lk/a/b/a/c/x;->a(Lk/a/b/a/b/h;)V

    goto :goto_3

    .line 47
    :pswitch_5
    iget-object v4, p0, Lk/a/b/a/c/c1/i;->a:Lk/a/b/a/c/c1/k;

    .line 48
    iget-object v4, v4, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 49
    iget-object v7, p1, Lk/a/b/a/b/n/k;->f:Lk/a/b/a/b/h;

    .line 50
    invoke-virtual {v4, v7}, Lk/a/b/a/c/x;->a(Lk/a/b/a/b/h;)V

    goto :goto_3

    .line 51
    :pswitch_6
    iget-object v4, p0, Lk/a/b/a/c/c1/i;->a:Lk/a/b/a/c/c1/k;

    .line 52
    iget-object v4, v4, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 53
    iget-object v7, p1, Lk/a/b/a/b/n/k;->e:Lk/a/b/a/b/h;

    .line 54
    invoke-virtual {v4, v7}, Lk/a/b/a/c/x;->a(Lk/a/b/a/b/h;)V

    goto :goto_3

    .line 55
    :pswitch_7
    iget-object v4, p0, Lk/a/b/a/c/c1/i;->a:Lk/a/b/a/c/c1/k;

    .line 56
    iget-object v4, v4, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 57
    iget-object v7, p1, Lk/a/b/a/b/n/k;->d:Lk/a/b/a/b/h;

    .line 58
    invoke-virtual {v4, v7}, Lk/a/b/a/c/x;->a(Lk/a/b/a/b/h;)V

    goto :goto_3

    .line 59
    :pswitch_8
    iget-object v4, p0, Lk/a/b/a/c/c1/i;->a:Lk/a/b/a/c/c1/k;

    .line 60
    iget-object v4, v4, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 61
    iget-object v7, p1, Lk/a/b/a/b/n/k;->c:Lk/a/b/a/b/h;

    .line 62
    invoke-virtual {v4, v7}, Lk/a/b/a/c/x;->a(Lk/a/b/a/b/h;)V

    goto :goto_3

    .line 63
    :pswitch_9
    iget-object v4, p0, Lk/a/b/a/c/c1/i;->a:Lk/a/b/a/c/c1/k;

    .line 64
    iget-object v4, v4, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 65
    iget-object v7, p1, Lk/a/b/a/b/n/k;->b:Lk/a/b/a/b/h;

    .line 66
    invoke-virtual {v4, v7}, Lk/a/b/a/c/x;->a(Lk/a/b/a/b/h;)V

    goto :goto_3

    .line 67
    :pswitch_a
    iget-object v4, p0, Lk/a/b/a/c/c1/i;->a:Lk/a/b/a/c/c1/k;

    .line 68
    iget-object v4, v4, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 69
    iget-object v7, p1, Lk/a/b/a/b/n/k;->a:Lk/a/b/a/b/h;

    .line 70
    invoke-virtual {v4, v7}, Lk/a/b/a/c/x;->a(Lk/a/b/a/b/h;)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 71
    :cond_b
    invoke-interface {v0}, Lk/a/b/a/c/y0;->position()I

    move-result p1

    sub-int v1, p1, v3

    sub-int/2addr v1, v2

    .line 72
    invoke-interface {v0, v3}, Lk/a/b/a/c/y0;->a(I)V

    if-ne v2, v6, :cond_c

    int-to-byte v1, v1

    .line 73
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->a(B)V

    goto :goto_4

    .line 74
    :cond_c
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->b(I)V

    .line 75
    :goto_4
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
            "Lk/a/b/a/b/n/k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/c1/i;->a:Lk/a/b/a/c/c1/k;

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
    iget-object v0, p0, Lk/a/b/a/c/c1/i;->a:Lk/a/b/a/c/c1/k;

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

    const-string v2, "Incorrect type found in Flow encoding: "

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
    new-instance v2, Lk/a/b/a/b/n/k;

    invoke-direct {v2}, Lk/a/b/a/b/n/k;-><init>()V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    .line 15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "To many entries in Flow encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :pswitch_0
    invoke-virtual {v0}, Lk/a/b/a/c/r;->c()Ljava/util/Map;

    move-result-object v5

    .line 17
    iput-object v5, v2, Lk/a/b/a/b/n/k;->k:Ljava/util/Map;

    goto :goto_2

    .line 18
    :pswitch_1
    invoke-virtual {v0, v3}, Lk/a/b/a/c/r;->a(Z)Z

    move-result v5

    .line 19
    iput-boolean v5, v2, Lk/a/b/a/b/n/k;->j:Z

    goto :goto_2

    .line 20
    :pswitch_2
    invoke-virtual {v0, v3}, Lk/a/b/a/c/r;->a(Z)Z

    move-result v5

    .line 21
    iput-boolean v5, v2, Lk/a/b/a/b/n/k;->i:Z

    goto :goto_2

    .line 22
    :pswitch_3
    invoke-virtual {v0, v5}, Lk/a/b/a/c/r;->a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object v5

    .line 23
    iput-object v5, v2, Lk/a/b/a/b/n/k;->h:Lk/a/b/a/b/h;

    goto :goto_2

    .line 24
    :pswitch_4
    invoke-virtual {v0, v5}, Lk/a/b/a/c/r;->a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object v5

    .line 25
    iput-object v5, v2, Lk/a/b/a/b/n/k;->g:Lk/a/b/a/b/h;

    goto :goto_2

    .line 26
    :pswitch_5
    invoke-virtual {v0, v5}, Lk/a/b/a/c/r;->a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object v5

    .line 27
    iput-object v5, v2, Lk/a/b/a/b/n/k;->f:Lk/a/b/a/b/h;

    goto :goto_2

    .line 28
    :pswitch_6
    invoke-virtual {v0, v5}, Lk/a/b/a/c/r;->a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object v5

    .line 29
    iput-object v5, v2, Lk/a/b/a/b/n/k;->e:Lk/a/b/a/b/h;

    goto :goto_2

    .line 30
    :pswitch_7
    invoke-virtual {v0, v5}, Lk/a/b/a/c/r;->a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object v5

    invoke-virtual {v2, v5}, Lk/a/b/a/b/n/k;->c(Lk/a/b/a/b/h;)V

    goto :goto_2

    .line 31
    :pswitch_8
    invoke-virtual {v0, v5}, Lk/a/b/a/c/r;->a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object v5

    invoke-virtual {v2, v5}, Lk/a/b/a/b/n/k;->b(Lk/a/b/a/b/h;)V

    goto :goto_2

    .line 32
    :pswitch_9
    invoke-virtual {v0, v5}, Lk/a/b/a/c/r;->a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object v5

    invoke-virtual {v2, v5}, Lk/a/b/a/b/n/k;->a(Lk/a/b/a/b/h;)V

    goto :goto_2

    .line 33
    :pswitch_a
    invoke-virtual {v0, v5}, Lk/a/b/a/c/r;->a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object v5

    .line 34
    iput-object v5, v2, Lk/a/b/a/b/n/k;->a:Lk/a/b/a/b/h;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-object v2

    nop

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
