.class public abstract Lk/b/a/k2/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lk/b/a/k2/b;Lk/b/a/k2/b;)Z
    .locals 7

    .line 6
    iget-object v0, p1, Lk/b/a/k2/b;->x:Lk/b/a/x;

    .line 7
    iget-object v0, v0, Lk/b/a/x;->x:[Lk/b/a/e;

    array-length v0, v0

    .line 8
    iget-object v1, p2, Lk/b/a/k2/b;->x:Lk/b/a/x;

    .line 9
    iget-object v1, v1, Lk/b/a/x;->x:[Lk/b/a/e;

    array-length v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    :goto_0
    const/4 v2, 0x0

    goto :goto_5

    .line 10
    :cond_0
    invoke-virtual {p1}, Lk/b/a/k2/b;->g()[Lk/b/a/k2/a;

    move-result-object p1

    invoke-virtual {p2}, Lk/b/a/k2/b;->g()[Lk/b/a/k2/a;

    move-result-object p2

    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-eq v0, v1, :cond_8

    aget-object v1, p1, v0

    aget-object v4, p2, v0

    if-ne v1, v4, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_6

    if-nez v4, :cond_3

    goto :goto_3

    .line 11
    :cond_3
    iget-object v5, v1, Lk/b/a/k2/a;->x:Lk/b/a/o;

    iget-object v6, v4, Lk/b/a/k2/a;->x:Lk/b/a/o;

    .line 12
    invoke-virtual {v5, v6}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    .line 13
    :cond_4
    iget-object v1, v1, Lk/b/a/k2/a;->y:Lk/b/a/e;

    .line 14
    invoke-static {v1}, Le/c/a/a/b/l/c;->a(Lk/b/a/e;)Ljava/lang/String;

    move-result-object v1

    .line 15
    iget-object v4, v4, Lk/b/a/k2/a;->y:Lk/b/a/e;

    .line 16
    invoke-static {v4}, Le/c/a/a/b/l/c;->a(Lk/b/a/e;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v1, 0x0

    :goto_4
    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    :goto_5
    return v2
.end method

.method public a(Lk/b/a/k2/c;Lk/b/a/k2/c;)Z
    .locals 8

    invoke-virtual {p1}, Lk/b/a/k2/c;->f()[Lk/b/a/k2/b;

    move-result-object p1

    invoke-virtual {p2}, Lk/b/a/k2/c;->f()[Lk/b/a/k2/b;

    move-result-object p2

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    aget-object v0, p1, v2

    invoke-virtual {v0}, Lk/b/a/k2/b;->f()Lk/b/a/k2/a;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    aget-object v0, p2, v2

    invoke-virtual {v0}, Lk/b/a/k2/b;->f()Lk/b/a/k2/a;

    move-result-object v0

    if-eqz v0, :cond_1

    aget-object v0, p1, v2

    invoke-virtual {v0}, Lk/b/a/k2/b;->f()Lk/b/a/k2/a;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lk/b/a/k2/a;->x:Lk/b/a/o;

    .line 2
    aget-object v3, p2, v2

    invoke-virtual {v3}, Lk/b/a/k2/b;->f()Lk/b/a/k2/a;

    move-result-object v3

    .line 3
    iget-object v3, v3, Lk/b/a/k2/a;->x:Lk/b/a/o;

    .line 4
    invoke-virtual {v0, v3}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v0

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    array-length v4, p1

    if-eq v3, v4, :cond_7

    aget-object v4, p1, v3

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    .line 5
    array-length v6, p2

    sub-int/2addr v6, v1

    :goto_2
    if-ltz v6, :cond_5

    aget-object v7, p2, v6

    if-eqz v7, :cond_2

    aget-object v7, p2, v6

    invoke-virtual {p0, v4, v7}, Lk/b/a/k2/d/a;->a(Lk/b/a/k2/b;Lk/b/a/k2/b;)Z

    move-result v7

    if-eqz v7, :cond_2

    aput-object v5, p2, v6

    goto :goto_4

    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_3
    array-length v7, p2

    if-eq v6, v7, :cond_5

    aget-object v7, p2, v6

    if-eqz v7, :cond_4

    aget-object v7, p2, v6

    invoke-virtual {p0, v4, v7}, Lk/b/a/k2/d/a;->a(Lk/b/a/k2/b;Lk/b/a/k2/b;)Z

    move-result v7

    if-eqz v7, :cond_4

    aput-object v5, p2, v6

    :goto_4
    const/4 v4, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_5
    if-nez v4, :cond_6

    return v2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    return v1
.end method
