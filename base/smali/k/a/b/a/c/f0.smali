.class public Lk/a/b/a/c/f0;
.super Lk/a/b/a/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/b/a/c/f0$c;,
        Lk/a/b/a/c/f0$a;,
        Lk/a/b/a/c/f0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/c/c<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lk/a/b/a/c/f0$b;

.field public b:Lk/a/b/a/c/f0$b;


# direct methods
.method public constructor <init>(Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk/a/b/a/c/c;-><init>()V

    .line 2
    new-instance v0, Lk/a/b/a/c/f0$a;

    invoke-direct {v0, p0, p1, p2}, Lk/a/b/a/c/f0$a;-><init>(Lk/a/b/a/c/f0;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    iput-object v0, p0, Lk/a/b/a/c/f0;->a:Lk/a/b/a/c/f0$b;

    .line 3
    new-instance v0, Lk/a/b/a/c/f0$c;

    invoke-direct {v0, p0, p1, p2}, Lk/a/b/a/c/f0$c;-><init>(Lk/a/b/a/c/f0;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    iput-object v0, p0, Lk/a/b/a/c/f0;->b:Lk/a/b/a/c/f0$b;

    .line 4
    const-class v0, Ljava/lang/Long;

    .line 5
    iget-object p1, p1, Lk/a/b/a/c/x;->c:Ljava/util/Map;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p2, p0}, Lk/a/b/a/c/r;->a(Lk/a/b/a/c/i0;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 3
    const-class v0, Ljava/lang/Long;

    return-object v0
.end method

.method public a(Ljava/lang/Long;)Lk/a/b/a/c/f0$b;
    .locals 4

    .line 4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x80

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const-wide/16 v2, 0x7f

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 5
    iget-object p1, p0, Lk/a/b/a/c/f0;->b:Lk/a/b/a/c/f0$b;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lk/a/b/a/c/f0;->a:Lk/a/b/a/c/f0$b;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lk/a/b/a/c/j0;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lk/a/b/a/c/f0;->a(Ljava/lang/Long;)Lk/a/b/a/c/f0$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lk/a/b/a/c/r0;
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lk/a/b/a/c/f0;->a(Ljava/lang/Long;)Lk/a/b/a/c/f0$b;

    move-result-object p1

    return-object p1
.end method

.method public f()Lk/a/b/a/c/r0;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/f0;->a:Lk/a/b/a/c/f0$b;

    return-object v0
.end method

.method public i()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lk/a/b/a/c/f0$b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lk/a/b/a/c/f0$b;

    .line 1
    iget-object v1, p0, Lk/a/b/a/c/f0;->b:Lk/a/b/a/c/f0$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lk/a/b/a/c/f0;->a:Lk/a/b/a/c/f0$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
