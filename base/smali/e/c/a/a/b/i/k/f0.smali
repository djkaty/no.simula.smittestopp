.class public final Le/c/a/a/b/i/k/f0;
.super Le/c/a/a/b/i/k/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/a/a/b/i/k/e0<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Le/c/a/a/b/i/k/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/b/i/k/g<",
            "Le/c/a/a/b/i/a$b;",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Le/c/a/a/b/i/k/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/b/i/k/h<",
            "Le/c/a/a/b/i/a$b;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/c/a/a/b/i/k/v;Le/c/a/a/g/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/a/a/b/i/k/v;",
            "Le/c/a/a/g/b<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0, p2}, Le/c/a/a/b/i/k/e0;-><init>(ILe/c/a/a/g/b;)V

    .line 2
    iget-object p2, p1, Le/c/a/a/b/i/k/v;->a:Le/c/a/a/b/i/k/g;

    iput-object p2, p0, Le/c/a/a/b/i/k/f0;->b:Le/c/a/a/b/i/k/g;

    .line 3
    iget-object p1, p1, Le/c/a/a/b/i/k/v;->b:Le/c/a/a/b/i/k/h;

    iput-object p1, p0, Le/c/a/a/b/i/k/f0;->c:Le/c/a/a/b/i/k/h;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Le/c/a/a/b/i/k/i;Z)V
    .locals 0

    return-void
.end method

.method public final b(Le/c/a/a/b/i/k/c$a;)[Le/c/a/a/b/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/a/a/b/i/k/c$a<",
            "*>;)[",
            "Le/c/a/a/b/c;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/c/a/a/b/i/k/f0;->b:Le/c/a/a/b/i/k/g;

    .line 2
    iget-object p1, p1, Le/c/a/a/b/i/k/g;->b:[Le/c/a/a/b/c;

    return-object p1
.end method

.method public final c(Le/c/a/a/b/i/k/c$a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/a/a/b/i/k/c$a<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/c/a/a/b/i/k/f0;->b:Le/c/a/a/b/i/k/g;

    .line 2
    iget-boolean p1, p1, Le/c/a/a/b/i/k/g;->c:Z

    return p1
.end method

.method public final d(Le/c/a/a/b/i/k/c$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/a/a/b/i/k/c$a<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/c/a/a/b/i/k/f0;->b:Le/c/a/a/b/i/k/g;

    .line 2
    iget-object v1, p1, Le/c/a/a/b/i/k/c$a;->b:Le/c/a/a/b/i/a$f;

    .line 3
    iget-object v2, p0, Le/c/a/a/b/i/k/e0;->a:Le/c/a/a/g/b;

    check-cast v0, Le/c/a/a/e/l;

    if-eqz v0, :cond_1

    .line 4
    check-cast v1, Le/c/a/a/d/c/o;

    new-instance v3, Le/c/a/a/e/a$a;

    invoke-direct {v3, v2}, Le/c/a/a/e/a$a;-><init>(Le/c/a/a/g/b;)V

    iget-object v2, v0, Le/c/a/a/e/l;->d:Le/c/a/a/d/c/q;

    iget-object v0, v0, Le/c/a/a/e/l;->e:Le/c/a/a/b/i/k/f;

    invoke-virtual {v1, v2, v0, v3}, Le/c/a/a/d/c/o;->a(Le/c/a/a/d/c/q;Le/c/a/a/b/i/k/f;Le/c/a/a/d/c/d;)V

    .line 5
    iget-object v0, p0, Le/c/a/a/b/i/k/f0;->b:Le/c/a/a/b/i/k/g;

    .line 6
    iget-object v1, v0, Le/c/a/a/b/i/k/g;->a:Le/c/a/a/b/i/k/f;

    .line 7
    iget-object v1, v1, Le/c/a/a/b/i/k/f;->c:Le/c/a/a/b/i/k/f$a;

    if-eqz v1, :cond_0

    .line 8
    iget-object p1, p1, Le/c/a/a/b/i/k/c$a;->g:Ljava/util/Map;

    .line 9
    new-instance v2, Le/c/a/a/b/i/k/v;

    iget-object v3, p0, Le/c/a/a/b/i/k/f0;->c:Le/c/a/a/b/i/k/h;

    invoke-direct {v2, v0, v3}, Le/c/a/a/b/i/k/v;-><init>(Le/c/a/a/b/i/k/g;Le/c/a/a/b/i/k/h;)V

    .line 10
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 11
    throw p1
.end method
