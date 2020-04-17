.class public final Lcom/google/gson/internal/bind/TypeAdapters$29;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Le/c/c/j;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/c/c/y/c;Le/c/c/j;)V
    .locals 2

    if-eqz p2, :cond_8

    .line 1
    instance-of v0, p2, Le/c/c/l;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    instance-of v0, p2, Le/c/c/p;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p2}, Le/c/c/j;->d()Le/c/c/p;

    move-result-object p2

    .line 4
    iget-object v0, p2, Le/c/c/p;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p2}, Le/c/c/p;->h()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/c/c/y/c;->a(Ljava/lang/Number;)Le/c/c/y/c;

    goto/16 :goto_3

    .line 6
    :cond_1
    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p2}, Le/c/c/p;->g()Z

    move-result p2

    invoke-virtual {p1, p2}, Le/c/c/y/c;->a(Z)Le/c/c/y/c;

    goto/16 :goto_3

    .line 8
    :cond_2
    invoke-virtual {p2}, Le/c/c/p;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/c/c/y/c;->c(Ljava/lang/String;)Le/c/c/y/c;

    goto/16 :goto_3

    .line 9
    :cond_3
    instance-of v0, p2, Le/c/c/g;

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {p1}, Le/c/c/y/c;->b()Le/c/c/y/c;

    .line 11
    invoke-virtual {p2}, Le/c/c/j;->b()Le/c/c/g;

    move-result-object p2

    invoke-virtual {p2}, Le/c/c/g;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/c/j;

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/bind/TypeAdapters$29;->a(Le/c/c/y/c;Le/c/c/j;)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p1}, Le/c/c/y/c;->d()Le/c/c/y/c;

    goto :goto_3

    .line 14
    :cond_5
    instance-of v0, p2, Le/c/c/m;

    if-eqz v0, :cond_7

    .line 15
    invoke-virtual {p1}, Le/c/c/y/c;->c()Le/c/c/y/c;

    .line 16
    invoke-virtual {p2}, Le/c/c/j;->c()Le/c/c/m;

    move-result-object p2

    invoke-virtual {p2}, Le/c/c/m;->g()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Le/c/c/y/c;->a(Ljava/lang/String;)Le/c/c/y/c;

    .line 18
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/c/j;

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/bind/TypeAdapters$29;->a(Le/c/c/y/c;Le/c/c/j;)V

    goto :goto_1

    .line 19
    :cond_6
    invoke-virtual {p1}, Le/c/c/y/c;->e()Le/c/c/y/c;

    goto :goto_3

    .line 20
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Couldn\'t write "

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_8
    :goto_2
    invoke-virtual {p1}, Le/c/c/y/c;->g()Le/c/c/y/c;

    :goto_3
    return-void
.end method

.method public read(Le/c/c/y/a;)Le/c/c/j;
    .locals 3

    .line 2
    invoke-virtual {p1}, Le/c/c/y/a;->r()Le/c/c/y/b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Le/c/c/y/a;->o()V

    .line 4
    sget-object p1, Le/c/c/l;->a:Le/c/c/l;

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 6
    :cond_1
    new-instance v0, Le/c/c/p;

    invoke-virtual {p1}, Le/c/c/y/a;->j()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Le/c/c/p;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    .line 7
    :cond_2
    invoke-virtual {p1}, Le/c/c/y/a;->p()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v0, Le/c/c/p;

    new-instance v1, Le/c/c/w/q;

    invoke-direct {v1, p1}, Le/c/c/w/q;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Le/c/c/p;-><init>(Ljava/lang/Number;)V

    return-object v0

    .line 9
    :cond_3
    new-instance v0, Le/c/c/p;

    invoke-virtual {p1}, Le/c/c/y/a;->p()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Le/c/c/p;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 10
    :cond_4
    new-instance v0, Le/c/c/m;

    invoke-direct {v0}, Le/c/c/m;-><init>()V

    .line 11
    invoke-virtual {p1}, Le/c/c/y/a;->b()V

    .line 12
    :goto_0
    invoke-virtual {p1}, Le/c/c/y/a;->h()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {p1}, Le/c/c/y/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$29;->read(Le/c/c/y/a;)Le/c/c/j;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Le/c/c/m;->a(Ljava/lang/String;Le/c/c/j;)V

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {p1}, Le/c/c/y/a;->f()V

    return-object v0

    .line 15
    :cond_6
    new-instance v0, Le/c/c/g;

    invoke-direct {v0}, Le/c/c/g;-><init>()V

    .line 16
    invoke-virtual {p1}, Le/c/c/y/a;->a()V

    .line 17
    :goto_1
    invoke-virtual {p1}, Le/c/c/y/a;->h()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$29;->read(Le/c/c/y/a;)Le/c/c/j;

    move-result-object v1

    if-nez v1, :cond_7

    .line 19
    sget-object v1, Le/c/c/l;->a:Le/c/c/l;

    .line 20
    :cond_7
    iget-object v2, v0, Le/c/c/g;->x:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_8
    invoke-virtual {p1}, Le/c/c/y/a;->e()V

    return-object v0
.end method

.method public bridge synthetic read(Le/c/c/y/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$29;->read(Le/c/c/y/a;)Le/c/c/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write(Le/c/c/y/c;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Le/c/c/j;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$29;->a(Le/c/c/y/c;Le/c/c/j;)V

    return-void
.end method
