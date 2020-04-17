.class public Lk/b/g/e;
.super Lk/b/j/h/b/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/b/g/e$b;,
        Lk/b/g/e$c;,
        Lk/b/g/e$d;,
        Lk/b/g/e$e;,
        Lk/b/g/e$f;,
        Lk/b/g/e$g;,
        Lk/b/g/e$h;,
        Lk/b/g/e$i;,
        Lk/b/g/e$j;,
        Lk/b/g/e$k;,
        Lk/b/g/e$l;,
        Lk/b/g/e$m;,
        Lk/b/g/e$n;,
        Lk/b/g/e$o;,
        Lk/b/g/e$p;
    }
.end annotation


# instance fields
.field public final x:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3

    invoke-direct {p0, p1}, Lk/b/j/h/b/d;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lk/b/g/e;->x:Ljava/util/Map;

    new-instance v0, Lk/b/g/e$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lk/b/g/e$g;-><init>(Lk/b/g/e;Lk/b/g/e$a;)V

    const-string v2, "CERTIFICATE REQUEST"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lk/b/g/e;->x:Ljava/util/Map;

    new-instance v0, Lk/b/g/e$g;

    invoke-direct {v0, p0, v1}, Lk/b/g/e$g;-><init>(Lk/b/g/e;Lk/b/g/e$a;)V

    const-string v2, "NEW CERTIFICATE REQUEST"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lk/b/g/e;->x:Ljava/util/Map;

    new-instance v0, Lk/b/g/e$o;

    invoke-direct {v0, p0, v1}, Lk/b/g/e$o;-><init>(Lk/b/g/e;Lk/b/g/e$a;)V

    const-string v2, "CERTIFICATE"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lk/b/g/e;->x:Ljava/util/Map;

    new-instance v0, Lk/b/g/e$p;

    invoke-direct {v0, p0, v1}, Lk/b/g/e$p;-><init>(Lk/b/g/e;Lk/b/g/e$a;)V

    const-string v2, "TRUSTED CERTIFICATE"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lk/b/g/e;->x:Ljava/util/Map;

    new-instance v0, Lk/b/g/e$o;

    invoke-direct {v0, p0, v1}, Lk/b/g/e$o;-><init>(Lk/b/g/e;Lk/b/g/e$a;)V

    const-string v2, "X509 CERTIFICATE"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lk/b/g/e;->x:Ljava/util/Map;

    new-instance v0, Lk/b/g/e$n;

    invoke-direct {v0, p0, v1}, Lk/b/g/e$n;-><init>(Lk/b/g/e;Lk/b/g/e$a;)V

    const-string v2, "X509 CRL"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lk/b/g/e;->x:Ljava/util/Map;

    new-instance v0, Lk/b/g/e$h;

    invoke-direct {v0, p0, v1}, Lk/b/g/e$h;-><init>(Lk/b/g/e;Lk/b/g/e$a;)V

    const-string v2, "PKCS7"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lk/b/g/e;->x:Ljava/util/Map;

    new-instance v0, Lk/b/g/e$h;

    invoke-direct {v0, p0, v1}, Lk/b/g/e$h;-><init>(Lk/b/g/e;Lk/b/g/e$a;)V

    const-string v2, "CMS"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lk/b/g/e;->x:Ljava/util/Map;

    new-instance v0, Lk/b/g/e$m;

    invoke-direct {v0, p0, v1}, Lk/b/g/e$m;-><init>(Lk/b/g/e;Lk/b/g/e$a;)V

    const-string v2, "ATTRIBUTE CERTIFICATE"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lk/b/g/e;->x:Ljava/util/Map;

    new-instance v0, Lk/b/g/e$c;

    invoke-direct {v0, p0, v1}, Lk/b/g/e$c;-><init>(Lk/b/g/e;Lk/b/g/e$a;)V

    const-string v2, "EC PARAMETERS"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lk/b/g/e;->x:Ljava/util/Map;

    new-instance v0, Lk/b/g/e$j;

    invoke-direct {v0, p0}, Lk/b/g/e$j;-><init>(Lk/b/g/e;)V

    const-string v2, "PUBLIC KEY"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lk/b/g/e;->x:Ljava/util/Map;

    new-instance v0, Lk/b/g/e$l;

    invoke-direct {v0, p0}, Lk/b/g/e$l;-><init>(Lk/b/g/e;)V

    const-string v2, "RSA PUBLIC KEY"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lk/b/g/e;->x:Ljava/util/Map;

    new-instance v0, Lk/b/g/e$f;

    new-instance v2, Lk/b/g/e$k;

    invoke-direct {v2, p0, v1}, Lk/b/g/e$k;-><init>(Lk/b/g/e;Lk/b/g/e$a;)V

    invoke-direct {v0, p0, v2}, Lk/b/g/e$f;-><init>(Lk/b/g/e;Lk/b/g/d;)V

    const-string v2, "RSA PRIVATE KEY"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lk/b/g/e;->x:Ljava/util/Map;

    new-instance v0, Lk/b/g/e$f;

    new-instance v2, Lk/b/g/e$b;

    invoke-direct {v2, p0, v1}, Lk/b/g/e$b;-><init>(Lk/b/g/e;Lk/b/g/e$a;)V

    invoke-direct {v0, p0, v2}, Lk/b/g/e$f;-><init>(Lk/b/g/e;Lk/b/g/d;)V

    const-string v2, "DSA PRIVATE KEY"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lk/b/g/e;->x:Ljava/util/Map;

    new-instance v0, Lk/b/g/e$f;

    new-instance v2, Lk/b/g/e$d;

    invoke-direct {v2, p0, v1}, Lk/b/g/e$d;-><init>(Lk/b/g/e;Lk/b/g/e$a;)V

    invoke-direct {v0, p0, v2}, Lk/b/g/e$f;-><init>(Lk/b/g/e;Lk/b/g/d;)V

    const-string v1, "EC PRIVATE KEY"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lk/b/g/e;->x:Ljava/util/Map;

    new-instance v0, Lk/b/g/e$e;

    invoke-direct {v0, p0}, Lk/b/g/e$e;-><init>(Lk/b/g/e;)V

    const-string v1, "ENCRYPTED PRIVATE KEY"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lk/b/g/e;->x:Ljava/util/Map;

    new-instance v0, Lk/b/g/e$i;

    invoke-direct {v0, p0}, Lk/b/g/e$i;-><init>(Lk/b/g/e;)V

    const-string v1, "PRIVATE KEY"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public readObject()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lk/b/j/h/b/d;->a()Lk/b/j/h/b/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1
    iget-object v1, v0, Lk/b/j/h/b/b;->a:Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lk/b/g/e;->x:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lk/b/g/e;->x:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/b/j/h/b/c;

    invoke-interface {v1, v0}, Lk/b/j/h/b/c;->a(Lk/b/j/h/b/b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "unrecognised object: "

    invoke-static {v2, v1}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
