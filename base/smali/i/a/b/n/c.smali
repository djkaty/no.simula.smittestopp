.class public Li/a/b/n/c;
.super Li/a/b/n/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/a/b/n/f<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Li/a/b/n/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Li/a/b/n/f;-><init>(Li/a/b/n/e;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Li/a/b/n/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/a/b/n/f<",
            "Li/a/b/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Li/a/b/n/f;->a:Li/a/b/n/e;

    iget-object p1, p1, Li/a/b/n/e;->b:Li/a/b/n/f;

    return-object p1
.end method

.method public a()Ljava/lang/Object;
    .locals 1

    .line 2
    new-instance v0, Li/a/b/a;

    invoke-direct {v0}, Li/a/b/a;-><init>()V

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 4
    check-cast p1, Li/a/b/a;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 3
    check-cast p1, Li/a/b/d;

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;)Li/a/b/n/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/a/b/n/f<",
            "Li/a/b/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Li/a/b/n/f;->a:Li/a/b/n/e;

    iget-object p1, p1, Li/a/b/n/e;->b:Li/a/b/n/f;

    return-object p1
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 2
    new-instance v0, Li/a/b/d;

    invoke-direct {v0}, Li/a/b/d;-><init>()V

    return-object v0
.end method
