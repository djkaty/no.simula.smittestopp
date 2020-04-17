.class public final Le/c/c/m;
.super Le/c/c/j;
.source "SourceFile"


# instance fields
.field public final a:Le/c/c/w/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/c/w/r<",
            "Ljava/lang/String;",
            "Le/c/c/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/c/c/j;-><init>()V

    .line 2
    new-instance v0, Le/c/c/w/r;

    invoke-direct {v0}, Le/c/c/w/r;-><init>()V

    iput-object v0, p0, Le/c/c/m;->a:Le/c/c/w/r;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Le/c/c/j;
    .locals 1

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Le/c/c/l;->a:Le/c/c/l;

    goto :goto_0

    :cond_0
    new-instance v0, Le/c/c/p;

    invoke-direct {v0, p1}, Le/c/c/p;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public a(Ljava/lang/String;)Le/c/c/j;
    .locals 1

    .line 5
    iget-object v0, p0, Le/c/c/m;->a:Le/c/c/w/r;

    .line 6
    invoke-virtual {v0, p1}, Le/c/c/w/r;->a(Ljava/lang/Object;)Le/c/c/w/r$e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p1, Le/c/c/w/r$e;->D:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    check-cast p1, Le/c/c/j;

    return-object p1
.end method

.method public a(Ljava/lang/String;Le/c/c/j;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    sget-object p2, Le/c/c/l;->a:Le/c/c/l;

    .line 2
    :cond_0
    iget-object v0, p0, Le/c/c/m;->a:Le/c/c/w/r;

    invoke-virtual {v0, p1, p2}, Le/c/c/w/r;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p2}, Le/c/c/m;->a(Ljava/lang/Object;)Le/c/c/j;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Le/c/c/m;
    .locals 1

    .line 1
    iget-object v0, p0, Le/c/c/m;->a:Le/c/c/w/r;

    .line 2
    invoke-virtual {v0, p1}, Le/c/c/w/r;->a(Ljava/lang/Object;)Le/c/c/w/r$e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Le/c/c/w/r$e;->D:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    check-cast p1, Le/c/c/m;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 1
    instance-of v0, p1, Le/c/c/m;

    if-eqz v0, :cond_0

    check-cast p1, Le/c/c/m;

    iget-object p1, p1, Le/c/c/m;->a:Le/c/c/w/r;

    iget-object v0, p0, Le/c/c/m;->a:Le/c/c/w/r;

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public g()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Le/c/c/j;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/c/c/m;->a:Le/c/c/w/r;

    invoke-virtual {v0}, Le/c/c/w/r;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/c/c/m;->a:Le/c/c/w/r;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->hashCode()I

    move-result v0

    return v0
.end method
