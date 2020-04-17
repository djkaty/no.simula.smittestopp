.class public final Le/c/a/a/b/i/k/g0;
.super Le/c/a/a/b/i/k/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/a/a/b/i/k/e0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Le/c/a/a/b/i/k/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/b/i/k/f$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/c/a/a/b/i/k/f$a;Le/c/a/a/g/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/a/a/b/i/k/f$a<",
            "*>;",
            "Le/c/a/a/g/b<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0, p2}, Le/c/a/a/b/i/k/e0;-><init>(ILe/c/a/a/g/b;)V

    .line 2
    iput-object p1, p0, Le/c/a/a/b/i/k/g0;->b:Le/c/a/a/b/i/k/f$a;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Le/c/a/a/b/i/k/i;Z)V
    .locals 0

    return-void
.end method

.method public final b(Le/c/a/a/b/i/k/c$a;)[Le/c/a/a/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/a/a/b/i/k/c$a<",
            "*>;)[",
            "Le/c/a/a/b/c;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Le/c/a/a/b/i/k/c$a;->g:Ljava/util/Map;

    .line 2
    iget-object v0, p0, Le/c/a/a/b/i/k/g0;->b:Le/c/a/a/b/i/k/f$a;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/c/a/a/b/i/k/v;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p1, Le/c/a/a/b/i/k/v;->a:Le/c/a/a/b/i/k/g;

    .line 4
    iget-object p1, p1, Le/c/a/a/b/i/k/g;->b:[Le/c/a/a/b/c;

    return-object p1
.end method

.method public final c(Le/c/a/a/b/i/k/c$a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/a/a/b/i/k/c$a<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Le/c/a/a/b/i/k/c$a;->g:Ljava/util/Map;

    .line 2
    iget-object v0, p0, Le/c/a/a/b/i/k/g0;->b:Le/c/a/a/b/i/k/f$a;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/c/a/a/b/i/k/v;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Le/c/a/a/b/i/k/v;->a:Le/c/a/a/b/i/k/g;

    .line 4
    iget-boolean p1, p1, Le/c/a/a/b/i/k/g;->c:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d(Le/c/a/a/b/i/k/c$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/a/a/b/i/k/c$a<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Le/c/a/a/b/i/k/c$a;->g:Ljava/util/Map;

    .line 2
    iget-object v1, p0, Le/c/a/a/b/i/k/g0;->b:Le/c/a/a/b/i/k/f$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/a/a/b/i/k/v;

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, v0, Le/c/a/a/b/i/k/v;->b:Le/c/a/a/b/i/k/h;

    .line 4
    iget-object p1, p1, Le/c/a/a/b/i/k/c$a;->b:Le/c/a/a/b/i/a$f;

    .line 5
    iget-object v2, p0, Le/c/a/a/b/i/k/e0;->a:Le/c/a/a/g/b;

    check-cast v1, Le/c/a/a/e/m;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 6
    check-cast p1, Le/c/a/a/d/c/o;

    iget-object v4, v1, Le/c/a/a/e/m;->b:Le/c/a/a/e/a;

    if-eqz v4, :cond_0

    .line 7
    new-instance v4, Le/c/a/a/e/n;

    invoke-direct {v4, v2}, Le/c/a/a/e/n;-><init>(Le/c/a/a/g/b;)V

    .line 8
    :try_start_0
    iget-object v1, v1, Le/c/a/a/b/i/k/h;->a:Le/c/a/a/b/i/k/f$a;

    .line 9
    iget-object p1, p1, Le/c/a/a/d/c/o;->z:Le/c/a/a/d/c/i;

    invoke-virtual {p1, v1, v4}, Le/c/a/a/d/c/i;->a(Le/c/a/a/b/i/k/f$a;Le/c/a/a/d/c/d;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    iget-object v1, v2, Le/c/a/a/g/b;->a:Le/c/a/a/g/h;

    invoke-virtual {v1, p1}, Le/c/a/a/g/h;->b(Ljava/lang/Exception;)Z

    .line 11
    :goto_0
    iget-object p1, v0, Le/c/a/a/b/i/k/v;->a:Le/c/a/a/b/i/k/g;

    .line 12
    iget-object p1, p1, Le/c/a/a/b/i/k/g;->a:Le/c/a/a/b/i/k/f;

    .line 13
    iput-object v3, p1, Le/c/a/a/b/i/k/f;->b:Ljava/lang/Object;

    return-void

    .line 14
    :cond_0
    throw v3

    .line 15
    :cond_1
    throw v3

    .line 16
    :cond_2
    iget-object p1, p0, Le/c/a/a/b/i/k/e0;->a:Le/c/a/a/g/b;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 17
    iget-object p1, p1, Le/c/a/a/g/b;->a:Le/c/a/a/g/h;

    invoke-virtual {p1, v0}, Le/c/a/a/g/h;->b(Ljava/lang/Object;)Z

    return-void
.end method
