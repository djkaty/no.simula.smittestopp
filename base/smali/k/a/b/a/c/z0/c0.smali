.class public Lk/a/b/a/c/z0/c0;
.super Lk/a/b/a/c/b;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/b/a/c/z0/c0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/c/b<",
        "Lk/a/b/a/b/k/u;",
        "Ljava/util/List;",
        ">;",
        "Lk/a/b/a/c/s<",
        "Lk/a/b/a/b/k/u;",
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

    const-wide/16 v1, 0x28

    .line 1
    invoke-static {v1, v2}, Lk/a/b/a/b/i;->a(J)Lk/a/b/a/b/i;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const-string v3, "amqp:source:list"

    .line 2
    invoke-static {v3}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 3
    sput-object v0, Lk/a/b/a/c/z0/c0;->d:[Ljava/lang/Object;

    .line 4
    invoke-static {v1, v2}, Lk/a/b/a/b/i;->a(J)Lk/a/b/a/b/i;

    move-result-object v0

    sput-object v0, Lk/a/b/a/c/z0/c0;->e:Lk/a/b/a/b/i;

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
            "Lk/a/b/a/b/k/u;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lk/a/b/a/b/k/u;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 2
    check-cast p1, Ljava/util/List;

    .line 3
    new-instance v0, Lk/a/b/a/b/k/u;

    invoke-direct {v0}, Lk/a/b/a/b/k/u;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    rsub-int/lit8 v1, v1, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    const/16 v1, 0xa

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-array v4, v2, [Lk/a/b/a/b/f;

    .line 7
    check-cast v1, Lk/a/b/a/b/f;

    aput-object v1, v4, v3

    .line 8
    iput-object v4, v0, Lk/a/b/a/b/k/w;->g:[Lk/a/b/a/b/f;

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    check-cast v1, [Lk/a/b/a/b/f;

    .line 10
    iput-object v1, v0, Lk/a/b/a/b/k/w;->g:[Lk/a/b/a/b/f;

    :goto_1
    :pswitch_1
    const/16 v1, 0x9

    .line 11
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    new-array v4, v2, [Lk/a/b/a/b/f;

    .line 13
    check-cast v1, Lk/a/b/a/b/f;

    aput-object v1, v4, v3

    .line 14
    iput-object v4, v0, Lk/a/b/a/b/k/u;->k:[Lk/a/b/a/b/f;

    goto :goto_3

    .line 15
    :cond_3
    :goto_2
    check-cast v1, [Lk/a/b/a/b/f;

    .line 16
    iput-object v1, v0, Lk/a/b/a/b/k/u;->k:[Lk/a/b/a/b/f;

    :goto_3
    :pswitch_2
    const/16 v1, 0x8

    .line 17
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/b/k/o;

    .line 18
    iput-object v1, v0, Lk/a/b/a/b/k/u;->j:Lk/a/b/a/b/k/o;

    :pswitch_3
    const/4 v1, 0x7

    .line 19
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 20
    iput-object v1, v0, Lk/a/b/a/b/k/u;->i:Ljava/util/Map;

    :pswitch_4
    const/4 v1, 0x6

    .line 21
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/b/f;

    .line 22
    iput-object v1, v0, Lk/a/b/a/b/k/u;->h:Lk/a/b/a/b/f;

    :pswitch_5
    const/4 v1, 0x5

    .line 23
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 24
    iput-object v1, v0, Lk/a/b/a/b/k/w;->f:Ljava/util/Map;

    :pswitch_6
    const/4 v1, 0x4

    .line 25
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    .line 26
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 27
    :goto_4
    iput-boolean v1, v0, Lk/a/b/a/b/k/w;->e:Z

    :pswitch_7
    const/4 v1, 0x3

    .line 28
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/b/h;

    if-nez v1, :cond_5

    .line 29
    sget-object v1, Lk/a/b/a/b/h;->z:Lk/a/b/a/b/h;

    .line 30
    :cond_5
    iput-object v1, v0, Lk/a/b/a/b/k/w;->d:Lk/a/b/a/b/h;

    :pswitch_8
    const/4 v1, 0x2

    .line 31
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/b/f;

    if-nez v1, :cond_6

    .line 32
    sget-object v1, Lk/a/b/a/b/k/y;->SESSION_END:Lk/a/b/a/b/k/y;

    goto :goto_5

    :cond_6
    invoke-static {v1}, Lk/a/b/a/b/k/y;->valueOf(Lk/a/b/a/b/f;)Lk/a/b/a/b/k/y;

    move-result-object v1

    :goto_5
    if-nez v1, :cond_7

    .line 33
    sget-object v1, Lk/a/b/a/b/k/y;->SESSION_END:Lk/a/b/a/b/k/y;

    :cond_7
    iput-object v1, v0, Lk/a/b/a/b/k/w;->c:Lk/a/b/a/b/k/y;

    .line 34
    :pswitch_9
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/b/h;

    if-nez v1, :cond_8

    .line 35
    sget-object v1, Lk/a/b/a/b/k/x;->NONE:Lk/a/b/a/b/k/x;

    goto :goto_6

    :cond_8
    invoke-static {v1}, Lk/a/b/a/b/k/x;->get(Lk/a/b/a/b/h;)Lk/a/b/a/b/k/x;

    move-result-object v1

    :goto_6
    if-nez v1, :cond_9

    .line 36
    sget-object v1, Lk/a/b/a/b/k/x;->NONE:Lk/a/b/a/b/k/x;

    :cond_9
    iput-object v1, v0, Lk/a/b/a/b/k/w;->b:Lk/a/b/a/b/k/x;

    .line 37
    :pswitch_a
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 38
    iput-object p1, v0, Lk/a/b/a/b/k/w;->a:Ljava/lang/String;

    :goto_7
    return-object v0

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
    .end packed-switch
.end method

.method public b()Lk/a/b/a/b/i;
    .locals 1

    .line 1
    sget-object v0, Lk/a/b/a/c/z0/c0;->e:Lk/a/b/a/b/i;

    return-object v0
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lk/a/b/a/b/k/u;

    .line 2
    new-instance v0, Lk/a/b/a/c/z0/c0$a;

    invoke-direct {v0, p1}, Lk/a/b/a/c/z0/c0$a;-><init>(Lk/a/b/a/b/k/u;)V

    return-object v0
.end method
