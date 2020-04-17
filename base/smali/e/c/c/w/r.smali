.class public final Le/c/c/w/r;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/c/w/r$c;,
        Le/c/c/w/r$b;,
        Le/c/c/w/r$d;,
        Le/c/c/w/r$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final E:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:I

.field public final B:Le/c/c/w/r$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/c/w/r$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public C:Le/c/c/w/r$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/c/w/r<",
            "TK;TV;>.b;"
        }
    .end annotation
.end field

.field public D:Le/c/c/w/r$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/c/w/r<",
            "TK;TV;>.c;"
        }
    .end annotation
.end field

.field public x:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field public y:Le/c/c/w/r$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/c/w/r$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Le/c/c/w/r;

    .line 2
    new-instance v0, Le/c/c/w/r$a;

    invoke-direct {v0}, Le/c/c/w/r$a;-><init>()V

    sput-object v0, Le/c/c/w/r;->E:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Le/c/c/w/r;->E:Ljava/util/Comparator;

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Le/c/c/w/r;->z:I

    .line 4
    iput v1, p0, Le/c/c/w/r;->A:I

    .line 5
    new-instance v1, Le/c/c/w/r$e;

    invoke-direct {v1}, Le/c/c/w/r$e;-><init>()V

    iput-object v1, p0, Le/c/c/w/r;->B:Le/c/c/w/r$e;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Le/c/c/w/r;->E:Ljava/util/Comparator;

    :goto_0
    iput-object v0, p0, Le/c/c/w/r;->x:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Le/c/c/w/r$e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Le/c/c/w/r$e<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 19
    :try_start_0
    invoke-virtual {p0, p1, v1}, Le/c/c/w/r;->a(Ljava/lang/Object;Z)Le/c/c/w/r$e;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/Object;Z)Le/c/c/w/r$e;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Le/c/c/w/r$e<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/c/c/w/r;->x:Ljava/util/Comparator;

    .line 2
    iget-object v1, p0, Le/c/c/w/r;->y:Le/c/c/w/r$e;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 3
    sget-object v3, Le/c/c/w/r;->E:Ljava/util/Comparator;

    if-ne v0, v3, :cond_0

    move-object v3, p1

    check-cast v3, Ljava/lang/Comparable;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 4
    iget-object v4, v1, Le/c/c/w/r$e;->C:Ljava/lang/Object;

    .line 5
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    goto :goto_1

    :cond_1
    iget-object v4, v1, Le/c/c/w/r$e;->C:Ljava/lang/Object;

    .line 6
    invoke-interface {v0, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    :goto_1
    if-nez v4, :cond_2

    return-object v1

    :cond_2
    if-gez v4, :cond_3

    .line 7
    iget-object v5, v1, Le/c/c/w/r$e;->y:Le/c/c/w/r$e;

    goto :goto_2

    :cond_3
    iget-object v5, v1, Le/c/c/w/r$e;->z:Le/c/c/w/r$e;

    :goto_2
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-nez p2, :cond_6

    return-object v2

    .line 8
    :cond_6
    iget-object p2, p0, Le/c/c/w/r;->B:Le/c/c/w/r$e;

    const/4 v2, 0x1

    if-nez v1, :cond_9

    .line 9
    sget-object v3, Le/c/c/w/r;->E:Ljava/util/Comparator;

    if-ne v0, v3, :cond_8

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_7

    goto :goto_4

    .line 10
    :cond_7
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not Comparable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_8
    :goto_4
    new-instance v0, Le/c/c/w/r$e;

    iget-object v3, p2, Le/c/c/w/r$e;->B:Le/c/c/w/r$e;

    invoke-direct {v0, v1, p1, p2, v3}, Le/c/c/w/r$e;-><init>(Le/c/c/w/r$e;Ljava/lang/Object;Le/c/c/w/r$e;Le/c/c/w/r$e;)V

    .line 12
    iput-object v0, p0, Le/c/c/w/r;->y:Le/c/c/w/r$e;

    goto :goto_6

    .line 13
    :cond_9
    new-instance v0, Le/c/c/w/r$e;

    iget-object v3, p2, Le/c/c/w/r$e;->B:Le/c/c/w/r$e;

    invoke-direct {v0, v1, p1, p2, v3}, Le/c/c/w/r$e;-><init>(Le/c/c/w/r$e;Ljava/lang/Object;Le/c/c/w/r$e;Le/c/c/w/r$e;)V

    if-gez v4, :cond_a

    .line 14
    iput-object v0, v1, Le/c/c/w/r$e;->y:Le/c/c/w/r$e;

    goto :goto_5

    .line 15
    :cond_a
    iput-object v0, v1, Le/c/c/w/r$e;->z:Le/c/c/w/r$e;

    .line 16
    :goto_5
    invoke-virtual {p0, v1, v2}, Le/c/c/w/r;->a(Le/c/c/w/r$e;Z)V

    .line 17
    :goto_6
    iget p1, p0, Le/c/c/w/r;->z:I

    add-int/2addr p1, v2

    iput p1, p0, Le/c/c/w/r;->z:I

    .line 18
    iget p1, p0, Le/c/c/w/r;->A:I

    add-int/2addr p1, v2

    iput p1, p0, Le/c/c/w/r;->A:I

    return-object v0
.end method

.method public a(Ljava/util/Map$Entry;)Le/c/c/w/r$e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Le/c/c/w/r$e<",
            "TK;TV;>;"
        }
    .end annotation

    .line 20
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/c/c/w/r;->a(Ljava/lang/Object;)Le/c/c/w/r$e;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 21
    iget-object v3, v0, Le/c/c/w/r$e;->D:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq v3, p1, :cond_1

    if-eqz v3, :cond_0

    .line 22
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    return-object v0
.end method

