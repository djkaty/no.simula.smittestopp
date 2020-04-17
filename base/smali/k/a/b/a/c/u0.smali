.class public Lk/a/b/a/c/u0;
.super Lk/a/b/a/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/b/a/c/u0$d;,
        Lk/a/b/a/c/u0$b;,
        Lk/a/b/a/c/u0$a;,
        Lk/a/b/a/c/u0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/c/c<",
        "Lk/a/b/a/b/h;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lk/a/b/a/c/u0$c;

.field public b:Lk/a/b/a/c/u0$c;

.field public c:Lk/a/b/a/c/u0$c;


# direct methods
.method public constructor <init>(Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk/a/b/a/c/c;-><init>()V

    .line 2
    new-instance v0, Lk/a/b/a/c/u0$a;

    invoke-direct {v0, p0, p1, p2}, Lk/a/b/a/c/u0$a;-><init>(Lk/a/b/a/c/u0;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    iput-object v0, p0, Lk/a/b/a/c/u0;->a:Lk/a/b/a/c/u0$c;

    .line 3
    new-instance v0, Lk/a/b/a/c/u0$b;

    invoke-direct {v0, p0, p1, p2}, Lk/a/b/a/c/u0$b;-><init>(Lk/a/b/a/c/u0;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    iput-object v0, p0, Lk/a/b/a/c/u0;->b:Lk/a/b/a/c/u0$c;

    .line 4
    new-instance v0, Lk/a/b/a/c/u0$d;

    invoke-direct {v0, p0, p1, p2}, Lk/a/b/a/c/u0$d;-><init>(Lk/a/b/a/c/u0;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    iput-object v0, p0, Lk/a/b/a/c/u0;->c:Lk/a/b/a/c/u0$c;

    .line 5
    const-class v0, Lk/a/b/a/b/h;

    .line 6
    iget-object p1, p1, Lk/a/b/a/c/x;->c:Ljava/util/Map;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
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
            "Lk/a/b/a/b/h;",
            ">;"
        }
    .end annotation

    .line 5
    const-class v0, Lk/a/b/a/b/h;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lk/a/b/a/c/j0;
    .locals 0

    .line 1
    check-cast p1, Lk/a/b/a/b/h;

    invoke-virtual {p0, p1}, Lk/a/b/a/c/u0;->a(Lk/a/b/a/b/h;)Lk/a/b/a/c/u0$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lk/a/b/a/c/r0;
    .locals 0

    .line 2
    check-cast p1, Lk/a/b/a/b/h;

    invoke-virtual {p0, p1}, Lk/a/b/a/c/u0;->a(Lk/a/b/a/b/h;)Lk/a/b/a/c/u0$c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lk/a/b/a/b/h;)Lk/a/b/a/c/u0$c;
    .locals 1

    .line 3
    iget p1, p1, Lk/a/b/a/b/h;->x:I

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lk/a/b/a/c/u0;->c:Lk/a/b/a/c/u0$c;

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_1

    iget-object p1, p0, Lk/a/b/a/c/u0;->b:Lk/a/b/a/c/u0$c;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lk/a/b/a/c/u0;->a:Lk/a/b/a/c/u0$c;

    :goto_0
    return-object p1
.end method

.method public f()Lk/a/b/a/c/r0;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/u0;->a:Lk/a/b/a/c/u0$c;

    return-object v0
.end method

.method public i()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lk/a/b/a/c/u0$c;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lk/a/b/a/c/u0$c;

    .line 1
    iget-object v1, p0, Lk/a/b/a/c/u0;->a:Lk/a/b/a/c/u0$c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lk/a/b/a/c/u0;->b:Lk/a/b/a/c/u0$c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lk/a/b/a/c/u0;->c:Lk/a/b/a/c/u0$c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
