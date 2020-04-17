.class public final Lk/a/b/a/c/c1/a;
.super Lk/a/b/a/c/b;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/b/a/c/c1/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/c/b<",
        "Lk/a/b/a/b/n/a;",
        "Ljava/util/List;",
        ">;",
        "Lk/a/b/a/c/s<",
        "Lk/a/b/a/b/n/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:[Ljava/lang/Object;

.field public static final e:Lk/a/b/a/b/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/16 v1, 0x12

    .line 1
    invoke-static {v1, v2}, Lk/a/b/a/b/i;->a(J)Lk/a/b/a/b/i;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const-string v3, "amqp:attach:list"

    .line 2
    invoke-static {v3}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 3
    sput-object v0, Lk/a/b/a/c/c1/a;->d:[Ljava/lang/Object;

    .line 4
    invoke-static {v1, v2}, Lk/a/b/a/b/i;->a(J)Lk/a/b/a/b/i;

    move-result-object v0

    sput-object v0, Lk/a/b/a/c/c1/a;->e:Lk/a/b/a/b/i;

    return-void
.end method

.method public constructor <init>(Lk/a/b/a/c/x;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lk/a/b/a/c/b;-><init>(Lk/a/b/a/c/x;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lk/a/b/a/b/n/a;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lk/a/b/a/b/n/a;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 2
    check-cast p1, Ljava/util/List;

    .line 3
    new-instance v0, Lk/a/b/a/b/n/a;

    invoke-direct {v0}, Lk/a/b/a/b/n/a;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_d

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    rsub-int/lit8 v1, v1, 0xe

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    const/16 v1, 0xd

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 7
    iput-object v1, v0, Lk/a/b/a/b/n/a;->n:Ljava/util/Map;

    :pswitch_1
    const/16 v1, 0xc

    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-array v5, v3, [Lk/a/b/a/b/f;

    .line 10
    check-cast v1, Lk/a/b/a/b/f;

    aput-object v1, v5, v4

    .line 11
    iput-object v5, v0, Lk/a/b/a/b/n/a;->m:[Lk/a/b/a/b/f;

    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    check-cast v1, [Lk/a/b/a/b/f;

    .line 13
    iput-object v1, v0, Lk/a/b/a/b/n/a;->m:[Lk/a/b/a/b/f;

    :goto_1
    :pswitch_2
    const/16 v1, 0xb

    .line 14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    new-array v5, v3, [Lk/a/b/a/b/f;

    .line 16
    check-cast v1, Lk/a/b/a/b/f;

    aput-object v1, v5, v4

    .line 17
    iput-object v5, v0, Lk/a/b/a/b/n/a;->l:[Lk/a/b/a/b/f;

    goto :goto_3

    .line 18
    :cond_3
    :goto_2
    check-cast v1, [Lk/a/b/a/b/f;

    .line 19
    iput-object v1, v0, Lk/a/b/a/b/n/a;->l:[Lk/a/b/a/b/f;

    :goto_3
    :pswitch_3
    const/16 v1, 0xa

    .line 20
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/b/i;

    .line 21
    iput-object v1, v0, Lk/a/b/a/b/n/a;->k:Lk/a/b/a/b/i;

    :pswitch_4
    const/16 v1, 0x9

    .line 22
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/b/h;

    .line 23
    iput-object v1, v0, Lk/a/b/a/b/n/a;->j:Lk/a/b/a/b/h;

    :pswitch_5
    const/16 v1, 0x8

    .line 24
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    .line 25
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 26
    :goto_4
    iput-boolean v1, v0, Lk/a/b/a/b/n/a;->i:Z

    :pswitch_6
    const/4 v1, 0x7

    .line 27
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 28
    iput-object v1, v0, Lk/a/b/a/b/n/a;->h:Ljava/util/Map;

    :pswitch_7
    const/4 v1, 0x6

    .line 29
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/b/n/r;

    .line 30
    iput-object v1, v0, Lk/a/b/a/b/n/a;->g:Lk/a/b/a/b/n/r;

    :pswitch_8
    const/4 v1, 0x5

    .line 31
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/b/n/q;

    .line 32
    iput-object v1, v0, Lk/a/b/a/b/n/a;->f:Lk/a/b/a/b/n/q;

    :pswitch_9
    const/4 v1, 0x4

    .line 33
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/b/g;

    if-nez v1, :cond_5

    .line 34
    sget-object v1, Lk/a/b/a/b/n/n;->FIRST:Lk/a/b/a/b/n/n;

    goto :goto_5

    :cond_5
    invoke-static {}, Lk/a/b/a/b/n/n;->values()[Lk/a/b/a/b/n/n;

    move-result-object v5

    .line 35
    iget-byte v1, v1, Lk/a/b/a/b/g;->x:B

    and-int/lit16 v1, v1, 0xff

    .line 36
    aget-object v1, v5, v1

    :goto_5
    if-nez v1, :cond_6

    .line 37
    sget-object v1, Lk/a/b/a/b/n/n;->FIRST:Lk/a/b/a/b/n/n;

    :cond_6
    iput-object v1, v0, Lk/a/b/a/b/n/a;->e:Lk/a/b/a/b/n/n;

    :pswitch_a
    const/4 v1, 0x3

    .line 38
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/b/g;

    if-nez v1, :cond_7

    .line 39
    sget-object v1, Lk/a/b/a/b/n/p;->MIXED:Lk/a/b/a/b/n/p;

    goto :goto_6

    :cond_7
    invoke-static {}, Lk/a/b/a/b/n/p;->values()[Lk/a/b/a/b/n/p;

    move-result-object v5

    .line 40
    iget-byte v1, v1, Lk/a/b/a/b/g;->x:B

    and-int/lit16 v1, v1, 0xff

    .line 41
    aget-object v1, v5, v1

    :goto_6
    if-nez v1, :cond_8

    .line 42
    sget-object v1, Lk/a/b/a/b/n/p;->MIXED:Lk/a/b/a/b/n/p;

    :cond_8
    iput-object v1, v0, Lk/a/b/a/b/n/a;->d:Lk/a/b/a/b/n/p;

    .line 43
    :pswitch_b
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lk/a/b/a/b/n/o;->RECEIVER:Lk/a/b/a/b/n/o;

    goto :goto_7

    :cond_9
    sget-object v1, Lk/a/b/a/b/n/o;->SENDER:Lk/a/b/a/b/n/o;

    :goto_7
    if-eqz v1, :cond_c

    .line 44
    iput-object v1, v0, Lk/a/b/a/b/n/a;->c:Lk/a/b/a/b/n/o;

    .line 45
    :pswitch_c
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/b/h;

    if-eqz v1, :cond_b

    .line 46
    iput-object v1, v0, Lk/a/b/a/b/n/a;->b:Lk/a/b/a/b/h;

    .line 47
    :pswitch_d
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_a

    .line 48
    iput-object p1, v0, Lk/a/b/a/b/n/a;->a:Ljava/lang/String;

    goto :goto_8

    .line 49
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "the name field is mandatory"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "the handle field is mandatory"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Role cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_8
    return-object v0

    .line 52
    :cond_d
    new-instance p1, Lk/a/b/a/c/q;

    const-string v0, "The role field cannot be omitted"

    invoke-direct {p1, v0}, Lk/a/b/a/c/q;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public b()Lk/a/b/a/b/i;
    .locals 1

    .line 1
    sget-object v0, Lk/a/b/a/c/c1/a;->e:Lk/a/b/a/b/i;

    return-object v0
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lk/a/b/a/b/n/a;

    .line 2
    new-instance v0, Lk/a/b/a/c/c1/a$a;

    invoke-direct {v0, p1}, Lk/a/b/a/c/c1/a$a;-><init>(Lk/a/b/a/b/n/a;)V

    return-object v0
.end method
