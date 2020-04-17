.class public Lk/b/i/b/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/b/i/b/f/a$b;,
        Lk/b/i/b/f/a$c;,
        Lk/b/i/b/f/a$d;,
        Lk/b/i/b/f/a$e;,
        Lk/b/i/b/f/a$f;,
        Lk/b/i/b/f/a$g;
    }
.end annotation


# static fields
.field public static a:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lk/b/i/b/f/a;->a:Ljava/util/Map;

    sget-object v1, Lk/b/i/a/e;->q:Lk/b/a/o;

    new-instance v2, Lk/b/i/b/f/a$c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lk/b/i/b/f/a$c;-><init>(Lk/b/i/b/f/a$a;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lk/b/i/b/f/a;->a:Ljava/util/Map;

    sget-object v1, Lk/b/i/a/e;->r:Lk/b/a/o;

    new-instance v2, Lk/b/i/b/f/a$c;

    invoke-direct {v2, v3}, Lk/b/i/b/f/a$c;-><init>(Lk/b/i/b/f/a$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lk/b/i/b/f/a;->a:Ljava/util/Map;

    sget-object v1, Lk/b/i/a/e;->e:Lk/b/a/o;

    new-instance v2, Lk/b/i/b/f/a$d;

    invoke-direct {v2, v3}, Lk/b/i/b/f/a$d;-><init>(Lk/b/i/b/f/a$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lk/b/i/b/f/a;->a:Ljava/util/Map;

    sget-object v1, Lk/b/i/a/e;->f:Lk/b/a/o;

    new-instance v2, Lk/b/i/b/f/a$b;

    invoke-direct {v2, v3}, Lk/b/i/b/f/a$b;-><init>(Lk/b/i/b/f/a$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lk/b/i/b/f/a;->a:Ljava/util/Map;

    sget-object v1, Lk/b/i/a/e;->g:Lk/b/a/o;

    new-instance v2, Lk/b/i/b/f/a$f;

    invoke-direct {v2, v3}, Lk/b/i/b/f/a$f;-><init>(Lk/b/i/b/f/a$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lk/b/i/b/f/a;->a:Ljava/util/Map;

    sget-object v1, Lk/b/i/a/e;->l:Lk/b/a/o;

    new-instance v2, Lk/b/i/b/f/a$g;

    invoke-direct {v2, v3}, Lk/b/i/b/f/a$g;-><init>(Lk/b/i/b/f/a$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lk/b/a/l2/s;)Lk/b/c/d/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lk/b/a/l2/s;->x:Lk/b/a/l2/a;

    .line 2
    sget-object v1, Lk/b/i/b/f/a;->a:Ljava/util/Map;

    .line 3
    iget-object v2, v0, Lk/b/a/l2/a;->x:Lk/b/a/o;

    .line 4
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/b/i/b/f/a$e;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lk/b/i/b/f/a$e;->a(Lk/b/a/l2/s;Ljava/lang/Object;)Lk/b/c/d/a;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v1, "algorithm identifier in public key not recognised: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    iget-object v0, v0, Lk/b/a/l2/a;->x:Lk/b/a/o;

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
