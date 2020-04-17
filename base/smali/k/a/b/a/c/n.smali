.class public Lk/a/b/a/c/n;
.super Lk/a/b/a/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/b/a/c/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/c/c<",
        "Lk/a/b/a/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lk/a/b/a/c/n$a;


# direct methods
.method public constructor <init>(Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk/a/b/a/c/c;-><init>()V

    .line 2
    new-instance v0, Lk/a/b/a/c/n$a;

    invoke-direct {v0, p0, p1, p2}, Lk/a/b/a/c/n$a;-><init>(Lk/a/b/a/c/n;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    iput-object v0, p0, Lk/a/b/a/c/n;->a:Lk/a/b/a/c/n$a;

    .line 3
    const-class v0, Lk/a/b/a/b/b;

    .line 4
    iget-object p1, p1, Lk/a/b/a/c/x;->c:Ljava/util/Map;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
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
            "Lk/a/b/a/b/b;",
            ">;"
        }
    .end annotation

    .line 5
    const-class v0, Lk/a/b/a/b/b;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lk/a/b/a/c/j0;
    .locals 0

    .line 1
    check-cast p1, Lk/a/b/a/b/b;

    .line 2
    iget-object p1, p0, Lk/a/b/a/c/n;->a:Lk/a/b/a/c/n$a;

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Lk/a/b/a/c/r0;
    .locals 0

    .line 3
    check-cast p1, Lk/a/b/a/b/b;

    .line 4
    iget-object p1, p0, Lk/a/b/a/c/n;->a:Lk/a/b/a/c/n$a;

    return-object p1
.end method

.method public f()Lk/a/b/a/c/r0;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/n;->a:Lk/a/b/a/c/n$a;

    return-object v0
.end method

.method public i()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lk/a/b/a/c/n$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/n;->a:Lk/a/b/a/c/n$a;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
