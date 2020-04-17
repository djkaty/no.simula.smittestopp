.class public Lk/a/b/a/c/c0;
.super Lk/a/b/a/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/b/a/c/c0$c;,
        Lk/a/b/a/c/c0$a;,
        Lk/a/b/a/c/c0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/c/c<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lk/a/b/a/c/c0$b;

.field public b:Lk/a/b/a/c/c0$b;


# direct methods
.method public constructor <init>(Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk/a/b/a/c/c;-><init>()V

    .line 2
    new-instance v0, Lk/a/b/a/c/c0$a;

    invoke-direct {v0, p0, p1, p2}, Lk/a/b/a/c/c0$a;-><init>(Lk/a/b/a/c/c0;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    iput-object v0, p0, Lk/a/b/a/c/c0;->a:Lk/a/b/a/c/c0$b;

    .line 3
    new-instance v0, Lk/a/b/a/c/c0$c;

    invoke-direct {v0, p0, p1, p2}, Lk/a/b/a/c/c0$c;-><init>(Lk/a/b/a/c/c0;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    iput-object v0, p0, Lk/a/b/a/c/c0;->b:Lk/a/b/a/c/c0$b;

    .line 4
    const-class v0, Ljava/lang/Integer;

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 7
    const-class v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lk/a/b/a/c/j0;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, -0x80

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lk/a/b/a/c/c0;->b:Lk/a/b/a/c/c0$b;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lk/a/b/a/c/c0;->a:Lk/a/b/a/c/c0$b;

    :goto_0
    return-object p1
.end method

.method public a(Ljava/lang/Object;)Lk/a/b/a/c/r0;
    .locals 1

    .line 4
    check-cast p1, Ljava/lang/Integer;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, -0x80

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    .line 6
    iget-object p1, p0, Lk/a/b/a/c/c0;->b:Lk/a/b/a/c/c0$b;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lk/a/b/a/c/c0;->a:Lk/a/b/a/c/c0$b;

    :goto_0
    return-object p1
.end method

.method public f()Lk/a/b/a/c/r0;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/c0;->a:Lk/a/b/a/c/c0$b;

    return-object v0
.end method

.method public i()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lk/a/b/a/c/c0$b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lk/a/b/a/c/c0$b;

    .line 1
    iget-object v1, p0, Lk/a/b/a/c/c0;->a:Lk/a/b/a/c/c0$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lk/a/b/a/c/c0;->b:Lk/a/b/a/c/c0$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
