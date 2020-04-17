.class public Ld/s/r/a;
.super Ld/s/p;
.source "SourceFile"


# annotations
.annotation runtime Ld/s/p$b;
    value = "fragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/s/r/a$b;,
        Ld/s/r/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/s/p<",
        "Ld/s/r/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ld/m/a/p;

.field public final c:I

.field public d:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ld/m/a/p;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ld/s/p;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ld/s/r/a;->d:Ljava/util/ArrayDeque;

    .line 3
    iput-object p1, p0, Ld/s/r/a;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Ld/s/r/a;->b:Ld/m/a/p;

    .line 5
    iput p3, p0, Ld/s/r/a;->c:I

    return-void
.end method


# virtual methods
.method public a()Ld/s/i;
    .locals 1

    .line 69
    new-instance v0, Ld/s/r/a$a;

    invoke-direct {v0, p0}, Ld/s/r/a$a;-><init>(Ld/s/p;)V

    return-object v0
.end method

.method public a(Ld/s/i;Landroid/os/Bundle;Ld/s/n;Ld/s/p$a;)Ld/s/i;
    .locals 8

    .line 1
    check-cast p1, Ld/s/r/a$a;

    .line 2
    iget-object v0, p0, Ld/s/r/a;->b:Ld/m/a/p;

    invoke-virtual {v0}, Ld/m/a/p;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "FragmentNavigator"

    const-string p2, "Ignoring navigate() call: FragmentManager has already saved its state"

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 4
    :cond_0
    iget-object v0, p1, Ld/s/r/a$a;->F:Ljava/lang/String;

    if-eqz v0, :cond_1f

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_1

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ld/s/r/a;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_1
    iget-object v3, p0, Ld/s/r/a;->a:Landroid/content/Context;

    iget-object v4, p0, Ld/s/r/a;->b:Ld/m/a/p;

    .line 8
    invoke-virtual {v4}, Ld/m/a/p;->h()Ld/m/a/l;

    move-result-object v4

    .line 9
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 10
    invoke-virtual {v4, v3, v0}, Ld/m/a/l;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 12
    iget-object p2, p0, Ld/s/r/a;->b:Ld/m/a/p;

    if-eqz p2, :cond_1e

    .line 13
    new-instance v3, Ld/m/a/a;

    invoke-direct {v3, p2}, Ld/m/a/a;-><init>(Ld/m/a/p;)V

    const/4 p2, -0x1

    if-eqz p3, :cond_2

    .line 14
    iget v4, p3, Ld/s/n;->d:I

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    :goto_0
    if-eqz p3, :cond_3

    .line 15
    iget v5, p3, Ld/s/n;->e:I

    goto :goto_1

    :cond_3
    const/4 v5, -0x1

    :goto_1
    if-eqz p3, :cond_4

    .line 16
    iget v6, p3, Ld/s/n;->f:I

    goto :goto_2

    :cond_4
    const/4 v6, -0x1

    :goto_2
    if-eqz p3, :cond_5

    .line 17
    iget v7, p3, Ld/s/n;->g:I

    goto :goto_3

    :cond_5
    const/4 v7, -0x1

    :goto_3
    if-ne v4, p2, :cond_6

    if-ne v5, p2, :cond_6

    if-ne v6, p2, :cond_6

    if-eq v7, p2, :cond_b

    :cond_6
    if-eq v4, p2, :cond_7

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    if-eq v5, p2, :cond_8

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_5
    if-eq v6, p2, :cond_9

    goto :goto_6

    :cond_9
    const/4 v6, 0x0

    :goto_6
    if-eq v7, p2, :cond_a

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    .line 18
    :goto_7
    iput v4, v3, Ld/m/a/y;->b:I

    .line 19
    iput v5, v3, Ld/m/a/y;->c:I

    .line 20
    iput v6, v3, Ld/m/a/y;->d:I

    .line 21
    iput v7, v3, Ld/m/a/y;->e:I

    .line 22
    :cond_b
    iget v4, p0, Ld/s/r/a;->c:I

    if-eqz v4, :cond_1d

    const/4 v5, 0x2

    .line 23
    invoke-virtual {v3, v4, v0, v1, v5}, Ld/m/a/y;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 24
    invoke-virtual {v3, v0}, Ld/m/a/y;->b(Landroidx/fragment/app/Fragment;)Ld/m/a/y;

    .line 25
    iget v0, p1, Ld/s/i;->z:I

    .line 26
    iget-object v4, p0, Ld/s/r/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz p3, :cond_c

    if-nez v4, :cond_c

    .line 27
    iget-boolean p3, p3, Ld/s/n;->a:Z

    if-eqz p3, :cond_c

    .line 28
    iget-object p3, p0, Ld/s/r/a;->d:Ljava/util/ArrayDeque;

    .line 29
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v0, :cond_c

    const/4 p3, 0x1

    goto :goto_8

    :cond_c
    const/4 p3, 0x0

    :goto_8
    if-eqz v4, :cond_d

    goto :goto_a

    :cond_d
    const-string v4, "This FragmentTransaction is not allowed to be added to the back stack."

    if-eqz p3, :cond_11

    .line 30
    iget-object p3, p0, Ld/s/r/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->size()I

    move-result p3

    if-le p3, v5, :cond_10

    .line 31
    iget-object p3, p0, Ld/s/r/a;->b:Ld/m/a/p;

    iget-object v6, p0, Ld/s/r/a;->d:Ljava/util/ArrayDeque;

    .line 32
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->size()I

    move-result v6

    iget-object v7, p0, Ld/s/r/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Ld/s/r/a;->a(II)Ljava/lang/String;

    move-result-object v6

    if-eqz p3, :cond_f

    .line 33
    new-instance v7, Ld/m/a/p$f;

    invoke-direct {v7, p3, v6, p2, v5}, Ld/m/a/p$f;-><init>(Ld/m/a/p;Ljava/lang/String;II)V

    invoke-virtual {p3, v7, v2}, Ld/m/a/p;->a(Ld/m/a/p$e;Z)V

    .line 34
    iget-object p2, p0, Ld/s/r/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->size()I

    move-result p2

    invoke-virtual {p0, p2, v0}, Ld/s/r/a;->a(II)Ljava/lang/String;

    move-result-object p2

    .line 35
    iget-boolean p3, v3, Ld/m/a/y;->h:Z

    if-eqz p3, :cond_e

    .line 36
    iput-boolean v5, v3, Ld/m/a/y;->g:Z

    .line 37
    iput-object p2, v3, Ld/m/a/y;->i:Ljava/lang/String;

    goto :goto_9

    .line 38
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_f
    throw v1

    :cond_10
    :goto_9
    const/4 p2, 0x0

    goto :goto_b

    .line 40
    :cond_11
    iget-object p2, p0, Ld/s/r/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->size()I

    move-result p2

    add-int/2addr p2, v5

    invoke-virtual {p0, p2, v0}, Ld/s/r/a;->a(II)Ljava/lang/String;

    move-result-object p2

    .line 41
    iget-boolean p3, v3, Ld/m/a/y;->h:Z

    if-eqz p3, :cond_1c

    .line 42
    iput-boolean v5, v3, Ld/m/a/y;->g:Z

    .line 43
    iput-object p2, v3, Ld/m/a/y;->i:Ljava/lang/String;

    :goto_a
    const/4 p2, 0x1

    .line 44
    :goto_b
    instance-of p3, p4, Ld/s/r/a$b;

    if-eqz p3, :cond_1a

    .line 45
    check-cast p4, Ld/s/r/a$b;

    if-eqz p4, :cond_19

    .line 46
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    .line 47
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_12
    :goto_c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 49
    sget-object v4, Ld/m/a/f0;->b:Ld/m/a/k0;

    if-nez v4, :cond_14

    sget-object v4, Ld/m/a/f0;->c:Ld/m/a/k0;

    if-eqz v4, :cond_13

    goto :goto_d

    :cond_13
    const/4 v4, 0x0

    goto :goto_e

    :cond_14
    :goto_d
    const/4 v4, 0x1

    :goto_e
    if-eqz v4, :cond_12

    .line 50
    invoke-static {v2}, Ld/i/i/n;->n(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 51
    iget-object v4, v3, Ld/m/a/y;->n:Ljava/util/ArrayList;

    if-nez v4, :cond_15

    .line 52
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Ld/m/a/y;->n:Ljava/util/ArrayList;

    .line 53
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Ld/m/a/y;->o:Ljava/util/ArrayList;

    goto :goto_f

    .line 54
    :cond_15
    iget-object v4, v3, Ld/m/a/y;->o:Ljava/util/ArrayList;

    invoke-virtual {v4, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "\' has already been added to the transaction."

    if-nez v4, :cond_17

    .line 55
    iget-object v4, v3, Ld/m/a/y;->n:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 56
    :goto_f
    iget-object v4, v3, Ld/m/a/y;->n:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v2, v3, Ld/m/a/y;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 58
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A shared element with the source name \'"

    invoke-static {p2, v2, v6}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A shared element with the target name \'"

    invoke-static {p2, p4, v6}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unique transitionNames are required for all sharedElements"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_19
    throw v1

    .line 62
    :cond_1a
    iput-boolean v5, v3, Ld/m/a/y;->p:Z

    .line 63
    invoke-virtual {v3}, Ld/m/a/y;->a()I

    if-eqz p2, :cond_1b

    .line 64
    iget-object p2, p0, Ld/s/r/a;->d:Ljava/util/ArrayDeque;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_1b
    :goto_10
    move-object p1, v1

    :goto_11
    return-object p1

    .line 65
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must use non-zero containerViewId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_1e
    throw v1

    .line 68
    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment class was not set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(II)Ljava/lang/String;
    .locals 1

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "androidx-nav-fragment:navigator:backStackIds"

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Ld/s/r/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 72
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 73
    iget-object v3, p0, Ld/s/r/a;->d:Ljava/util/ArrayDeque;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()Landroid/os/Bundle;
    .locals 6

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Ld/s/r/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 3
    iget-object v2, p0, Ld/s/r/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    add-int/lit8 v5, v3, 0x1

    .line 4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    move v3, v5

    goto :goto_0

    :cond_0
    const-string v2, "androidx-nav-fragment:navigator:backStackIds"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public c()Z
    .locals 6

    .line 1
    iget-object v0, p0, Ld/s/r/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Ld/s/r/a;->b:Ld/m/a/p;

    invoke-virtual {v0}, Ld/m/a/p;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FragmentNavigator"

    const-string v2, "Ignoring popBackStack() call: FragmentManager has already saved its state"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Ld/s/r/a;->b:Ld/m/a/p;

    iget-object v2, p0, Ld/s/r/a;->d:Ljava/util/ArrayDeque;

    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    iget-object v3, p0, Ld/s/r/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ld/s/r/a;->a(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    .line 6
    new-instance v3, Ld/m/a/p$f;

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-direct {v3, v0, v2, v4, v5}, Ld/m/a/p$f;-><init>(Ld/m/a/p;Ljava/lang/String;II)V

    invoke-virtual {v0, v3, v1}, Ld/m/a/p;->a(Ld/m/a/p$e;Z)V

    .line 7
    iget-object v0, p0, Ld/s/r/a;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    return v5

    :cond_2
    const/4 v0, 0x0

    .line 8
    throw v0
.end method
