.class public final Lk/a/b/a/c/c1/l;
.super Lk/a/b/a/c/b;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/b/a/c/c1/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/c/b<",
        "Lk/a/b/a/b/n/m;",
        "Ljava/util/List;",
        ">;",
        "Lk/a/b/a/c/s<",
        "Lk/a/b/a/b/n/m;",
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

    const-wide/16 v1, 0x10

    .line 1
    invoke-static {v1, v2}, Lk/a/b/a/b/i;->a(J)Lk/a/b/a/b/i;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const-string v3, "amqp:open:list"

    .line 2
    invoke-static {v3}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 3
    sput-object v0, Lk/a/b/a/c/c1/l;->d:[Ljava/lang/Object;

    .line 4
    invoke-static {v1, v2}, Lk/a/b/a/b/i;->a(J)Lk/a/b/a/b/i;

    move-result-object v0

    sput-object v0, Lk/a/b/a/c/c1/l;->e:Lk/a/b/a/b/i;

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
            "Lk/a/b/a/b/n/m;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lk/a/b/a/b/n/m;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 2
    check-cast p1, Ljava/util/List;

    .line 3
    new-instance v0, Lk/a/b/a/b/n/m;

    invoke-direct {v0}, Lk/a/b/a/b/n/m;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    rsub-int/lit8 v1, v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    const/16 v1, 0x9

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 7
    iput-object v1, v0, Lk/a/b/a/b/n/m;->j:Ljava/util/Map;

    :pswitch_1
    const/16 v1, 0x8

    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-array v4, v3, [Lk/a/b/a/b/f;

    .line 10
    check-cast v1, Lk/a/b/a/b/f;

    aput-object v1, v4, v2

    .line 11
    iput-object v4, v0, Lk/a/b/a/b/n/m;->i:[Lk/a/b/a/b/f;

    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    check-cast v1, [Lk/a/b/a/b/f;

    .line 13
    iput-object v1, v0, Lk/a/b/a/b/n/m;->i:[Lk/a/b/a/b/f;

    :goto_1
    :pswitch_2
    const/4 v1, 0x7

    .line 14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    new-array v4, v3, [Lk/a/b/a/b/f;

    .line 16
    check-cast v1, Lk/a/b/a/b/f;

    aput-object v1, v4, v2

    .line 17
    iput-object v4, v0, Lk/a/b/a/b/n/m;->h:[Lk/a/b/a/b/f;

    goto :goto_3

    .line 18
    :cond_3
    :goto_2
    check-cast v1, [Lk/a/b/a/b/f;

    .line 19
    iput-object v1, v0, Lk/a/b/a/b/n/m;->h:[Lk/a/b/a/b/f;

    :goto_3
    :pswitch_3
    const/4 v1, 0x6

    .line 20
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    new-array v4, v3, [Lk/a/b/a/b/f;

    .line 22
    check-cast v1, Lk/a/b/a/b/f;

    aput-object v1, v4, v2

    .line 23
    iput-object v4, v0, Lk/a/b/a/b/n/m;->g:[Lk/a/b/a/b/f;

    goto :goto_5

    .line 24
    :cond_5
    :goto_4
    check-cast v1, [Lk/a/b/a/b/f;

    .line 25
    iput-object v1, v0, Lk/a/b/a/b/n/m;->g:[Lk/a/b/a/b/f;

    :goto_5
    :pswitch_4
    const/4 v1, 0x5

    .line 26
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_6

    :cond_6
    new-array v4, v3, [Lk/a/b/a/b/f;

    .line 28
    check-cast v1, Lk/a/b/a/b/f;

    aput-object v1, v4, v2

    .line 29
    iput-object v4, v0, Lk/a/b/a/b/n/m;->f:[Lk/a/b/a/b/f;

    goto :goto_7

    .line 30
    :cond_7
    :goto_6
    check-cast v1, [Lk/a/b/a/b/f;

    .line 31
    iput-object v1, v0, Lk/a/b/a/b/n/m;->f:[Lk/a/b/a/b/f;

    :goto_7
    :pswitch_5
    const/4 v1, 0x4

    .line 32
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/b/h;

    .line 33
    iput-object v1, v0, Lk/a/b/a/b/n/m;->e:Lk/a/b/a/b/h;

    :pswitch_6
    const/4 v1, 0x3

    .line 34
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/b/j;

    if-nez v1, :cond_8

    .line 35
    sget-object v1, Lk/a/b/a/b/j;->z:Lk/a/b/a/b/j;

    .line 36
    :cond_8
    iput-object v1, v0, Lk/a/b/a/b/n/m;->d:Lk/a/b/a/b/j;

    :pswitch_7
    const/4 v1, 0x2

    .line 37
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/b/h;

    if-nez v1, :cond_9

    .line 38
    sget-object v1, Lk/a/b/a/b/h;->B:Lk/a/b/a/b/h;

    .line 39
    :cond_9
    iput-object v1, v0, Lk/a/b/a/b/n/m;->c:Lk/a/b/a/b/h;

    .line 40
    :pswitch_8
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 41
    iput-object v1, v0, Lk/a/b/a/b/n/m;->b:Ljava/lang/String;

    .line 42
    :pswitch_9
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lk/a/b/a/b/n/m;->a(Ljava/lang/String;)V

    :goto_8
    return-object v0

    .line 43
    :cond_a
    new-instance p1, Lk/a/b/a/c/q;

    const-string v0, "The container-id field cannot be omitted"

    invoke-direct {p1, v0}, Lk/a/b/a/c/q;-><init>(Ljava/lang/String;)V

    throw p1

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
    .end packed-switch
.end method

.method public b()Lk/a/b/a/b/i;
    .locals 1

    .line 1
    sget-object v0, Lk/a/b/a/c/c1/l;->e:Lk/a/b/a/b/i;

    return-object v0
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lk/a/b/a/b/n/m;

    .line 2
    new-instance v0, Lk/a/b/a/c/c1/l$a;

    invoke-direct {v0, p1}, Lk/a/b/a/c/c1/l$a;-><init>(Lk/a/b/a/b/n/m;)V

    return-object v0
.end method
