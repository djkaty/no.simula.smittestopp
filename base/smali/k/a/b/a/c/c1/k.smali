.class public final Lk/a/b/a/c/c1/k;
.super Lk/a/b/a/c/b;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/b/a/c/c1/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/c/b<",
        "Lk/a/b/a/b/n/k;",
        "Ljava/util/List;",
        ">;",
        "Lk/a/b/a/c/s<",
        "Lk/a/b/a/b/n/k;",
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

    const-wide/16 v1, 0x13

    .line 1
    invoke-static {v1, v2}, Lk/a/b/a/b/i;->a(J)Lk/a/b/a/b/i;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const-string v3, "amqp:flow:list"

    .line 2
    invoke-static {v3}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 3
    sput-object v0, Lk/a/b/a/c/c1/k;->d:[Ljava/lang/Object;

    .line 4
    invoke-static {v1, v2}, Lk/a/b/a/b/i;->a(J)Lk/a/b/a/b/i;

    move-result-object v0

    sput-object v0, Lk/a/b/a/c/c1/k;->e:Lk/a/b/a/b/i;

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
            "Lk/a/b/a/b/n/k;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lk/a/b/a/b/n/k;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 2
    check-cast p1, Ljava/util/List;

    .line 3
    new-instance v0, Lk/a/b/a/b/n/k;

    invoke-direct {v0}, Lk/a/b/a/b/n/k;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    rsub-int/lit8 v1, v1, 0xb

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const/16 v1, 0xa

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 7
    iput-object v1, v0, Lk/a/b/a/b/n/k;->k:Ljava/util/Map;

    :pswitch_1
    const/16 v1, 0x9

    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 10
    :goto_0
    iput-boolean v1, v0, Lk/a/b/a/b/n/k;->j:Z

    :pswitch_2
    const/16 v1, 0x8

    .line 11
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 13
    :goto_1
    iput-boolean v1, v0, Lk/a/b/a/b/n/k;->i:Z

    :pswitch_3
    const/4 v1, 0x7

    .line 14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/b/h;

    .line 15
    iput-object v1, v0, Lk/a/b/a/b/n/k;->h:Lk/a/b/a/b/h;

    :pswitch_4
    const/4 v1, 0x6

    .line 16
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/b/h;

    .line 17
    iput-object v1, v0, Lk/a/b/a/b/n/k;->g:Lk/a/b/a/b/h;

    :pswitch_5
    const/4 v1, 0x5

    .line 18
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/b/h;

    .line 19
    iput-object v1, v0, Lk/a/b/a/b/n/k;->f:Lk/a/b/a/b/h;

    :pswitch_6
    const/4 v1, 0x4

    .line 20
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/b/h;

    .line 21
    iput-object v1, v0, Lk/a/b/a/b/n/k;->e:Lk/a/b/a/b/h;

    .line 22
    :pswitch_7
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/b/h;

    invoke-virtual {v0, v1}, Lk/a/b/a/b/n/k;->c(Lk/a/b/a/b/h;)V

    :pswitch_8
    const/4 v1, 0x2

    .line 23
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/b/h;

    invoke-virtual {v0, v1}, Lk/a/b/a/b/n/k;->b(Lk/a/b/a/b/h;)V

    :pswitch_9
    const/4 v1, 0x1

    .line 24
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/b/h;

    invoke-virtual {v0, v1}, Lk/a/b/a/b/n/k;->a(Lk/a/b/a/b/h;)V

    .line 25
    :pswitch_a
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk/a/b/a/b/h;

    .line 26
    iput-object p1, v0, Lk/a/b/a/b/n/k;->a:Lk/a/b/a/b/h;

    :goto_2
    return-object v0

    .line 27
    :cond_2
    new-instance p1, Lk/a/b/a/c/q;

    const-string v0, "The outgoing-window field cannot be omitted"

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
        :pswitch_a
    .end packed-switch
.end method

.method public b()Lk/a/b/a/b/i;
    .locals 1

    .line 1
    sget-object v0, Lk/a/b/a/c/c1/k;->e:Lk/a/b/a/b/i;

    return-object v0
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lk/a/b/a/b/n/k;

    .line 2
    new-instance v0, Lk/a/b/a/c/c1/k$a;

    invoke-direct {v0, p1}, Lk/a/b/a/c/c1/k$a;-><init>(Lk/a/b/a/b/n/k;)V

    return-object v0
.end method