.method public final a(Le/c/c/w/r$e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/c/w/r$e<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 51
    iget-object v0, p1, Le/c/c/w/r$e;->y:Le/c/c/w/r$e;

    .line 52
    iget-object v1, p1, Le/c/c/w/r$e;->z:Le/c/c/w/r$e;

    .line 53
    iget-object v2, v1, Le/c/c/w/r$e;->y:Le/c/c/w/r$e;

    .line 54
    iget-object v3, v1, Le/c/c/w/r$e;->z:Le/c/c/w/r$e;

    .line 55
    iput-object v2, p1, Le/c/c/w/r$e;->z:Le/c/c/w/r$e;

    if-eqz v2, :cond_0

    .line 56
    iput-object p1, v2, Le/c/c/w/r$e;->x:Le/c/c/w/r$e;

    .line 57
    :cond_0
    invoke-virtual {p0, p1, v1}, Le/c/c/w/r;->a(Le/c/c/w/r$e;Le/c/c/w/r$e;)V

    .line 58
    iput-object p1, v1, Le/c/c/w/r$e;->y:Le/c/c/w/r$e;

    .line 59
    iput-object v1, p1, Le/c/c/w/r$e;->x:Le/c/c/w/r$e;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 60
    iget v0, v0, Le/c/c/w/r$e;->E:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v2, :cond_2

    iget v2, v2, Le/c/c/w/r$e;->E:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Le/c/c/w/r$e;->E:I

    if-eqz v3, :cond_3

    .line 61
    iget v4, v3, Le/c/c/w/r$e;->E:I

    :cond_3
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Le/c/c/w/r$e;->E:I

    return-void
.end method

.method public final a(Le/c/c/w/r$e;Le/c/c/w/r$e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/c/w/r$e<",
            "TK;TV;>;",
            "Le/c/c/w/r$e<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 23
    iget-object v0, p1, Le/c/c/w/r$e;->x:Le/c/c/w/r$e;

    const/4 v1, 0x0

    .line 24
    iput-object v1, p1, Le/c/c/w/r$e;->x:Le/c/c/w/r$e;

    if-eqz p2, :cond_0

    .line 25
    iput-object v0, p2, Le/c/c/w/r$e;->x:Le/c/c/w/r$e;

    :cond_0
    if-eqz v0, :cond_2

    .line 26
    iget-object v1, v0, Le/c/c/w/r$e;->y:Le/c/c/w/r$e;

    if-ne v1, p1, :cond_1

    .line 27
    iput-object p2, v0, Le/c/c/w/r$e;->y:Le/c/c/w/r$e;

    goto :goto_0

    .line 28
    :cond_1
    iput-object p2, v0, Le/c/c/w/r$e;->z:Le/c/c/w/r$e;

    goto :goto_0

    .line 29
    :cond_2
    iput-object p2, p0, Le/c/c/w/r;->y:Le/c/c/w/r$e;

    :goto_0
    return-void
.end method

.method public final a(Le/c/c/w/r$e;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/c/w/r$e<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_e

    .line 30
    iget-object v0, p1, Le/c/c/w/r$e;->y:Le/c/c/w/r$e;

    .line 31
    iget-object v1, p1, Le/c/c/w/r$e;->z:Le/c/c/w/r$e;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 32
    iget v3, v0, Le/c/c/w/r$e;->E:I

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v1, :cond_1

    .line 33
    iget v4, v1, Le/c/c/w/r$e;->E:I

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    sub-int v5, v3, v4

    const/4 v6, -0x2

    if-ne v5, v6, :cond_6

    .line 34
    iget-object v0, v1, Le/c/c/w/r$e;->y:Le/c/c/w/r$e;

    .line 35
    iget-object v3, v1, Le/c/c/w/r$e;->z:Le/c/c/w/r$e;

    if-eqz v3, :cond_2

    .line 36
    iget v3, v3, Le/c/c/w/r$e;->E:I

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    if-eqz v0, :cond_3

    .line 37
    iget v2, v0, Le/c/c/w/r$e;->E:I

    :cond_3
    sub-int/2addr v2, v3

    const/4 v0, -0x1

    if-eq v2, v0, :cond_5

    if-nez v2, :cond_4

    if-nez p2, :cond_4

    goto :goto_4

    .line 38
    :cond_4
    invoke-virtual {p0, v1}, Le/c/c/w/r;->b(Le/c/c/w/r$e;)V

    .line 39
    invoke-virtual {p0, p1}, Le/c/c/w/r;->a(Le/c/c/w/r$e;)V

    goto :goto_5

    .line 40
    :cond_5
    :goto_4
    invoke-virtual {p0, p1}, Le/c/c/w/r;->a(Le/c/c/w/r$e;)V

    :goto_5
    if-eqz p2, :cond_d

    goto :goto_9

    :cond_6
    const/4 v1, 0x2

    const/4 v6, 0x1

    if-ne v5, v1, :cond_b

    .line 41
    iget-object v1, v0, Le/c/c/w/r$e;->y:Le/c/c/w/r$e;

    .line 42
    iget-object v3, v0, Le/c/c/w/r$e;->z:Le/c/c/w/r$e;

    if-eqz v3, :cond_7

    .line 43
    iget v3, v3, Le/c/c/w/r$e;->E:I

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    :goto_6
    if-eqz v1, :cond_8

    .line 44
    iget v2, v1, Le/c/c/w/r$e;->E:I

    :cond_8
    sub-int/2addr v2, v3

    if-eq v2, v6, :cond_a

    if-nez v2, :cond_9

    if-nez p2, :cond_9

    goto :goto_7

    .line 45
    :cond_9
    invoke-virtual {p0, v0}, Le/c/c/w/r;->a(Le/c/c/w/r$e;)V

    .line 46
    invoke-virtual {p0, p1}, Le/c/c/w/r;->b(Le/c/c/w/r$e;)V

    goto :goto_8

    .line 47
    :cond_a
    :goto_7
    invoke-virtual {p0, p1}, Le/c/c/w/r;->b(Le/c/c/w/r$e;)V

    :goto_8
    if-eqz p2, :cond_d

    goto :goto_9

    :cond_b
    if-nez v5, :cond_c

    add-int/lit8 v3, v3, 0x1

    .line 48
    iput v3, p1, Le/c/c/w/r$e;->E:I

    if-eqz p2, :cond_d

    goto :goto_9

    .line 49
    :cond_c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v6

    iput v0, p1, Le/c/c/w/r$e;->E:I

    if-nez p2, :cond_d

    goto :goto_9

    .line 50
    :cond_d
    iget-object p1, p1, Le/c/c/w/r$e;->x:Le/c/c/w/r$e;

    goto :goto_0

    :cond_e
    :goto_9
    return-void
.end method

.method public final b(Le/c/c/w/r$e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/c/w/r$e<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 32
    iget-object v0, p1, Le/c/c/w/r$e;->y:Le/c/c/w/r$e;

    .line 33
    iget-object v1, p1, Le/c/c/w/r$e;->z:Le/c/c/w/r$e;

    .line 34
    iget-object v2, v0, Le/c/c/w/r$e;->y:Le/c/c/w/r$e;

    .line 35
    iget-object v3, v0, Le/c/c/w/r$e;->z:Le/c/c/w/r$e;

    .line 36
    iput-object v3, p1, Le/c/c/w/r$e;->y:Le/c/c/w/r$e;

    if-eqz v3, :cond_0

    .line 37
    iput-object p1, v3, Le/c/c/w/r$e;->x:Le/c/c/w/r$e;

    .line 38
    :cond_0
    invoke-virtual {p0, p1, v0}, Le/c/c/w/r;->a(Le/c/c/w/r$e;Le/c/c/w/r$e;)V

    .line 39
    iput-object p1, v0, Le/c/c/w/r$e;->z:Le/c/c/w/r$e;

    .line 40
    iput-object v0, p1, Le/c/c/w/r$e;->x:Le/c/c/w/r$e;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 41
    iget v1, v1, Le/c/c/w/r$e;->E:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v3, :cond_2

    iget v3, v3, Le/c/c/w/r$e;->E:I

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Le/c/c/w/r$e;->E:I

    if-eqz v2, :cond_3

    .line 42
    iget v4, v2, Le/c/c/w/r$e;->E:I

    :cond_3
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Le/c/c/w/r$e;->E:I

    return-void
.end method

.method public b(Le/c/c/w/r$e;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/c/w/r$e<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p1, Le/c/c/w/r$e;->B:Le/c/c/w/r$e;

    iget-object v0, p1, Le/c/c/w/r$e;->A:Le/c/c/w/r$e;

    iput-object v0, p2, Le/c/c/w/r$e;->A:Le/c/c/w/r$e;

    .line 2
    iget-object v0, p1, Le/c/c/w/r$e;->A:Le/c/c/w/r$e;

    iput-object p2, v0, Le/c/c/w/r$e;->B:Le/c/c/w/r$e;

    .line 3
    :cond_0
    iget-object p2, p1, Le/c/c/w/r$e;->y:Le/c/c/w/r$e;

    .line 4
    iget-object v0, p1, Le/c/c/w/r$e;->z:Le/c/c/w/r$e;

    .line 5
    iget-object v1, p1, Le/c/c/w/r$e;->x:Le/c/c/w/r$e;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_6

    if-eqz v0, :cond_6

    .line 6
    iget v1, p2, Le/c/c/w/r$e;->E:I

    iget v4, v0, Le/c/c/w/r$e;->E:I

    if-le v1, v4, :cond_1

    .line 7
    iget-object v0, p2, Le/c/c/w/r$e;->z:Le/c/c/w/r$e;

    :goto_0
    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    if-eqz p2, :cond_3

    .line 8
    iget-object v0, p2, Le/c/c/w/r$e;->z:Le/c/c/w/r$e;

    goto :goto_0

    .line 9
    :cond_1
    iget-object p2, v0, Le/c/c/w/r$e;->y:Le/c/c/w/r$e;

    :goto_1
    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    if-eqz v0, :cond_2

    .line 10
    iget-object p2, v0, Le/c/c/w/r$e;->y:Le/c/c/w/r$e;

    goto :goto_1

    :cond_2
    move-object v0, p2

    .line 11
    :cond_3
    invoke-virtual {p0, v0, v2}, Le/c/c/w/r;->b(Le/c/c/w/r$e;Z)V

    .line 12
    iget-object p2, p1, Le/c/c/w/r$e;->y:Le/c/c/w/r$e;

    if-eqz p2, :cond_4

    .line 13
    iget v1, p2, Le/c/c/w/r$e;->E:I

    .line 14
    iput-object p2, v0, Le/c/c/w/r$e;->y:Le/c/c/w/r$e;

    .line 15
    iput-object v0, p2, Le/c/c/w/r$e;->x:Le/c/c/w/r$e;

    .line 16
    iput-object v3, p1, Le/c/c/w/r$e;->y:Le/c/c/w/r$e;

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 17
    :goto_2
    iget-object p2, p1, Le/c/c/w/r$e;->z:Le/c/c/w/r$e;

    if-eqz p2, :cond_5

    .line 18
    iget v2, p2, Le/c/c/w/r$e;->E:I

    .line 19
    iput-object p2, v0, Le/c/c/w/r$e;->z:Le/c/c/w/r$e;

    .line 20
    iput-object v0, p2, Le/c/c/w/r$e;->x:Le/c/c/w/r$e;

    .line 21
    iput-object v3, p1, Le/c/c/w/r$e;->z:Le/c/c/w/r$e;

    .line 22
    :cond_5
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    iput p2, v0, Le/c/c/w/r$e;->E:I

    .line 23
    invoke-virtual {p0, p1, v0}, Le/c/c/w/r;->a(Le/c/c/w/r$e;Le/c/c/w/r$e;)V

    return-void

    :cond_6
    if-eqz p2, :cond_7

    .line 24
    invoke-virtual {p0, p1, p2}, Le/c/c/w/r;->a(Le/c/c/w/r$e;Le/c/c/w/r$e;)V

    .line 25
    iput-object v3, p1, Le/c/c/w/r$e;->y:Le/c/c/w/r$e;

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    .line 26
    invoke-virtual {p0, p1, v0}, Le/c/c/w/r;->a(Le/c/c/w/r$e;Le/c/c/w/r$e;)V

    .line 27
    iput-object v3, p1, Le/c/c/w/r$e;->z:Le/c/c/w/r$e;

    goto :goto_3

    .line 28
    :cond_8
    invoke-virtual {p0, p1, v3}, Le/c/c/w/r;->a(Le/c/c/w/r$e;Le/c/c/w/r$e;)V

    .line 29
    :goto_3
    invoke-virtual {p0, v1, v2}, Le/c/c/w/r;->a(Le/c/c/w/r$e;Z)V

    .line 30
    iget p1, p0, Le/c/c/w/r;->z:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Le/c/c/w/r;->z:I

    .line 31
    iget p1, p0, Le/c/c/w/r;->A:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le/c/c/w/r;->A:I

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/c/c/w/r;->y:Le/c/c/w/r$e;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le/c/c/w/r;->z:I

    .line 3
    iget v0, p0, Le/c/c/w/r;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/c/c/w/r;->A:I

    .line 4
    iget-object v0, p0, Le/c/c/w/r;->B:Le/c/c/w/r$e;

    .line 5
    iput-object v0, v0, Le/c/c/w/r$e;->B:Le/c/c/w/r$e;

    iput-object v0, v0, Le/c/c/w/r$e;->A:Le/c/c/w/r$e;

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/c/c/w/r;->a(Ljava/lang/Object;)Le/c/c/w/r$e;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/c/c/w/r;->C:Le/c/c/w/r$b;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Le/c/c/w/r$b;

    invoke-direct {v0, p0}, Le/c/c/w/r$b;-><init>(Le/c/c/w/r;)V

    iput-object v0, p0, Le/c/c/w/r;->C:Le/c/c/w/r$b;

    :goto_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le/c/c/w/r;->a(Ljava/lang/Object;)Le/c/c/w/r$e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Le/c/c/w/r$e;->D:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/c/c/w/r;->D:Le/c/c/w/r$c;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Le/c/c/w/r$c;

    invoke-direct {v0, p0}, Le/c/c/w/r$c;-><init>(Le/c/c/w/r;)V

    iput-object v0, p0, Le/c/c/w/r;->D:Le/c/c/w/r$c;

    :goto_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Le/c/c/w/r;->a(Ljava/lang/Object;Z)Le/c/c/w/r$e;

    move-result-object p1

    .line 2
    iget-object v0, p1, Le/c/c/w/r$e;->D:Ljava/lang/Object;

    .line 3
    iput-object p2, p1, Le/c/c/w/r$e;->D:Ljava/lang/Object;

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le/c/c/w/r;->a(Ljava/lang/Object;)Le/c/c/w/r$e;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Le/c/c/w/r;->b(Le/c/c/w/r$e;Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p1, Le/c/c/w/r$e;->D:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Le/c/c/w/r;->z:I

    return v0
.end method
