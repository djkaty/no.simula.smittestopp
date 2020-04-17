.class public Lk/b/i/b/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lk/b/a/l2/a;

.field public static final b:Lk/b/a/l2/a;

.field public static final c:Lk/b/a/l2/a;

.field public static final d:Lk/b/a/l2/a;

.field public static final e:Lk/b/a/l2/a;

.field public static final f:Lk/b/a/l2/a;

.field public static final g:Lk/b/a/l2/a;

.field public static final h:Lk/b/a/l2/a;

.field public static final i:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lk/b/a/l2/a;

    sget-object v1, Lk/b/i/a/e;->q:Lk/b/a/o;

    invoke-direct {v0, v1}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;)V

    sput-object v0, Lk/b/i/b/f/b;->a:Lk/b/a/l2/a;

    new-instance v0, Lk/b/a/l2/a;

    sget-object v1, Lk/b/i/a/e;->r:Lk/b/a/o;

    invoke-direct {v0, v1}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;)V

    sput-object v0, Lk/b/i/b/f/b;->b:Lk/b/a/l2/a;

    new-instance v0, Lk/b/a/l2/a;

    sget-object v1, Lk/b/a/g2/a;->h:Lk/b/a/o;

    invoke-direct {v0, v1}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;)V

    sput-object v0, Lk/b/i/b/f/b;->c:Lk/b/a/l2/a;

    new-instance v0, Lk/b/a/l2/a;

    sget-object v1, Lk/b/a/g2/a;->g:Lk/b/a/o;

    invoke-direct {v0, v1}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;)V

    sput-object v0, Lk/b/i/b/f/b;->d:Lk/b/a/l2/a;

    new-instance v0, Lk/b/a/l2/a;

    sget-object v1, Lk/b/a/g2/a;->c:Lk/b/a/o;

    invoke-direct {v0, v1}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;)V

    sput-object v0, Lk/b/i/b/f/b;->e:Lk/b/a/l2/a;

    new-instance v0, Lk/b/a/l2/a;

    sget-object v1, Lk/b/a/g2/a;->e:Lk/b/a/o;

    invoke-direct {v0, v1}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;)V

    sput-object v0, Lk/b/i/b/f/b;->f:Lk/b/a/l2/a;

    new-instance v0, Lk/b/a/l2/a;

    sget-object v1, Lk/b/a/g2/a;->i:Lk/b/a/o;

    invoke-direct {v0, v1}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;)V

    sput-object v0, Lk/b/i/b/f/b;->g:Lk/b/a/l2/a;

    new-instance v0, Lk/b/a/l2/a;

    sget-object v1, Lk/b/a/g2/a;->j:Lk/b/a/o;

    invoke-direct {v0, v1}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;)V

    sput-object v0, Lk/b/i/b/f/b;->h:Lk/b/a/l2/a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lk/b/i/b/f/b;->i:Ljava/util/Map;

    sget-object v1, Lk/b/i/a/e;->q:Lk/b/a/o;

    const/4 v2, 0x5

    .line 1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lk/b/i/b/f/b;->i:Ljava/util/Map;

    sget-object v1, Lk/b/i/a/e;->r:Lk/b/a/o;

    const/4 v2, 0x6

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lk/b/i/a/h;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lk/b/i/a/h;->y:Lk/b/a/l2/a;

    .line 2
    iget-object v0, p0, Lk/b/a/l2/a;->x:Lk/b/a/o;

    .line 3
    sget-object v1, Lk/b/i/b/f/b;->c:Lk/b/a/l2/a;

    .line 4
    iget-object v1, v1, Lk/b/a/l2/a;->x:Lk/b/a/o;

    .line 5
    invoke-virtual {v0, v1}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SHA3-256"

    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lk/b/a/l2/a;->x:Lk/b/a/o;

    .line 7
    sget-object v1, Lk/b/i/b/f/b;->d:Lk/b/a/l2/a;

    .line 8
    iget-object v1, v1, Lk/b/a/l2/a;->x:Lk/b/a/o;

    .line 9
    invoke-virtual {v0, v1}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "SHA-512/256"

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown tree digest: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    iget-object p0, p0, Lk/b/a/l2/a;->x:Lk/b/a/o;

    .line 11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(I)Lk/b/a/l2/a;
    .locals 2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    sget-object p0, Lk/b/i/b/f/b;->b:Lk/b/a/l2/a;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown security category: "

    invoke-static {v1, p0}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lk/b/i/b/f/b;->a:Lk/b/a/l2/a;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lk/b/a/l2/a;
    .locals 2

    const-string v0, "SHA3-256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lk/b/i/b/f/b;->c:Lk/b/a/l2/a;

    return-object p0

    :cond_0
    const-string v0, "SHA-512/256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lk/b/i/b/f/b;->d:Lk/b/a/l2/a;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown tree digest: "

    invoke-static {v1, p0}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

.method public static b(Ljava/lang/String;)Lk/b/a/l2/a;
    .locals 2

    const-string v0, "SHA-256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lk/b/i/b/f/b;->e:Lk/b/a/l2/a;

    return-object p0

    :cond_0
    const-string v0, "SHA-512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lk/b/i/b/f/b;->f:Lk/b/a/l2/a;

    return-object p0

    :cond_1
    const-string v0, "SHAKE128"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lk/b/i/b/f/b;->g:Lk/b/a/l2/a;

    return-object p0

    :cond_2
    const-string v0, "SHAKE256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lk/b/i/b/f/b;->h:Lk/b/a/l2/a;

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown tree digest: "

    invoke-static {v1, p0}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
