.class public Li/a/b/d;
.super Ljava/util/HashMap;
.source "SourceFile"

# interfaces
.implements Li/a/b/b;
.implements Li/a/b/c;
.implements Li/a/b/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Li/a/b/b;",
        "Li/a/b/c;",
        "Li/a/b/f;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    sget-object v0, Li/a/b/i;->a:Li/a/b/g;

    invoke-static {p0, v0}, Li/a/b/d;->a(Ljava/util/Map;Li/a/b/g;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Map;Li/a/b/g;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Li/a/b/g;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    :try_start_0
    invoke-static {p0, v0, p1}, Li/a/b/d;->a(Ljava/util/Map;Ljava/lang/Appendable;Li/a/b/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Appendable;Li/a/b/g;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "null"

    .line 5
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p3, Li/a/b/g;->e:Li/a/b/j$f;

    invoke-interface {v0, p0}, Li/a/b/j$f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_1
    const/16 v0, 0x22

    .line 8
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 9
    invoke-static {p0, p2, p3}, Li/a/b/i;->a(Ljava/lang/String;Ljava/lang/Appendable;Li/a/b/g;)V

    .line 10
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_0
    const/16 p0, 0x3a

    .line 11
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 12
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 13
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p2, p1}, Li/a/b/g;->a(Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_2
    invoke-static {p1, p2, p3}, Li/a/b/i;->a(Ljava/lang/Object;Ljava/lang/Appendable;Li/a/b/g;)V

    :goto_1
    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/lang/Appendable;Li/a/b/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Appendable;",
            "Li/a/b/g;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    .line 15
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    .line 16
    :cond_0
    sget-object v0, Li/a/b/m/l;->i:Li/a/b/m/n;

    invoke-interface {v0, p0, p1, p2}, Li/a/b/m/n;->a(Ljava/lang/Object;Ljava/lang/Appendable;Li/a/b/g;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Li/a/b/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Li/a/b/i;->a:Li/a/b/g;

    invoke-static {p0, v0}, Li/a/b/d;->a(Ljava/util/Map;Li/a/b/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Li/a/b/g;)Ljava/lang/String;
    .locals 0

    .line 20
    invoke-static {p0, p1}, Li/a/b/d;->a(Ljava/util/Map;Li/a/b/g;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Appendable;)V
    .locals 1

    .line 17
    sget-object v0, Li/a/b/i;->a:Li/a/b/g;

    invoke-static {p0, p1, v0}, Li/a/b/d;->a(Ljava/util/Map;Ljava/lang/Appendable;Li/a/b/g;)V

    return-void
.end method

.method public a(Ljava/lang/Appendable;Li/a/b/g;)V
    .locals 0

    .line 18
    invoke-static {p0, p1, p2}, Li/a/b/d;->a(Ljava/util/Map;Ljava/lang/Appendable;Li/a/b/g;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Li/a/b/i;->a:Li/a/b/g;

    invoke-static {p0, v0}, Li/a/b/d;->a(Ljava/util/Map;Li/a/b/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
