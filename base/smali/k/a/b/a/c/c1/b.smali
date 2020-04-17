.class public final Lk/a/b/a/c/c1/b;
.super Lk/a/b/a/c/b;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/b/a/c/c1/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/c/b<",
        "Lk/a/b/a/b/n/b;",
        "Ljava/util/List;",
        ">;",
        "Lk/a/b/a/c/s<",
        "Lk/a/b/a/b/n/b;",
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

    const-wide/16 v1, 0x11

    .line 1
    invoke-static {v1, v2}, Lk/a/b/a/b/i;->a(J)Lk/a/b/a/b/i;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const-string v3, "amqp:begin:list"

    .line 2
    invoke-static {v3}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 3
    sput-object v0, Lk/a/b/a/c/c1/b;->d:[Ljava/lang/Object;

    .line 4
    invoke-static {v1, v2}, Lk/a/b/a/b/i;->a(J)Lk/a/b/a/b/i;

    move-result-object v0

    sput-object v0, Lk/a/b/a/c/c1/b;->e:Lk/a/b/a/b/i;

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
            "Lk/a/b/a/b/n/b;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lk/a/b/a/b/n/b;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 2
    check-cast p1, Ljava/util/List;

    .line 3
    new-instance v0, Lk/a/b/a/b/n/b;

    invoke-direct {v0}, Lk/a/b/a/b/n/b;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_8

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const/4 v1, 0x7

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 7
    iput-object v1, v0, Lk/a/b/a/b/n/b;->h:Ljava/util/Map;

    :pswitch_1
    const/4 v1, 0x6

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
    new-array v5, v4, [Lk/a/b/a/b/f;

    .line 10
    check-cast v1, Lk/a/b/a/b/f;

    aput-object v1, v5, v3

    .line 11
    iput-object v5, v0, Lk/a/b/a/b/n/b;->g:[Lk/a/b/a/b/f;

    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    check-cast v1, [Lk/a/b/a/b/f;

    .line 13
    iput-object v1, v0, Lk/a/b/a/b/n/b;->g:[Lk/a/b/a/b/f;

    :goto_1
    :pswitch_2
    const/4 v1, 0x5

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
    new-array v5, v4, [Lk/a/b/a/b/f;

    .line 16
    check-cast v1, Lk/a/b/a/b/f;

    aput-object v1, v5, v3

    .line 17
    iput-object v5, v0, Lk/a/b/a/b/n/b;->f:[Lk/a/b/a/b/f;

    goto :goto_3

    .line 18
    :cond_3
    :goto_2
    check-cast v1, [Lk/a/b/a/b/f;

    .line 19
    iput-object v1, v0, Lk/a/b/a/b/n/b;->f:[Lk/a/b/a/b/f;

    :goto_3
    :pswitch_3
    const/4 v1, 0x4

    .line 20
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/b/h;

    if-nez v1, :cond_4

    .line 21
    sget-object v1, Lk/a/b/a/b/h;->B:Lk/a/b/a/b/h;

    .line 22
    :cond_4
    iput-object v1, v0, Lk/a/b/a/b/n/b;->e:Lk/a/b/a/b/h;

    .line 23
    :pswitch_4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/b/h;

    if-eqz v1, :cond_7

    .line 24
    iput-object v1, v0, Lk/a/b/a/b/n/b;->d:Lk/a/b/a/b/h;

    :pswitch_5
    const/4 v1, 0x2

    .line 25
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/b/h;

    if-eqz v1, :cond_6

    .line 26
    iput-object v1, v0, Lk/a/b/a/b/n/b;->c:Lk/a/b/a/b/h;

    .line 27
    :pswitch_6
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/b/h;

    if-eqz v1, :cond_5

    .line 28
    iput-object v1, v0, Lk/a/b/a/b/n/b;->b:Lk/a/b/a/b/h;

    .line 29
    :pswitch_7
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk/a/b/a/b/j;

    .line 30
    iput-object p1, v0, Lk/a/b/a/b/n/b;->a:Lk/a/b/a/b/j;

    goto :goto_4

    .line 31
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "the next-outgoing-id field is mandatory"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "the incoming-window field is mandatory"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "the outgoing-window field is mandatory"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_4
    return-object v0

    .line 34
    :cond_8
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
    .end packed-switch
.end method

.method public b()Lk/a/b/a/b/i;
    .locals 1

    .line 1
    sget-object v0, Lk/a/b/a/c/c1/b;->e:Lk/a/b/a/b/i;

    return-object v0
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lk/a/b/a/b/n/b;

    .line 2
    new-instance v0, Lk/a/b/a/c/c1/b$a;

    invoke-direct {v0, p1}, Lk/a/b/a/c/c1/b$a;-><init>(Lk/a/b/a/b/n/b;)V

    return-object v0
.end method
