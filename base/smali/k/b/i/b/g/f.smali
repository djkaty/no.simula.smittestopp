.class public Lk/b/i/b/g/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lk/b/a/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lk/b/i/b/g/f;->a:Ljava/util/Map;

    sget-object v1, Lk/b/a/g2/a;->c:Lk/b/a/o;

    const-string v2, "SHA-256"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lk/b/i/b/g/f;->a:Ljava/util/Map;

    sget-object v1, Lk/b/a/g2/a;->e:Lk/b/a/o;

    const-string v2, "SHA-512"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lk/b/i/b/g/f;->a:Ljava/util/Map;

    sget-object v1, Lk/b/a/g2/a;->i:Lk/b/a/o;

    const-string v2, "SHAKE128"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lk/b/i/b/g/f;->a:Ljava/util/Map;

    sget-object v1, Lk/b/a/g2/a;->j:Lk/b/a/o;

    const-string v2, "SHAKE256"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lk/b/a/o;)Lk/b/c/a;
    .locals 3

    sget-object v0, Lk/b/a/g2/a;->c:Lk/b/a/o;

    invoke-virtual {p0, v0}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lk/b/c/c/e;

    invoke-direct {p0}, Lk/b/c/c/e;-><init>()V

    return-object p0

    :cond_0
    sget-object v0, Lk/b/a/g2/a;->e:Lk/b/a/o;

    invoke-virtual {p0, v0}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lk/b/c/c/g;

    invoke-direct {p0}, Lk/b/c/c/g;-><init>()V

    return-object p0

    :cond_1
    sget-object v0, Lk/b/a/g2/a;->i:Lk/b/a/o;

    invoke-virtual {p0, v0}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lk/b/c/c/h;

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lk/b/c/c/h;-><init>(I)V

    return-object p0

    :cond_2
    sget-object v0, Lk/b/a/g2/a;->j:Lk/b/a/o;

    invoke-virtual {p0, v0}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, Lk/b/c/c/h;

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lk/b/c/c/h;-><init>(I)V

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unrecognized digest OID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
