.class public Lk/b/a/k2/c;
.super Lk/b/a/n;
.source "SourceFile"

# interfaces
.implements Lk/b/a/d;


# static fields
.field public static C:Lk/b/a/k2/d/a;


# instance fields
.field public A:[Lk/b/a/k2/b;

.field public B:Lk/b/a/e1;

.field public x:Z

.field public y:I

.field public z:Lk/b/a/k2/d/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lk/b/a/k2/d/b;->L:Lk/b/a/k2/d/a;

    sput-object v0, Lk/b/a/k2/c;->C:Lk/b/a/k2/d/a;

    return-void
.end method

.method public constructor <init>(Lk/b/a/u;)V
    .locals 8

    sget-object v0, Lk/b/a/k2/c;->C:Lk/b/a/k2/d/a;

    .line 1
    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    iput-object v0, p0, Lk/b/a/k2/c;->z:Lk/b/a/k2/d/a;

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v0

    new-array v0, v0, [Lk/b/a/k2/b;

    iput-object v0, p0, Lk/b/a/k2/c;->A:[Lk/b/a/k2/b;

    invoke-virtual {p1}, Lk/b/a/u;->j()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    .line 2
    instance-of v6, v5, Lk/b/a/k2/b;

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Lk/b/a/k2/b;

    goto :goto_1

    :cond_0
    if-eqz v5, :cond_1

    new-instance v6, Lk/b/a/k2/b;

    invoke-static {v5}, Lk/b/a/x;->a(Ljava/lang/Object;)Lk/b/a/x;

    move-result-object v7

    invoke-direct {v6, v7}, Lk/b/a/k2/b;-><init>(Lk/b/a/x;)V

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-ne v6, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    and-int/2addr v3, v5

    .line 3
    iget-object v5, p0, Lk/b/a/k2/c;->A:[Lk/b/a/k2/b;

    add-int/lit8 v7, v4, 0x1

    aput-object v6, v5, v4

    move v4, v7

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 4
    invoke-virtual {p1}, Lk/b/a/u;->h()Lk/b/a/t;

    move-result-object p1

    check-cast p1, Lk/b/a/e1;

    goto :goto_3

    .line 5
    :cond_4
    new-instance p1, Lk/b/a/e1;

    iget-object v0, p0, Lk/b/a/k2/c;->A:[Lk/b/a/k2/b;

    invoke-direct {p1, v0}, Lk/b/a/e1;-><init>([Lk/b/a/e;)V

    :goto_3
    iput-object p1, p0, Lk/b/a/k2/c;->B:Lk/b/a/e1;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lk/b/a/k2/c;
    .locals 1

    instance-of v0, p0, Lk/b/a/k2/c;

    if-eqz v0, :cond_0

    check-cast p0, Lk/b/a/k2/c;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lk/b/a/k2/c;

    invoke-static {p0}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/b/a/k2/c;-><init>(Lk/b/a/u;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lk/b/a/b0;)Lk/b/a/k2/c;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lk/b/a/u;->a(Lk/b/a/b0;Z)Lk/b/a/u;

    move-result-object p0

    invoke-static {p0}, Lk/b/a/k2/c;->a(Ljava/lang/Object;)Lk/b/a/k2/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 1

    iget-object v0, p0, Lk/b/a/k2/c;->B:Lk/b/a/e1;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lk/b/a/k2/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    instance-of v1, p1, Lk/b/a/u;

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lk/b/a/e;

    invoke-interface {v1}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object v1

    .line 1
    iget-object v3, p0, Lk/b/a/k2/c;->B:Lk/b/a/e1;

    .line 2
    invoke-virtual {v3, v1}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lk/b/a/k2/c;->z:Lk/b/a/k2/d/a;

    new-instance v1, Lk/b/a/k2/c;

    check-cast p1, Lk/b/a/e;

    invoke-interface {p1}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p1

    invoke-direct {v1, p1}, Lk/b/a/k2/c;-><init>(Lk/b/a/u;)V

    invoke-virtual {v0, p0, v1}, Lk/b/a/k2/d/a;->a(Lk/b/a/k2/c;Lk/b/a/k2/c;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v2
.end method

.method public f()[Lk/b/a/k2/b;
    .locals 1

    iget-object v0, p0, Lk/b/a/k2/c;->A:[Lk/b/a/k2/b;

    invoke-virtual {v0}, [Lk/b/a/k2/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/b/a/k2/b;

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    iget-boolean v0, p0, Lk/b/a/k2/c;->x:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lk/b/a/k2/c;->y:I

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lk/b/a/k2/c;->x:Z

    iget-object v1, p0, Lk/b/a/k2/c;->z:Lk/b/a/k2/d/a;

    if-eqz v1, :cond_5

    .line 1
    invoke-virtual {p0}, Lk/b/a/k2/c;->f()[Lk/b/a/k2/b;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, v1

    if-eq v3, v5, :cond_4

    aget-object v5, v1, v3

    .line 2
    iget-object v5, v5, Lk/b/a/k2/b;->x:Lk/b/a/x;

    .line 3
    iget-object v5, v5, Lk/b/a/x;->x:[Lk/b/a/e;

    array-length v5, v5

    if-le v5, v0, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 4
    aget-object v5, v1, v3

    invoke-virtual {v5}, Lk/b/a/k2/b;->g()[Lk/b/a/k2/a;

    move-result-object v5

    const/4 v6, 0x0

    :goto_2
    array-length v7, v5

    if-eq v6, v7, :cond_3

    aget-object v7, v5, v6

    .line 5
    iget-object v7, v7, Lk/b/a/k2/a;->x:Lk/b/a/o;

    .line 6
    invoke-virtual {v7}, Lk/b/a/o;->hashCode()I

    move-result v7

    xor-int/2addr v4, v7

    aget-object v7, v5, v6

    .line 7
    iget-object v7, v7, Lk/b/a/k2/a;->y:Lk/b/a/e;

    .line 8
    invoke-static {v7}, Le/c/a/a/b/l/c;->a(Lk/b/a/e;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    xor-int/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 9
    :cond_2
    aget-object v5, v1, v3

    invoke-virtual {v5}, Lk/b/a/k2/b;->f()Lk/b/a/k2/a;

    move-result-object v5

    .line 10
    iget-object v5, v5, Lk/b/a/k2/a;->x:Lk/b/a/o;

    .line 11
    invoke-virtual {v5}, Lk/b/a/o;->hashCode()I

    move-result v5

    xor-int/2addr v4, v5

    aget-object v5, v1, v3

    invoke-virtual {v5}, Lk/b/a/k2/b;->f()Lk/b/a/k2/a;

    move-result-object v5

    .line 12
    iget-object v5, v5, Lk/b/a/k2/a;->y:Lk/b/a/e;

    .line 13
    invoke-static {v5}, Le/c/a/a/b/l/c;->a(Lk/b/a/e;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v4, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_4
    iput v4, p0, Lk/b/a/k2/c;->y:I

    return v4

    :cond_5
    const/4 v0, 0x0

    .line 15
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lk/b/a/k2/c;->z:Lk/b/a/k2/d/a;

    check-cast v0, Lk/b/a/k2/d/b;

    if-eqz v0, :cond_6

    .line 1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lk/b/a/k2/c;->f()[Lk/b/a/k2/b;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_0
    array-length v7, v2

    if-ge v5, v7, :cond_5

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    const/16 v7, 0x2c

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    aget-object v7, v2, v5

    iget-object v8, v0, Lk/b/a/k2/d/b;->a:Ljava/util/Hashtable;

    .line 2
    iget-object v9, v7, Lk/b/a/k2/b;->x:Lk/b/a/x;

    .line 3
    iget-object v9, v9, Lk/b/a/x;->x:[Lk/b/a/e;

    array-length v9, v9

    if-le v9, v4, :cond_1

    const/4 v9, 0x1

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_3

    .line 4
    invoke-virtual {v7}, Lk/b/a/k2/b;->g()[Lk/b/a/k2/a;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x1

    :goto_3
    array-length v11, v7

    if-eq v9, v11, :cond_4

    if-eqz v10, :cond_2

    const/4 v10, 0x0

    goto :goto_4

    :cond_2
    const/16 v11, 0x2b

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    aget-object v11, v7, v9

    invoke-static {v1, v11, v8}, Le/c/a/a/b/l/c;->a(Ljava/lang/StringBuffer;Lk/b/a/k2/a;Ljava/util/Hashtable;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v7}, Lk/b/a/k2/b;->f()Lk/b/a/k2/a;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v7}, Lk/b/a/k2/b;->f()Lk/b/a/k2/a;

    move-result-object v7

    invoke-static {v1, v7, v8}, Le/c/a/a/b/l/c;->a(Ljava/lang/StringBuffer;Lk/b/a/k2/a;Ljava/util/Hashtable;)V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    const/4 v0, 0x0

    throw v0
.end method
