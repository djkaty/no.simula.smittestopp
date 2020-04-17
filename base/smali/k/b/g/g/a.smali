.class public Lk/b/g/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/Map;


# instance fields
.field public a:Lk/b/d/b/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lk/b/g/g/a;->b:Ljava/util/Map;

    sget-object v1, Lk/b/a/m2/f;->m:Lk/b/a/o;

    const-string v2, "ECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lk/b/g/g/a;->b:Ljava/util/Map;

    sget-object v1, Lk/b/a/i2/e;->b:Lk/b/a/o;

    const-string v2, "RSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lk/b/g/g/a;->b:Ljava/util/Map;

    sget-object v1, Lk/b/a/m2/f;->r:Lk/b/a/o;

    const-string v2, "DSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk/b/d/b/a;

    invoke-direct {v0}, Lk/b/d/b/a;-><init>()V

    iput-object v0, p0, Lk/b/g/g/a;->a:Lk/b/d/b/a;

    return-void
.end method


# virtual methods
.method public final a(Lk/b/a/l2/a;)Ljava/security/KeyFactory;
    .locals 3

    .line 1
    iget-object p1, p1, Lk/b/a/l2/a;->x:Lk/b/a/o;

    .line 2
    sget-object v0, Lk/b/g/g/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Lk/b/a/o;->x:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Lk/b/g/g/a;->a:Lk/b/d/b/a;

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    return-object p1

    :cond_1
    throw p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "ECDSA"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lk/b/g/g/a;->a:Lk/b/d/b/a;

    if-eqz v0, :cond_2

    const-string p1, "EC"

    .line 7
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    return-object p1

    :cond_2
    throw p1

    .line 8
    :cond_3
    throw v1
.end method
