.class public Lk/a/b/a/c/a1/c;
.super Lk/a/b/a/c/b;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/c/b<",
        "Lk/a/b/a/b/l/e;",
        "Ljava/util/List;",
        ">;",
        "Lk/a/b/a/c/s<",
        "Lk/a/b/a/b/l/e;",
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

    const-wide/16 v1, 0x40

    .line 1
    invoke-static {v1, v2}, Lk/a/b/a/b/i;->a(J)Lk/a/b/a/b/i;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const-string v3, "amqp:sasl-mechanisms:list"

    .line 2
    invoke-static {v3}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 3
    sput-object v0, Lk/a/b/a/c/a1/c;->d:[Ljava/lang/Object;

    .line 4
    invoke-static {v1, v2}, Lk/a/b/a/b/i;->a(J)Lk/a/b/a/b/i;

    move-result-object v0

    sput-object v0, Lk/a/b/a/c/a1/c;->e:Lk/a/b/a/b/i;

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
            "Lk/a/b/a/b/l/e;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lk/a/b/a/b/l/e;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 2
    check-cast p1, Ljava/util/List;

    .line 3
    new-instance v0, Lk/a/b/a/b/l/e;

    invoke-direct {v0}, Lk/a/b/a/b/l/e;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Lk/a/b/a/b/f;

    .line 7
    check-cast p1, Lk/a/b/a/b/f;

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Lk/a/b/a/b/l/e;->a([Lk/a/b/a/b/f;)V

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    check-cast p1, [Lk/a/b/a/b/f;

    invoke-virtual {v0, p1}, Lk/a/b/a/b/l/e;->a([Lk/a/b/a/b/f;)V

    :goto_1
    return-object v0

    .line 9
    :cond_2
    new-instance p1, Lk/a/b/a/c/q;

    const-string v0, "The sasl-server-mechanisms field cannot be omitted"

    invoke-direct {p1, v0}, Lk/a/b/a/c/q;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lk/a/b/a/b/i;
    .locals 1

    .line 1
    sget-object v0, Lk/a/b/a/c/a1/c;->e:Lk/a/b/a/b/i;

    return-object v0
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lk/a/b/a/b/l/e;

    .line 2
    iget-object p1, p1, Lk/a/b/a/b/l/e;->a:[Lk/a/b/a/b/f;

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
