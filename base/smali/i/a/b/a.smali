.class public Li/a/b/a;
.super Ljava/util/ArrayList;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Li/a/b/c;
.implements Li/a/b/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;",
        "Li/a/b/c;",
        "Li/a/b/f;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Iterable;Ljava/lang/Appendable;Li/a/b/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
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

    .line 4
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    .line 5
    :cond_0
    sget-object v0, Li/a/b/m/l;->g:Li/a/b/m/n;

    invoke-interface {v0, p0, p1, p2}, Li/a/b/m/n;->a(Ljava/lang/Object;Ljava/lang/Appendable;Li/a/b/g;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 6
    sget-object v0, Li/a/b/i;->a:Li/a/b/g;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    :try_start_0
    invoke-static {p0, v1, v0}, Li/a/b/a;->a(Ljava/lang/Iterable;Ljava/lang/Appendable;Li/a/b/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Li/a/b/g;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p0, v0, p1}, Li/a/b/a;->a(Ljava/lang/Iterable;Ljava/lang/Appendable;Li/a/b/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Appendable;)V
    .locals 1

    .line 10
    sget-object v0, Li/a/b/i;->a:Li/a/b/g;

    invoke-static {p0, p1, v0}, Li/a/b/a;->a(Ljava/lang/Iterable;Ljava/lang/Appendable;Li/a/b/g;)V

    return-void
.end method

.method public a(Ljava/lang/Appendable;Li/a/b/g;)V
    .locals 0

    .line 11
    invoke-static {p0, p1, p2}, Li/a/b/a;->a(Ljava/lang/Iterable;Ljava/lang/Appendable;Li/a/b/g;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Li/a/b/i;->a:Li/a/b/g;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    :try_start_0
    invoke-static {p0, v1, v0}, Li/a/b/a;->a(Ljava/lang/Iterable;Ljava/lang/Appendable;Li/a/b/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
