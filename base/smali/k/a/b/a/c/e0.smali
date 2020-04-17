.class public Lk/a/b/a/c/e0;
.super Lk/a/b/a/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/b/a/c/e0$d;,
        Lk/a/b/a/c/e0$c;,
        Lk/a/b/a/c/e0$a;,
        Lk/a/b/a/c/e0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/c/c<",
        "Ljava/util/List;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lk/a/b/a/c/e0$b;

.field public final b:Lk/a/b/a/c/e0$b;

.field public final c:Lk/a/b/a/c/e0$b;

.field public d:Lk/a/b/a/c/x;


# direct methods
.method public constructor <init>(Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk/a/b/a/c/c;-><init>()V

    .line 2
    iput-object p1, p0, Lk/a/b/a/c/e0;->d:Lk/a/b/a/c/x;

    .line 3
    new-instance v0, Lk/a/b/a/c/e0$a;

    invoke-direct {v0, p0, p1, p2}, Lk/a/b/a/c/e0$a;-><init>(Lk/a/b/a/c/e0;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    iput-object v0, p0, Lk/a/b/a/c/e0;->a:Lk/a/b/a/c/e0$b;

    .line 4
    new-instance v0, Lk/a/b/a/c/e0$c;

    invoke-direct {v0, p0, p1, p2}, Lk/a/b/a/c/e0$c;-><init>(Lk/a/b/a/c/e0;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    iput-object v0, p0, Lk/a/b/a/c/e0;->b:Lk/a/b/a/c/e0$b;

    .line 5
    new-instance v0, Lk/a/b/a/c/e0$d;

    invoke-direct {v0, p0, p1, p2}, Lk/a/b/a/c/e0$d;-><init>(Lk/a/b/a/c/e0;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    iput-object v0, p0, Lk/a/b/a/c/e0;->c:Lk/a/b/a/c/e0$b;

    .line 6
    const-class v0, Ljava/util/List;

    .line 7
    iget-object p1, p1, Lk/a/b/a/c/x;->c:Ljava/util/Map;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p2, p0}, Lk/a/b/a/c/r;->a(Lk/a/b/a/c/i0;)V

    return-void
.end method

.method public static a(Ljava/util/List;Lk/a/b/a/c/x;)I
    .locals 6

    .line 8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 10
    invoke-virtual {p1, v3}, Lk/a/b/a/c/x;->a(Ljava/lang/Object;)Lk/a/b/a/c/a;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 11
    invoke-interface {v4, v3}, Lk/a/b/a/c/a;->a(Ljava/lang/Object;)Lk/a/b/a/c/r0;

    move-result-object v4

    .line 12
    invoke-interface {v4}, Lk/a/b/a/c/r0;->d()I

    move-result v5

    invoke-interface {v4, v3}, Lk/a/b/a/c/r0;->b(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No encoding defined for type: "

    invoke-static {p1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v2
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation

    .line 3
    const-class v0, Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/List;)Lk/a/b/a/c/e0$b;
    .locals 3

    .line 4
    iget-object v0, p0, Lk/a/b/a/c/e0;->d:Lk/a/b/a/c/x;

    invoke-static {p1, v0}, Lk/a/b/a/c/e0;->a(Ljava/util/List;Lk/a/b/a/c/x;)I

    move-result v0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lk/a/b/a/c/e0;->c:Lk/a/b/a/c/e0$b;

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xff

    if-gt v1, v2, :cond_2

    const/16 v1, 0xfe

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lk/a/b/a/c/e0;->b:Lk/a/b/a/c/e0$b;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lk/a/b/a/c/e0;->a:Lk/a/b/a/c/e0$b;

    .line 7
    :goto_1
    invoke-interface {v1, p1, v0}, Lk/a/b/a/c/e0$b;->a(Ljava/util/List;I)V

    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lk/a/b/a/c/j0;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lk/a/b/a/c/e0;->a(Ljava/util/List;)Lk/a/b/a/c/e0$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lk/a/b/a/c/r0;
    .locals 0

    .line 2
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lk/a/b/a/c/e0;->a(Ljava/util/List;)Lk/a/b/a/c/e0$b;

    move-result-object p1

    return-object p1
.end method

.method public f()Lk/a/b/a/c/r0;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/e0;->a:Lk/a/b/a/c/e0$b;

    return-object v0
.end method

.method public i()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lk/a/b/a/c/e0$b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lk/a/b/a/c/e0$b;

    .line 1
    iget-object v1, p0, Lk/a/b/a/c/e0;->c:Lk/a/b/a/c/e0$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lk/a/b/a/c/e0;->b:Lk/a/b/a/c/e0$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lk/a/b/a/c/e0;->a:Lk/a/b/a/c/e0$b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
